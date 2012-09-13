<?php
//
// +----------------------------------------------------------------------+
// |zen-cart Open Source E-commerce                                       |
// +----------------------------------------------------------------------+
// | Copyright (c) Voyager Japan, Inc. All rights reserved.               |
// | Author Yuki SHIDA                                                    |
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
define('MODULE_EASY_ADMIN_PRODUCTS_TITLE',                        'Easy Product Management Module');
define('MODULE_EASY_ADMIN_PRODUCTS_DESCRIPTION',                  'Provides the ability to easily handle the goods.');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_TITLE',                 'Activating Easy Product Management Module');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_DESCRIPTION',           '"Easy Product Management Module" is activate when, \'True\' Please select.');
define('MODULE_EASY_ADMIN_PRODUCTS_MAX_ADDITIONAL_IMAGES_TITLE',       '�ɲò����κ���Ŀ�');
define('MODULE_EASY_ADMIN_PRODUCTS_MAX_ADDITIONAL_IMAGES_DESCRIPTION', '�ɲò����κ���Ŀ�����ꤷ�ޤ�');
define('MODULE_EASY_ADMIN_PRODUCTS_SORT_ORDER_TITLE',             'Sort Order');
define('MODULE_EASY_ADMIN_PRODUCTS_SORT_ORDER_DESCRIPTION',       'I can set the priority order of the module. Reading and the disposal of modules are carried out earlier so that a number is small. Please set it not to fall on other modules with a half size number.');

define('BOX_ADDON_MODULES_EASY_ADMIN_PRODUCTS',                   'Easy Product Management');

define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_TITLE',                'Easy Product Management');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_CATEGORY',                'Category');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_TITLE',                   'Products Title');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_MODEL',                   'Products Model');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_MANUFACTURER',            'Products Manufacturer');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_DESCRIPTION',             'Products Description');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_SPECIAL',                 'Special Products');

// for list
// MODULE_EASY_ADMIN_PRODUCTS_HEADING_0, 1, 2, ...
// 
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_0',                    'Category');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_1',                    'Products Name');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_2',                    'Products Model');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_3',                    'Products Price');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_4',                    'Quantity of Stock');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_5',                    'Status');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_6',                    'Sort Order');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_7',                    'Action');
define('MODULE_EASY_ADMIN_PRODUCTS_SEARCH',                       'Search');
define('MODULE_EASY_ADMIN_PRODUCTS_SEARCH_BTN',                       '../includes/addon_modules/easy_admin_products/images/button_search.gif');
define('MODULE_EASY_ADMIN_PRODUCTS_INSERT',                       'New Product');
define('MODULE_EASY_ADMIN_PRODUCTS_INSERT_BTN',                       '../includes/addon_modules/easy_admin_products/images/button_new_product_add.gif');
define('MODULE_EASY_ADMIN_PRODUCTS_LIST',                         'Back to Products List');

define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_SELECT',              'Select');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_ON',                    'Status On');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_OFF',                   'Status Off');

// category list
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_TITLE_LIST',          '*Select Category From List');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_TITLE_SEARCH',        '*Select Category To Search');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_EXPAND',              'Expand');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_SELECT',              'Select');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_TOP',                 'Top');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_SEPARATE',            '&nbsp;>&nbsp;');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_FORMAT',              '��%s��');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_NAME',                'Category Name');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_SEARCH',              'Search');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_DROP',                'Drop');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_RESET',               'Reset');
define('MODULE_EASY_ADMIN_WINDOW_CLOSE_IMG',                      '../includes/addon_modules/easy_admin_products/images/icon_close.gif');
define('MODULE_EASY_ADMIN_WINDOW_CLOSE_ALT',                      'Close');

// special list
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_SELECT',               '[Special Product Refine]');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_DOWNLOAD',             'Download Products');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_FEATURED',             'Featured Products');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_SPECIAL',              'Specials');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_QUANTITY',             'Quantity Discounts Products');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_ARRIVAL',              'Schedule of Arrival of Products');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_DISPLAY',              'Display Products');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_NONDISPLAY',           'No Display Products');

