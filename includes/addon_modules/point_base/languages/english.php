<?php
//
// +----------------------------------------------------------------------+
// |zen-cart Open Source E-commerce                                       |
// +----------------------------------------------------------------------+
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
define('MODULE_POINT_BASE_TITLE', '�ݥ����');
define('MODULE_POINT_BASE_DESCRIPTION', '�ݥ���ȥ⥸�塼��');
define('MODULE_POINT_BASE_STATUS_TITLE', '�ݥ���ȥ⥸�塼���ͭ����<br />ͭ�����θ��<a href="' . zen_href_link(FILENAME_ADDON_MODULES_ADMIN, 'module=addon_modules/blocks') . '">�֥�å�������</a>����ָ��ߤΥݥ���Ȼĳۡץ֥�å���ɽ������򤷤Ƥ���������');
define('MODULE_POINT_BASE_STATUS_DESCRIPTION', '�ݥ���Ȥ�ͭ���ˤ��ޤ����� (�ݥ���ȥ⥸�塼���¾�����ƤΥݥ���ȥ⥸�塼��ˤȤä�ɬ�ܤǤ�)<br />true: ͭ��<br />false: ̵��');
define('MODULE_POINT_BASE_POINT_SYMBOL_TITLE', '�ݥ����ñ��̾��');
define('MODULE_POINT_BASE_POINT_SYMBOL_DESCRIPTION', '�ݥ���Ȥ�ñ��̾�Τ����Ϥ��Ƥ���������<br />������� = ' . MODULE_POINT_BASE_POINT_SYMBOL_DEFAULT);
define('MODULE_POINT_BASE_MAX_DISPLAY_SEARCH_RESULTS_POINTS_TITLE', '�ݥ���ȴ����ڡ�����ɽ������ݥ��������κ�����');
define('MODULE_POINT_BASE_MAX_DISPLAY_SEARCH_RESULTS_POINTS_DESCRIPTION', '�ݥ���ȴ����ڡ�����ɽ������ݥ��������κ����ͤ����ꤷ�Ƥ���������<br />������� = ' . MODULE_POINT_BASE_MAX_DISPLAY_SEARCH_RESULTS_POINTS_DEFAULT);
define('MODULE_POINT_BASE_SORT_ORDER_TITLE', 'ͥ���');
define('MODULE_POINT_BASE_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');

define('BOX_CUSTOMERS_POINTS', '�ݥ���ȴ���');

if (defined('MODULE_POINT_BASE_POINT_SYMBOL')) {
  define('TEXT_POINT', MODULE_POINT_BASE_POINT_SYMBOL);
} elseif (defined('MODULE_POINT_BASE_POINT_SYMBOL_DEFAULT')) {
  define('TEXT_POINT', MODULE_POINT_BASE_POINT_SYMBOL_DEFAULT);
} else {
  define('TEXT_POINT', '�ݥ����');
}

define('SUCCESS_ADDPOINT_DEPOSIT', 'Purchase Points are now available');
define('SUCCESS_ADDPOINT_CANCEL', 'Purchase Points has been canceled');
define('SUCCESS_ADDPOINT_DELETE', 'Purchase Points has been removed');
define('SUCCESS_SUBPOINT_CANCEL', 'Used Points has been canceled');
define('SUCCESS_SUBPOINT_DELETE', 'Used Points has been removed');

define('SUCCESS_CUSTOMERS_POINTS_DELETE', 'Customerd points have been removed.');

define('MODULE_POINT_BASE_BLOCK_TITLE', 'Current Purchce Points.');
define('TEXT_CUSTOMERS_POINT_DEPOSIT', 'Available Purchase Points');
define('TEXT_CUSTOMERS_POINT_PENDING', 'Pending Purchase Points');
define('TEXT_CUSTOMERS_POINT_UPDATED', 'Last Modified.');
