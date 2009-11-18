<?php
/*
//////////////////////////////////////////////////////////
//  SALES REPORT                                        //
//                                                      //
//  By Frank Koehl (PM: BlindSide)                      //
//                                                      //
//  Powered by Zen-Cart (www.zen-cart.com)              //
//  Portions Copyright (c) 2006 The Zen Cart Team       //
//                                                      //
//  Released under the GNU General Public License       //
//  available at www.zen-cart.com/license/2_0.txt       //
//  or see "license.txt" in the downloaded zip          //
//////////////////////////////////////////////////////////
//  DESCRIPTION: The language file contains all the     //
//  text that appears on the report.  The first set of  //
//  configuration defines actually impact the report's  //
//  output and behavior.                                //
//////////////////////////////////////////////////////////
// $Id: stats_sales_report.php 103 2006-10-13 21:06:48Z BlindSide $
*/

/*
** CONFIGURATION DEFINES
*/
//////////////////////////////////////////////////////////
// DEFAULT SEARCH OPTIONS
// These values are loaded into the report when (a) the
// report is laoded fresh, or (b) when the defaults button
// is pressed.  If you prefer to have no option set for a
// given entry, you may leave its define empty. Valid
// entries are in the comments following each define.
// Default settings are in brackets [].
//
define('DEFAULT_DATE_SEARCH_TYPE', 'preset'); // ['preset'], 'custom' (cannot be empty if next 3 options are set!)
define('DEFAULT_DATE_PRESET', 'yesterday'); // ['yesterday'], 'this_month', 'last_month', 'custom'
define('DEFAULT_START_DATE', ''); // (date in mm-dd-yyyy format)
define('DEFAULT_END_DATE', ''); // (date in mm-dd-yyyy format)

define('DEFAULT_DATE_TARGET', 'status'); // ['purchased'], 'status'
define('DEFAULT_DATE_STATUS', '10'); // (status number) [lowest status number]
define('DEFAULT_PAYMENT_METHOD', ''); // [any entry in `orders.payment_module_code` field]
define('DEFAULT_CURRENT_STATUS', ''); // [status number]
define('DEFAULT_MANUFACTURER', ''); // manufacturers_id from Admin > Catalog > Manufacturers ("mID=##" in the URL)

define('DEFAULT_TIMEFRAME', 'day'); // ['day'], 'week', 'month', 'year'
define('DEFAULT_TIMEFRAME_SORT', ''); // ['asc'], 'desc'
define('DEFAULT_DETAIL_LEVEL', 'product'); // ['timeframe'], 'product', 'order', 'matrix'

// order line items: 'oID', 'last_name', 'num_products', 'goods', 'shipping', 'discount', 'gc_sold', 'gc_used', 'grand'
// product line items: 'pID', 'name', 'manufacturer', 'model', 'base_price', 'quantity', 'onetime_charges', 'grand'
define('DEFAULT_LI_SORT_A', 'model');
define('DEFAULT_LI_SORT_ORDER_A', ''); // 'asc', 'desc'
define('DEFAULT_LI_SORT_B', 'name');
define('DEFAULT_LI_SORT_ORDER_B', ''); // 'asc', 'desc'

define('DEFAULT_OUTPUT_FORMAT', 'print'); // ['display'], 'print', 'csv'
define('DEFAULT_AUTO_PRINT', ''); // 'true', ['false']
define('DEFAULT_CSV_HEADER', ''); // 'true', ['false']


//////////////////////////////////////////////////////////
// DISPLAY EMPTY TIMEFRAME LINES
// Setting this define to true will disable displaying
// a timeframe line if that timeframe is empty.  By
// default, an empty timeframe displays the value of the
// define TEXT_NO_DATA.
//
// Be aware, if this is enabled and your search yields
// no results at all, the screen will look as if no search
// was performed (which is why this is disabled by default)
//
define('DISPLAY_EMPTY_TIMEFRAMES', false);


//////////////////////////////////////////////////////////
// PRODUCT MANUFACTURERS COLUMN
// Setting this define to true will display the
// manufacturer on each product line item, and will default
// to the value of TEXT_NONE if there is no manufacturer.
// False will remove the manufacturer column from the report.
//
define('DISPLAY_MANUFACTURER', true);


