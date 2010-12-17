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

define('MODULE_VISITORS_PURCHASE_TITLE', '�ӥ������ˤ�뾦�ʹ���');
define('MODULE_VISITORS_PURCHASE_DESCRIPTION', '�����Ͽ�򤷤ʤ��ӥ������ˤ�뾦�ʹ������ǽ�ˤ��ޤ���');
define('MODULE_VISITORS_PURCHASE_STATUS_TITLE', '�ӥ������ˤ�뾦�ʹ�����ͭ����');
define('MODULE_VISITORS_PURCHASE_STATUS_DESCRIPTION', '�ӥ������ˤ�뾦�ʹ�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');
define('MODULE_VISITORS_PURCHASE_ORDERS_DATA_KEEP_DAYS_TITLE', '�ӥ���������ʸ�ǡ�������¸���Ƥ�������');
define('MODULE_VISITORS_PURCHASE_ORDERS_DATA_KEEP_DAYS_DESCRIPTION', '�ӥ���������ʸ�ǡ������ʹ��������鲿������¸���뤫�����ꤷ�ޤ������ꤷ��������Ķ����ȼ�ưŪ�˥ӥ���������ʸ�ǡ������ǡ����١�������������ޤ�����ư������ʤ����϶���ˤ��ޤ���<br />������� = ' . MODULE_VISITORS_PURCHASE_ORDERS_DATA_KEEP_DAYS_DEFAULT);
define('MODULE_VISITORS_PURCHASE_SORT_ORDER_TITLE', 'ͥ���');
define('MODULE_VISITORS_PURCHASE_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');

// additional defines login
define('HEADING_NEW_CUSTOMER_WITH_VISITORS', '�ڽ��ƤΤ���Ź��̤��Ͽ�����ϡ�<br /> ��������Ⱥ������˾��������ϡּ��ءץܥ���򲡤��Ƥ���������');
define('TEXT_NEW_CUSTOMER_INTRODUCTION_WITH_VISITORS', '���ε����������Ͽ��������!<br />' . STORE_NAME . '�Ǥϡ����٥�������Ȥ�������Ƥ��������ޤ��ȰʹߤΤ����ѤǤϤ����;���ʤɤ����Ϥ�ʤ����Ȥ��Ǥ�����Ŭ�˥���åԥ󥰤�ڤ���Ǥ��������ޤ���');
define('HEADING_NEW_VISITORS', '�ڥ�������Ⱥ����򤻤��ˤ��㤤ʪ���������<br /> �����ͤξ�������Ϥ��ơ������ץܥ���򲡤��Ƥ���������');
define('TEXT_NEW_VISITORS_INTRODUCTION', '' . STORE_NAME . '�Ǥϡ���������Ⱥ����򤵤�Ƥ��ʤ��Ƥ⤪�㤤ʪ���Ǥ��ޤ������ޥ��ڡ����ʤɤβ�����������ӥ��Ϥ����Ѥ��������ޤ���ΤǤ���դ���������');
define('ENTRY_EMAIL_FORMAT','E�᡼��η���');

// additional defines checkout_confirmation
define('TEXT_INFO_VISITORS_CREDIT_SELECTION', '%s�Τ����Ѥˤϲ����Ͽ��ɬ�פǤ���');
define('TEXT_INFO_VISITORS_CREATE_ACCOUNT', '<a href="' . zen_href_link(FILENAME_CREATE_ACCOUNT, '', 'SSL') . '">�����Ͽ�Ϥ�����</a>');

// additional defines checkout_confirmation
define('HEADING_CUSTOMER_ADDRESS', '�����;���');

// additional defines checkout_process
define('EMAIL_TEXT_CUSTOMER_ADDRESS', '�����;���');
define('EMAIL_VISITORS_DISCLAIMER', '���Υ᡼���������åפˤ���ʸ���������������ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ������������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ� %s �ޤǤ�Ϣ����������');
define('SEND_EXTRA_VISITORS_NEW_ORDERS_EMAILS_TO_SUBJECT','[������ʸ] (�ӥ�����)');

// additional defines checkout_success
define('TEXT_INFO_VISITORS_NOTIFY_PRODUCTS', '���Τ餻�᡼��ι��ɤˤϲ����Ͽ��ɬ�פǤ���');
define('TEXT_VISITORS_SEE_ORDERS', '�ޥ��ڡ������餪���ͤΤ���ʸ����������������ޤ���');
define('TEXT_INFO_VISITORS_SEE_ORDERS', '�ޥ��ڡ����Τ����Ѥˤϲ����Ͽ��ɬ�פǤ���');
define('TEXT_VISITOR_TO_ACCOUNT', '̤��Ͽ������');
define('TEXT_VISITOR_TO_ACCOUNT_INTRODUCTION', '
<p class="attention">��ʸ���󤫤饢������Ⱥ������˾���������<strong>�����Ͽ��̵����</strong>�ܥ���򲡤��Ƥ���������</p>

<p>����������Ͽ���������ޤ��ȸ��ߤ���ʸ���������Ѥ����Ȥ�����ޤ������ε����������Ͽ��������!<br />' . STORE_NAME . '�Ǥϡ����٥�������Ȥ�������Ƥ��������ޤ��ȰʹߤΤ����ѤǤϤ����;���ʤɤ����Ϥ�ʤ����Ȥ��Ǥ�����Ŭ�˥���åԥ󥰤�ڤ���Ǥ��������ޤ���</p>');

define('TEXT_VISITORS_ORDER', '�ӥ������ˤ����ʸ');