// controll
define('MODULE_EASY_ADMIN_PRODUCTS_EDIT',                         'Edit');
define('MODULE_EASY_ADMIN_PRODUCTS_DELETE',                       'Delete');
define('MODULE_EASY_ADMIN_PRODUCTS_DELETE_BTN',                   '../includes/addon_modules/easy_admin_products/images/button_delete.gif');
define('MODULE_EASY_ADMIN_PRODUCTS_COPY',                         'Copy');
define('MODULE_EASY_ADMIN_PRODUCTS_COPY_BTN',                     '../includes/addon_modules/easy_admin_products/images/button_copy.gif');
define('MODULE_EASY_ADMIN_PRODUCTS_XSELL',                        'XSell');
define('MODULE_EASY_ADMIN_PRODUCTS_XSELL_BTN',                    '../includes/addon_modules/easy_admin_products/images/button_xsel.gif');
define('MODULE_EASY_ADMIN_PRODUCTS_STOCK',                        'Stock');
define('MODULE_EASY_ADMIN_PRODUCTS_STOCK_BTN',                    '../includes/addon_modules/easy_admin_products/images/button_stock.gif');
define('MODULE_EASY_ADMIN_PRODUCTS_SAVE',                         'Save');
define('MODULE_EASY_ADMIN_PRODUCTS_CANCEL',                       'Cancel');
define('MODULE_EASY_ADMIN_PRODUCTS_CANCEL_BTN',                   '../includes/addon_modules/easy_admin_products/images/button_cancel.gif');
define('MODULE_EASY_ADMIN_PRODUCTS_ADD',                          'Add');
define('MODULE_EASY_ADMIN_PRODUCTS_ADD_BTN',                      '../includes/addon_modules/easy_admin_products/images/button_add.gif');