//////////////////////////////////////////////////////////
// ONE-TIME FEES COLUMN
// If your store does not have *any* one-time fees on its
// products, you can disable displaying the column.
//
// Note that this switch does not affect math calculations,
// so if you happen to have a product with fees attached,
// they will still be accounted for and appear in the total.
//
define('DISPLAY_ONE_TIME_FEES', false);


//////////////////////////////////////////////////////////
// DECIMAL PLACES IN AVERAGES
// Sets the number of decimal places displayed in averages
// on timeframe statistics display
//
define('NUM_DECIMAL_PLACES', 2);


//////////////////////////////////////////////////////////
// TIMEFRAME DATE DISPLAY
// These control the display format of the start and end
// dates of each timeframe line.  Each define corresponds
// to the timeframe of its namesake.  See the PHP manual
// entry on the date() function for a table on the accepted
// formatting characters: http://us2.php.net/date
//
define('TIME_DISPLAY_DAY', 'Y-n-j');
define('TIME_DISPLAY_WEEK', 'Y-n-j');
define('TIME_DISPLAY_MONTH', 'Y-n-j');
define('TIME_DISPLAY_YEAR', 'Y-n-j');
define('DATE_SPACER', ' thru<br/>&nbsp;&nbsp;&nbsp;');


//////////////////////////////////////////////////////////
// EXCLUDE SPECIFIED PRODUCTS
// Prevents specified products from appearing on the sales
// report at all.  **ADDING PRODUCTS TO THIS DEFINE WILL
// IMPACT TOTALS CALCULATIONS!**
//
// The value of the product will be excluded from totals
// for gc_sold, gc_sold_qty, goods, num_products, and
// diff_products.
//
// The values for gc_used, gc_used_qty, discount,
// discount_qty, tax, and shipping all come from the
// orders_total table, and so CANNOT be excluded based
// on product ID.
//
// If an order is made up entirely of excluded products,
// and has no shipping, discounts, tax, or used gift
// certificates, it will have a total of 0.  In this
// situation, the order will not be displayed in the results.
//
// EXAMPLE: define('EXCLUDE_PRODUCTS', serialize(array(25, 14, 43)) );
//
define('EXCLUDE_PRODUCTS', serialize(array( )));



/*
** LANGUAGE DEFINES
*/
// Search menu heading
define('PAGE_HEADING', '�����ݡ���');
define('HEADING_TITLE_SEARCH', '1. ɽ����ˡ����');
define('HEADING_TITLE_SORT', '2. ��������ˡ����');
define('HEADING_TITLE_PROCESS', '3. ��ݡ��Ⱥ���');
define('SEARCH_TIMEFRAME', '��������');
define('SEARCH_TIMEFRAME_DAY', '��ñ��');
define('SEARCH_TIMEFRAME_WEEK', '��ñ��');
define('SEARCH_TIMEFRAME_MONTH', '��ñ��');
define('SEARCH_TIMEFRAME_YEAR', 'ǯñ��');
define('SEARCH_TIMEFRAME_SORT', '������');
define('SEARCH_DATE_PRESET', 'ɽ�����֤�����');
define('SEARCH_DATE_CUSTOM', 'ɽ������');
define('SEARCH_DATE_YESTERDAY', '���� (%s)');
define('SEARCH_DATE_LAST_MONTH', '��� (%s)');
define('SEARCH_DATE_THIS_MONTH', '���� (%s)');
define('SEARCH_START_DATE', '������');
define('SEARCH_END_DATE', '��λ���������ޤ��');
define('SEARCH_DATE_FORMAT', 'yyyy/dd/mm');
define('SEARCH_DATE_TARGET', '�����ϰϤ�Ƚ����');
define('SEARCH_PAYMENT_METHOD', '��ʧ��ˡ');
define('SEARCH_CURRENT_STATUS', '��ʸ���֡ʥ��ơ�������');
define('SEARCH_MANUFACTURER', '�᡼����');
define('SEARCH_DETAIL_LEVEL', '�ܺ٥�٥�');
define('SEARCH_OUTPUT_FORMAT', 'ɽ����ˡ');
define('SEARCH_SORT_PRODUCT', '��������ˡ');
define('SEARCH_SORT_ORDER', '��ʸ�Υ�������ˡ');
define('SEARCH_SORT_THEN', '��������ˡ2');
define('BUTTON_SEARCH', '��ݡ��Ȥ�ɽ������');
define('BUTTON_LOAD_DEFAULTS', '�ꥻ�å�');
define('BUTTON_DEFAULT_SEARCH', '�����å�������');
define('SEARCH_WAIT_TEXT', '�����档�������Ԥ�����������');


