<?php
//
// +----------------------------------------------------------------------+
// |zen-cart Open Source E-commerce                                       |
// +----------------------------------------------------------------------+
// | Copyright (c) 2009 Liquid System Technology, Inc.                    |
// | Author Koji Sasaki                                                   |
// |                                                                      |
// | http://www.zen-cart.com/index.php                                    |
// |                                                                      |
// | Portions Copyright (c) 2003 The zen-cart developers                  |
// | Portions Copyright (c) 2003 osCommerce                               |
// +----------------------------------------------------------------------+
// | This source file is subject to version 2.0 of the GPL license,       |
// | that is bundled with this package in the file LICENSE, and is        |
// | available through the world-wide-web at the following url:           |
// | http://www.zen-cart.com/license/2_0.txt.                             |
// | If you did not receive a copy of the zen-cart license and are unable |
// | to obtain it through the world-wide-web, please send a note to       |
// | license@zen-cart.com so we can mail you a copy immediately.          |
// +----------------------------------------------------------------------+
// $Id: japanese.php $
//
define('MODULE_CALENDAR_TITLE',                    '�Ķȥ�������');
define('MODULE_CALENDAR_DESCRIPTION',              '�Ķȥ�������');

define('MODULE_CALENDAR_STATUS_TITLE',             '�Ķȥ���������ͭ����');
define('MODULE_CALENDAR_STATUS_DESCRIPTION',       '�Ķȥ���������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');

define('MODULE_CALENDAR_START_SUNDAY_TITLE',       '���γ��Ϥ�������');
define('MODULE_CALENDAR_START_SUNDAY_DESCRIPTION', '���γ��Ϥ��������Ȥ��ޤ����� <br />true: ����<br />false: ����');

define('MODULE_CALENDAR_DELIVERY_TITLE',           '���������ǽ��');
define('MODULE_CALENDAR_DELIVERY_INPUT',           '��û������ǽ������ʸ������������%s�Ķ���<br/>�ǽ�������ǽ������û������ǽ������%s����');
define('MODULE_CALENDAR_DELIVERY_DESCRIPTION',     '�������Ȥ��ƻ���Ǥ����ϰϤ������Ȥ��ƻ��ꤷ�ޤ�');

define('MODULE_CALENDAR_DELIVERY_START_TITLE',     '��û������ǽ��: ��ʸ������������αĶ���');
define('MODULE_CALENDAR_DELIVERY_END_TITLE',       '�ǽ�������ǽ��: ��û������ǽ����������');
define('MODULE_CALENDAR_DELIVERY_DESCRIPTION',     '�������Ȥ��ƻ���Ǥ����ϰϤ������Ȥ��ƻ��ꤷ�ޤ�');

define('MODULE_CALENDAR_HOPE_DELIVERY_TIME_TITLE',       '����������������');
define('MODULE_CALENDAR_HOPE_DELIVERY_TIME_DESCRIPTION', '���������������ܤ򥫥�޶��ڤ�����Ϥ��Ƥ�������');

define('MODULE_CALENDAR_SORT_ORDER_TITLE',         'ͥ���');
define('MODULE_CALENDAR_SORT_ORDER_DESCRIPTION',   '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');

// addon_module�֥�å�������
define('MODULE_CALENDAR_BLOCK_TITLE', 'Business Calendar');

define('MODULE_CALENDAR_TITLE_STYLE', '%s/%s');
define('MODULE_CALENDAR_SUN', 'SUN');
define('MODULE_CALENDAR_MON', 'MON');
define('MODULE_CALENDAR_TUE', 'TUE');
define('MODULE_CALENDAR_WED', 'WED');
define('MODULE_CALENDAR_THU', 'THU');
define('MODULE_CALENDAR_FRI', 'FRI');
define('MODULE_CALENDAR_SAT', 'SAT');

define('MODULE_CALENDAR_SHIPPING',             'You order today, the earliest delivery date is %s.');
define('MODULE_CALENDAR_SHIPPING_END',         '%s can be specified as the delivery date.');
define('MODULE_CALENDAR_SHIIPING_DAY',         '%_MONTH_%/%_DAY_%');

define('MODULE_CALENDAR_HOLIDAY_DAY',          '%_DAY_% of every month');
define('MODULE_CALENDAR_HOLIDAY_WEEK',         'Every %_WEEK_%');
define('MODULE_CALENDAR_HOLIDAY_WEEKCNT',      'Every %_WEEKCNT_%th %_WEEK_%');
define('MODULE_CALENDAR_HOLIDAY_MONTHWEEKCNT', '%_WEEKCNT_%th %_WEEK_% of %_MONTH_%');
define('MODULE_CALENDAR_HOLIDAY_MONTHDAY',     '%_MONTH_%/%_DAY_%');
define('MODULE_CALENDAR_HOLIDAY_YEARMONTHDAY', '%_YEAR_%/%_MONTH_%/%_DAY_%');
define('MODULE_CALENDAR_HOLIDAY',              'is regular holiday.');

define('MODULE_CALENDAR_DAY', '<span class="today">X</span>Order date&nbsp;&nbsp;<span class="rest">X</span>Holiday&nbsp;&nbsp;<span>X</span>Buiness date');
define('BOX_CALENDAR', 'Business Calendar');

define('BUTTON_IMAGE_FOOTER_SHIPPING', 'button_footer_shipping.gif');
define('BUTTON_FOOTER_SHIPPING_ALT', 'Available Shipping Methods');

define('MODULE_CALENDAR_HOPE_DELIVERY_DAY_HEADER',  'Specified Delivery Date');
define('MODULE_CALENDAR_HOPE_DELIVERY_TIME_HEADER', 'Specified Delivery Time');
define('MODULE_CALENDAR_HOPE_DELIVERY_DAY_FORMAT',  'm/d');
define('MODULE_CALENDAR_HOPE_DELIVERY_DAY_FAST',    'As Soon As Possible');
define('MODULE_CALENDAR_HOPE_DELIVERY_TIME_NONE',   'Not Specified');
?>
