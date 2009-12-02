<?php
/*
//////////////////////////////////////////////////////////
//  SUPER ORDERS                                        //
//                                                      //
//  By Frank Koehl (PM: BlindSide)                      //
//                                                      //
//  Powered by Zen-Cart (www.zen-cart.com)              //
//  Portions Copyright (c) 2005 The Zen-Cart Team       //
//                                                      //
//  Released under the GNU General Public License       //
//  available at www.zen-cart.com/license/2_0.txt       //
//  or see "license.txt" in the downloaded zip          //
//////////////////////////////////////////////////////////
//  DESCRIPTION:   Replaces admin/orders.php, adding    //
//  new features, navigation options, and an advanced   //
//  payment management system.                          //
//////////////////////////////////////////////////////////
// $Id: super_orders.php 25 2006-02-03 18:55:56Z BlindSide $
*/

require(DIR_WS_LANGUAGES . $_SESSION['language'] . '/' . 'order_status_email.php');

define('HEADING_TITLE_ORDERS_LISTING', '��ʸ����');
define('HEADING_TITLE_ORDER_DETAILS', '���������ܺ� ID#');
define('HEADING_TITLE_SEARCH', '��ʸID:');
define('HEADING_TITLE_STATUS', '���ơ�����:');
define('HEADING_REOPEN_ORDER', '���ٳ���');

define('TABLE_HEADING_ORDERS_ID','ID');
define('TABLE_HEADING_STATUS_HISTORY', '���ơ���������');
define('TABLE_HEADING_ADD_COMMENTS', '������');
define('TABLE_HEADING_FINAL_STATUS', '�����');
define('TABLE_HEADING_COMMENTS', '������');
define('TABLE_HEADING_CUSTOMERS', '�ܵ�̾');
define('TABLE_HEADING_ORDER_TOTAL', '��ʸ���');
define('TABLE_HEADING_PAYMENT_METHOD', '����ʧ����ˡ');
define('TABLE_HEADING_DATE_PURCHASED', '��ʸ��');
define('TABLE_HEADING_STATUS', '���ơ�����');
define('TABLE_HEADING_TYPE', 'Order Type');
define('TABLE_HEADING_ACTION', '���');
define('TABLE_HEADING_QUANTITY', '����');
define('TABLE_HEADING_PRODUCTS_MODEL', '�����ֹ�');
define('TABLE_HEADING_PRODUCTS', '����̾');
define('TABLE_HEADING_TAX', '��Ψ');
define('TABLE_HEADING_TOTAL', '���');
define('TABLE_HEADING_PRICE_EXCLUDING_TAX', '����(��ȴ��)');
define('TABLE_HEADING_PRICE_INCLUDING_TAX', '����(�ǹ���)');
define('TABLE_HEADING_TOTAL_EXCLUDING_TAX', '���(��ȴ��)');
define('TABLE_HEADING_TOTAL_INCLUDING_TAX', '���(�ǹ���)');
define('TABLE_HEADING_CUSTOMER_NOTIFIED', '�ܵҤ�����');
define('TABLE_HEADING_DATE_ADDED', '������');

define('TABLE_HEADING_ADMIN_NOTES', '�����Ρ���');
define('TABLE_HEADING_AUTHOR', '�Լ�');
define('TABLE_HEADING_ADD_NOTES', '�������ä���');
define('TABLE_HEADING_KARMA', '�����');
define('TEXT_WARN_NOT_VISIBLE', ' �ʤ��ξ������̩�Ǥ���');
define('TEXT_TOTAL_KARMA', '�ȡ����륫���: ');
define('TEXT_ADMIN_NOTES_NONE', '���Τ����ͤˤϥ�ӥ塼�Ϥ���ޤ���');

