<?php
/**
 * Points
 *
 * @package point
 * @copyright Portions Copyright (C) 2008 Zen Cart.JP
 * @copyright Portions Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: points.php $
 */

define('HEADING_TITLE', '�ݥ���ȴ���');
define('HEADING_TITLE_SEARCH', '�ܵ�ID:');
define('HEADING_TITLE_CLASS', '�⥸�塼�륯�饹:');

define('TABLE_HEADING_POINTS_ID', 'ID');
define('TABLE_HEADING_CUSTOMERS', '�ܵ�̾');
define('TABLE_HEADING_DESCRIPTION', 'Ŭ��');
define('TABLE_HEADING_DEPOSIT', 'ͭ��');
define('TABLE_HEADING_PENDING', '��α');
define('TABLE_HEADING_WITHDRAW', '����');
define('TABLE_HEADING_CLASS', '�⥸�塼�륯�饹');
define('TABLE_HEADING_CREATED', '��Ͽ����');
define('TABLE_HEADING_UPDATED', '��������');
define('TABLE_HEADING_STATUS', '���ơ�����');
define('TABLE_HEADING_ACTION', '���');

define('TEXT_ALL_POINTS', '����');
define('TEXT_DISPLAY_NUMBER_OF_POINTS', '<b>%d</b>����<b>%d</b>���ɽ�� (��<b>%d</b>��)');

define('ENTRY_POINT_ID','ID: ');

define('ENTRY_CUSTOMERS_ID','�ܵ�ID: ');
define('ENTRY_CUSTOMERS_NAME','�ܵ�̾: ');
define('ENTRY_CUSTOMERS_EMAIL','�ܵҥ᡼�륢�ɥ쥹: ');
define('ENTRY_DESCRIPTION','Ŭ��: ');
define('ENTRY_POINT','�ݥ����: ');
define('ENTRY_DEPOSIT','ͭ���ݥ����: ');
define('ENTRY_PENDING','��α�ݥ����: ');
define('ENTRY_WITHDRAW','���ѥݥ����: ');
define('ENTRY_STATUS','���ơ�����: ');

define('TEXT_INFO_HEADING_NEW_POINT', '�����ݥ������Ͽ');
define('TEXT_NEW_INTRO', '�����ݥ���Ȥ���Ͽ���ޤ���');

define('TEXT_INFO_HEADING_NEWCONFIRM_POINT', '�����ݥ������Ͽ��ǧ');
define('TEXT_NEWCONFIRM_INTRO', '�ʲ������Ƥǿ����ݥ���Ȥ���Ͽ���ޤ�����<br />�ݥ���Ȼĳ۷׻���ȿ�Ǥ���ˤ���Ͽ��˥��ơ�����ON�ˤ��ޤ���');

define('TEXT_INFO_HEADING_EDIT_POINT', '�ݥ�����Խ�');
define('TEXT_EDIT_INTRO', '���Υݥ���Ȥ��Խ����ޤ���');

define('TEXT_INFO_HEADING_DELETE_POINT', '�ݥ���Ⱥ����ǧ');
define('TEXT_INFO_DELETE_INTRO', '���Υݥ���Ȥ������˺�����ޤ���?<br />�ǡ����������˺������ޤ����������μ¹Ԥϸ����᤻�ޤ���');
define('TEXT_INFO_HEADING_STATUS_OFF_POINT', '���ơ�����OFF��ǧ');
define('TEXT_INFO_STATUS_OFF_INTRO', '���Υݥ���Ȥ������˥��ơ�����OFF�ˤ��ޤ���?<br />���ơ�����OFF�ˤ���ȥݥ���Ȼĳ۷׻���ȿ�Ǥ���ʤ��ʤ�ޤ���');
define('TEXT_INFO_HEADING_STATUS_ON_POINT', '���ơ�����ON��ǧ');
define('TEXT_INFO_STATUS_ON_INTRO', '���Υݥ���Ȥ������˥��ơ�����ON�ˤ��ޤ���?<br />���ơ�����ON�ˤ���ȥݥ���Ȼĳ۷׻���ȿ�Ǥ���ޤ���');
define('TEXT_INFO_HEADING_PENDING_TO_DEPOSIT_POINT', '�ݥ����ͭ����ǧ');
define('TEXT_INFO_PENDING_TO_DEPOSIT_INTRO', '���Υݥ���Ȥ�������ͭ���ˤ��ޤ���?');
define('TEXT_INFO_HEADING_DEPOSIT_TO_PENDING_POINT', '�ݥ������α��ǧ');
define('TEXT_INFO_DEPOSIT_TO_PENDING_INTRO', '���Υݥ���Ȥ���������α�ˤ��ޤ���?');
define('TEXT_STATUS_OFF', '���ơ�������OFF�ˤ���');
define('TEXT_STATUS_ON', '���ơ�������ON�ˤ���');
define('TEXT_PENDING_TO_DEPOSIT', '�ݥ���Ȥ�ͭ���ˤ���');
define('TEXT_DEPOSIT_TO_PENDING', '�ݥ���Ȥ���α�ˤ���');
define('TEXT_DATE_POINT_CREATED', '��Ͽ��:');
define('TEXT_DATE_POINT_UPDATED', '������:');
define('TEXT_INFO_POINT_CLASS', '�⥸�塼�륯�饹:');

define('SUCCESS_POINT_INSERTED', '�ݥ���Ȥ���Ͽ����ޤ������ݥ���Ȼĳ۷׻���ȿ�Ǥ���ˤϥ��ơ�����ON�ˤ��Ƥ���������');
define('SUCCESS_POINT_UPDATED', '�ݥ���Ȥ���������ޤ�����');
define('SUCCESS_POINT_DELETED', '�ݥ���Ȥ��������ޤ�����');

define('ERROR_CUSTOMERS_ID', '�ܵ�ID��¸�ߤ��ޤ���');
define('ERROR_DESCRIPTION', 'Ŭ�Ѥ����Ϥ��Ƥ���������');
define('ERROR_POINT_VALUE', '�ݥ���ȿ���1�ʾ�����Ϥ��Ƥ���������');
define('ERROR_POINT_SPECIFY', '�ݥ���ȼ��̤������Ǥ���');
