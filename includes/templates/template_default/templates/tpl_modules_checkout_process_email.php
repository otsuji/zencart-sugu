
<?php print $customer['firstname'] . ' ' . $customer['lastname'] . EMAIL_GREET . "\n" ?>

<?php print "������".STORE_NAME . "\n" ?>
<?php print EMAIL_THANKS_FOR_SHOPPING . "\n" . EMAIL_DETAILS_FOLLOW . "\n" ?>
==============================================
<?php print $date_ordered ?> ����ʸ��������ޤ��ޤ�����
��ʸ�ֹ�� <?php print $order_id ?> �ˤʤ�ޤ���

<?php print $invoice_url . "\n" ?>
�ܤ����Ϣ�������Ǥ���ǧ���������ޤ���


<?php
    //comments area
    if ($comments) {
      print $comments . "\n\n";
    }

    //products area
    print EMAIL_TEXT_PRODUCTS . "\n" .
    EMAIL_SEPARATOR . "\n" .
    $products_ordered .
    EMAIL_SEPARATOR . "\n";

    //order totals area
    print $totals;

    print "\n" . EMAIL_TEXT_DELIVERY_ADDRESS . "\n" .
    EMAIL_SEPARATOR . "\n" .
    $delivery_address . "\n";

    //addresses area: Billing
    print "\n" . EMAIL_TEXT_BILLING_ADDRESS . "\n" .
    EMAIL_SEPARATOR . "\n" .
    $billing_address . "\n\n";

    print EMAIL_TEXT_PAYMENT_METHOD . "\n" .
    EMAIL_SEPARATOR . "\n";
    print $payment_method . "\n\n";

    // include disclaimer
    print "\n-----\n" . sprintf(EMAIL_DISCLAIMER, STORE_OWNER_EMAIL_ADDRESS) . "\n\n";
    // include copyright
    print "\n-----\n" . EMAIL_FOOTER_COPYRIGHT . "\n\n";
?>