define('PAYMENT_TABLE_NUMBER', '�ֹ�');
define('PAYMENT_TABLE_NAME', '��ʧ��̾');
define('PAYMENT_TABLE_AMOUNT', '����');
define('PAYMENT_TABLE_TYPE', '������');
define('PAYMENT_TABLE_POSTED', '�����');
define('PAYMENT_TABLE_MODIFIED', '�ǽ�����');
define('PAYMENT_TABLE_ACTION', '���');
define('ALT_TEXT_ADD', '�ɲ�');
define('ALT_TEXT_UPDATE', '���åץǡ���');
define('ALT_TEXT_DELETE', '���');

define('ENTRY_PAYMENT_DETAILS', '��ʧ�ξܺ�');
define('ENTRY_CUSTOMER_ADDRESS', '�����ͽ���:');
define('ENTRY_SHIPPING_ADDRESS', '�����轻��:');
define('ENTRY_BILLING_ADDRESS', '�����轻��:');
define('ENTRY_PAYMENT_METHOD', '��ʧ��ˡ:');
define('ENTRY_CREDIT_CARD_TYPE', '���쥸�åȥ����ɼ���:');
define('ENTRY_CREDIT_CARD_OWNER', '���쥸�åȥ����ɽ�ͭ��:');
define('ENTRY_CREDIT_CARD_NUMBER', '���쥸�åȥ������ֹ�:');
define('ENTRY_CREDIT_CARD_CVV', '���쥸�åȥ���CVV�ֹ�:');
define('ENTRY_CREDIT_CARD_EXPIRES', '���쥸�åȥ�����ͭ������:');
define('ENTRY_SUB_TOTAL', '����:');
define('ENTRY_TAX', '�Ƕ�:');
define('ENTRY_SHIPPING', '����:');
define('ENTRY_TOTAL', '���:');
define('ENTRY_AMOUNT_APPLIED', '����Ѥ�:');
define('ENTRY_BALANCE_DUE', '����۹��:');
define('ENTRY_DATE_PURCHASED', '��ʸ��:');
define('ENTRY_STATUS', '���ơ�����:');
define('ENTRY_DATE_LAST_UPDATED', '������:');
define('ENTRY_NOTIFY_CUSTOMER', '����������ܵҤ�����:');
define('ENTRY_NOTIFY_COMMENTS', '�ɲå�����:');

define('HEADING_COLOR_KEY', '���顼����:');
define('TEXT_PURCHASE_ORDERS', 'ȯ���');
define('TEXT_PAYMENTS', '��ʧ');
define('TEXT_REFUNDS', '����');

define('TEXT_MAILTO', '�᡼���Ф�');
define('TEXT_STORE_EMAIL', '�����֥᡼��');
define('TEXT_WHOIS_LOOKUP', 'whois');
define('TEXT_ICON_LEGEND', '��������:');
define('TEXT_BILLING_SHIPPING_MISMATCH', '������������褬�㤤�ޤ�');
define('TEXT_INFO_HEADING_DELETE_ORDER', '����������� - ');
define('TEXT_INFO_DELETE_INTRO', '�����ˤ��Υ��������������ޤ�����');
define('TEXT_INFO_RESTOCK_PRODUCT_QUANTITY', '�߸ˤ򸵤��᤹');
define('TEXT_DATE_ORDER_CREATED', '�ǡ���������:');
define('TEXT_DATE_ORDER_LAST_MODIFIED', '�ǽ�������:');
define('TEXT_INFO_PAYMENT_METHOD', '��ʧ��ˡ:');
define('TEXT_INFO_SHIPPING_METHOD', '������ˡ:');
define('TEXT_ALL_ORDERS', '���ƤΥ�������');
define('TEXT_NO_ORDER_HISTORY', '������������Ϥ���ޤ���');
define('TEXT_DISPLAY_ONLY', '��ɽ���Τߡ�');

