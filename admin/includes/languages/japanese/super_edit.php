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
//  DESCRIPTION:   Generates a pop-up window to edit    //
//  the selected order information, broken into         //
//  sections: contact, product, history, and total.     //
//////////////////////////////////////////////////////////
// $Id: super_edit.php 25 2006-02-03 18:55:56Z BlindSide $
*/

// include the language file for super_orders.php since they overlap so much
require(DIR_WS_LANGUAGES . $_SESSION['language'] . '/' . FILENAME_SUPER_ORDERS . '.php');

define('HEADER_EDIT_ORDER', '��ʸ���Ƥ��Խ� #');
define('HEADER_EDIT_TOTAL', '��ʸ��פ���');
define('HEADER_EDIT_CONTACT', 'Ϣ��ǡ���');
define('HEADER_EDIT_HISTORY', '��ʸ����');

define('TABLE_HEADING_DELETE_COMMENTS', '���');
define('ENTRY_NAME', '̾��:');
define('ENTRY_ADDRESS', '����:');
define('ENTRY_POSTCODE', '͹���ֹ�:');
define('ENTRY_CHANGE_CUSTOMER', '�ۤʤ뤪���ͤؤΥݥ������ʸ:');

define('BUTTON_CANCEL', '���');
define('BUTTON_SUBMIT', '����');

define('TEXT_SPLIT_EXPLAIN', '���ʤϼ�����ʸ�ֹ�ذ�ư���ޤ��� #');
define('COMMENTS_SPLIT_OLD', '����������ʬ�����ޤ�����  ��������������: ');
define('COMMENTS_SPLIT_NEW', '��ʸ��ʬ�䤵��ޤ�����������ʸ��: ');

define('NL', "\n");

?>