// products
define('MODULE_EASY_ADMIN_PRODUCTS_INDISPENSABILITY',             '<font color="red">Required</font>');
define('MODULE_EASY_ADMIN_PRODUCTS_YES',                          'Yes');
define('MODULE_EASY_ADMIN_PRODUCTS_NO',                           'No');
define('MODULE_EASY_ADMIN_PRODUCTS_DATE_START',                   'Start Date');
define('MODULE_EASY_ADMIN_PRODUCTS_DATE_END',                     'End Date');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_STARTDATE',            'Start Date (YYYY-MM-DD):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ENDDATE',              'End Date (YYYY-MM-DD):');
define('MODULE_EASY_ADMIN_PRODUCTS_INSERT_TITLE',                 'New Products Registration');
define('MODULE_EASY_ADMIN_PRODUCTS_UPDATE_TITLE',                 'A Existing Product Modify');
define('MODULE_EASY_ADMIN_PRODUCTS_BASE_TITLE',                   '*Basic Setting');
define('MODULE_EASY_ADMIN_PRODUCTS_PRICE_TITLE',                  '*Price Details Setting');
define('MODULE_EASY_ADMIN_PRODUCTS_SHIPPING_TITLE',               '*Delivery Setting');
define('MODULE_EASY_ADMIN_PRODUCTS_CART_TITLE',                   '*Additional Cart Setting');
define('MODULE_EASY_ADMIN_PRODUCTS_SEO_TITLE',                    '*SEO Setting');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_STATUS',               'Status:');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_1',                     'Display');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_0',                     'No Display');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_MODEL',                'Model:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_NAME',                 'Products Name:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_TAX',                  'Tax Type:');
define('MODULE_EASY_ADMIN_PRODUCTS_TAX_0',                        'None');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_PRICE',                'Price(Net):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_GROSS',                'Price(Gross):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_IMAGE',                'Image:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_IMAGE_NOTE',           '<br/><font color="red">���åץ��ɤ�������γ�ĥ�Ҥ����ߥ��åץ��ɺѤߤΤ�ΤȰۤʤ���ϡ�<br/>�����ɲò����򥢥åץ��ɤ��Ƥ�������</font>');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ADD_IMAGE',            '�ɲò���:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ADD_IMAGE_NOTE',       '<br/><font color="red">�ɲò����ϥᥤ�������Ʊ����ĥ�Ҥ˼�ưŪ���Ѵ�����ޤ�</font>');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_UPLOAD',               'Upload Directory:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_UPLOAD_NOTE',          '<br/>Do you want to overwrite the existing option image?<br/>If you do not want to overwrite [No] to select and please setting existing file with different name at [Option Image].<br/>');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_DESCRIPTION',          'Products Description:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QUANTITY',             'Products Quantity:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_WEIGHT',               'Products Weight:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_CATEGORY',             'Category:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SORT',                 'Sort Order:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_MANUFACTURER',         'Products Manufacturer:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_URL',                  'Products URL:');
define('MODULE_EASY_ADMIN_PRODUCTS_MANUFACTURER_0',               '--none--');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_DATE_AVAILABLE',       'Date Available(YYYY-MM-DD):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_FEATURED',             'Featured Products:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_OPTION',               '����°���ˤ�����:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_OPTION_TEXT',          '����(�̥�����ɥ��ǳ����ޤ�)');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_OPTION_NOSAVE',        '<font color="red">��¸��������ǽ�Ǥ�</font>');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS',             'Specials:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION',      'Special Price Setting:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION_0',    'Disable');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION_1',    'Option pricing');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION_2',    'Product is Free');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION_3',    'Product is Call for Price');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_VIRTUAL',              'Product is Virtual');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_VIRTUAL_1',            'Yes, Skip Shipping Address');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_VIRTUAL_0',            'No, Shipping Address Required');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SHIPPING',             'Always Free Shipping');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SHIPPING_1',           'Yes, Always Free Shipping');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SHIPPING_0',           'No, Normal Shipping Rules');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SHIPPING_2',           'Special, Product/Download Combo Requires a Shipping Address');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QTY_BOX',              'Products Quantity Box Shows:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QTY_BOX_1',            'Yes, Show Quantity Box');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QTY_BOX_0',            'No, Do not show Quantity Box');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ORDER_MIN',            'Product Qty Minimum:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ORDER_MAX',            'Product Qty Maximum:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ORDER_MAX_NOTE',       '0 = Unlimited, 1 = No Qty Boxes');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ORDER_UNIT',           'Product Qty Units:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QUANTITY_MIX',         'Product Qty Min/Unit Mix:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAG_TITLE',       '&lt;title&gt;Tag:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAG_TITLE_NOTE',  'Choose to insert the specified information<br/>');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_NAME',            'Products Name:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TITLE',           'Title:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_MODEL',           'Model:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_PRICE',           'Price:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAGLINE',         'Predefined Tagline:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_IMMIDIATE',       'Immediate Specify');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAG_KEYWORD',     '&lt;meta&gt;Tag(keywords):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAG_DESCRIPTION', '&lt;meta&gt;Tag(description):');

// open/close
define('MODULE_EASY_ADMIN_PRODUCTS_OPEN',                         '--- [Open] ---');
define('MODULE_EASY_ADMIN_PRODUCTS_CLOSE',                        '--- [Close] ---');

// delete
define('MODULE_EASY_ADMIN_PRODUCTS_DELETE_TITLE',                 'Do you want to really delete a product?');
define('MODULE_EASY_ADMIN_PRODUCTS_DELETE_IMAGE',                 '���β����������ޤ�����');

// copy
define('MODULE_EASY_ADMIN_PRODUCTS_COPY_TITLE',                   'Copying Products');
define('MODULE_EASY_ADMIN_PRODUCTS_COPY_CATEGORY_ORIGINAL',       '<strong>�����ƥ���</strong>');
define('MODULE_EASY_ADMIN_PRODUCTS_COPY_CATEGORY',                '<strong>���ƥ���</strong>��<font color="red">ɬ��</font>');
define('MODULE_EASY_ADMIN_PRODUCTS_COPY_SELECT_TXT',              '');
define('MODULE_EASY_ADMIN_PRODUCTS_COPY_NOTE',                    'Please choose the category you want to copy products [%s]');

