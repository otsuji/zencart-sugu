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
define('MODULE_SHOPPING_CART_SUMMARY_TITLE', '����åԥ󥰥����ȥ��ޥ꡼�֥�å�');
define('MODULE_SHOPPING_CART_SUMMARY_DESCRIPTION', '����åԥ󥰥����ȥ��ޥ꡼�֥�å�<br />����åԥ󥰥����ȤΥ��ޥ꡼��ɽ������֥�å����ɲä��ޤ���<br />ͭ�������<a href="' . zen_href_link(FILENAME_ADDON_MODULES_ADMIN, 'module=addon_modules/blocks', 'NONSSL') . '">�֥�å�������</a>����ɽ������򤷤Ƥ���������');
define('MODULE_SHOPPING_CART_SUMMARY_STATUS_TITLE', '����åԥ󥰥����ȥ��ޥ꡼�֥�å���ͭ����');
define('MODULE_SHOPPING_CART_SUMMARY_STATUS_DESCRIPTION', '����åԥ󥰥����ȥ��ޥ꡼�֥�å���ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');
define('MODULE_SHOPPING_CART_SUMMARY_SORT_ORDER_TITLE', 'ͥ���');
define('MODULE_SHOPPING_CART_SUMMARY_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');

define('MODULE_SHOPPING_CART_SUMMARY_BLOCK_TITLE', '����åԥ󥰥����ȥ��ޥ꡼�֥�å�');
define('HEADER_SHOPPING_CART_A_CONTENT', '');
define('HEADER_SHOPPING_CART_CONTENTS', '<span class="total">��%s����</span>');
define('HEADER_SHOPPING_CART_EMPTY', '���Ǥ�');
define('HEADER_SHOPPING_CART_TOTAL', ' ��ס�<span class="price">%s</span>');
define('BUTTON_IMAGE_VIEW_SHOPPING_CART', 'button_view_shopping_cart.gif');
define('BUTTON_VIEW_SHOPPING_CART_ALT', '�����Ȥ���Ȥ򸫤�');
?>