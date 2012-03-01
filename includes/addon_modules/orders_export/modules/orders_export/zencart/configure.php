<?php
$params = array(
  'file_prefix' => 'orders-',
  'file_extension' => 'csv',
  'file_encode' => 'SJIS',
  'fileds_terminated' => ',',
  'fileds_enclosed' => '"',
  'fileds_escaped' => '\\',
  'lines_terminated' => "\n",
);

// TABLE_ORDERS
$fields = array();

$fields[] = array('table' => TABLE_ORDERS, 'field' => 'orders_id', 'header' => '��ʸ�ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_id', 'header' => '�ܵ� - ID', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_name', 'header' => '�ܵ� - ��̾', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_company', 'header' => '�ܵ� - ���̾', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_street_address', 'header' => '�ܵ� - ����1', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_suburb', 'header' => '�ܵ� - ����2', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_city', 'header' => '�ܵ� - �Զ�Į¼', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_postcode', 'header' => '�ܵ� - ͹���ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_state', 'header' => '�ܵ� - ��ƻ�ܸ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_country', 'header' => '�ܵ� - ��', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_telephone', 'header' => '�ܵ� - �����ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_email_address', 'header' => '�ܵ� - E�᡼�륢�ɥ쥹', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_address_format_id', 'header' => '�ܵ� - ����ե����ޥå�ID', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_name', 'header' => '������ - ��̾', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_company', 'header' => '������ - ���̾', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_street_address', 'header' => '������ - ����1', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_suburb', 'header' => '������ - ����2', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_city', 'header' => '������ - �Զ�Į¼', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_postcode', 'header' => '������ - ͹���ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_state', 'header' => '������ - ��ƻ�ܸ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_country', 'header' => '������ - ��', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_address_format_id', 'header' => '������ - ����ե����ޥå�ID', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_name', 'header' => '������ - ��̾', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_company', 'header' => '������ - ���̾', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_street_address', 'header' => '������ - ����1', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_suburb', 'header' => '������ - ����2', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_city', 'header' => '������ - �Զ�Į¼', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_postcode', 'header' => '������ - ͹���ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_state', 'header' => '������ - ��ƻ�ܸ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_country', 'header' => '������ - ��', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_address_format_id', 'header' => '������ - ����ե����ޥå�ID', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'payment_method', 'header' => '��ʧ��ˡ', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'payment_module_code', 'header' => '��ʧ�⥸�塼�륳����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'shipping_method', 'header' => '������ˡ', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'shipping_module_code', 'header' => '�����⥸�塼�륳����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'coupon_code', 'header' => '�����ݥ󥳡���', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'cc_type', 'header' => 'CC������', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'cc_owner', 'header' => 'CC̾��', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'cc_number', 'header' => 'CC�ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'cc_expires', 'header' => 'CCͭ������', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'cc_cvv', 'header' => 'CCV', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'last_modified', 'header' => '�ǽ���������', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'date_purchased', 'header' => '��ʸ����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'orders_status', 'header' => '��ʸ���ơ�����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'orders_date_finished', 'header' => '������λ����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'currency', 'header' => '�̲�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'currency_value', 'header' => '�졼��', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'order_total', 'header' => '���׶��', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'order_tax', 'header' => '������', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'paypal_ipn_id', 'header' => 'paypal_ipn_id', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'ip_address', 'header' => 'IP���ɥ쥹', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_telephone', 'header' => '������ - �����ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_fax', 'header' => '������ - FAX�ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_telephone', 'header' => '������ - �����ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_fax', 'header' => '������ - FAX�ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_fax', 'header' => '�ܵ� - FAX�ֹ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'customers_name_kana', 'header' => '�ܵ� - ��̾����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'delivery_name_kana', 'header' => '������ - ��̾����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS, 'field' => 'billing_name_kana', 'header' => '������ - ��̾����', 'convert' => null);

$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'orders_products_id', 'header' => '��ʸ����ID', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_id', 'header' => '����ID', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_model', 'header' => '����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_name', 'header' => '����̾', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_price', 'header' => '����ñ��', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'final_price', 'header' => '����ñ��', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_tax', 'header' => '��Ψ', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_quantity', 'header' => '����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'onetime_charges', 'header' => '��󥿥���ݶ�', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_priced_by_attribute', 'header' => '����°���ˤ�����', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'product_is_free', 'header' => '̵������', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_discount_type', 'header' => '���������', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_discount_type_from', 'header' => '������β���', 'convert' => null);
$fields[] = array('table' => TABLE_ORDERS_PRODUCTS, 'field' => 'products_prid', 'header' => 'products_prid', 'convert' => null);

$tables = array();
$tables[] = array(
  'table' => TABLE_ORDERS,
  'join_type' => false,
  'join_conditions' => false
  );
$tables[] = array(
  'table' => TABLE_ORDERS_PRODUCTS,
  'join_type' => 'inner',
  'join_conditions' => TABLE_ORDERS . ".orders_id = " . TABLE_ORDERS_PRODUCTS . ".orders_id"
  );

$conditions = array();

$order_by = array();
?>