// error
define('MODULE_EASY_ADMIN_PRODUCTS_ERROR_MODEL',                  'Products model is required');
define('MODULE_EASY_ADMIN_PRODUCTS_ERROR_MODEL_ALREADY_EXISTS',   '���η��֤�¾�ξ��ʤǻȤ��Ƥ��ޤ�');
define('MODULE_EASY_ADMIN_PRODUCTS_ERROR_CATEGORIES',             'Please select at least one category');

// notice
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_ERROR_SAVE',            'An Error occurred when saving');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_STATUS',                'Status Changed');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_INSERT',                'Product Created');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_UPDATE',                'Product Saved');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_DELETE',                'Deleted %s');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_COPY',                  '%s were copied to %s.');

// xsell
define('MODULE_EASY_ADMIN_PRODUCTS_XSELL_HEADING_TITLE',          '��Ϣ����');
define('MODULE_EASY_ADMIN_PRODUCTS_TEXT_SETTING_SELLS',           '��Ϣ���ʤ����ꤹ�뾦��');
define('MODULE_EASY_ADMIN_PRODUCTS_TEXT_PRODUCT_ID',              '����ID');

define('MODULE_EASY_ADMIN_PRODUCTS_XSELL_TEXT_SEARCH_TARGET',                   '�����о�');
define('MODULE_EASY_ADMIN_PRODUCTS_XSELL_TEXT_SEARCH_KEYWORD',                  '�������');
define('MODULE_EASY_ADMIN_PRODUCTS_XSELL_TEXT_SEARCH_ITEM_PRODUCT_NAME',        '����̾');
define('MODULE_EASY_ADMIN_PRODUCTS_XSELL_TEXT_SEARCH_ITEM_PRODUCT_DESCRIPTION', '��������ʸ');
define('MODULE_EASY_ADMIN_PRODUCTS_XSELL_TEXT_SEARCH_ITEM_PRODUCT_MODEL',       '���ʥ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_XSELL_TEXT_SEARCH_BUTTON',                   '����');
define('MODULE_EASY_ADMIN_PRODUCTS_XSELL_TEXT_SEARCH_RESET_BUTTON',             '�ʹ����');
define('MODULE_EASY_ADMIN_PRODUCTS_TEXT_CROSS_SELL',                            '��Ϣ����');

define('MODULE_EASY_ADMIN_PRODUCTS_TABLE_HEADING_PRODUCT_ID',      '����ID');
define('MODULE_EASY_ADMIN_PRODUCTS_TABLE_HEADING_PRODUCT_MODEL',   '���ʷ���');
define('MODULE_EASY_ADMIN_PRODUCTS_TABLE_HEADING_PRODUCT_NAME',    '����̾');
define('MODULE_EASY_ADMIN_PRODUCTS_TABLE_HEADING_PRODUCT_IMAGE',   '���ʲ���');
define('MODULE_EASY_ADMIN_PRODUCTS_TABLE_HEADING_PRODUCT_PRICE',   '���ʲ���');
define('MODULE_EASY_ADMIN_PRODUCTS_TABLE_HEADING_PRODUCT_SORT',    '�����Ƚ�');
define('MODULE_EASY_ADMIN_PRODUCTS_TABLE_HEADING_CROSS_SELL_THIS', '���ξ��ʤ򡢴�Ϣ���ʤˤ��ޤ�����');

define('MODULE_EASY_ADMIN_PRODUCTS_TABLE_HEADING_CURRENT_SELLS',   '���ߤδ�Ϣ����');
define('MODULE_EASY_ADMIN_PRODUCTS_TABLE_HEADING_UPDATE_SELLS',    '��Ϣ���ʤι���');

define('MODULE_EASY_ADMIN_PRODUCTS_CROSS_SELL_SUCCESS',            '��Ϣ���ʾ���򹹿����ޤ���������ID #'.$_GET['add_related_product_ID']);
define('MODULE_EASY_ADMIN_PRODUCTS_SORT_CROSS_SELL_SUCCESS',       '��Ϣ���ʤΥ����Ƚ�򹹿����ޤ���������ID #'.$_GET['add_related_product_ID']);

