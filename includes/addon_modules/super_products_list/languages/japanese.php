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

define('MODULE_SUPER_PRODUCTS_LIST_TITLE', '�����ѡ����ʰ���');
define('MODULE_SUPER_PRODUCTS_LIST_DESCRIPTION', '���ƥ������ɤ��ˤ������ʰ�����ɽ����������ɽ����Ǥ�ʤ���ߤ��Ǥ���褦�ˤʤ�ޤ����ޤ���senna��Ȥä���®��ʸ��������ǽ�Ǥ���');

define('MODULE_SUPER_PRODUCTS_LIST_STATUS_TITLE', '�����ѡ����ʰ�����ͭ����');
define('MODULE_SUPER_PRODUCTS_LIST_STATUS_DESCRIPTION', '�����ѡ����ʰ�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��');
define('MODULE_SUPER_PRODUCTS_LIST_SORT_ORDER_TITLE', 'ͥ���');
define('MODULE_SUPER_PRODUCTS_LIST_SORT_ORDER_DESCRIPTION', '�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������');
define('MODULE_SUPER_PRODUCTS_LIST_SENNA_STATUS_TITLE', 'senna�����Ѥ��ޤ���?');
define('MODULE_SUPER_PRODUCTS_LIST_SENNA_STATUS_DESCRIPTION', '����senna�Υ��󥹥ȡ����Ԥ�ɬ�פ�����ޤ���<br />
senna���󥹥ȡ���塢��ʸ�����ѥ���ǥå�����Ϥ�ɬ�פ�����ޤ���<br />
���������ˤ�äƤϿ���ʬ����������⤢��ޤ��Τǡ����󥽡��뤫��ľ��SQL��¹Ԥ��Ƥ���������<br />
<p><a href="javascript:void(0)" onclick="document.getElementById(\'senna_sql\').style.display=\'block\';">SQL��ɽ������</a></p>
<div id="senna_sql" style="display:none;">
CREATE FULLTEXT INDEX idx_fulltext_products_description_products_name USING NGRAM ON '. TABLE_PRODUCTS_DESCRIPTION .' (products_name);
</div>');
define('MODULE_SUPER_PRODUCTS_LIST_ENABLE_SEARCH_BY_DATE_AVAILABLE_TITLE', 'ȯ�����򸡺����˴ޤ�ޤ���?');
define('MODULE_SUPER_PRODUCTS_LIST_ENABLE_SEARCH_BY_DATE_AVAILABLE_DESCRIPTION', 'ȯ�����ϡ��󶡲�ǽ���פ����Ѥ��ޤ����桼�����θ�������ȯ�����Ǹ��������뤫�ɤ�������ꤷ�ޤ���');

define('MODULE_SUPER_PRODUCTS_LIST_SORT_NAME',       '����̾��');
define('MODULE_SUPER_PRODUCTS_LIST_SORT_PRICE',      '���ʽ�');
define('MODULE_SUPER_PRODUCTS_LIST_SORT_SORT_ORDER', '���������');
define('MODULE_SUPER_PRODUCTS_LIST_SORT_DATE',       'ȯ������');
define('MODULE_SUPER_PRODUCTS_LIST_DIRECTION_ASC',   '����');
define('MODULE_SUPER_PRODUCTS_LIST_DIRECTION_DESC',  '�߽�');

define('MODULE_SUPER_PRODUCTS_LIST_RESULT_FROM_TO',  '<strong>%d</strong>����<strong>%d</strong> ��ɽ���� (���ʤο�: <strong>%d</strong>)');
define('MODULE_SUPER_PRODUCTS_LIST_PAGING_PREV',     '&lt;&lt;��');
define('MODULE_SUPER_PRODUCTS_LIST_PAGING_NEXT',     '��&gt;&gt;');
define('MODULE_SUPER_PRODUCTS_LIST_TEXT_ALL_CATEGORIES', '�����ƥ��꡼');
define('MODULE_SUPER_PRODUCTS_LIST_TEXT_ALL_MANUFACTURERS', '���᡼����');

define('MODULE_SUPER_PRODUCTS_LIST_NOT_FOUND_PRODUCTS', '�������뾦�ʤϸ��Ĥ���ޤ���Ǥ���');

define('MODULE_SUPER_PRODUCTS_LIST_ZENKAKU_BLANK',   '��');
define('MODULE_SUPER_PRODUCTS_LIST_HANKAKU_STRINGS', '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ/@-.,:');
define('MODULE_SUPER_PRODUCTS_LIST_ZENKAKU_STRINGS', '��������������������������������������������������������£ãģţƣǣȣɣʣˣ̣ͣΣϣУѣңӣԣգ֣ףأ٣ڡ����ݡ�����');

define('MODULE_SUPER_PRODUCTS_LIST_ERROR_CATEGORY_NOT_FOUND',            '¸�ߤ��ʤ����ƥ���Ǥ�');
define('MODULE_SUPER_PRODUCTS_LIST_ERROR_MANUFACTURER_NOT_FOUND',        '¸�ߤ��ʤ��᡼�����Ǥ�');
define('MODULE_SUPER_PRODUCTS_LIST_ERROR_PRICE_FROM_MUST_BE_NUM',        '���ʲ��¤ˤϿ��������Ϥ��Ƥ�������');
define('MODULE_SUPER_PRODUCTS_LIST_ERROR_PRICE_TO_MUST_BE_NUM',          '���ʾ�¤ˤϿ��������Ϥ��Ƥ�������');
define('MODULE_SUPER_PRODUCTS_LIST_ERROR_PRICE_TO_LESS_THAN_PRICE_FROM', '���ʾ�¤ϲ��ʲ��¤�Ʊ��������ʾ�ο��������Ϥ��Ƥ�������');
define('MODULE_SUPER_PRODUCTS_LIST_ERROR_INVALID_FROM_DATE',             '̵���ʳ������դǤ�');
define('MODULE_SUPER_PRODUCTS_LIST_ERROR_INVALID_TO_DATE',               '̵���ʽ�λ���դǤ�');
define('MODULE_SUPER_PRODUCTS_LIST_ERROR_TO_DATE_LESS_THAN_FROM_DATE',   '��λ���դϳ������դ�Ʊ��������ʹߤ����դ����Ϥ��Ƥ�������');

define('MODULE_SUPER_PRODUCTS_LIST_OPEN_MANUFACTURER_SETTING', '�᡼��������ꤹ��');
define('MODULE_SUPER_PRODUCTS_LIST_OPEN_PRICE_SETTING',        '���ʤ���ꤹ��');
define('MODULE_SUPER_PRODUCTS_LIST_OPEN_DATE_SETTING',         'ȯ��������ꤹ��');
define('MODULE_SUPER_PRODUCTS_LIST_RESET_SETTING',             '�����������');
define('MODULE_SUPER_PRODUCTS_LIST_NOW_LOADING', 'Loading...');
define('MODULE_SUPER_PRODUCTS_LIST_TEXT_FROM_TO', '���');
define('MODULE_SUPER_PRODUCTS_LIST_MANUFACTURERS_NOT_FOUND', '��������᡼�����ϸ��Ĥ���ޤ���Ǥ���');

define('MODULE_SUPER_PRODUCTS_LIST_TEXT_KEYWORDS',     '�������');
define('MODULE_SUPER_PRODUCTS_LIST_TEXT_CATEGORY',     '���ƥ��꡼');
define('MODULE_SUPER_PRODUCTS_LIST_TEXT_MANUFACTURER', '�᡼����');
define('MODULE_SUPER_PRODUCTS_LIST_TEXT_PRICE',        '������');
define('MODULE_SUPER_PRODUCTS_LIST_TEXT_DATE',         'ȯ����');
define('MODULE_SUPER_PRODUCTS_LIST_TEXT_SORT',         '�¤ӽ�');
define('MODULE_SUPER_PRODUCTS_LIST_TEXT_LIMIT',        'ɽ�����');
?>
