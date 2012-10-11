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
define('MODULE_EASY_ADMIN_TITLE',                    '������˥塼������');
define('MODULE_EASY_ADMIN_DESCRIPTION',              '�������̤Υ�˥塼�������ñ���ѹ��Ǥ���褦�ˤ���');

define('MODULE_EASY_ADMIN_STATUS_TITLE',             '������˥塼�������ͭ����');
define('MODULE_EASY_ADMIN_STATUS_DESCRIPTION',       '������˥塼�������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');

define('MODULE_EASY_ADMIN_DASHBOARD_REDIRECT_URL_TITLE', 'Dashboard������쥯����URL');
define('MODULE_EASY_ADMIN_DASHBOARD_REDIRECT_URL_DESCRIPTION', HTTP_SERVER . DIR_WS_ADMIN .'�ޤǤϼ�ư����Ϳ����ΤǤ��β�����ꤷ�ޤ�');

define('MODULE_EASY_ADMIN_SORT_ORDER_TITLE',         'ͥ���');
define('MODULE_EASY_ADMIN_SORT_ORDER_DESCRIPTION',   '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');

// addon_module�֥�å�������
define('MODULE_EASY_ADMIN_BLOCK_TITLE',              '������˥塼������');

define('BOX_EASY_ADMIN',                             '������˥塼������');
define('BOX_ADMIN_ACL',                              '�����������¤�����');

// TOP MENU
//   MENU NAME,DROP DOWN
// EXAMPLE
//   ��ʸ���ܵҴ���,1
define('MODULE_EASY_ADMIN_TOP_DEFAULT_MENU_1',        '��ʸ���ܵҴ���,1');
define('MODULE_EASY_ADMIN_TOP_DEFAULT_MENU_2',        '���ʴ���,1');
define('MODULE_EASY_ADMIN_TOP_DEFAULT_MENU_3',        '����ƥ�Ĵ���,1');
define('MODULE_EASY_ADMIN_TOP_DEFAULT_MENU_4',        '�������,0');
define('MODULE_EASY_ADMIN_TOP_DEFAULT_MENU_5',        '����¾,0');

// SUB MENU
//   MENU NAME,MENU URL
// EXAMPLE
//   �ܵҴ���,customers.php
define('MODULE_EASY_ADMIN_SUB_DEFAULT_MENU_1_1',      BOX_CUSTOMERS_CUSTOMERS.','.FILENAME_CUSTOMERS.'.php');
define('MODULE_EASY_ADMIN_SUB_DEFAULT_MENU_1_2',      BOX_CUSTOMERS_ORDERS.','.FILENAME_ORDERS.'.php');
define('MODULE_EASY_ADMIN_SUB_DEFAULT_MENU_2_1',      BOX_CATALOG_CATEGORIES_PRODUCTS.','.FILENAME_CATEGORIES.'.php');
define('MODULE_EASY_ADMIN_SUB_DEFAULT_MENU_2_2',      BOX_CATALOG_PRODUCTS_PRICE_MANAGER.','.FILENAME_PRODUCTS_PRICE_MANAGER.'.php');
define('MODULE_EASY_ADMIN_SUB_DEFAULT_MENU_4_1',      BOX_TOOLS_ADMIN.','.FILENAME_ADMIN.'.php');
define('MODULE_EASY_ADMIN_SUB_DEFAULT_MENU_4_2',      BOX_EASY_ADMIN.','.FILENAME_ADDON_MODULES_ADMIN.'.php'.'?module='.FILENAME_EASY_ADMIN);
?>