// attribute
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_EDIT',              '���ץ����°���Խ�');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_HEADING_0',         'ID');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_HEADING_1',         '���ץ����̾');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_HEADING_2',         '���ץ������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_HEADING_3',         '�޲���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_HEADING_4',         '�޽���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_HEADING_5',         '������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_HEADING_6',         '°���ե饰');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_HEADING_7',         '����Ͱ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_HEADING_OPERATION', '���');

define('LEGEND_ATTRIBUTES_DISPLAY_ONLY',       '���ȤΤ�');
define('LEGEND_ATTRIBUTES_IS_FREE',            '̵��');
define('LEGEND_ATTRIBUTES_DEFAULT',            '�ǥե����');
define('LEGEND_ATTRIBUTE_IS_DISCOUNTED',       '�Ͱ������줿');
define('LEGEND_ATTRIBUTE_PRICE_BASE_INCLUDED', '���ܲ���');
define('LEGEND_ATTRIBUTES_REQUIRED',           '�׵����');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_NOTICE_ERROR_SAVE', '��¸���˥��顼��ȯ�����ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_NOTICE_STATUS',     '°���ե饰���ѹ����ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_NOTICE_INSERT',     '���ץ����°�����ɲä��ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_NOTICE_UPDATE',     '���ץ����°�����Խ�����λ���ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_NOTICE_DELETE',     '%s�������ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_NOTICE_DELETE_OPTION', '%s �Υ��롼�פ������ޤ���');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_INSERT_TITLE',      '���ץ����ο�������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_EDIT_TITLE',        '���ץ������Խ�');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_OPTION_SETTING',    '�����ץ���������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_OPTION_NAME',       '���ץ����̾');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_OPTION_VALUE',      '���ץ������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_INSERT_OPTION_NAME_BTN', 'options_name_manager.gif');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_INSERT_OPTION_NAME', '���ץ����̾�ɲ�');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_INSERT_OPTION_VALUE_BTN', 'options_values_manager.gif');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_INSERT_OPTION_VALUE', '���ץ�������ɲ�');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_AND_WEIGHT_SETTING', '�����ʤȽ��̤�����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE',             '����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_WEIGHT',            '����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_SORT_ORDER',        '������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_PREFIX_PLUS', '���ʲ��ʤ˲û�����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_PREFIX_MINUS', '���ʲ��ʤ��鸺������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_PREFIX_REPLACE', '���ʲ��ʤ��֤�������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX_PLUS', '���ʽ��̤˲û�����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX_MINUS', '���ʽ��̤��鸺������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX_REPLACE', '���ʽ��̤��֤�������');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_STATUS_SETTING',    '��°���ե饰');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_ATTRIBUTES_DISPLAY_ONLY', 'ɽ���Τ�');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRODUCT_ATTRIBUTE_IS_FREE', '���ʤ�̵�����ʤΤȤ�°���ˤ����ʤ�̵���ˤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_ATTRIBUTES_DEFAULT', '�ǥե���Ȥ�
���򤵤��');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_ATTRIBUTES_DISCOUNTED', '°���ˤ����������ˤ��ò�/������γ����Ŭ�Ѥ���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_ATTRIBUTES_PRICE_BASE_INCLUDED', '°���ˤ�����������١������ʤ˴ޤ��');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_ATTRIBUTES_REQUIRED', '�ƥ��������Ϥ�ɬ�ܤˤ���');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_FACTOR_SETTING', '���ü���Ͱ�������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_ONETIME',     '��󥿥����Ͱ����Ͱ����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_FACTOR_TITLE', '�ץ饤���ե������������ե��å�');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_FACTOR',      '�ץ饤���ե�������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_FACTOR_OFFSET', '���ե��å�');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_FACTOR_ONETIME_TITLE', '��󥿥���ץ饤���ե������������ե��å�');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_FACTOR_ONETIME', '��󥿥���ץ饤���ե�������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_FACTOR_ONETIME_OFFSET', '��󥿥��४�ե��å�');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_QTY_PRICES_SETTING', '���ܥ�塼��ǥ��������������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_QTY_PRICES',        '���ץ����ο����Ͱ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_QTY_PRICES_ONETIME', '���ץ����Υ�󥿥�������Ͱ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_WORDS_SETTING', '���ƥ����ȥ��ץ���������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_WORDS',       'ñ����β���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_WORDS_FREE',  '̵���κ���ñ���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_LETTERS',     'ʸ����β���');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_PRICE_LETTERS_FREE', '̵���κ���ʸ����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_IMAGE_SETTING',     '�����ץ�������������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_IMAGE',             '���ץ�������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_IMAGE_DIR',         '��¸�ǥ��쥯�ȥ�');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_IMAGE_OVERWRITE',   '��¸�Υ��ץ����������񤭤��ޤ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_IMAGE_OVERWRITE_DESCRIPTION', '��񤭤������ʤ�����[������]�����򤷤ơ���¸�ե�����Ȥϰۤʤ�̾���Υե������[���ץ�������]�˻��ꤷ�Ƥ���������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_DOWNLOAD_SETTING',  '����������ɥ��ץ���������');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_FILENAME',          '��������ɾ��� �ե�����̾');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_MAXDAYS',           'ͭ������(��)');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_MAXCOUNT',          '�����������ɿ�');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_OPEN_SETTING',      '--[����]--');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_CLOSE_SETTING',     '--[�Ĥ���]--');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_CREATE',            '�����ɲ�');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_INSERT',            '����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_UPDATE',            '����');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_CANCEL_BTN',        'button_cancel.gif');

