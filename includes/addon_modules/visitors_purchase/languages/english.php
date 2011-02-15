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
define('HEADING_NEW_CUSTOMER_WITH_VISITORS', '[For first visit or unregistered customers,]<br />If you want to create your account,then press [Next] Button.');
define('TEXT_NEW_CUSTOMER_INTRODUCTION_WITH_VISITORS', '
Do not miss the chance!<br />Once you have customer account for ' . STORE_NAME . ', then later enjoy a comfortable shopping without having to enter your customer information.');
define('HEADING_NEW_VISITORS', '��Shopping without creating account��<br /> Enter Your Information and press [Compleete] button.');
define('TEXT_NEW_VISITORS_INTRODUCTION', 'In ' . STORE_NAME . ',You can buy anything without creating an account.However,services for members are not available.');
define('ENTRY_EMAIL_FORMAT','E�᡼��η���');

// additional defines checkout_confirmation
define('TEXT_INFO_VISITORS_CREDIT_SELECTION', 'If you want to use [%s] Service,you need to create customer account.');
define('TEXT_INFO_VISITORS_CREATE_ACCOUNT', '<a href="' . zen_href_link(FILENAME_CREATE_ACCOUNT, '', 'SSL') . '">Customer Registoration</a>');

// additional defines checkout_confirmation
define('HEADING_CUSTOMER_ADDRESS', 'Cutomer Information');

// additional defines checkout_process
define('EMAIL_TEXT_CUSTOMER_ADDRESS', 'Customer Information');
define('EMAIL_VISITORS_DISCLAIMER', '���Υ᡼���������åפˤ���ʸ���������������ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ������������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ� %s �ޤǤ�Ϣ����������');
define('SEND_EXTRA_VISITORS_NEW_ORDERS_EMAILS_TO_SUBJECT','[New Order] (Visitors)');

// additional defines checkout_success
define('TEXT_INFO_VISITORS_NOTIFY_PRODUCTS', 'Customer registration is required for receiving our notifications.');
define('TEXT_VISITORS_SEE_ORDERS', 'You can view the Purchase history.You can view the Purchase history from user page.');
define('TEXT_INFO_VISITORS_SEE_ORDERS', 'Customer registration is required for entering user page');
define('TEXT_VISITOR_TO_ACCOUNT', 'Visitor');
define('TEXT_VISITOR_TO_ACCOUNT_INTRODUCTION', '
<p class="attention">To create an customer account from this order\'s information,press <strong>"Register(Free!)"</strong> button.</p>

<p>If you register now,you can create customer account from this Order\'s information.Do not miss this chance!<br />
Once you have customer account for ' . STORE_NAME . ', then later enjoy a comfortable shopping without having to enter your customer information.</p>');

define('TEXT_VISITORS_ORDER', 'Visitors Order');
