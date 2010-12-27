<?php
/**
 * addon_modules_example Module
 *
 * @package Viewed_products
 * @copyright Copyright (C) 2009 Liquid System Technology, Inc.
 * @author Koji Sasaki
 * @copyright Portions Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @author Koji Sasaki <sasaki@liquidst.jp>
 * @version $Id: addon_modules_example.php $
 */
if (!defined('IS_ADMIN_FLAG')) {
  die('Illegal Access');
}

  class calendar extends addonModuleBase {
    var $title       = MODULE_CALENDAR_TITLE;
    var $description = MODULE_CALENDAR_DESCRIPTION;
    var $sort_order  = MODULE_CALENDAR_SORT_ORDER;
    var $icon;
    var $status      = MODULE_CALENDAR_STATUS;
    var $enabled;
    var $configuration_keys = array(
          array(
            'configuration_title'       => MODULE_CALENDAR_STATUS_TITLE,
            'configuration_key'         => 'MODULE_CALENDAR_STATUS',
            'configuration_value'       => MODULE_CALENDAR_STATUS_DEFAULT,
            'configuration_description' => MODULE_CALENDAR_STATUS_DESCRIPTION,
            'use_function'              => 'null',
            'set_function'              => 'zen_cfg_select_option(array(\'true\', \'false\'),'
          ),
          array(
            'configuration_title'       => MODULE_CALENDAR_START_SUNDAY_TITLE,
            'configuration_key'         => 'MODULE_CALENDAR_START_SUNDAY',
            'configuration_value'       => MODULE_CALENDAR_START_SUNDAY_DEFAULT,
            'configuration_description' => MODULE_CALENDAR_START_SUNDAY_DESCRIPTION,
            'use_function'              => 'null',
            'set_function'              => 'zen_cfg_select_option(array(\'true\', \'false\'),'
          ),
          array(
            'configuration_title'       => MODULE_CALENDAR_DELIVERY_START_TITLE,
            'configuration_key'         => 'MODULE_CALENDAR_DELIVERY_START',
            'configuration_value'       => MODULE_CALENDAR_DELIVERY_START_DEFAULT,
            'configuration_description' => MODULE_CALENDAR_DELIVERY_DESCRIPTION,
            'use_function'              => 'null',
            'set_function'              => 'null',
          ),
          array(
            'configuration_title'       => MODULE_CALENDAR_DELIVERY_END_TITLE,
            'configuration_key'         => 'MODULE_CALENDAR_DELIVERY_END',
            'configuration_value'       => MODULE_CALENDAR_DELIVERY_END_DEFAULT,
            'configuration_description' => MODULE_CALENDAR_DELIVERY_DESCRIPTION,
            'use_function'              => 'null',
            'set_function'              => 'null',
          ),
          array(
            'configuration_title'       => MODULE_CALENDAR_HOPE_DELIVERY_TIME_TITLE,
            'configuration_key'         => 'MODULE_CALENDAR_HOPE_DELIVERY_TIME',
            'configuration_value'       => MODULE_CALENDAR_HOPE_DELIVERY_TIME_DEFAULT,
            'configuration_description' => MODULE_CALENDAR_HOPE_DELIVERY_TIME_DESCRIPTION,
            'use_function'              => 'null',
            'set_function'              => 'null',
          ),
          array(
            'configuration_title'       => MODULE_CALENDAR_SORT_ORDER_TITLE,
            'configuration_key'         => 'MODULE_CALENDAR_SORT_ORDER',
            'configuration_value'       => MODULE_CALENDAR_SORT_ORDER_DEFAULT,
            'configuration_description' => MODULE_CALENDAR_SORT_ORDER_DESCRIPTION,
            'use_function'              => 'null',
            'set_function'              => 'null'
          ),
        );
    var $require_modules = array();
    var $notifier        = array(
                            'NOTIFY_CHECKOUT_PROCESS_AFTER_PAYMENT_MODULES_BEFOREPROCESS',
                            'NOTIFY_HEADER_START_CHECKOUT_SHIPPING',
                            'NOTIFY_CHECKOUT_PROCESS_AFTER_SEND_ORDER_EMAIL',
                           );

    var $author                        = array("kohata");
    var $author_email                  = "info@zencart-sugu.jp";
    var $version                       = "0.1";
    var $require_zen_cart_version      = "1.3.0.2";
    var $require_addon_modules_version = "0.1";

    // class constructer for php4
    function calendar() {
      $this->__construct();

      // ����������������������Ǥ���褦��
      $GLOBALS['calendar'] = $this;
    }

    function notifierUpdate($notifier) {
      global $db;
      global $order;

      switch($notifier) {
          case 'NOTIFY_HEADER_START_CHECKOUT_SHIPPING':
           if (zen_not_null($_POST['calendar_hope_delivery_day']))
             $_SESSION['calendar_hope_delivery_day'] = zen_db_prepare_input($_POST['calendar_hope_delivery_day']);

           if (zen_not_null($_POST['calendar_hope_delivery_time']))
             $_SESSION['calendar_hope_delivery_time'] = zen_db_prepare_input($_POST['calendar_hope_delivery_time']);
            break;

          case 'NOTIFY_CHECKOUT_PROCESS_AFTER_PAYMENT_MODULES_BEFOREPROCESS':
            // 
            // ��˾���������򥳥��Ȥ��ղä���
            $order->info['comments'] = MODULE_CALENDAR_HOPE_DELIVERY_DAY_HEADER.":".$_SESSION['calendar_hope_delivery_day']."\n"
                                     . MODULE_CALENDAR_HOPE_DELIVERY_TIME_HEADER.":".$_SESSION['calendar_hope_delivery_time']."\n"
                                     . $order->info['comments'];
            break;

          case 'NOTIFY_CHECKOUT_PROCESS_AFTER_SEND_ORDER_EMAIL':
            $_SESSION['calendar_hope_delivery_day']  = '';
            $_SESSION['calendar_hope_delivery_time'] = '';
            unset($_SESSION['calendar_hope_delivery_day']);
            unset($_SESSION['calendar_hope_delivery_time']);
            break;
      }
    }

    function _install() {
      // �����ǡ����ơ��֥�ι���
      // ¸�ߤ��ʤ����˼�ư�Ǻ���
      // �����ϰʲ�����ˡ�����ꤹ��
      // | ǯ | ��  |�� |����|  ��   |�Ķ�|
      // |year|month|day|week|weekcnt|open|����
      // |  -1|   -1| -1|  -1|     -1|   0|̵���ǡ���
      // |  -1|   -1| -1|   3|      2|   0|�裳������������
      // |  -1|   -1| -1|   0|     -1|   0|�轵���ˤ�����
      // |  -1|   -1| 10|  -1|     -1|   0|���10��������
      // |  -1|    1|  1|  -1|     -1|   0|��ǯ1/1�ϵ���
      // |2009|    5| 15|  -1|     -1|   0|2009/5/15������
      // |2009|    5| 31|  -1|     -1|   1|2009/5/31�ϱĶ����������
      global $db;
      $sql = "create table if not exists ".TABLE_CALENDAR_HOLIDAYS." "
           . "(id int(11) auto_increment,"
           . "year    int,"
           . "month   int,"
           . "day     int,"
           . "week    int,"
           . "weekcnt int,"
           . "open    int,"
           . "primary key (id))";
      $db->execute($sql);

      // ���ܤε����ǡ���(�ʰ�Ū�ʤ��)
      //         year month day week weekcnt open
      insertHoliday(-1,  1,    1,  -1,  -1,     0); // ����        �ʣ������
      insertHoliday(-1,  1,    2,  -1,  -1,     0); //             �ʣ������
      insertHoliday(-1,  1,    3,  -1,  -1,     0); //             �ʣ������
      insertHoliday(-1,  1,   -1,  1,    2,     0); // ���ͤ���    �ʣ�����裲��������
      insertHoliday(-1,  2,   11,  -1,  -1,     0); // ����ǰ��  �ʣ��������
      insertHoliday(-1,  4,   29,  -1,  -1,     0); // ���¤���    �ʣ��������
      insertHoliday(-1,  5,    3,  -1,  -1,     0); // ��ˡ��ǰ��  �ʣ������
      insertHoliday(-1,  5,    4,  -1,  -1,     0); // �ߤɤ����  �ʣ������
      insertHoliday(-1,  5,    5,  -1,  -1,     0); // ���ɤ����  �ʣ������
      insertHoliday(-1,  7,   -1,  1,    3,     0); // ������      �ʣ�����裳��������
      insertHoliday(-1,  9,   -1,  1,    3,     0); // ��Ϸ����    �ʣ�����裳��������
      insertHoliday(-1, 10,   -1,  1,    2,     0); // �ΰ����    �ʣ�������裲��������
      insertHoliday(-1, 11,    3,  -1,  -1,     0); // ʸ������    �ʣ��������
      insertHoliday(-1, 11,   23,  -1,  -1,     0); // ��ϫ���դ����ʣ����������
      insertHoliday(-1, 12,   23,  -1,  -1,     0); // ŷ��������  �ʣ����������
      insertHoliday(-1, 12,   29,  -1,  -1,     0); //             �ʣ����������
      insertHoliday(-1, 12,   30,  -1,  -1,     0); //             �ʣ����������
      insertHoliday(-1, 12,   31,  -1,  -1,     0); //             �ʣ����������

      // ��������ǯ��
      insertHoliday(2009,3,   20,  -1,  -1,     0); // ��ʬ����  �ʣ�������ǯ���������
      insertHoliday(2009,5,    6,  -1,  -1,     0); // ���ص���  �ʣ�������ǯ�������
      insertHoliday(2009,9,   22,  -1,  -1,     0); // ��̱�ε����ʣ�������ǯ���������
      insertHoliday(2009,9,   23,  -1,  -1,     0); // ��ʬ����  �ʣ�������ǯ���������

      // ��������ǯ��
      insertHoliday(2010,3,   21,  -1,  -1,     0); // ��ʬ����  �ʣ�������ǯ���������
      insertHoliday(2010,3,   22,  -1,  -1,     0); // ���ص���  �ʣ�������ǯ���������
      insertHoliday(2010,9,   23,  -1,  -1,     0); // ��ʬ����  �ʣ�������ǯ���������
      
    }

    function _update() {
    }

    function _remove() {
      global $db;
      $sql = "drop table if exists ".TABLE_CALENDAR_HOLIDAYS;
      $db->execute($sql);
    }

    function _cleanUp() {
    }

    // blocks
    // ��������Υ�����������
    function block() {
      $holidayinfo     = holidayText();

      $year            = (int)date('Y');
      $month           = (int)date('m');
      $day             = (int)date('d');

      $cur_calendar    = calCalendar($year, $month, $day);
      $cur_holidayinfo = holidayText($year, $month);

      $next             = nextMonth($year, $month);
      $year             = (int)date('Y', $next);
      $month            = (int)date('m', $next);
      $next_calendar    = calCalendar($year, $month);
      $next_holidayinfo = holidayText($year, $month);

      // �����������
      $holidayinfo = substr($holidayinfo.$cur_holidayinfo.$next_holidayinfo, 1).MODULE_CALENDAR_HOLIDAY;

      // ������ǽ���׻�
      $shippingStart = $this->_calcDeliveryStartDay();
      $shippingEnd   = $this->_calcDeliveryEndDay($shippingStart);

      $shippinginfo = MODULE_CALENDAR_SHIIPING_DAY;
      $shippinginfo = str_replace('%_YEAR_%',  (int)date("Y", $shippingStart), $shippinginfo);
      $shippinginfo = str_replace('%_MONTH_%', (int)date("m", $shippingStart), $shippinginfo);
      $shippinginfo = str_replace('%_DAY_%',   (int)date("d", $shippingStart), $shippinginfo);
      $shippinginfo = sprintf(MODULE_CALENDAR_SHIPPING, $shippinginfo);

      $shippingLastinfo = MODULE_CALENDAR_SHIIPING_DAY;
      $shippingLastinfo = str_replace('%_YEAR_%',  (int)date("Y", $shippingEnd), $shippingLastinfo);
      $shippingLastinfo = str_replace('%_MONTH_%', (int)date("m", $shippingEnd), $shippingLastinfo);
      $shippingLastinfo = str_replace('%_DAY_%',   (int)date("d", $shippingEnd), $shippingLastinfo);
      $shippingLastinfo = sprintf(MODULE_CALENDAR_SHIPPING_END, $shippingLastinfo);

      $return                     = array();
      $return['title']            = MODULE_CALENDAR_TITLE;
      $return['cur_calendar']     = $cur_calendar;
      $return['next_calendar']    = $next_calendar;
      $return['holidayinfo']      = $holidayinfo;
      $return['shippinginfo']     = $shippinginfo;
      $return['shippingLastinfo'] = $shippingLastinfo;
      return $return;
    }

    // ������ǽ���η׻�
    function _calcDeliveryStartDay() {
      $year            = (int)date('Y');
      $month           = (int)date('m');
      $day             = (int)date('d');

      $cur_calendar    = calCalendar($year, $month, $day);
      $cur_holidayinfo = holidayText($year, $month);

      $next             = nextMonth($year, $month);
      $year             = (int)date('Y', $next);
      $month            = (int)date('m', $next);
      $next_calendar    = calCalendar($year, $month);
      $next_holidayinfo = holidayText($year, $month);

      // ������ǽ���ѤΥ��(+2�����)
      $next             = nextMonth($year, $month);
      $year             = (int)date('Y', $next);
      $month            = (int)date('m', $next);
      $next2_calendar   = calCalendar($year, $month);

      // ������ǽ���׻�
      $monthIndex = -1;
      $searchCalendar = array(
                          $cur_calendar,
                          $next_calendar,
                          $next2_calendar,
                        );
      $startCount     = MODULE_CALENDAR_DELIVERY_START;
      for ($i=0; $i<count($searchCalendar); $i++) {
        if ($searchCalendar[$i]['today'] != -1) {
          $monthIndex = $i;
          $dayIndex   = $searchCalendar[$i]['today'];
          break;
        }
      }

      // ����������ơʱĶ����Τߡˡ�ȯ����ǽ����׻�����
      $shippingYear  = 0;
      $shippingMonth = 0;
      $shippingDay   = 0;
      while ($monthIndex != -1) {
        // ȯ����ǽ�����Ĥ���
        if ($startCount == 0) {
          $shippinginfo  = MODULE_CALENDAR_SHIIPING_DAY;
          $shippingYear  = $searchCalendar[$monthIndex]['year'];
          $shippingMonth = $searchCalendar[$monthIndex]['month'];
          $shippingDay   = $searchCalendar[$monthIndex]['calendarDay'][$dayIndex];
          return mktime(0, 0, 0, $shippingMonth, $shippingDay, $shippingYear);
          break;
        }

        // ���դ��⤦����ꡩ
        // ���ξ������ˤ���
        $dayIndex++;
        if ($dayIndex >= count($searchCalendar[$monthIndex]['calendarDay']) ||
            $searchCalendar[$monthIndex]['calendarDay'][$dayIndex] == 0) {
          $monthIndex++;

          // ���������Ԥ�����
          if ($monthIndex >= count($searchCalendar))
            break;

          $dayIndex = 0;
          while ($dayIndex < count($searchCalendar[$monthIndex]['calendarDay']) &&
                 $searchCalendar[$monthIndex]['calendarDay'][$dayIndex] == 0) {
            $dayIndex++;
          }
        }

        // �������դϱĶ�����
        if ($searchCalendar[$monthIndex]['calendarOpen'][$dayIndex] == 1)
          $startCount--;
      }

      return 0;
    }

    // �ǽ�������ǽ���η׻�
    function _calcDeliveryEndDay($shippingStart) {
        return $shippingStart + 86400*MODULE_CALENDAR_DELIVERY_END;
    }

    function block_desired_delivery_date() {
      $shippingStart = $this->_calcDeliveryStartDay();
      $shippingEnd   = $this->_calcDeliveryEndDay($shippingStart);

      $option   = array();
      $option[] = array('id'   => MODULE_CALENDAR_HOPE_DELIVERY_DAY_FAST,
                        'text' => MODULE_CALENDAR_HOPE_DELIVERY_DAY_FAST);
      for (;;) {
        if ($shippingStart > $shippingEnd)
          break;
        $date     = date(MODULE_CALENDAR_HOPE_DELIVERY_DAY_FORMAT, $shippingStart);
        $option[] = array('id'   => $date,
                          'text' => $date);
        $shippingStart += 86400;
      }

      $return           = array();
      $return['option'] = $option;
      return $return;
    }

    function block_desired_delivery_time() {
      $option = array();
      $time   = explode(",", MODULE_CALENDAR_HOPE_DELIVERY_TIME);
      for ($i=0; $i<count($time); $i++) {
        $option[] = array('id'   => $time[$i],
                          'text' => $time[$i]);
      }

      $return           = array();
      $return['option'] = $option;
      return $return;
    }

    function block_delivery_info() {
      $return         = array();
      $return['date'] = $_SESSION['calendar_hope_delivery_day'];
      $return['time'] = $_SESSION['calendar_hope_delivery_time'];
      return $return;
    }
  }
?>