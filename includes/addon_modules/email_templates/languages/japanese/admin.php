<?php
define('TEXT_EMAIL_TEMPLATE_NEW_GROUP', ' or �������롼��: ');
define('TEXT_EMAIL_TEMPLATE_NO_GROUP', ' ���롼�פ�����ޤ��� ���롼�פ���ꤷ�Ƥ���������');
define('TEXT_EMAIL_TEMPLATE_OTHER_GROUP', ' ���Υ��롼��̾�ϻ���Ǥ��ޤ����̤ʥ��롼��̾����ꤷ�Ƥ���������');
define('HEADING_TITLE', 'Email�ƥ�ץ졼��');
define('TITLE_ADD_EMAIL_TEMPLATE', 'Email�ơ��ץ졼���ɲ�');
define('TITLE_LIST_EMAIL_TEMPLATE', 'Email�ơ��ץ졼�Ȱ���');
define('TABLE_HEADING_UPDATE', 'Email�ơ��ץ졼�ȹ���');
define('TABLE_HEADING_ADD', TITLE_ADD_EMAIL_TEMPLATE);
define('TABLE_HEADING_GROUP', '���롼��');
define('TABLE_HEADING_TITLE', '�����ȥ�');
define('TABLE_HEADING_EMAIL_SUBJECT', '�᡼���̾');
define('TABLE_HEADING_EMAIL_CONTENTS', '�᡼����ʸ');
define('TABLE_HEADING_LAST_UPDATE', '�ǽ�������');
define('TABLE_HEADING_ACTION', '���');