define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_DELETE_TITLE',      '�����˥��ץ����°���������ޤ���?');
define('MODULE_EASY_ADMIN_PRODUCTS_ATTRIBUTES_DELETE_OPTION_TITLE', '�ʲ��Υ��ץ����Υ��ץ�����ͤ����ƺ�����ޤ�����');

define('MODULE_EASY_ADMIN_PRODUCTS_PWA_PRODUCT_ID',                  '����ID');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_PRODUCT_NAME',                '����̾');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_PRODUCT_MODEL',               '����');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_QUANTITY',                    '�Ŀ�');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_SKUMODEL',                    'SKU����');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_QUANTITY_FOR_ALL_VARIANTS',   '���κ߸˿�');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_ADD_QUANTITY',                'SKU�߸ˤ��ɲ�');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_SYNC_QUANTITY',               '�߸˿���ȿ��');

define('MODULE_EASY_ADMIN_PRODUCTS_PWA_STOCK_ID',                    '�߸˴���ID');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_VARIANT',                     '���ץ�����Ȥ߹�碌');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_QUANTITY_IN_STOCK',           '�߸˸Ŀ�');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_EDIT',                        '����');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_DELETE',                      '���');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_SUBMIT',                      '����');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_CANCEL',                      '����󥻥�');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_SEARCH',                      '����');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_RESET',                       '�ꥻ�å�');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_ACTION',                      '���');

define('MODULE_EASY_ADMIN_PRODUCTS_PWA_EDIT_QUANTITY',               '�߸˸Ŀ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_DELETE_VARIANT',              'SKU�߸˺��');

define('MODULE_EASY_ADMIN_PRODUCTS_PWA_DELETE_VARIANT_CONFIRMATION', '���ץ�����Ȥ߹�碌�κ߸ˤ������Ƥ⤤���Ǥ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_DELETE_VARIANT_PROCESSED',    '���ץ�����Ȥ߹�碌�κ߸ˤ��������ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_DELETE_VARIANT_YES',          '�Ϥ�');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_DELETE_VARIANT_NO',           '������');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_UPDATE_PARENT_PROCESSED',     '�ƺ߸˿�����������ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_UPDATE_VARIANT_PROCESSED',    '�߸˿�����������ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_PWA_SKU_NOT_DEFINED',             '���ξ��ʤ�SKU�߸ˤ��������Ƥ��ޤ���<br />
��SKU�߸ˤ��ɲáפ����ɲä��Ƥ���������');

