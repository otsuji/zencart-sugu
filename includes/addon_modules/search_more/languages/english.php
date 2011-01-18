<?php
//
// +----------------------------------------------------------------------+
// |zen-cart Open Source E-commerce                                       |
// +----------------------------------------------------------------------+
// | Copyright (c) 2009 Liquid System Technology, Inc.                    |
// | Author Ohtsuji Takashi                                                   |
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
define('MODULE_SEARCH_MORE_TITLE', '��äȸ���');
define('MODULE_SEARCH_MORE_DESCRIPTION', '������̤��Ф����ɲäǾ������Ǥ���褦�ˤ���⥸�塼��Ǥ���');
define('MODULE_SEARCH_MORE_STATUS_TITLE', '��äȸ�����ͭ����');
define('MODULE_SEARCH_MORE_STATUS_DESCRIPTION', '��äȸ�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');
define('MODULE_SEARCH_MORE_SORT_ORDER_TITLE', 'ͥ���');
define('MODULE_SEARCH_MORE_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');
define('MODULE_SEARCH_MORE_PAGE_MAX_LIST_NAME_TITLE', 'ɽ������ꥹ�ȥܥå����Υ����ȥ�');
define('MODULE_SEARCH_MORE_PAGE_MAX_LIST_NAME_DESCRIPTION', '���ʰ��������ɽ������뾦�ʤο�����ꤹ��ꥹ�ȤΥ�٥����ꤷ�Ƥ����������ǥե�����ͤϡ�ɽ������פǤ���');
define('MODULE_SEARCH_MORE_PAGE_MAX_LIST_VALUE_TITLE', 'ɽ������ꥹ�ȥܥå�������');
define('MODULE_SEARCH_MORE_PAGE_MAX_LIST_VALUE_DESCRIPTION', '���ʰ��������ɽ������뾦�ʤο�����ꤹ��ꥹ�Ȥ����Ƥ򥫥��(,)���ڤ�ǻ��ꤷ�Ƥ����������ǥե�����ͤϡ�10,25,50,100�פǤ���');
define('MODULE_SEARCH_MORE_SORT_LIST_NAME_TITLE', '�¤��ؤ��ꥹ�ȥܥå����Υ����ȥ�');
define('MODULE_SEARCH_MORE_SORT_LIST_NAME_DESCRIPTION', '���ʰ����Υ����Ƚ����ꤹ��ꥹ�ȤΥ�٥����ꤷ�Ƥ����������ǥե�����ͤϡ��¤��ؤ��פǤ���');

#�֥�å�̾�����
define('MODULE_SEARCH_MORE_BLOCK_TITLE', 'Search More');
define('MODULE_SEARCH_MORE_BLOCK_SEARCH_FORM_TITLE', 'Search More:Search Form');
define('MODULE_SEARCH_MORE_BLOCK_SORT_TITLE', 'Search More��Sort');
define('MODULE_SEARCH_MORE_BLOCK_PAR_PAGE_TITLE', 'Search More��Search Result');

#�������ե�����ǻ��Ѥ���ʸ��
define('HEADING_TITLE_1', 'Advanced Search(Search Result for [%s])');
define('HEADING_TITLE_2', 'Search Again');
define('MODULE_SEARCH_MORE_ENTRY_KEYWORD', 'Keyword');
define('MODULE_SEARCH_MORE_TEXT_SEARCH_IN_DESCRIPTION', 'Search In Product descriptions.');
define('MODULE_SEARCH_MORE_ENTRY_CATEGORIES', 'Categories');
define('MODULE_SEARCH_MORE_ENTRY_INCLUDE_SUBCATEGORIES', 'Include Subcategories');
define('MODULE_SEARCH_MORE_ENTRY_MANUFACTURERS', 'manufactures');
define('MODULE_SEARCH_MORE_ENTRY_PRICE_RANGE', 'Product Price Range');
define('MODULE_SEARCH_MORE_ENTRY_DATE_RANGE', 'Product Entry date');

define('MODULE_SEARCH_MORE_TEXT_SEARCH_HELP_LINK', 'Help [?]');
define('MODULE_SEARCH_MORE_TEXT_ALL_CATEGORIES', 'All categories');
define('MODULE_SEARCH_MORE_TEXT_ALL_MANUFACTURERS', 'All');
define('MODULE_SEARCH_MORE_TEXT_FROM_TO', '-');

define('MODULE_SEARCH_MORE_TEXT_NO_PRODUCTS', 'No products matches this search.');
define('MODULE_SEARCH_MORE_KEYWORD_FORMAT_STRING', 'Please input at least one or more keywords.');
define('MODULE_SEARCH_MORE_ERROR_AT_LEAST_ONE_INPUT', 'Please specify at least one or more search items.');
define('MODULE_SEARCH_MORE_ERROR_INVALID_FROM_DATE', 'The starting date is invalid.');
define('MODULE_SEARCH_MORE_ERROR_INVALID_TO_DATE', 'The end date is invalid.');
define('MODULE_SEARCH_MORE_ERROR_TO_DATE_LESS_THAN_FROM_DATE', '��λ���դϳ������դ�Ʊ��������ʹߤ����դ����Ϥ��Ƥ�������');
define('MODULE_SEARCH_MORE_ERROR_PRICE_FROM_MUST_BE_NUM', '���ʲ��¤ˤϿ��������Ϥ��Ƥ�������');
define('MODULE_SEARCH_MORE_ERROR_PRICE_TO_MUST_BE_NUM', '���ʾ�¤ˤϿ��������Ϥ��Ƥ�������');
define('MODULE_SEARCH_MORE_ERROR_PRICE_TO_LESS_THAN_PRICE_FROM', '���ʾ�¤ϲ��ʲ��¤�Ʊ��������ʾ�ο��������Ϥ��Ƥ�������');
define('MODULE_SEARCH_MORE_ERROR_INVALID_KEYWORDS', '̵���ʥ�����ɤǤ���');
define('MODULE_SEARCH_MORE_TEXT_PRICE_EN'                  ,'��');
define('MODULE_SEARCH_MORE_PRICE_FORMAT_STRING_SAMPLE'     ,'�㡧500������10000');
define('MODULE_SEARCH_MORE_DOB_FORMAT_STRING_SAMPLE'       ,'�㡧2009/01/01������2009/06/30');

#�����ȥ֥�å����Ѥ���ʸ��
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_MODEL'            ,'����');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_MODEL_DESC'       ,'����(�߽�)');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_NAME'             ,'����̾');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_NAME_DESC'        ,'����̾(�߽�)');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_MANUFACTURER'     ,'�᡼����');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_MANUFACTURER_DESC','�᡼����(�߽�)');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_QUANTITY'         ,'�߸�');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_QUANTITY_DESC'    ,'�߸�(�߽�)');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_WEIGHT'           ,'�Ť�');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_WEIGHT_DESC'      ,'�Ť�(�߽�)');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_PRICE'            ,'����');
define('MODULE_SEARCH_MORE_TEXT_INFO_SORT_BY_PRODUCTS_PRICE_DESC'       ,'����(�߽�)');

define('MODULE_SEARCH_MORE_TEXT_DISPLAY', '<img src="includes/templates/sugudeki/buttons/japanese/button_display_small.gif" width="37" height="23" alt="ɽ��" />');
