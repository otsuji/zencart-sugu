<?php
/**
 * :package - japanese
 *
 * @package :package
 * @copyright Portions Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: japanese.php $
 */

define('MODULE_ORDERS_EXPORT_TITLE', '��ʸ�ǡ����������ݡ���');
define('MODULE_ORDERS_EXPORT_DESCRIPTION', '��ʸ�ǡ����������ݡ���');

define('MODULE_ORDERS_EXPORT_STATUS_TITLE', 'orders_export��ͭ����');
define('MODULE_ORDERS_EXPORT_STATUS_DESCRIPTION', 'orders_export��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');
define('MODULE_ORDERS_EXPORT_SORT_ORDER_TITLE', 'ͥ���');
define('MODULE_ORDERS_EXPORT_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');

// invoice_batch_print
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_COMMENTS', '������');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_PRODUCTS_MODEL', '����');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_PRODUCTS', '����̾');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_TAX', '�Ƕ�');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_TOTAL', '���');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_PRICE_EXCLUDING_TAX', '���� (����)');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_PRICE_INCLUDING_TAX', '���� (�ǹ���)');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_TOTAL_EXCLUDING_TAX', '��� (����)');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_TOTAL_INCLUDING_TAX', '��� (�ǹ���)');

define('MODULE_ORDERS_EXPORT_ENTRY_CUSTOMER', 'CUSTOMER:');

define('MODULE_ORDERS_EXPORT_ENTRY_SOLD_TO', '��������:');
define('MODULE_ORDERS_EXPORT_ENTRY_SHIP_TO', '������:');
define('MODULE_ORDERS_EXPORT_ENTRY_PAYMENT_METHOD', '����ʧ��ˡ:');
define('MODULE_ORDERS_EXPORT_ENTRY_SUB_TOTAL', '����:');
define('MODULE_ORDERS_EXPORT_ENTRY_TAX', '�Ƕ�:');
define('MODULE_ORDERS_EXPORT_ENTRY_SHIPPING', '����:');
define('MODULE_ORDERS_EXPORT_ENTRY_TOTAL', '���:');
define('MODULE_ORDERS_EXPORT_ENTRY_DATE_PURCHASED', '����ʸ��:');

define('MODULE_ORDERS_EXPORT_ENTRY_ORDER_ID','��ʸ�ֹ� ');
define('MODULE_ORDERS_EXPORT_TEXT_INFO_ATTRIBUTE_FREE', '&nbsp;-&nbsp;FREE');

// orders_export
define('MODULE_ORDERS_EXPORT_HEADING_TITLE', '��ʸ�ǡ����������ݡ���');

define('MODULE_ORDERS_EXPORT_TABLE_HEADING_EXPORT', '����');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_SHIPPING_METHOD', '������ˡ');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_PAYMENT_METHOD', '��ʧ��ˡ');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_ORDERS_ID','ID');

define('MODULE_ORDERS_EXPORT_TEXT_BILLING_SHIPPING_MISMATCH','������������褬�㤤�ޤ�');

define('MODULE_ORDERS_EXPORT_TABLE_HEADING_ORDERS', '��ʸ');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_CUSTOMERS', '�ܵ�̾');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_COMPANY', '���̾');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_ORDER_TOTAL', '��ʸ���');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_DATE_PURCHASED', '��ʸ��');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_STATUS', '���ơ�����');

define('MODULE_ORDERS_EXPORT_TEXT_ALL', '����');
define('MODULE_ORDERS_EXPORT_TEXT_ASC', '��');
define('MODULE_ORDERS_EXPORT_TEXT_DESC', '��');
define('MODULE_ORDERS_EXPORT_TEXT_ALL_SHIPPING_METHOD', '- ���� -');
define('MODULE_ORDERS_EXPORT_TEXT_ALL_PAYMENT_METHOD', '- ���� -');
define('MODULE_ORDERS_EXPORT_TEXT_FROM', '��:');
define('MODULE_ORDERS_EXPORT_TEXT_TO', '��:');
define('MODULE_ORDERS_EXPORT_TEXT_ALL_ORDERS_STATUS', '-- ���� --');
define('MODULE_ORDERS_EXPORT_TEXT_ALLMATCH_ORDERS', '���˥ޥå�������ʸ�򤹤٤ƥ������ݡ��Ȥ���');
define('MODULE_ORDERS_EXPORT_TEXT_PRINT_INVOICE', 'Ǽ�ʽ���������');
define('MODULE_ORDERS_EXPORT_TEXT_PRINT_PAKINGSLIP', '����ɼ���������');
define('MODULE_ORDERS_EXPORT_TEXT_FORMAT', '���Ϸ���:');
define('MODULE_ORDERS_EXPORT_TEXT_SAVE_FILE', '�ե��������¸����');
define('MODULE_ORDERS_EXPORT_TEXT_VIEW_HEADER', '1 ���ܤ˹���̾���ɲä���');
define('MODULE_ORDERS_EXPORT_TEXT_VIEW_RAWDATA', '�������ݡ��ȷ�̤���̤�ɽ������');
define('MODULE_ORDERS_EXPORT_TEXT_RAWDATA', '�������ݡ��ȷ��');
define('MODULE_ORDERS_EXPORT_TEXT_SAVE_FILE_PATH', '��¸��: ');
define('MODULE_ORDERS_EXPORT_CAUTION_NO_DATA', '���˥ޥå�������ʸ������ޤ���Ǥ�����');

// packingslip_batch_print
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_COMMENTS', '������');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_PRODUCTS_MODEL', '����');
define('MODULE_ORDERS_EXPORT_TABLE_HEADING_PRODUCTS', '����');

define('MODULE_ORDERS_EXPORT_ENTRY_CUSTOMER', '�ܵ�:');

define('MODULE_ORDERS_EXPORT_ENTRY_SOLD_TO', '������:');
define('MODULE_ORDERS_EXPORT_ENTRY_SHIP_TO', '������:');
define('MODULE_ORDERS_EXPORT_ENTRY_PAYMENT_METHOD', '����ʧ����ˡ:');
define('MODULE_ORDERS_EXPORT_ENTRY_DATE_PURCHASED', '��ʸ��:');

define('MODULE_ORDERS_EXPORT_ENTRY_ORDER_ID','��ʸ�ֹ� ');

// extra_definition
define('MODULE_ORDERS_EXPORT_BOX_CUSTOMERS_ORDERS_EXPORT', '��ʸ�ǡ����������ݡ���');
define('MODULE_ORDERS_EXPORT_IMAGE_DOWNLOAD', '���������');
?>
