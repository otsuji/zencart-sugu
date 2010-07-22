<?php
/**
 * functions_digitalcheck.php
 *
 * @package functions
 * @copyright Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: functions_lookups.php 2774 2006-01-03 03:07:08Z ajeh $
 */

// sid��fuka����ˤ��¸�ߥ����å�
// ����˥ǥ���������å�����θƤӽФ����˻��Ѥ���
function digitalchcek_is_exist($sid, $fuka, $type="") {
  global $db;

  // ¸�ߥ����å�
  $sql = "select
            *
          from ".
            TABLE_DIGITALCHECK_TRANSACTIONS."
          where
            sids='".(int)$sid."'
            and fuka='".zen_db_input($fuka)."'";
  if ($type != "")
    $sql .= " and type='".zen_db_input($type)."'";
  $result = $db->Execute($sql);
  if ($result->EOF)
    return false;
  else
    return true;
}

function digitalchcek_get_response($sid, $fuka, $type="") {
  global $db;

  // ¸�ߥ����å�
  $sql = "select
            response
          from ".
            TABLE_DIGITALCHECK_TRANSACTIONS."
          where
            sids='".(int)$sid."'
            and fuka='".zen_db_input($fuka)."'";
  if ($type != "")
    $sql .= " and type='".zen_db_input($type)."'";
  $result = $db->Execute($sql);
  if ($result->EOF)
    return null;
  else
    return $result->fields['response'];
}

// sid�ˤ����ʸID����
function digitalchcek_get_orders_id($sid) {
  global $db;

  $sql = "select
            orders_id
          from ".
            TABLE_DIGITALCHECK_TRANSACTIONS."
          where
            sids='".(int)$sid."'";
  $result = $db->Execute($sql);
  if ($result->EOF)
    return false;
  else
    return $result->fields['orders_id'];
}

// sid�ο�������
function digitalchcek_get_new_sid() {
  global $db;

  // ������ɬ�פ�sid�κ��
  $today = time()-86400;
  $today = date('Y-m-d H:i:s', $today);
  $sql   = "delete
            from ".
              TABLE_DIGITALCHECK_TRANSACTIONS."
            where
              orders_id=0
              and created_at<='".$today."'";
  $db->Execute($sql);

  // sid������������
  // sid�ȶ�ۤ�ǥ���������å�¦�ǤĤʤ��Ƥ���褦��
  // ���٥ꥯ�����Ȥ�Ф��Ƥ��ޤ��ȶ�ۤ��ѹ��Ǥ��ʤ�
  // ̵�̤ʥǡ�������������Ƥ��ޤ������礦���ʤ����ʡ�

  // ��������ɤμ���
  $sql_data_array = array(
    'created_at'=>'now()'
  );
  zen_db_perform(TABLE_DIGITALCHECK_TRANSACTIONS, $sql_data_array);
  return $db->Insert_ID();
}

// fuka����μ���
function digitalchcek_get_fuka() {
  return md5(uniqid(rand(), true));
}

// �׵�쥳���ɤ���¸
function digitalchcek_save_request_parm($sid, $type, $request, $fuka) {
  global $db;

  $sql_data_array = array(
    'customers_id' => $_SESSION['customer_id'], // �ܵ�ID
    'type'         => $type,                    // �����ˡ
    'status'       => 'wait',                   // �����Ԥ�
    'request'      => $request,                 // �ꥯ������
    'fuka'         => $fuka,                    // �ղþ���
  );
  zen_db_perform(TABLE_DIGITALCHECK_TRANSACTIONS, $sql_data_array, "update", "sids=".(int)$sid);
}

// ��ʸID�ι���
function digitalchcek_save_orders_id($sid, $orders_id) {
  global $db;

  $sql_data_array = array(
    'orders_id' =>$orders_id, // ��ʸID
  );
  zen_db_perform(TABLE_DIGITALCHECK_TRANSACTIONS, $sql_data_array, "update", "sids=".(int)$sid);
}

