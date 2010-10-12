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

  // ����������
define('MODULE_ABOUTBOX_TITLE', '���Х��ȥܥå���');
define('MODULE_ABOUTBOX_DESCRIPTION', '���Х��ȥܥå����֥�å�<br />���Х��ȥܥå�����ɽ������֥�å����ɲä��ޤ���<br />ͭ�������<a href="' . zen_href_link(FILENAME_ADDON_MODULES_ADMIN, 'module=addon_modules/blocks', 'NONSSL') . '">�֥�å�������</a>����ɽ������򤷤Ƥ���������');
define('MODULE_ABOUTBOX_STATUS_TITLE', '���Х��ȥܥå����֥�å���ͭ����');
define('MODULE_ABOUTBOX_STATUS_DESCRIPTION', '���Х��ȥܥå�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');
define('MODULE_ABOUTBOX_SORT_ORDER_TITLE', 'ͥ���');
define('MODULE_ABOUTBOX_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');
define('MODULE_ABOUTBOX_HEADER_TITLE', '���Х��ȥܥå����Υ����ȥ�');
define('MODULE_ABOUTBOX_HEADER_DESCRIPTION', '���Х��ȥܥå����֥�å���ɽ�����륿���ȥ����ꤷ�ޤ���');
define('MODULE_ABOUTBOX_GREETING_TITLE_TITLE', '���Х��ȥܥå�������ʸ�Υ����ȥ�');
define('MODULE_ABOUTBOX_GREETING_TITLE_DESCRIPTION', '���Х��ȥܥå�����ɽ����������ʸ�Υ����ȥ����ꤷ�ޤ���');
define('MODULE_ABOUTBOX_GREETING_TEXT_TITLE', '���Х��ȥܥå�������ʸ����ʸ');
define('MODULE_ABOUTBOX_GREETING_TEXT_DESCRIPTION', '���Х��ȥܥå�����ɽ����������ʸ����ʸ����ꤷ�ޤ���');
define('MODULE_ABOUTBOX_IMAGEPATH_TITLE', '���Х��ȥܥå�����ɽ���������');
define('MODULE_ABOUTBOX_IMAGEPATH_DESCRIPTION', '���Х��ȥܥå�����ɽ����������Υѥ�����ꤷ�ޤ���');
define('MODULE_ABOUTBOX_DISPLAY_CALENDAR_TITLE', '��������ɽ��');
define('MODULE_ABOUTBOX_DISPLAY_CALENDAR_DESCRIPTION', '�Ķȥ���������ɽ�����뤫�ɤ������ꤷ�ޤ����Ķȥ��������⥸�塼�뤬���󥹥ȡ��뤵��Ƥ��ʤ���true�ˤ��Ƥ�ɽ������ޤ���<br />true: ɽ��<br />false: ��ɽ��');
define('MODULE_ABOUTBOX_AVALABLE_CARDS_TITLE', '�б����쥸�åȥ�����ɽ��');
define('MODULE_ABOUTBOX_AVAILABLE_CARDS_DESCRIPTION', '�б����쥸�åȥ����ɤ�ɽ�����뤫�ɤ������ꤷ�ޤ�<br />0: ��ɽ��<br />1: �ƥ�����ɽ��<br />2: ����ɽ��');

// install��
define('MODULE_ABOUTBOX_GREETING_TITLE_DEFAULT', 'ŹĹ����ΰ���');
define('MODULE_ABOUTBOX_GREETING_TEXT_DEFAULT', 'ŹĹ�Ρ������Ǥ�');

// template��
define('MODULE_ABOUTBOX_CREDITCARDS_TITLE', '���Ѳ�ǽ�ʻ�ʧ����ˡ');

// addon_module�֥�å�������
define('MODULE_ABOUTBOX_BLOCK_TITLE', '���Х��ȥܥå���');

define('BUTTON_IMAGE_FOOTER_MORE', 'button_footer_more.gif');
define('BUTTON_FOOTER_MORE_ALT', '�ܤ�������');

define('BUTTON_IMAGE_FOOTER_PAYMENT', 'button_footer_payment.gif');
define('BUTTON_FOOTER_PAYMENT_ALT', '����ʧ����ˡ');

// ���쥸�åȥ�������
define('MODULE_ABOUTBOX_NETMOVE_CC_PATTERN', '/���쥸�åȥ�����/');
?>