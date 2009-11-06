<?php
//
// +----------------------------------------------------------------------+
// |zen-cart Open Source E-commerce                                       |
// +----------------------------------------------------------------------+
// | Copyright (c) 2003 The zen-cart developers                           |
// |                                                                      |
// | http://www.zen-cart.com/index.php                                    |
// |                                                                      |
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
//  $Id: cache.php 1105 2005-04-04 22:05:35Z birdbrain $
//

define('HEADING_TITLE',       '�������̥���ץ�����');

define('TEXT_INFORMATION',    '�������̳ƹ��ܤ�ɽ������ɽ�������ꤷ�Ƥ�������');

define('TEXT_DISPLAY',        'ɽ������');
define('TEXT_CHANGE',         '�ѹ����ʤ�');

define('TEXT_UPDATE',         '����');
define('TEXT_UPDATE_SUCCESS', '���ꤷ�ޤ���');

// �ʲ�ɽ�����ܤ����
// �ֹ��Ϣ�֤�ɬ�פ�����ޤ�
// type:D ɽ��,��ɽ��
// type:C �ѹ�,����
$easy_admin_simplify_config   = array();
$easy_admin_simplify_config[] = array(
  'title' => '���ƥ������',
  'item'  => array(
    array('type'=>'D', 'key'=>'CATEGORY_LANGUAGE',          'description'=>'���ܸ�ʳ������Ϲ���'),
    array('type'=>'D', 'key'=>'CATEGORY_PRICE_LINK',        'description'=>'���ʲ��ʴ����ؤΥ��'),
    array('type'=>'D', 'key'=>'CATEGORY_PRODUCT_TYPE',      'description'=>'�������ʤξ��ʼ���ץ������'),
    array('type'=>'C', 'key'=>'CATEGORY_PRODUCT_ATTRIBUTE', 'description'=>'���ʥ��ץ����ؤΥ��'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '���ʴ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'PRODUCT_LANGUAGE',             'description'=>'���ܸ�ʳ������Ϲ���'),
    array('type'=>'D', 'key'=>'PRODUCT_PRICE_ATTRIBUTE',      'description'=>'����°���ˤ�����'),
    array('type'=>'D', 'key'=>'PRODUCT_TAX_CLASS',            'description'=>'�Ǽ���'),
    array('type'=>'D', 'key'=>'PRODUCT_PRICE_GROSS',          'description'=>'���ʲ��ʡʥ�����'),
    array('type'=>'D', 'key'=>'PRODUCT_PRICE_FREE',           'description'=>'̵������'),
    array('type'=>'D', 'key'=>'PRODUCT_PRICE_CALL',           'description'=>'���ʤ��䤤��碌'),
    array('type'=>'D', 'key'=>'PRODUCT_VIRTUAL',              'description'=>'����������뾦��'),
    array('type'=>'D', 'key'=>'PRODUCT_ALWAYS_FREE_SHIPPING', 'description'=>'�������̵��'),
    array('type'=>'D', 'key'=>'PRODUCT_QUANTITY_ORDER_MAX',   'description'=>'���ʤκǾ�����'),
    array('type'=>'D', 'key'=>'PRODUCT_QUANTITY_ORDER_MIN',   'description'=>'���ʤκ������'),
    array('type'=>'D', 'key'=>'PRODUCT_QUANTITY_ORDER_UNIT',  'description'=>'���ʤο���ñ��'),
    array('type'=>'D', 'key'=>'PRODUCT_QUANTITY_MIXED',       'description'=>'�Ǿ�����/ñ�̥ߥå���'),
    array('type'=>'D', 'key'=>'PRODUCT_WEIGHT',               'description'=>'���ʽ���'),
    array('type'=>'D', 'key'=>'PRODUCT_NUMBER_UNIT',          'description'=>'������'),
    array('type'=>'D', 'key'=>'PRODUCT_META_TAGS_USAGE',      'description'=>'�᥿�����Ǥ���ս�'),
    array('type'=>'D', 'key'=>'PRODUCT_CATEGORY_MANAGER',     'description'=>'ʣ���Υ��ƥ��꤬�ޥ͡��������'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '��ʸ���ơ���������',
  'item'  => array(
    array('type'=>'D', 'key'=>'ORDER_STATUS_LANGUAGE', 'description'=>'���ܸ�ʳ������Ϲ���'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '�ܵҴ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'CUSTOMERS_GROUP_PRICING', 'description'=>'���롼�׳��'),
    array('type'=>'D', 'key'=>'CUSTOMERS_REFERRAL',      'description'=>'�����£��'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '�᡼�����δ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'MANUFACTURERS_LANGUAGE', 'description'=>'���ܸ�ʳ������Ϲ���'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '�ò����ʤδ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'SPECIALS_PRICE_LINK',  'description'=>'���ʤδ����ؤΥ��'),
    array('type'=>'D', 'key'=>'SPECIALS_EDIT_LINK',   'description'=>'�Խ��ؤΥ��'),
    array('type'=>'D', 'key'=>'SPECIALS_PRE_ADD',     'description'=>'����ؤΥ��'),
    array('type'=>'D', 'key'=>'SPECIALS_NUMBER_UNIT', 'description'=>'������'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '�������ᾦ�ʤδ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'FEATURED_PRICE_LINK', 'description'=>'���ʤδ����ؤΥ��'),
    array('type'=>'D', 'key'=>'FEATURED_EDIT_LINK',  'description'=>'�Խ��ؤΥ��'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '���ʥ��ץ����̾�δ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'OPTIONS_NAME_LANGUAGE',   'description'=>'���ܸ�ʳ������Ϲ���'),
    array('type'=>'D', 'key'=>'OPTIONS_NAME_BIG_MODIFY', 'description'=>'��Ϣ���礭���ѹ�'),
    array('type'=>'D', 'key'=>'OPTIONS_NAME_LENGTH',     'description'=>'�ƥ�����°����Ĺ��'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '���ʥ��ץ�����ͤδ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'OPTIONS_VALUES_LANGUAGE', 'description'=>'���ܸ�ʳ������Ϲ���'),
    array('type'=>'D', 'key'=>'OPTIONS_VALUES_COPY',     'description'=>'���ԡ����'),
    array('type'=>'D', 'key'=>'OPTIONS_VALUES_COPIER',   'description'=>'�������ᾦ�ʥץ������'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '���ʥ��ץ����°���δ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_MODIFY',       'description'=>'���ʤ���Ӳ����Խ��ܥ���'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_CATEGORY',     'description'=>'ʣ�����ƥ���Υ�󥯴����ؤΥ��'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_NUMBER_UNIT',  'description'=>'������'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_WEIGHT',       'description'=>'°���ν���'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_ONETIME',      'description'=>'°���Υ�󥿥����Ͱ���'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_PRICE_FACTOR', 'description'=>'°���Υץ饤���ե�������'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_QTY_PRICES',   'description'=>'�����Ͱ���'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_PRICE_WORDS',  'description'=>'ñ��/ʸ���Ͱ���'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_FLAGS',        'description'=>'°���ե饰'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_IMAGE',        'description'=>'���ץ�������'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_CATEGORIES',   'description'=>'���ƥ�������ץ������'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_PRODUCTS',     'description'=>'��������ץ������'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_LEGEND',       'description'=>'°������'),
    array('type'=>'D', 'key'=>'ATTRIBUTES_CONTROLLER_COLUMN',       'description'=>'����,°��,�Ͱ�����'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '�Хʡ��δ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'BANNER_MANAGER_NEW_GROUP',    'description'=>'�������Хʡ�'),
    array('type'=>'D', 'key'=>'BANNER_MANAGER_IMAGE_LOCAL',  'description'=>'�����ե�����̾������'),
    array('type'=>'D', 'key'=>'BANNER_MANAGER_IMAGE_TARGET', 'description'=>'��������¸��'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '����å����̤�����',
  'item'  => array(
    array('type'=>'D', 'key'=>'CONFIGURATION_1_2',  'description'=>'����åץ����ʡ�̾'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_5',  'description'=>'����ͽ�꾦�ʤΥ����Ƚ�'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_6',  'description'=>'����ͽ�꾦�ʤΥ����Ƚ���Ѥ���ե������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_7',  'description'=>'ɽ��������̲ߤ�Ϣư'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_8',  'description'=>'ɽ�����������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_10', 'description'=>'���ʤ��ɲø�˥����Ȥ�ɽ��'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_11', 'description'=>'�ǥե���Ȥθ����黻��'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_13', 'description'=>'���ƥ�����ξ��ʿ���ɽ��'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_14', 'description'=>'�ǳۤξ���������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_15', 'description'=>'���ʤ��ǹ��ߤ�ɽ��'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_16', 'description'=>'���ʤ��ǹ��ߤ�ɽ�� - ��������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_17', 'description'=>'���ʤˤ������ǳۤλ�����'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_18', 'description'=>'�����ˤ������ǳۤλ�����'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_19', 'description'=>'�Ƕ��ɽ��'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_23', 'description'=>'����åפΥ��ơ�����'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_20', 'description'=>'�������̤Υ����ॢ��������(�ÿ�)'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_21', 'description'=>'�������̤Υץ��������ξ�»�������(��)'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_22', 'description'=>'Zen Cart���С������μ�ư�����å�(�إå��ǹ��Τ��뤫�ݤ�)'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_24', 'description'=>'�����Фβ�ư����(���åץ�����)'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_25', 'description'=>'����ڤ�ڡ����Υ����å�'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_26', 'description'=>'HTML���ǥ���'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_27', 'description'=>'phpBB�ؤΥ�󥯤�ɽ��'),
    array('type'=>'D', 'key'=>'CONFIGURATION_1_28', 'description'=>'���ƥ�����ξ��ʿ���ɽ�� - ��������'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '�᡼�������',
  'item'  => array(
    array('type'=>'D', 'key'=>'CONFIGURATION_12_206', 'description'=>'�᡼������ - ��³��ˡ'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_212', 'description'=>'�᡼��β��ԥ�����'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_213', 'description'=>'�᡼��������MIME HTML�����'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_214', 'description'=>'�᡼�륢�ɥ쥹��DNS�ǳ�ǧ'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_215', 'description'=>'�᡼�������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_216', 'description'=>'�᡼����¸������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_217', 'description'=>'�᡼���������顼��ɽ��'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_220', 'description'=>'�����᡼������������ɥ쥹�μº���'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_221', 'description'=>'�����Ԥ���������᡼��ե����ޥå�'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_227', 'description'=>'���եȷ����ե᡼��(���ԡ�)������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_228', 'description'=>'���եȷ����ե᡼��(���ԡ�)��������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_229', 'description'=>'����åױ��ļԤ���Υ��եȷ����ե᡼��(���ԡ�)������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_230', 'description'=>'����åױ��ļԤ���Υ��եȷ����ե᡼��(���ԡ�)��������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_231', 'description'=>'����åױ��ļԤ���Υ����ݥ�����ե᡼��(���ԡ�)������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_232', 'description'=>'����åױ��ļԤ���Υ����ݥ�����ե᡼��(���ԡ�)��������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_233', 'description'=>'����åױ��ļԤ���ʸ���ơ������᡼��(���ԡ�)������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_234', 'description'=>'����åױ��ļԤ���ʸ���ơ������᡼��(���ԡ�)��������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_235', 'description'=>'�Ǻ��Ԥ���ӥ塼�ˤĤ��ƥ᡼������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_236', 'description'=>'�Ǻ��Ԥ���ӥ塼�ˤĤ��ƤΥ᡼��������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_237', 'description'=>'�֤��䤤��碌�ץ᡼��Υɥ�åץ���������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_238', 'description'=>'�����Ȥˡ�ͧã���Τ餻��׵�ǽ�����'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_239', 'description'=>'�֤��䤤��碌�פ˥���å�̾�Ƚ����ɽ��'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_240', 'description'=>'�߸ˤ鷺���ˤʤä���᡼������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_242', 'description'=>'�֥᡼��ޥ�����ι��ɲ���ץ�󥯤�ɽ��'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_243', 'description'=>'����饤��桼��������ɽ������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_207', 'description'=>'SMTPǧ�� - �᡼�륢�������'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_208', 'description'=>'SMTPǧ�� - �ѥ����'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_209', 'description'=>'SMTPǧ�� - DNS̾'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_210', 'description'=>'SMTPǧ�� - IP�ݡ����ֹ�'),
    array('type'=>'D', 'key'=>'CONFIGURATION_12_211', 'description'=>'�ƥ����ȥ᡼��Ǥβ�ʾ���Ѵ�'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '��ʸ��ץ⥸�塼�������',
  'item'  => array(
    array('type'=>'D', 'key'=>'MODULES_OT_SHIPPING', 'description'=>'�����⥸�塼��'),
    array('type'=>'D', 'key'=>'MODULES_OT_SUBTOTAL', 'description'=>'���ץ⥸�塼��'),
    array('type'=>'D', 'key'=>'MODULES_OT_TOTAL',    'description'=>'��ץ⥸�塼��'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => 'Super orders',
  'item'  => array(
    array('type'=>'D', 'key'=>'SUPER_ORDERS_PAYMENT',     'description'=>'��ʧ����'),
    array('type'=>'D', 'key'=>'SUPER_ORDERS_FINAL',       'description'=>'��ʸ�ǽ�����'),
    array('type'=>'D', 'key'=>'SUPER_ORDERS_SPLIT',       'description'=>'�����ʬ��'),
    array('type'=>'D', 'key'=>'SUPER_ORDERS_PRODUCTS',    'description'=>'���ʤ���'),
    array('type'=>'D', 'key'=>'SUPER_ORDERS_NUMBER_UNIT', 'description'=>'������'),
  )
);
$easy_admin_simplify_config[] = array(
  'title' => '������δ���',
  'item'  => array(
    array('type'=>'D', 'key'=>'SALEMAKER_NUMBER_UNIT', 'description'=>'������'),
  )
);
?>