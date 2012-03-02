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
define('MODULE_EMAIL_TEMPLATES_TITLE', '�᡼��ƥ�ץ졼��');
define('MODULE_EMAIL_TEMPLATES_DESCRIPTION', '�᡼��ƥ�ץ졼�ȵ�ǽ���󶡤��ޤ���');
define('MODULE_EMAIL_TEMPLATES_STATUS_TITLE', '�᡼��ƥ�ץ졼�Ȥ�ͭ����');
define('MODULE_EMAIL_TEMPLATES_STATUS_DESCRIPTION', '�᡼��ƥ�ץ졼�Ȥ�ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');
define('MODULE_EMAIL_TEMPLATES_SORT_ORDER_TITLE', 'ͥ���');
define('MODULE_EMAIL_TEMPLATES_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');

define('BOX_TOOLS_EMAIL_TEMPLATES', 'Email�ƥ�ץ졼��');
define('TEXT_EMAIL_TEMPLATE', 'Email�ƥ�ץ졼��: ');
define('TEXT_EMAIL_TEMPLATE_SETUP_PAGE', '���åȥ��åץڡ���');
define('TEXT_EMAIL_TEMPLATE_EMPTY', 'Email�ƥ�ץ졼�Ȥ�����ޤ���');
define('TEXT_EMAIL_TEMPLATE_DESCRIPTION', '������:'.BOX_TOOLS_EMAIL_TEMPLATES.'���[COMMENTS]�������ޤ�ޤ�<br />(�ƥ�ץ졼�����[COMMENTS]��̵�����ϥ����Ȥ������ߤϹԤ��ޤ���)');
define('TEXT_EMAIL_TEMPLATE_NO_TEMPLATE', BOX_TOOLS_EMAIL_TEMPLATES.'�����Ĥ���ʤ��ä�����᡼��������ϹԤ��ޤ���Ǥ�����');

define('MODULE_EMAIL_TEMPLATE_CREATE_LANGUAGE_ID', '2');

define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_GRP', 'User registration');
define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_TITLE', 'Thank you for registration');
define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_SUBJECT', 'Thank you for registration');
define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_BODY', 'Thank you for registration.

Please enjoy shopping.');

define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_GRP', 'Order is complete.');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_TITLE', 'Thank you for your order.[For Members]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_SUBJECT', 'Thank you for your order.[For Members]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_BODY', 'Order Confirmation from XXXXXXXX

Dear [CUSTOMER_NAME]

Thank you for your order.
Your order is as follows.
------------------------------------------------------
Order Number: [ORDER_ID]
Order Date: [DATE_ORDERED]
Invoice:
[INVOICE_URL]

[COMMENT]

Products Ordered
------------------------------------------------------
[PRODUCTS_ORDERED]
------------------------------------------------------
[TOTALS]

Delivery Address
------------------------------------------------------
[DELIVERY_ADDRESS]

Billing Address
------------------------------------------------------
[BILLING_ADDRESS]

Payment Method
------------------------------------------------------
[PAYMENT_METHOD]

Thank you.

-----
This email sent to customers who register to our shopping site.
If you do not remember this email,please contact us at xxxxxxx@example.org.
-----
Copyright (c) XXXXXXXX Inc. All Rights Reserved
');

define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_GRP', 'Order is complete.');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_TITLE', 'Thank you for your order.[For Guests]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_SUBJECT', 'Thank you for your order.[For Guests]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_BODY', 'Order Confirmation from XXXXXXXX

Dear [CUSTOMER_NAME]

Thank you for your order.
Your order is as follows.
------------------------------------------------------
Order Number: [ORDER_ID]
Order Date: [DATE_ORDERED]

[COMMENT]

Products Ordered
------------------------------------------------------
[PRODUCTS_ORDERED]
------------------------------------------------------
[TOTALS]

Delivery Address
------------------------------------------------------
[DELIVERY_ADDRESS]

Billing Address
------------------------------------------------------
[BILLING_ADDRESS]

Payment Method
------------------------------------------------------
[PAYMENT_METHOD]

Thank you.

-----
This email sent to customers who register to our shopping site.
If you do not remember this email,please contact us at xxxxxxx@example.org.
-----
Copyright (c) XXXXXXXX Inc. All Rights Reserved
');

define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_GRP',     'User notification');
define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_TITLE',   'Status Change');
define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_SUBJECT', 'Notice of order receipt status');
define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_BODY', '
Dear [CUSTOMER_NAME]

Thank you for your order.
To announce the status of Order Number:[ORDER_ID] ,your order on [DATE_ORDERED].

[INVOICE_URL]

[COMMENTS]

Thank you.

-----
This email sent to customers who register to our shopping site.
If you do not remember this email,please contact us at xxxxxxx@example.org.
-----
Copyright (c) XXXXXXXX Inc. All Rights Reserved
');

define('MODULE_EMAIL_TEMPLATE_PASSWORD_FORGOTTEN_MAIL_GRP', '�ѥ���ɥ�ޥ������');
define('MODULE_EMAIL_TEMPLATE_PASSWORD_FORGOTTEN_MAIL_TITLE', '�ѥ���ɥ�ޥ������ �᡼��');
define('MODULE_EMAIL_TEMPLATE_PASSWORD_FORGOTTEN_MAIL_SUBJECT', '�������ѥ���ɤΤ��Τ餻');
define('MODULE_EMAIL_TEMPLATE_PASSWORD_FORGOTTEN_MAIL_BODY', '
[CUSTOMER_NAME] ��

�����Ѥ��꤬�Ȥ��������ޤ���

�������ѥ���ɤο���������դ��ޤ�����

�������ѥ���ɤ�

   [NEW_PASSWORD]

�Ǥ���

�������ѥ���ɤǥ����󤷤���
�֥ޥ��ڡ����פǤ���˾�Υѥ���ɤ��ѹ��Ǥ��ޤ���

-----
���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���
���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�
xxxxxxx@example.org �ޤǤ�Ϣ����������

-----
Copyright (c) XXXXXXXX Inc. All Rights Reserved
');

define('MODULE_EMAIL_TEMPLATE_STATUS_CHANGE_NO_NOTIFY', 'No');
define('MODULE_EMAIL_TEMPLATE_DATE_FORMAT_LONG',        '%Y/%m/%d ');

define('MODULE_EMAIL_TEMPLATE_SUN', 'SUN');
define('MODULE_EMAIL_TEMPLATE_MON', 'MON');
define('MODULE_EMAIL_TEMPLATE_TUE', 'TUE');
define('MODULE_EMAIL_TEMPLATE_WED', 'WED');
define('MODULE_EMAIL_TEMPLATE_THU', 'THU');
define('MODULE_EMAIL_TEMPLATE_FRI', 'FRI');
define('MODULE_EMAIL_TEMPLATE_SAT', 'SAT');

define('MODULE_EMAIL_TEMPLATE_NOT_DELIVERY', 'Non');
define('MODULE_EMAIL_TEMPLATE_INVOSICE_TEXT', '����ʸ�ˤĤ��Ƥξ���ϲ���URL�Ǥ������������ޤ���');
?>
