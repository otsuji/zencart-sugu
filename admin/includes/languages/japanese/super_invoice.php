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
//  DESCRIPTION:   Replaces admin/invoice.php, adds     //
//  amount paid & balance due values based on           //
//  super_order class calculations.  Also includes the  //
//  option to display a tax exemption number,           //
//  configurable from the admin.                        //
//////////////////////////////////////////////////////////
// $Id: super_invoice.php 25 2006-02-03 18:55:56Z BlindSide $
*/

// Don't forget to configure the new Phone and Fax numbers in the Admin!
// Configuration > My Store > Store Phone/Store Fax

define('HEADER_INVOICE', '�����-��ʸ�ֹ� #');
define('HEADER_TAX_ID', 'Fed Tax ID #');
define('HEADER_PHONE', '����:');
define('HEADER_FAX', 'FAX:');
define('HEADER_CUSTOMER_NOTES', '�����ͥ�����:');
define('HEADER_PO_NUMBER', 'P.O. Number:');
define('HEADER_PO_INVOICE_DATE', '������:');
define('HEADER_PO_TERMS', '�Ѹ�:');
define('HEADER_PO_TERMS_LENGTH', '30��');

define('TABLE_HEADING_COMMENTS', '������');
define('TABLE_HEADING_PRODUCTS_MODEL', '�����ֹ�');
define('TABLE_HEADING_PRODUCTS', '����̾');
define('TABLE_HEADING_TAX', '��Ψ');
define('TABLE_HEADING_TOTAL', '���');
define('TABLE_HEADING_PRICE_EXCLUDING_TAX', '���� (��ȴ��)');
define('TABLE_HEADING_PRICE_INCLUDING_TAX', '���� (�ǹ���)');
define('TABLE_HEADING_TOTAL_EXCLUDING_TAX', '��� (��ȴ��)');
define('TABLE_HEADING_TOTAL_INCLUDING_TAX', '��� (�ǹ���)');
define('TABLE_HEADING_PRICE_NO_TAX', 'ñ��');
define('TABLE_HEADING_TOTAL_NO_TAX', '���');

define('ENTRY_CUSTOMER', '�ܵ�̾');
define('ENTRY_BILL_TO', '������');
define('ENTRY_SHIP_TO', '������');
define('ENTRY_PO_INFO', 'P.O. DETAILS');
define('ENTRY_NO_TAX', '�Ƕ��ޤޤ�');
define('ENTRY_SUB_TOTAL', '����:');
define('ENTRY_TAX', '�Ƕ�:');
define('ENTRY_SHIPPING', '����:');
define('ENTRY_TOTAL', '���:');
define('ENTRY_ORDER_ID','��ʸ�ֹ�');
define('ENTRY_DATE_PURCHASED', '����ʸ��:');
define('ENTRY_PAYMENT_METHOD', '��ʧ��ˡ:');

define('TEXT_INFO_ATTRIBUTE_FREE', '&nbsp;-&nbsp;̵��');
?>