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

define('MODULE_VISITORS_TITLE', '�ӥ������⥸�塼��');
define('MODULE_VISITORS_DESCRIPTION', '�ӥ������⥸�塼��');
define('MODULE_VISITORS_STATUS_TITLE', '�ӥ������⥸�塼���ͭ����');
define('MODULE_VISITORS_STATUS_DESCRIPTION', '�ӥ������⥸�塼���ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');
define('MODULE_VISITORS_CUSTOMERS_DATA_KEEP_DAYS_TITLE', '�ӥ������θܵҥǡ�������¸���Ƥ�������');
define('MODULE_VISITORS_CUSTOMERS_DATA_KEEP_DAYS_DESCRIPTION', '�ӥ������θܵҥǡ������ʹ��������鲿������¸���뤫�����ꤷ�ޤ������ꤷ��������Ķ����ȼ�ưŪ�˥ӥ������θܵҥǡ������ǡ����١�������������ޤ�����ư������ʤ����϶���ˤ��ޤ���<br />������� = ' . MODULE_VISITORS_CUSTOMERS_DATA_KEEP_DAYS_DEFAULT);
define('MODULE_VISITORS_SORT_ORDER_TITLE', 'ͥ���');
define('MODULE_VISITORS_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');

define('NOT_INCLUDE_VISITORS_ALL_CUSTOMETS', '�ӥ�������������Ƥθܵ�');
define('NOT_INCLUDE_VISITORS_ALL_NEWSLETTER_SUBSCIBERS', '�ӥ�������������ƤΥ᡼��ޥ�������ɼ�');
define('NOT_INCLUDE_VISITORS_DORMANT_CUSTOMERS_LAST_3MONTHS_SUBSCIBERS', '�ӥ������������̲��θܵ� (������Ķ����ʸ) (�᡼��ޥ�������ɼԤΤ�)');
define('NOT_INCLUDE_VISITORS_ACTIVE_CUSTOMERS_IN_PAST_3MONTHS_SUBSCIBERS', '�ӥ����������������̤������ʸ�����ä���ȯ�ʸܵ� (�᡼��ޥ�������ɼԤΤ�)');
define('NOT_INCLUDE_VISITORS_ACTIVE_CUSTOMERS_IN_PAST_3MONTHS_REGARDLESS_OF_SUBSCRIPTION_STATUS', '�ӥ����������������̤������ʸ�����ä���ȯ�ʸܵ� (�᡼��ޥ�������ɼԤǤʤ��Ȥ�)');

define('TEXT_VISITORS_ACCOUNT', '�ӥ�����');
define('BUTTON_IMAGE_VISITOR','button_visitor.gif');

//�����Ͽ
define('MODULE_VISITORS_TABLE_HEADING_NAME', '̾��');
define('MODULE_VISITORS_ENTRY_NAME', '��̾�ʴ�����');
define('MODULE_VISITORS_ENTRY_KANA', '��̾�ʤҤ餬�ʡ�');
define('MODULE_VISITORS_ENTRY_SAMPLE_01', 'Ⱦ�ѱѿ������㡧who@example.co.jp');
define('MODULE_VISITORS_ENTRY_SAMPLE_02', 'Ⱦ�ѱѿ�����5ʸ���ʾ�');
define('MODULE_VISITORS_ENTRY_SAMPLE_03', '��ǧ�Τ���⤦���٥ѥ���ɤ����Ϥ��Ƥ�������');
define('MODULE_VISITORS_ENTRY_SAMPLE_04', ''); // �㡧����');
define('MODULE_VISITORS_ENTRY_SAMPLE_05', ''); // �㡧��Ϻ');
define('MODULE_VISITORS_ENTRY_SAMPLE_06', ''); // �㡧�ˤۤ�');
define('MODULE_VISITORS_ENTRY_SAMPLE_07', ''); // �㡧����');
define('MODULE_VISITORS_ENTRY_SAMPLE_08', 'Ⱦ�ѿ������ϥ��ե�(-)���ꡡ�㡧 123-4567');
define('MODULE_VISITORS_ENTRY_SAMPLE_09', '�㡧 ��ë��');
define('MODULE_VISITORS_ENTRY_SAMPLE_10', '�㡧 ����Į1-2-3');
define('MODULE_VISITORS_ENTRY_SAMPLE_11', '�㡧 �����ޥ󥷥��������漼');
define('MODULE_VISITORS_ENTRY_SAMPLE_12', 'Ⱦ�ѿ������ϥ��ե�(-)���ꡡ�㡧 03-1234-5678');
define('MODULE_VISITORS_ENTRY_SAMPLE_13', '�㡧 1970/05/21');
define('MODULE_VISITORS_ENTRY_SAMPLE_00', '<a href="http://www.post.japanpost.jp/zipcode/" target="_blank">͹���ֹ��Ĵ�٤�</a>');

// �Ҥ餬�ʥ����å�
// ������,��,��,��
define('ENTRY_HIRAKANA_REGEXP',    '/^(\x82[\x9f-\xf1]|\x81[\x4a\x4b\x5b]|'.
                                   '\xa4[\xa1-\xf3]|\xa1[\xab\xac\xbc]|'.
                                   '\xe3\x81[\x81-\xbf]|\xe3\x82[\x9b\x9c]|\xe3\x83\xbc)+$/');
define('ENTRY_HIRAKANA_REGEXP_JS', '/^[��-�󡫡���]+$/');
define('ENTRY_HIRAKANA_NOMATCH',   '�����ѤҤ餬�ʤΤ����ϤǤ��ޤ�');

define('MODULE_VISITORS_BUTTON_IMAGE_CHECKOUT_SHIPPING', 'button_checkout_shipping.gif');
define('MODULE_VISITORS_BUTTON_CHECKOUT_SHIPPING_ALT',   '������������Ϥؿʤ�');
define('MODULE_VISITORS_BUTTON_IMAGE_REGISTER',          'button_register.gif');
define('MODULE_VISITORS_BUTTON_REGISTER_ALT',            '��Ͽ����');
define('MODULE_VISITORS_BUTTON_IMAGE_CHANGE_ORAGE',      'button_change_orage.gif');
define('MODULE_VISITORS_BUTTON_CHANGE_ALT',              '�ѹ�����');