// Form element text
// radio buttons
define('RADIO_DATE_TARGET_PURCHASED', '��ʸ���줿����');
define('RADIO_DATE_TARGET_STATUS', '��ʸ���ơ��������������줿����');
define('RADIO_TIMEFRAME_SORT_ASC', '���ս�');
define('RADIO_TIMEFRAME_SORT_DESC', '�ǿ����ս�');
define('RADIO_LI_SORT_ASC', '����');
define('RADIO_LI_SORT_DESC', '�߽�');

// dropdown menus
define('SELECT_DETAIL_TIMEFRAME', '�ܺ٤ʤ�');
define('SELECT_DETAIL_PRODUCT', '��ʸ���ʾ��󤢤�');
define('SELECT_DETAIL_ORDER', '��ʸ�ܵҾ��󤢤�');
define('SELECT_DETAIL_MATRIX', '�ܺ�ɽ��');
define('SELECT_OUTPUT_DISPLAY', 'Ʊ����ɽ��');
define('SELECT_OUTPUT_PRINT', '�����Ѳ���ɽ��');
define('SELECT_OUTPUT_CSV', 'CSV�������ݡ���');
define('SELECT_PRODUCT_ID', '�����ֹ�');
define('SELECT_QUANTITY', '����');
define('SELECT_LAST_NAME', '�ܵ�̾');

// checkboxes
define('CHECKBOX_AUTO_PRINT', '��ư����');
define('CHECKBOX_CSV_HEADER', '1���ܤ˥����ȥ����������');
define('CHECKBOX_NEW_WINDOW', '��̤򿷤���������ɥ���ɽ������');


// Report Column Headings
// Timeframe
define('TABLE_HEADING_TIMEFRAME', '��ʸ��');
define('TABLE_HEADING_NUM_ORDERS', '��ʸ��');
define('TABLE_HEADING_NUM_PRODUCTS', '��ʸ���ʿ�');
define('TABLE_HEADING_TOTAL_GOODS', '����');
define('TABLE_HEADING_TAX', '������');
define('TABLE_HEADING_SHIPPING', '����');
define('TABLE_HEADING_DISCOUNTS', '���');
define('TABLE_HEADING_GC_SOLD', '���եȷ�����');
define('TABLE_HEADING_GC_USED', '���եȷ�����');
define('TABLE_HEADING_TOTAL', '���');
define('TABLE_FOOTER_TIMEFRAMES', ' ��');

// Order Line Items
define('TABLE_HEADING_ORDERS_ID', '��ʸID');
define('TABLE_HEADING_CUSTOMER', '�ܵ�̾');
define('TABLE_HEADING_ORDER_TOTAL', '��ʸ���');

// Product Line Items
define('TABLE_HEADING_PRODUCT_ID', '����ID');
define('TABLE_HEADING_PRODUCT_NAME', '����̾');
define('TABLE_HEADING_MANUFACTURER', '�᡼����');
define('TABLE_HEADING_MODEL', '�����ֹ�');
define('TABLE_HEADING_BASE_PRICE', '����');
define('TABLE_HEADING_QUANTITY', '����');
define('TABLE_HEADING_ONETIME_CHARGES', '1��ζ��');
define('TABLE_HEADING_PRODUCT_TOTAL', '���');

