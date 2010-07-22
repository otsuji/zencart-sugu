<?php
 /*
  * Copyright (C) 2006 digitalcheck_pe INC.
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
  * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with Shigeo; if not, write to the Free Software
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
  *
  * $Id$
  */
//

  class digitalcheck_pe {
    var $code, $title, $description, $enabled;

// class constructor
    function digitalcheck_pe() {
      global $order;
      if (isset($_SESSION['digitalcheck_pe'])) {
        unset($_SESSION['digitalcheck_pe']);
      }
      $this->code        = 'digitalcheck_pe';
      $this->title       = MODULE_PAYMENT_DIGITALCHECK_PE_TEXT_TITLE;
      $this->description = MODULE_PAYMENT_DIGITALCHECK_PE_TEXT_DESCRIPTION;
      $this->sort_order  = MODULE_PAYMENT_DIGITALCHECK_PE_SORT_ORDER;
      $this->enabled     = ((MODULE_PAYMENT_DIGITALCHECK_PE_STATUS == 'True') ? true : false);

      if ((int)MODULE_PAYMENT_DIGITALCHECK_PE_ORDER_STATUS_ID > 0) {
        $this->order_status = MODULE_PAYMENT_DIGITALCHECK_PE_ORDER_STATUS_ID;
      }

      if (is_object($order)) $this->update_status();
      $this->form_action_url = zen_href_link(FILENAME_DIGITALCHECK_PE_PREPROCESS);
    }

// class methods
    function update_status() {
      global $order, $db;

      if ( ($this->enabled == true) && ((int)MODULE_PAYMENT_DIGITALCHECK_PE_ZONE > 0) ) {
        $check_flag = false;
        $check = $db->Execute("select zone_id from " . TABLE_ZONES_TO_GEO_ZONES . " where geo_zone_id = '" . MODULE_PAYMENT_DIGITALCHECK_PE_ZONE . "' and zone_country_id = '" . $order->billing['country']['id'] . "' order by zone_id");
        while (!$check->EOF) {
          if ($check->fields['zone_id'] < 1) {
            $check_flag = true;
            break;
          } elseif ($check->fields['zone_id'] == $order->billing['zone_id']) {
            $check_flag = true;
            break;
          }
          $check->MoveNext();
        }

        if ($check_flag == false) {
          $this->enabled = false;
        }
      }
    }

    function javascript_validation() {
	  return false;
	}

    function selection() {
      return array('id' => $this->code,
                   'module' => $this->title);
    }

    function pre_confirmation_check() {
      return true;
    }

    function confirmation() {
      return true;
    }

    function process_button() {
      return "";
    }

    function before_process() {
    }
	
    function after_process() {
      // �ѥ�᡼���γ�ǧ
      if (!isset($_REQUEST['SID'])  ||
          !isset($_REQUEST['FUKA'])) {
        zen_redirect(zen_href_link(FILENAME_DEFAULT));
        return false;
      }

      // ¸�ߥ����å�
      $sid  = $_REQUEST['SID'];
      $fuka = $_REQUEST['FUKA'];
      if (!digitalchcek_is_exist($sid, $fuka)) {
        zen_redirect(zen_href_link(FILENAME_DEFAULT));
        return false;
      }

      // ��ʸID����¸����
      digitalchcek_save_orders_id($sid, $_SESSION['order_number_created']);
      return false;
    }

    function get_error() {
      return false;
    }

    function check() {
      global $db;
      if (!isset($this->_check)) {
        $check_query = $db->Execute("select configuration_value from " . TABLE_CONFIGURATION . " where configuration_key = 'MODULE_PAYMENT_DIGITALCHECK_PE_STATUS'");
        $this->_check = $check_query->RecordCount();
      }
      return $this->_check;
    }

    function install() {
      global $db;

      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added)               values ('�ǥ���������å� Payeasy���', 'MODULE_PAYMENT_DIGITALCHECK_PE_STATUS', 'True', '�ǥ���������å� Payeasy��Ѥ�ͭ���ˤ��ޤ�����', '6', '0', 'zen_cfg_select_option(array(\'True\', \'False\'), ', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added)                             values ('ɽ���������', 'MODULE_PAYMENT_DIGITALCHECK_PE_SORT_ORDER', '0', 'ɽ��������������Ǥ��ޤ�. �������������ۤɾ�̤�ɽ������ޤ���', '6', '0' , now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, use_function, set_function, date_added) values ('Ŭ���ϰ�', 'MODULE_PAYMENT_DIGITALCHECK_PE_ZONE', '0', 'Ŭ���ϰ�����򤹤�ȡ����򤷤��ϰ�Τߤ����Ѳ�ǽ�Ȥʤ�ޤ���', '6', '2', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, use_function, date_added) values ('�����ʸ���ơ�����', 'MODULE_PAYMENT_DIGITALCHECK_PE_ORDER_STATUS_ID', '0', '���ꤷ�����ơ��������������Ŭ�Ѥ���ޤ���', '6', '0', 'zen_cfg_pull_down_order_statuses(', 'zen_get_order_status_name', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, use_function, date_added) values ('��������ơ�����', 'MODULE_PAYMENT_DIGITALCHECK_PE_FINISH_PAYMENT_STATUS_ID', '0', '���ꤷ�����ơ��������������Ŭ�Ѥ���ޤ���', '6', '0', 'zen_cfg_pull_down_order_statuses(', 'zen_get_order_status_name', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added)                             values ('����Ź������', 'MODULE_PAYMENT_DIGITALCHECK_PE_IP', '', '�������߻������ꤷ������Ź�����ɤ���ꤷ�ޤ���', '6', '0', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added)                             values ('������URL', 'MODULE_PAYMENT_DIGITALCHECK_PE_URL', '', '�������߻������ꤷ��������URL����ꤷ�ޤ���', '6', '0', now())");
    }

    function remove() {
      global $db;
      $db->Execute("delete from " . TABLE_CONFIGURATION . " where configuration_key in ('" . implode("', '", $this->keys()) . "')");
    }

    function keys() {
      return array('MODULE_PAYMENT_DIGITALCHECK_PE_STATUS',
                   'MODULE_PAYMENT_DIGITALCHECK_PE_ZONE',
                   'MODULE_PAYMENT_DIGITALCHECK_PE_ORDER_STATUS_ID',
                   'MODULE_PAYMENT_DIGITALCHECK_PE_FINISH_PAYMENT_STATUS_ID',
                   'MODULE_PAYMENT_DIGITALCHECK_PE_SORT_ORDER',
                   'MODULE_PAYMENT_DIGITALCHECK_PE_IP',
                   'MODULE_PAYMENT_DIGITALCHECK_PE_URL');
    }
  }
?>
