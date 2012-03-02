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

define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_GRP', '�桼������Ͽ');
define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_TITLE', '�桼������Ͽ��λ�᡼��');
define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_SUBJECT', '��֤�ǣ££ѡ������Ͽ��λ�Τ��Τ餻');
define('MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_BODY', 
'[CUSTOMER_NAME] ��

���Τ��Ӥ����ҥ����֥����Ȥˤơ�����Ͽ�����������꤬�Ȥ��������ޤ�����

���ҥ����֥����ȤˤƤ���Ͽ������������������Ȥǡ������ͤϤ��줫��
�ʲ��������ʥ����ӥ������Ѥ��������ޤ���

����ͽ�󥫡���
��ͽ�������ͽ�������Ϳ��������å�������֤���Ӥ���ʸ�ξ��ʾ���ϡ�
����ޤ��Ϥ�ͽ��λ����ޤ��ݻ����Ƥ���ޤ������١������󤷤�
����������Ф�ͽ�󥫡��Ȥ���������ǽ�Ǥ���

�������;���γ�ǧ���ѹ�
�ޥ��ڡ������顢�����ͤΤ�����ʤɤ��ǧ���ѹ�����ǽ�Ǥ���
�ѥ���ɤ��ѹ���ޥ��ڡ����ˤ��б���ǽ�Ǥ���

����ʸ����
�ޥ��ڡ������顢��ͽ�󤤤��������������ǧ���뤳�Ȥ��Ǥ��ޤ���
��ͽ����ѹ�������󥻥�⤳���餫��Ԥ��ޤ���

��������ʤɤϡ������ޤǤˤ��䤤�礻���������ޤ��ͤ��ꤤ���ޤ���

/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/
Open AIR! BBQ GARDEN����֤�ǣ££�
��Phone��042-480-5455
��Mail��bbq-village@herofield.com
/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/');

define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_GRP', '��ʸ��λ');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_TITLE', '��ͽ��λ�Τ��Τ餻[�����]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_SUBJECT', '��ͽ��λ�Τ��Τ餻');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_BODY', 
'���Τ��Ӥ����ҥ����֥����Ȥ�ꤴͽ�󤤤����������ˤ��꤬�Ȥ��������ޤ���
�ʲ������ƤǤ�ͽ��򾵤�ޤ�����

[CUSTOMER_NAME] ��

���դ������� [DATE_ORDERED]

����ͽ���ֹ�
     [BOOKING_NUMBER]
��������������ͽ���ֹ�����ڤˤ���������������
������������ͽ�����Ƥ��ѹ�������󥻥�κݤ�ɬ�פȤʤ�ޤ���

����������
    [BOOKING_INFO]

�������ѿͿ�
    ��͡���[ADULTS] ̾
    �Ҷ��ʾ��������ˡ�[CHILDREN] ̾
    ̤���ػ���[BABYES] ̾
------------------------------------------------------
     ��� ��[TOTAL] ̾ (���+�Ҷ��οͿ�)

������������
[PRODUCTS_ORDERED]
------------------------------------------------------
[TOTALS]

������ʧ����ˡ
[PAYMENT_METHOD]

��������
[COMMENT]

�㤴���Ѿ����ջ����
[VENUE_TERM]

������ˤ�ͽ���ֹ�Ȥ�̾�����ǧ�����Ƥ��������ޤ���
�������κݤϡ����롼�פγ����ޤ����ˤ����줯��������

��ͽ�󤢤꤬�Ȥ��������ޤ���
�����Τ������Ԥ����Ƥ���ޤ���

��������ʤɤϡ������ޤǤˤ��䤤�礻���������ޤ��ͤ��ꤤ���ޤ���

/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/
[VENUE_NAME]
[VENUE_INFO]
/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/');

define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_GRP', '��ʸ��λ');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_TITLE', '̤����');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_SUBJECT', '����ʸ���꤬�Ȥ��������ޤ�[��������]');
define('MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_BODY', '');

define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_GRP',     '�桼������');
define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_TITLE',   '���ơ������ѹ�');
define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_SUBJECT', '����ʸ���վ����Τ��Τ餻');
define('MODULE_EMAIL_TEMPLATE_STATUS_MAIL_BODY', 
'[CUSTOMER_NAME] ��

�����Ѥ��꤬�Ȥ��������ޤ���
[DATE_ORDERED]�ˤ����Ѥ���������
����ʸ�����ֹ桧[ORDER_ID]�ξ������ѹ�����ޤ����ΤǤ��Τ餻���ޤ���

[INVOICE_URL]

[COMMENTS]

��������ꤤ���ޤ���

-----
���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���
���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�
xxxxxxx@example.org �ޤǤ�Ϣ����������

-----
Copyright (c) XXXXXXXX Inc. All Rights Reserved
');

define('MODULE_EMAIL_TEMPLATE_PASSWORD_FORGOTTEN_MAIL_GRP', '�ѥ���ɥ�ޥ������');
define('MODULE_EMAIL_TEMPLATE_PASSWORD_FORGOTTEN_MAIL_TITLE', '�ѥ���ɥ�ޥ������ �᡼��');
define('MODULE_EMAIL_TEMPLATE_PASSWORD_FORGOTTEN_MAIL_SUBJECT', '��֤�ǣ££ѡ��������ѥ���ɤΤ�����');
define('MODULE_EMAIL_TEMPLATE_PASSWORD_FORGOTTEN_MAIL_BODY', 
'[CUSTOMER_NAME] ��

���ҥ����֥����Ȥ����Ѥ����������꤬�Ȥ��������ޤ���


�������ѥ���ɤο���������դ��ޤ�����

�������ѥ���ɤ�

   [NEW_PASSWORD]

�Ǥ���

�������ѥ���ɤǥ����󤷤���
�֥ޥ��ڡ����פǤ���˾�Υѥ���ɤ��ѹ��Ǥ��ޤ���


��������ʤɤϡ������ޤǤˤ��䤤�礻���������ޤ��ͤ��ꤤ���ޤ���

/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/
Open AIR! BBQ GARDEN����֤�ǣ££�
��Phone��042-480-5455
��Mail��bbq-village@herofield.com
/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/');

define('MODULE_EMAIL_TEMPLATE_STATUS_CHANGE_NO_NOTIFY', '���ʤ�');
define('MODULE_EMAIL_TEMPLATE_DATE_FORMAT_LONG',        '%Yǯ%m��%d�� ');

define('MODULE_EMAIL_TEMPLATE_SUN', '������');
define('MODULE_EMAIL_TEMPLATE_MON', '������');
define('MODULE_EMAIL_TEMPLATE_TUE', '������');
define('MODULE_EMAIL_TEMPLATE_WED', '������');
define('MODULE_EMAIL_TEMPLATE_THU', '������');
define('MODULE_EMAIL_TEMPLATE_FRI', '������');
define('MODULE_EMAIL_TEMPLATE_SAT', '������');

define('MODULE_EMAIL_TEMPLATE_NOT_DELIVERY', '̵��');
define('MODULE_EMAIL_TEMPLATE_INVOICE_TEXT', '����ʸ�ˤĤ��Ƥξ���ϲ���URL�Ǥ������������ޤ���');
?>