// categories
define('BOX_ADDON_MODULES_EASY_ADMIN_PRODUCTS_CATEGORIES',        '���󤿤󥫥ƥ������');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADING_TITLE',     '���󤿤󥫥ƥ������');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADING_0',         'ID');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADING_1',         '���ƥ���̾');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADING_2',         '���ʰ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADING_3',         '���ơ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADING_4',         '�����Ƚ�');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SEARCH_HEADING_0',  'ID');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SEARCH_HEADING_1',  '���ƥ���ѥ�');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SEARCH_HEADING_2',  '���ʰ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SEARCH_HEADING_3',  '���ơ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SEARCH_HEADING_4',  '�����Ƚ�');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADING_OPERATION', '���');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_LINK_TO_PRODUCTS',  '���ʰ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_CREATE_BTN',        '<img src="../includes/addon_modules/easy_admin_products/images/button_new_category.gif" alt="������>���ƥ�����ɲ�" />');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_ICON_PLUS',         '���֥��ƥ����');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SETFLAG_TITLE',     '�ʲ��Υ��ƥ���Υ��ơ��������Ѥ���');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_STATUS_WARNING',    '<strong>�ٹ�...</strong><br />���: ���ƥ����̵���ˤ���ȡ����Υ��ƥ����°���������ʤ�̵���ˤʤ�ޤ������Υ��ƥ�����ˤ��ꡢ¾�Υ��ƥ���˥�󥯤��Ƥ��뾦�ʤ�̵���ˤʤ�ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_STATUS_INTRO',      '���ƥ���Υ��ơ�������ʲ����Ѥ���:');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_STATUS_INFO',       '�����ʤΥ��ơ�������ʲ����Ѥ���:');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_STATUS_ON',         '����');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_STATUS_OFF',        '����');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_STATUS_NOCHANGE',   '�ѹ��ʤ�');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_NOTICE_SETFLAG',    '���ơ��������ѹ����ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_NOTICE_SETFLAG_FAILED', '���ơ��������ѹ��Ǥ��ޤ���Ǥ���');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_DELETE_TITLE',      '���ƥ������');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_DELETE_INTRO',      '���Υ��ƥ���������˺�����ޤ���?');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_DELETE_INTRO_LINKED_PRODUCTS', '<strong>�ٹ�:</strong> ���Υ��ƥ����۲��ξ��ʤˤĤ��ơ��֥ޥ��������ƥ��꡼ID�פ����Υ��ƥ������ꤷ�Ƥ���ȡ����ƥ�������˥�󥯾��ʤζ�ۤ�Ŭ�ڤˤʤ�ʤ����Ȥ�����ޤ���
��󥯾��ʤ����Υ��ƥ����۲��˴ޤޤ����ϡ�ͽ��⤦�����Υ��ƥ����֥ޥ��������ƥ��꡼ID�פȤ������ꤷ�Ƥ����٤��Ǥ���<br />
<br />
<strong>���:</strong> ���Υ��ƥ����۲��ξ��ʤˤĤ��ơ�¾�Υ��ƥ���˥�󥯤���Ƥ��ʤ���Ф��ξ��ʤϼ�ưŪ�˺������ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_NOTICE_DELETE',     '%s�������ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_BACK_TO_LIST',      '[���ƥ�����������]');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_BASIC_SETTING',     '����������:');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_STATUS',            '���ơ�����:');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_NAME',              '���ƥ���̾:');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_IMAGE',             '����:');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_IMAGE_DIR',         '���åץ�����ǥ��쥯�ȥ�:');
define('TEXT_IMAGE_NONEXISTENT',            '������¸�ߤ��ޤ���');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_DESCRIPTION',       '���ƥ�������');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SORT_ORDER',        '�����Ƚ�:');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADER_SETTING',    '���إå��������');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADER_TITLE',      '�����ȥ�:');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADER_META_KEYWORDS', 'Meta����(keywords)');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_HEADER_META_DESCRIPTION', 'Meta����(Description)');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_NOTICE_INSERT',     '���ƥ�����ɲä��ޤ�����');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_NOTICE_UPDATE',     '���ƥ�����Խ�����λ���ޤ�����');

// ���ƥ��긡��
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_TREE',              '���ƥ���ĥ꡼');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SEARCH',            '���ƥ��긡��');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SEARCH_TITLE',      '����:');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SEARCH_CATEGORIES_NAME', '���ƥ���̾');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORIES_SEARCH_CATEGORIES_DESCRIPTION', '���ƥ�������');
?>
