<?php
    define('MODULE_VALIDATE_EMAIL_EXISTENCE_TITLE',                  '�����Ͽ����Ͽ');
    define('MODULE_VALIDATE_EMAIL_EXISTENCE_DESCRIPTION',            '����Ͽ�ˤ��᡼�륢�ɥ쥹��ͭ�������ǧ���뤿��Υ⥸�塼��Ǥ�');

    define('MODULE_VALIDATE_EMAIL_EXISTENCE_STATUS_TITLE',           '�����Ͽ����Ͽ��ͭ����');
    define('MODULE_VALIDATE_EMAIL_EXISTENCE_STATUS_DESCRIPTION',     '�����Ͽ����Ͽ��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');

    define('MODULE_VALIDATE_EMAIL_EXISTENCE_SORT_ORDER_TITLET',      'ͥ���');
    define('MODULE_VALIDATE_EMAIL_EXISTENCE_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');

    //�֥�å�������
	define('MODULE_VALIDATE_EMAIL_EXISTENCE_BLOCK_TITLE', '�����Ͽ����Ͽ');



	define('EMAIL_MEMBER_INTERIM_REGIST_SUBJECT', STORE_NAME . '���������Ͽ�Τ��Τ餻');
	define('EMAIL_MEMBER_INTERIM_REGIST_GREET_MR', '%s ��' . "\n\n");
	define('EMAIL_MEMBER_INTERIM_REGIST_GREET_MS', '%s ��' . "\n\n");
	define('EMAIL_MEMBER_INTERIM_REGIST_GREET_NONE', '%s ��' . "\n\n");

	define('EMAIL_MEMBER_INTERIM_REGIST_BODY', '
�����٤ϡ��ܥ����㡼���ȥ��������Ͽ�򿽤����ߤ��Ƥ����������꤬�Ȥ��������ޤ�����' . "\n" .
'�⤷�⡢��Ͽ��³�����Ƥ��ʤ��Τˡ����Υ᡼���������줿���ϡ�' . "\n" .
STORE_OWNER_EMAIL_ADDRESS . '���ޤǤ�Ϣ����������' . "\n\n" .

'���Υ᡼��ϡ�����Ͽ�Τ��Τ餻�᡼��Ǥ���' . "\n" .

'����Ͽ��ͭ�����¤�1���֤Ǥ�������ޤǤ�����Ͽ���Ƥ��������ʤ��Ȳ����Ͽ��ͭ���Ȥʤ�ޤ���' . "\n\n" .

'����Ͽ�ξ��֤Ǥϡ������󤹤뤳�ȤϤǤ��ޤ���' . "\n" .
'����Ͽ�塢����Ͽ��λ����1���ַвᤷ�Ƥ��ޤä����ϡ��ǽ餫����Ͽ�򤪴ꤤ�������ޤ���' . "\n\n" .

'����Ͽ�ϡ�Web�֥饦���ǰʲ���URL�إ����������ơ�ɽ�����줿�ؼ��˽��äƼ�³���򤪴ꤤ���ޤ���' . "\n"
	);

	define('EMAIL_MEMBER_REGIST_SUBJECT', STORE_NAME . '�����������Ͽ�Τ��Τ餻');
	define('EMAIL_MEMBER_REGIST_GREET_MR', '%s ��' . "\n\n");
	define('EMAIL_MEMBER_REGIST_GREET_MS', '%s ��' . "\n\n");
	define('EMAIL_MEMBER_REGIST_GREET_NONE', '%s ��' . "\n\n");

	define('EMAIL_MEMBER_REGIST_BODY', '
���ID %s�β����Ͽ����λ�������ޤ�����' . "\n\n" .

'��Ͽ�μ�³�����Ƥ��ʤ��Τˡ����Υ᡼���������줿���ϡ�' . STORE_OWNER_EMAIL_ADDRESS . '���ޤǤ�Ϣ����������' . "\n\n" .

'�����ͤ���Ͽ���Ƥγ�ǧ�������ϥ��С��ڡ�������Ԥ��ޤ�' . "\n"
	);
?>