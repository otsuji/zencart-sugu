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
//  DESCRIPTION:   Takes all the order data found on    //
//  the details screen and formats it for printing on   //
//  standard 8.5" x 11" paper.                          //
//////////////////////////////////////////////////////////
// $Id: super_data_sheet.php 25 2006-02-03 18:55:56Z BlindSide $
*/

define('PAGE_TITLE', '��ʸ����');
define('HEADER_ORDER_DATA', '��ʸ�ֹ�');
define('HEADER_CUSTOMER_ID', '�ܵ��ֹ�');
define('HEADER_ADDRESS_DATA', '����ǡ���');
define('HEADER_STATUS_HISTORY', '���ơ�����������');
define('HEADER_PAYMENT_HISTORY', '��ʧ����');

define('TABLE_HEADING_STATUS', '���ơ�����');
define('TABLE_HEADING_COMMENTS', '������');
define('TABLE_HEADING_TYPE', '��������������');
define('TABLE_HEADING_ACTION', '���');
define('TABLE_HEADING_QUANTITY', '����');
define('TABLE_HEADING_PRODUCTS_MODEL', '����');
define('TABLE_HEADING_PRODUCTS', '����̾');
define('TABLE_HEADING_QUANTITY', '����');
define('TABLE_HEADING_TAX', '��Ψ');
define('TABLE_HEADING_TOTAL', '���');
define('TABLE_HEADING_PRICE_EXCLUDING_TAX', '���� (��ȴ��)');
define('TABLE_HEADING_PRICE_INCLUDING_TAX', '���� (�ǹ���)');
define('TABLE_HEADING_TOTAL_EXCLUDING_TAX', '��� (��ȴ��)');
define('TABLE_HEADING_TOTAL_INCLUDING_TAX', '��� (�ǹ���)');
define('TABLE_HEADING_CUSTOMER_NOTIFIED', '�ܵҤ�����');
define('TABLE_HEADING_DATE_ADDED', '������');

define('TABLE_HEADING_ADMIN_NOTES', '�����Ρ���');
define('TABLE_HEADING_AUTHOR', '�Լ�');
define('TABLE_HEADING_ADD_NOTES', '�������ä���');
define('TABLE_HEADING_RATING', '���դ�');
define('TEXT_WARN_NOT_VISIBLE', ' �ʤ��ξ������̩�Ǥ���');
define('TEXT_AVG_RATING', 'ʿ�Ѥ������դ�: ');
define('TEXT_ADMIN_NOTES_NONE', '���Τ����ͤˤϥ�ӥ塼�Ϥ���ޤ���');

define('PAYMENT_TABLE_NUMBER', '�ֹ�');
define('PAYMENT_TABLE_NAME', '��ʧ��̾');
define('PAYMENT_TABLE_AMOUNT', '����');
define('PAYMENT_TABLE_TYPE', '������');
define('PAYMENT_TABLE_POSTED', '�����');
define('PAYMENT_TABLE_MODIFIED', '�ǽ�����');
define('PAYMENT_TABLE_ACTION', '���');

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

define('TEXT_INFO_PAYMENT_METHOD', '��ʧ��ˡ:');
define('TEXT_INFO_SHIPPING_METHOD', '������ˡ:');

define('ENTRY_ORDER_ID','��ʸ�ֹ�');
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
define('TEXT_INFO_IP_ADDRESS', 'IP���ɥ쥹: ');
define('TEXT_NO_PAYMENT_DATA', '��ʧ�ǡ���������ޤ���');
?>