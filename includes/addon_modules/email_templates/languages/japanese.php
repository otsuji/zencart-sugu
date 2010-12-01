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

define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_GRP', '�桼������Ͽ');
define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_TITLE', '�桼������Ͽ���꤬�Ȥ��������ޤ�');
define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_SUBJECT', '�桼������Ͽ���꤬�Ȥ��������ޤ�');
define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_BODY', '�桼������Ͽ���꤬�Ȥ��������ޤ�

���줫����������ꤤ���ޤ���');

define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_GRP', '��ʸ��λ');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_TITLE', '����ʸ���꤬�Ȥ��������ޤ�[�����]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_SUBJECT', '����ʸ���꤬�Ȥ��������ޤ�[�����]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_BODY', '��ʸ��ǧ�� from XXXXXXXX

[CUSTOMER_NAME] ��

�����Ѥ��꤬�Ȥ��������ޤ���
����ʸ���Ƥϰʲ����̤�Ǥ���
------------------------------------------------------
����ʸ�ֹ�: [ORDER_ID]
����ʸ��: [DATE_ORDERED]
�������ٽ�:
[INVOICE_URL]

[COMMENT]

����
------------------------------------------------------
[PRODUCTS_ORDERED]
------------------------------------------------------
[TOTALS]

���Ϥ���
------------------------------------------------------
[DELIVERY_ADDRESS]

�����轻��
------------------------------------------------------
[BILLING_ADDRESS]

����ʧ����ˡ
------------------------------------------------------
[PAYMENT_METHOD]


-----
���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���
���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�
xxxxxxx@example.org �ޤǤ�Ϣ����������

-----
Copyright (c) XXXXXXXX Inc. All Rights Reserved
');

define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_GRP', '��ʸ��λ');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_TITLE', '����ʸ���꤬�Ȥ��������ޤ�[��������]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_SUBJECT', '����ʸ���꤬�Ȥ��������ޤ�[��������]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_BODY', '��ʸ��ǧ�� from XXXXXXXX

[CUSTOMER_NAME] ��

�����Ѥ��꤬�Ȥ��������ޤ���
����ʸ���Ƥϰʲ����̤�Ǥ���
------------------------------------------------------
����ʸ�ֹ�: [ORDER_ID]
����ʸ��: [DATE_ORDERED]

[COMMENT]

����
------------------------------------------------------
[PRODUCTS_ORDERED]
------------------------------------------------------
[TOTALS]

���Ϥ���
------------------------------------------------------
[DELIVERY_ADDRESS]

�����轻��
------------------------------------------------------
[BILLING_ADDRESS]

����ʧ����ˡ
------------------------------------------------------
[PAYMENT_METHOD]


-----
���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���
���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�
xxxxxxx@example.org �ޤǤ�Ϣ����������

-----
Copyright (c) XXXXXXXX Inc. All Rights Reserved
');

define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_GRP',     '�桼������');
define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_TITLE',   '���ơ������ѹ�');
define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_SUBJECT', '����ʸ���վ����Τ��Τ餻');
define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_BODY', '
[CUSTOMER_NAME] ��

�����Ѥ��꤬�Ȥ��������ޤ���
[DATE_ORDERED]�ˤ����Ѥ���������
����ʸ�����ֹ桧[ORDER_ID]�ξ������ѹ�����ޤ����ΤǤ��Τ餻���ޤ���

����ʸ�ˤĤ��Ƥξ���ϲ���URL�Ǥ������������ޤ���
[INVOICE_URL]

��������ꤤ���ޤ���

-----
���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���
���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�
xxxxxxx@example.org �ޤǤ�Ϣ����������

-----
Copyright (c) XXXXXXXX Inc. All Rights Reserved
');

define('MODULE_EMAIL_TEMPLATE_STATUS_CHANGE_NO_NOTIFY', '���ʤ�');
define('MODULE_EMAIL_TEMPLATE_DATE_FORMAT_LONG',        '%Yǯ%m��%d�� ');

?>