define('ERROR_ORDER_DOES_NOT_EXIST', '����: ��������������ޤ���');
define('SUCCESS_ORDER_UPDATED', '����: ���������ϴ����˥��åץǡ��Ȥ���ޤ�����');
define('WARNING_ORDER_NOT_UPDATED', '�ٹ��ѹ��Ϥ���ޤ��󡣥��������ϥ��åץǡ��Ȥ���ޤ���');
define('SUCCESS_MARK_COMPLETED', '�������������� #%s �ϼ¹Ԥ���ޤ�����');
define('WARNING_MARK_CANCELLED', '�ٹ𡧥������� #%s �ϥ���󥻥뤵��ޤ���');
define('WARNING_ORDER_REOPEN', '�ٹ𡧥������� #%s �����ٳ�����ޤ�����');

define('ENTRY_ORDER_ID','�������� No. ');
define('TEXT_INFO_ATTRIBUTE_FREE', '&nbsp;-&nbsp;<span class="alert">̵��</span>');

define('TEXT_DOWNLOAD_TITLE', '���������Υ�������ɾ���');
define('TEXT_DOWNLOAD_STATUS', '����');
define('TEXT_DOWNLOAD_FILENAME', '�ե�����͡���');
define('TEXT_DOWNLOAD_MAX_DAYS', '����');
define('TEXT_DOWNLOAD_MAX_COUNT', '�������');

define('TEXT_DOWNLOAD_AVAILABLE', '���Ѳ�ǽ');
define('TEXT_DOWNLOAD_EXPIRED', '�����ڤ�');
define('TEXT_DOWNLOAD_MISSING', '�����С���ˤ���ޤ���');

define('IMAGE_ICON_STATUS_CURRENT', '���� - ���Ѳ�ǽ');
define('IMAGE_ICON_STATUS_EXPIRED', '���� - �����ڤ�');
define('IMAGE_ICON_STATUS_MISSING', '���� - ����');

define('SUCCESS_ORDER_UPDATED_DOWNLOAD_ON', '��������ɤ��������ޤ�����');
define('SUCCESS_ORDER_UPDATED_DOWNLOAD_OFF', '̵���ʥ�������ɤǤ���');
define('TEXT_MORE', '... more');

define('TEXT_INFO_IP_ADDRESS', 'IP ���ɥ쥹: ');

define('TEXT_NEW_WINDOW', ' �ʿ�����������ɥ���');
define('IMAGE_SHIPPING_LABEL', '��̾��٥�');
define('ICON_ORDER_DETAILS', '���������ξܺ٤�ɽ��');
define('ICON_ORDER_PRINT', '�ǡ��������Ȥ����' . TEXT_NEW_WINDOW);
define('ICON_ORDER_INVOICE', 'Ǽ�ʽ��ɽ��' . TEXT_NEW_WINDOW);
define('ICON_ORDER_PACKINGSLIP', '�����ɽ��' . TEXT_NEW_WINDOW);
define('ICON_ORDER_SHIPPING_LABEL', '��̾��٥��ɽ��' . TEXT_NEW_WINDOW);
define('ICON_ORDER_DELETE', '���');
define('ICON_EDIT_CONTACT', '��Ͽ�ǡ�������');
define('ICON_EDIT_PRODUCT', '���ʤ���');
define('ICON_EDIT_TOTAL', '��ʸ��פ���');
define('ICON_EDIT_HISTORY', '���ơ������������');
define('ICON_CLOSE_STATUS', '���ơ��������Ĥ���');
define('ICON_MARK_COMPLETED', '��ʸ��λ�ޡ���');
define('ICON_MARK_CANCELLED', '��ʸ����󥻥�ޡ���');

define('MINI_ICON_ORDERS', '�ܵҤΥ���������ɽ��');
define('MINI_ICON_INFO', '�ܵҤξ����ɽ��');

define('BUTTON_TO_LIST', '���������ꥹ��');
define('BUTTON_SPLIT', '�����ʬ��');
define('SELECT_ORDER_LIST', '���������˰�ư:');

define('TEXT_NO_PAYMENT_DATA', '��ʧ���󤬤���ޤ���');
define('TEXT_PAYMENT_DATA', '��ʧ��');
?>