// �ֿ��쥳���ɤ���¸
function digitalchcek_save_response_parm($sid, $status, $response, $seq, $datetime) {
  global $db;

  $sql_data_array = array(
    'status'           =>$status,   // ����
    'response'         =>$response, // ���ξ���
    'finish_payment_id'=>$seq,      // ���������
    'finish_payment_at'=>$datetime  // ��Ѵ�λ����
  );
  zen_db_perform(TABLE_DIGITALCHECK_TRANSACTIONS, $sql_data_array, "update", "sids=".(int)$sid);
}

// ��ʸ���ơ���������
function digitalchcek_save_status($sid, $status_id, $comments) {
  global $db;

  $orders_id = digitalchcek_get_orders_id($sid);
  $sql_data_array = array(
    'orders_id'        =>$orders_id, // ��ʸID
    'orders_status_id' =>$status_id, // ���ơ�����
    'date_added'       =>'now()',    // �ҥ��ȥ꡼�ɲ�����
    'customer_notified'=>0,          // ���Τʤ�
    'comments'         =>$comments,  // ������
  );
  zen_db_perform(TABLE_ORDERS_STATUS_HISTORY, $sql_data_array);

  $sql_data_array = array(
    'orders_status' =>$status_id,     // ���ơ�����
  );
  zen_db_perform(TABLE_ORDERS, $sql_data_array, "update", "orders_id=".$orders_id);
}

// ��ʸ���ơ���������
function digitalchcek_http_build_query($param) {
  $ret = "";
  foreach ($param as $key=>$value) {
    if ($ret != "")
      $ret .= '&';
    $ret .= $key."=".htmlspecialchars($value);
  }
  return $ret;
}

// ��̾�Ѵ�
function digitalcheck_name_convert($name) {
  return mb_convert_kana($name, "RNASKHV");
}

// �����Ѵ�
function digitalcheck_kana_convert($kana) {
  $check = "�����������������������������������ĥƥȥʥ˥̥ͥΥϥҥեإۥޥߥ�������������󥬥��������������������¥ťǥɥѥԥץڥݥХӥ֥٥ܥå�������������";
  $ret   = "";
  $kana  = mb_convert_kana($kana, "CKV");
  for ($i=0; $i<mb_strlen($kana); $i++) {
    if (mb_strpos($check, mb_substr($kana, $i, 1)) !== false)
      $ret .= mb_substr($kana, $i, 1);
  }
  return $ret;
}

// ͹���ֹ��Ѵ�
function digitalcheck_zip_convert($tel) {
  $ret = "";
  $tel = mb_convert_kana($tel, "n"); // ���ѿ���->Ⱦ�ѿ���
  for ($i=0; $i<strlen($tel); $i++) {
    $c = substr($tel, $i, 1);
    if ($c>="0" && $c<="9")
      $ret .= $c;
  }
  return substr($ret, 0, 3);
}

// �����ֹ��Ѵ�
function digitalcheck_tel_convert($tel) {
  $ret = "";
  $tel = mb_convert_kana($tel, "n"); // ���ѿ���->Ⱦ�ѿ���
  for ($i=0; $i<strlen($tel); $i++) {
    $c = substr($tel, $i, 1);
    if ($c>="0" && $c<="9")
      $ret .= $c;
  }
  return $ret;
}

// ���ּ���
function digitalchcek_get_status($sid, $fuka, $type="") {
  global $db;

  // ¸�ߥ����å�
  $sql = "select
            status
          from ".
            TABLE_DIGITALCHECK_TRANSACTIONS."
          where
            sids='".(int)$sid."'
            and fuka='".zen_db_input($fuka)."'";
  if ($type != "")
    $sql .= " and type='".zen_db_input($type)."'";
  $result = $db->Execute($sql);
  if ($result->EOF)
    return null;
  else
    return $result->fields['status'];
}

// �ܵ�ID����
function digitalchcek_get_customers_id($sid, $fuka, $type="") {
  global $db;

  // ¸�ߥ����å�
  $sql = "select
            customers_id
          from ".
            TABLE_DIGITALCHECK_TRANSACTIONS."
          where
            sids='".(int)$sid."'
            and fuka='".zen_db_input($fuka)."'";
  if ($type != "")
    $sql .= " and type='".zen_db_input($type)."'";
  $result = $db->Execute($sql);
  if ($result->EOF)
    return null;
  else
    return $result->fields['customers_id'];
}
?>