if ((int)$_REQUEST['id'] == MODULE_EMAIL_TEMPLATE_CREATE_ACCOUNT_MAIL_ID) {
  if (defined('EMOBILE_APPLIES_LETTER')) {
    define('TABLE_HEADING_HELP', '
    	<p><u>ͽ��Ѥߤ�ñ��:</u></p>
    	<font color="blue">[CUSTOMER_NAME]</font>:&nbsp;�ܵҤ�̾�����ִ�����ޤ�<br>
    	<font color="blue">[CUSTOMER_EMAIL]</font>:&nbsp;�ܵҤΥ᡼�륢�ɥ쥹���ִ�����ޤ�<br>
    	<font color="blue">[CUSTOMER_DOB]</font>:&nbsp;�ܵҤ����������ִ�����ޤ�<br>
    	<font color="blue">[CUSTOMER_PHONE]</font>:&nbsp;�ܵҤ������ֹ���ִ�����ޤ�<br>
    	<font color="blue">[CUSTOMER_FAX]</font>:&nbsp;�ܵҤ�FAX�ֹ���ִ�����ޤ�<br>
    ');
  }
  else {
    define('TABLE_HEADING_HELP', '
    	<p><u>ͽ��Ѥߤ�ñ��:</u></p>
    	<font color="blue">[CUSTOMER_NAME]</font>:&nbsp;�ܵҤ�̾�����ִ�����ޤ�<br>
    	<font color="blue">[CUSTOMER_EMAIL]</font>:&nbsp;�ܵҤΥ᡼�륢�ɥ쥹���ִ�����ޤ�<br>
    	<font color="blue">[CUSTOMER_DOB]</font>:&nbsp;�ܵҤ����������ִ�����ޤ�<br>
    	<font color="blue">[CUSTOMER_PHONE]</font>:&nbsp;�ܵҤ������ֹ���ִ�����ޤ�<br>
    	<font color="blue">[CUSTOMER_FAX]</font>:&nbsp;�ܵҤ�FAX�ֹ���ִ�����ޤ�<br>
    ');
  }
}
else if ((int)$_REQUEST['id'] == MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_MAIL_ID) {
  define('TABLE_HEADING_HELP', '
  	<p><u>ͽ��Ѥߤ�ñ��:</u></p>
  	<font color="blue">[CUSTOMER_NAME]</font>:&nbsp;�ܵҤ�̾�����ִ�����ޤ�<br>
  	<font color="blue">[ORDER_ID]</font>:&nbsp;��ʸID���ִ�����ޤ�<br>
  	<font color="blue">[DATE_ORDERED]</font>:&nbsp;��ʸ���դ��Ѵ�����ޤ�<br>
  	<font color="blue">[INVOICE_URL]</font>:&nbsp;��ʸ����URL���Ѵ�����ޤ�<br>
  	<font color="blue">[PRODUCTS_ORDERED]</font>:&nbsp;����̾���Ѵ�����ޤ�<br>
  	<font color="blue">[TOTALS]</font>:&nbsp;��۹�פ��Ѵ�����ޤ�<br>
  	<font color="blue">[DELIVERY_ADDRESS]</font>:&nbsp;�����轻����Ѵ�����ޤ�<br>
  	<font color="blue">[BILLING_ADDRESS]</font>:&nbsp;�����轻����Ѵ�����ޤ�<br>
  	<font color="blue">[PAYMENT_METHOD]</font>:&nbsp;��ʧ��ˡ���Ѵ�����ޤ�<br>
  	<font color="blue">[COMMENT]</font>:&nbsp;��������Ѵ�����ޤ�<br>
  ');
}
else if ((int)$_REQUEST['id'] == MODULE_EMAIL_TEMPLATE_CHECKOUT_SUCCESS_VISITOR_MAIL_ID) {
  define('TABLE_HEADING_HELP', '
  	<p><u>ͽ��Ѥߤ�ñ��:</u></p>
  	<font color="blue">[CUSTOMER_NAME]</font>:&nbsp;�ܵҤ�̾�����ִ�����ޤ�<br>
  	<font color="blue">[ORDER_ID]</font>:&nbsp;��ʸID���ִ�����ޤ�<br>
  	<font color="blue">[DATE_ORDERED]</font>:&nbsp;��ʸ���դ��Ѵ�����ޤ�<br>
  	<font color="blue">[PRODUCTS_ORDERED]</font>:&nbsp;����̾���Ѵ�����ޤ�<br>
  	<font color="blue">[TOTALS]</font>:&nbsp;��۹�פ��Ѵ�����ޤ�<br>
  	<font color="blue">[DELIVERY_ADDRESS]</font>:&nbsp;�����轻����Ѵ�����ޤ�<br>
  	<font color="blue">[BILLING_ADDRESS]</font>:&nbsp;�����轻����Ѵ�����ޤ�<br>
  	<font color="blue">[PAYMENT_METHOD]</font>:&nbsp;��ʧ��ˡ���Ѵ�����ޤ�<br>
  	<font color="blue">[COMMENT]</font>:&nbsp;��������Ѵ�����ޤ�<br>
  ');
}
else if ((int)$_REQUEST['id'] == MODULE_EMAIL_TEMPLATE_STATUS_MAIL_ID) {
  define('TABLE_HEADING_HELP', '
  	<p><u>ͽ��Ѥߤ�ñ��:</u></p>
  	<font color="blue">[CUSTOMER_NAME]</font>:&nbsp;�ܵҤ�̾�����ִ�����ޤ�<br>
  	<font color="blue">[ORDER_ID]</font>:&nbsp;��ʸID���ִ�����ޤ�<br>
  	<font color="blue">[INVOICE_URL]</font>:&nbsp;��ʸ����URL���Ѵ�����ޤ�<br>
  	<font color="blue">[DATE_ORDERED]</font>:&nbsp;��ʸ�����Ѵ�����ޤ�<br>
  	<font color="blue">[PRODUCTS_ORDERED]</font>:&nbsp;����̾���Ѵ�����ޤ�<br>
  	<font color="blue">[TOTALS]</font>:&nbsp;��۹�פ��Ѵ�����ޤ�<br>
  	<font color="blue">[DELIVERY_ADDRESS]</font>:&nbsp;�����轻����Ѵ�����ޤ�<br>
  	<font color="blue">[BILLING_ADDRESS]</font>:&nbsp;�����轻����Ѵ�����ޤ�<br>
  	<font color="blue">[PAYMENT_METHOD]</font>:&nbsp;��ʧ��ˡ���Ѵ�����ޤ�<br>
  ');
}
else {
  define('TABLE_HEADING_HELP', '
  	<p><u>ͽ��Ѥߤ�ñ��:</u></p>
  	<font color="blue">[CUSTOMER_NAME]</font>:&nbsp;�ܵҤ�̾�����ִ�����ޤ�<br>
  	<font color="blue">[ORDER_ID]</font>:&nbsp;��ʸID���ִ�����ޤ�<br>
  	<font color="blue">[INVOICE_URL]</font>:&nbsp;��ʸ����URL���Ѵ�����ޤ�<br>
  ');
}

define('TEXT_EMAIL_TEMPLATE_DELETE', '�������');
define('TEXT_EMAIL_TEMPLATE_ADDED_MESSAGE', 'Email�ƥ�ץ졼�ȡ�%s�ˤ��ɲä��ޤ�����');
define('TEXT_EMAIL_TEMPLATE_UPDATED_MESSAGE', 'Email�ƥ�ץ졼�ȡ�%s�ˤ򹹿����ޤ�����');
define('TEXT_EMAIL_TEMPLATE_TITLE_EMPTY', 'Email�ƥ�ץ졼�ȤΥ����ȥ뤬̤���ϤǤ���');
define('TEXT_EMAIL_TEMPLATE_GROUP_EMPTY', 'Email�ƥ�ץ졼�ȤΥ��롼�פ�̤���ϤǤ���');
?>
