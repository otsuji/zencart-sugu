<?php
/*
 * Copyright (C) 2005 MEDIA COMMUNICATION INC.
 *
 *   Portions Copyright (c) 2004 The zen-cart developers
 *   Portions Copyright (c) 2003 osCommerce
 *   Portions Copyright (c) 2002 Thomas Pl��kers
 *                                http://www.oscommerce.at
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
 * $Id: ot_money_cod_fee.php,v 1.2 2005/12/11 02:35:51 cvs Exp $
 * -> (https://media-com.ark-web.jp/pukiwiki/pukiwiki.php?%A5%B9%A5%C8%A1%BC%A5%EA%A1%BC%2F2)
 * �ɲå⥸�塼�롧��׶�ۤˤ�������������
 */ 

  class ot_money_cod_fee {
    var $title, $output;

    function ot_money_cod_fee() {
      $this->code = 'ot_money_cod_fee';
      $this->title = MODULE_ORDER_TOTAL_MONEY_COD_TITLE;
      $this->description = MODULE_ORDER_TOTAL_MONEY_COD_DESCRIPTION;
      $this->enabled = ((MODULE_ORDER_TOTAL_MONEY_COD_STATUS == 'true') ? true : false);
      $this->sort_order = MODULE_ORDER_TOTAL_MONEY_COD_SORT_ORDER;

      $this->output = array();
    }

    function process() {
      global $order, $currencies, $cod_cost;

      if (MODULE_ORDER_TOTAL_MONEY_COD_STATUS == 'true') {
        $tax = zen_get_tax_rate(MODULE_ORDER_TOTAL_MONEY_COD_TAX_CLASS);

        if ( ($_SESSION['payment'] == 'cod') && ($_GET['main_page'] == 'checkout_confirmation')) {
          // #8883 �ꥯ�����Ȥ�����󤷤������ؤ���ꤷ�����򥨥顼�ˤ��롣
          //       �����������塢��ǧ���̤�Υæ�������ϡ������������å������Ѥޤ줿�ޤޤˤʤ�Τ�
          //       checkout_payment ���̤Ǥ⤳�Υ����å����¹Ԥ���롣
          //       ���äƲ��̤�����å����롣
          if ( ($order->info['subtotal'] + $order->info['shipping_cost']) >= MODULE_ORDER_TOTAL_MONEY_COD_FEE_LIMIT ) {
            // ����ƥ�Ĥ����Ϥ���Ƥ���Τǥ�����쥯�ȤǤ��ʤ���
            die('Bad request.');
          }
        }

        $cod_fee_target_money = $order->info['subtotal'];

/*
// ot_subpoint ¦�μ������褯ʬ���äƤʤ��Τ�̤�б��Ȥ���
        // #8883 �ݥ���Ȥˤ���ʧ���ϼ�����׻��оݶ�ۤ˴ޤ�ʤ���
        if ( isset($GLOBALS['otsubpoint']) ) {
          $save_value = $GLOBALS['ot_subpoint']->pre_process_if_not_last_call();

          $GLOBALS['ot_subpoint']->process();
          $cod_fee_target_money = $cod_fee_target_money - $GLOBALS['ot_subpoint']->deduction;

          $GLOBALS['ot_subpoint']->post_process_if_not_last_call($save_value);
        }
*/

        // #8883 �������ϼ�����׻��оݶ�ۤ˴ޤ�롣
        $cod_fee_target_money = $cod_fee_target_money + $order->info['shipping_cost'];

        $cod_cost = "";
        if (($_SESSION['payment'] == 'cod') && ($cod_fee_target_money < MODULE_ORDER_TOTAL_MONEY_COD_FEE_LIMIT)) {
          $tmp_cod_fee_list = split("[:,]", MODULE_ORDER_TOTAL_MONEY_COD_FEE_LIST);
          $list = array();
          $i = 0;
          foreach($tmp_cod_fee_list as $value) {
            if ($i%2 == 0) {
              $list[] = array("limit" => $value,
                              "fee"   => $tmp_cod_fee_list[$i+1]);
            }
            $i++;
          }
          //������׻�
          foreach ($list as $k => $v) {
            if ($v['limit'] >= $cod_fee_target_money) {
              if ($k == 0) { $cod_cost = $v['fee']; break;}
            }
            if (isset($list[$k+1]) && $list[$k+1]['limit'] >= $cod_fee_target_money) {
              $cod_cost = $list[$k+1]['fee']; break;
            }
          }
          if ($cod_cost == "") $cod_cost = 0;
          
          $order->info['tax'] += zen_calculate_tax($cod_cost, $tax);
          $order->info['tax_groups']["{$tax}"] += zen_calculate_tax($cod_cost, $tax);
          $order->info['total'] += $cod_cost + zen_calculate_tax($cod_cost, $tax);
          
          $this->output[] = array(//'title' => $this->title . ':',
                                  'title' => TEXT_INFO_ORDER_TOTAL_MONEY_COD_TITLE . ':',
                                  'text' => $currencies->format(zen_add_tax($cod_cost, $tax), true,  $order->info['currency'], $order->info['currency_value']),
                                  'value' => zen_add_tax($cod_cost, $tax));
        }
      }
    }

    function check() {
      global $db;
      if (!isset($this->_check)) {
        $check_query = $db->Execute("select configuration_value from " . TABLE_CONFIGURATION . " where configuration_key = 'MODULE_ORDER_TOTAL_MONEY_COD_STATUS'");
        $this->_check = $check_query->RecordCount();
      }

      return $this->_check;
    }

    //configuration key
    function keys() {
      return array('MODULE_ORDER_TOTAL_MONEY_COD_STATUS', 'MODULE_ORDER_TOTAL_MONEY_COD_SORT_ORDER', 'MODULE_ORDER_TOTAL_MONEY_COD_FEE_LIST', 'MODULE_ORDER_TOTAL_MONEY_COD_FEE_LIMIT', 'MODULE_ORDER_TOTAL_MONEY_COD_FEE_LIMIT_NOTICE', 'MODULE_ORDER_TOTAL_MONEY_COD_TAX_CLASS');
    }

    function install() {
      global $db;
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) values ('��׶�ۤˤ���������������ɽ��', 'MODULE_ORDER_TOTAL_MONEY_COD_STATUS', 'true', '��׶�ۤˤ���������������ɽ�����ޤ���?', '6', '1','zen_cfg_select_option(array(\'true\', \'false\'), ', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('ɽ���Υ����Ƚ�', 'MODULE_ORDER_TOTAL_MONEY_COD_SORT_ORDER', '950', 'ɽ���Υ����Ƚ�����ꤷ�ޤ���', '6', '2', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('����ꥹ��', 'MODULE_ORDER_TOTAL_MONEY_COD_FEE_LIST', '9999:315,29999:420,99999:630,300000:1050', '��׶�ۤȼ�������б��򼡤Υե����ޥåȤ����Ϥ��Ƥ���������', '6', '3', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('�谷��ǽ��۾��', 'MODULE_ORDER_TOTAL_MONEY_COD_FEE_LIMIT', '300000', '�������⥸�塼�뤬���ѤǤ�����ٳۤǤ������������ꤷ����۰ʾ���Ф��Ƥϡ���Ѽ��ʤ���������������Ǥ��ʤ��ʤ�ޤ���', '6', '3', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('�谷��ǽ��۾�¤�ۤ����ݤΥ�å�����', 'MODULE_ORDER_TOTAL_MONEY_COD_FEE_LIMIT_NOTICE', '', '�谷��ǽ��۾�¤�ۤ����ݡ�����åץڡ�����ɽ�������å����������ꤷ�ޤ���', '6', '3', now())");
      $db->Execute("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, use_function, set_function, date_added) values ('�Ǽ���', 'MODULE_ORDER_TOTAL_MONEY_COD_TAX_CLASS', '0', '��׶�ۤˤ���������������Ŭ�Ѥ�����Ǽ��̤����ꤷ�ޤ���', '6', '25', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(', now())");
    }

    function remove() {
      global $db;
      $keys = '';
      $keys_array = $this->keys();
      $keys_size = sizeof($keys_array);
      for ($i=0; $i<$keys_size; $i++) {
        $keys .= "'" . $keys_array[$i] . "',";
      }
      $keys = substr($keys, 0, -1);

      $db->Execute("delete from " . TABLE_CONFIGURATION . " where configuration_key in (" . $keys . ")");
    }
  }
?>