// Data Matrix
define('MATRIX_GENERAL_STATS', '����');
define('MATRIX_ORDER_REVENUE', '�����');
define('MATRIX_ORDER_PRODUCT_COUNT', '���ʿ�');
define('MATRIX_LARGEST', '��ʸ�κ�����: ');
define('MATRIX_SMALLEST', '��ʸ�κǾ���: ');
define('MATRIX_AVERAGES', 'ʿ��');
define('MATRIX_AVG_ORDER', '&nbsp;ʿ�������');
define('MATRIX_AVG_PROD_ORDER', '&nbsp;ʿ����徦�ʿ�');
define('MATRIX_AVG_PROD_ORDER_DIFF', '&nbsp;�ܵ��դ��ʿ����徦�ʿ�');
define('MATRIX_AVG_ORDER_CUST', '&nbsp;�ܵ��դ����ʸ��');
define('MATRIX_ORDER_STATS', '��ʸ����');
define('MATRIX_TOTAL_PAYMENTS', '��ʧ��ˡ');
define('MATRIX_TOTAL_CC', '���쥸�åȥ�����');
define('MATRIX_TOTAL_SHIPPING', '������ˡ');
define('MATRIX_TOTAL_CURRENCIES', '�̲�');
define('MATRIX_TOTAL_CUSTOMERS', '���̤ʸܵ�');
define('MATRIX_PRODUCT_STATS', '���ʾ���');
define('MATRIX_PRODUCT_SPREAD', '��ʸ��');
define('MATRIX_PRODUCT_REVENUE_RATIO', '�����ʤγ�� %');
define('MATRIX_PRODUCT_QUANTITY_RATIO', '���Ŀ��γ�� %');


// CSV Export
define('CSV_FILENAME_PREFIX', 'sales_');
define('CSV_HEADING_START_DATE', '������');
define('CSV_HEADING_END_DATE', '��λ��');
define('CSV_HEADING_LAST_NAME', '��');
define('CSV_HEADING_FIRST_NAME', '̾');
define('CSV_SEPARATOR', ',');
define('CSV_NEWLINE', "\n");


// Print Format
define('PRINT_DATE_TO', ' - ');
define('PRINT_DATE_TARGET', '��ʸ���֤�����:');
define('PRINT_TIMEFRAMES', '%s �������� %s');
define('PRINT_DATE_PURCHASED', '��ʸ������');
define('PRINT_DATE_STATUS', '��ʸ���֡ʥ��ơ�������');
define('PRINT_ORDER_STATUS', '%s [%s]');
define('PRINT_PAYMENT_METHOD', '��ʧ����ˡ:');
define('PRINT_CURRENT_STATUS', '���ߤ���ʸ����:');
define('PRINT_DETAIL_LEVEL', '�ܺ٥�٥�:');

// javascript pop-up alert window
define('ALERT_JS_HIGHLIGHT', '#FF40CF');
define('ALERT_MSG_START', "�����������Ϥ˸�꤬����ޤ�:");
define('ALERT_DATE_INVALID', "> �������Ϥ˸�꤬����ޤ�����");
define('ALERT_DATE_MISSING', "> ���դ򥻥åȤ��뤫�����դ��ϰϤ����ꤷ�Ƥ���������");
define('ALERT_CSV_CONFLICT', "> ɽ����ˡ�� " . SELECT_DETAIL_MATRIX . " �� " . SELECT_DETAIL_TIMEFRAME . " �����򤷤����ϡ�CSV���Ϥ�������ޤ���");
define('ALERT_MSG_FINISH', "�����ꤷ�Ƥ⤦���ٸ������Ƥ���������");

// Other text defines
define('ERROR_MISSING_REQ_INFO', '���顼: ɬ�פʹ��ܤ������Ƥ���ޤ���');
define('ALT_TEXT_SORT_ASC', '��ʸ�ξ���ǥ�����');
define('ALT_TEXT_SORT_DESC', '��ʸ�ι߽�ǥ�����');
define('TEXT_REPORT_TIMESTAMP', '��ݡ��Ȼ���: ');
define('TEXT_PARSE_TIME', '���ϻ���: %s sec.');
define('TEXT_EMPTY_SELECT', '(���򤷤Ƥ�������)');
define('TEXT_QTY', '| ����: ');
define('TEXT_DIFF', '| ���ʤμ���: ');
define('TEXT_SAME', '| (same)');
define('TEXT_SAME_ONE', '| --');
define('TEXT_PRINT_FORMAT', '����');
define('TEXT_PRINT_FORMAT_TITLE', '\'' . PAGE_HEADING . '\' �򲡤���ɽ�����̤���äƤ���������');
define('TEXT_NO_DATA', '-- ��ʸ������ޤ��� --');
?>