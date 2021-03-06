<?php
/**
 * Page Template
 *
 * @package templateSystem
 * @copyright Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: tpl_login_default.php 2834 2006-01-11 22:16:37Z birdbrain $
 */
?>

<?php
// -> zen_smartphone: h1 は toolbar を使う
/*
<h1 id="loginDefaultHeading"><?php echo HEADING_TITLE; ?></h1>
</div>
*/
?>
<div class="toolbar"><h1><?php echo HEADING_TITLE; ?></h1></div>
<a class="back" href="#">cancel</a>
<?php
// <- zen_smartphone: h1 は toolbar を使う
?>

<!-- mainBody -->
<div id="mainBody">

<h2 class="transparent"><?php echo HEADING_RETURNING_CUSTOMER; ?></h2>

<div id="loginBox" class="box">
<?php echo zen_draw_form('login', zen_href_link(FILENAME_LOGIN, 'action=process', 'SSL')); ?>
<?php if ($messageStack->size('login') > 0) echo $messageStack->output('login'); ?>

<p class="attention"><?php echo TEXT_RETURNING_CUSTOMER ; ?></p>

<div id="loginBoxBody">
<?php
// -> zen_smartphone: table ではなく ul li を使う
/*
<table>
<tr class="email">
<th scope="row"><?php echo ENTRY_EMAIL_ADDRESS; ?></th>
<td><?php echo zen_draw_input_field('email_address', '', zen_set_field_length(TABLE_CUSTOMERS, 'customers_email_address', '40') . ' id="login-email-address"'); ?></td>
</tr>
<tr>
<th scope="row"><?php echo ENTRY_PASSWORD; ?></th>
<td><?php echo zen_draw_password_field('password', '', zen_set_field_length(TABLE_CUSTOMERS, 'customers_password', '40') . ' id="login-password"'); ?></td>
</tr>
<tr>
<th scope="row">&nbsp;</th>
<td><?php echo '<a href="' . zen_href_link(FILENAME_PASSWORD_FORGOTTEN, '', 'SSL') . '">' . TEXT_PASSWORD_FORGOTTEN . '</a>'; ?></td>
</tr>
</table>

<p class="submit"><?php echo zen_image_submit(BUTTON_IMAGE_LOGIN, BUTTON_LOGIN_ALT,'class="imgover"'); ?></p>
*/
?>
<ul>
<li><?php echo zen_draw_input_field('email_address', '', zen_set_field_length(TABLE_CUSTOMERS, 'customers_email_address', '40') . ' id="login-email-address" placeholder="'. ENTRY_EMAIL_ADDRESS .'"'); ?></li>
<li><?php echo zen_draw_password_field('password', '', zen_set_field_length(TABLE_CUSTOMERS, 'customers_password', '40') . ' id="login-password" placeholder="'. ENTRY_PASSWORD .'"'); ?></li>
</ul>

<p class="submit"><?php echo zen_image_submit(BUTTON_IMAGE_LOGIN, BUTTON_LOGIN_ALT,'class="imgover"'); ?></p>

<p><?php echo '<a href="' . zen_href_link(FILENAME_PASSWORD_FORGOTTEN, '', 'SSL') . '">' . TEXT_PASSWORD_FORGOTTEN . '</a>'; ?></p>

<?php
// <- zen_smartphone: table ではなく ul li を使う
?>

</div>

</form>
</div>

<h2 class="transparent"><?php echo HEADING_NEW_CUSTOMER ; ?></h2>
<div id="visitorBox" class="box">
<?php echo TEXT_NEW_CUSTOMER_INTRODUCTION ; ?>

<?php
// -> visitorsと通常の新規登録を分けます
if (MODULE_VISITORS_STATUS == "true") {
?>
<div id="visitorBoxButtons">
<?php
?>
<p class="forward"><?php echo '<a href="' . zen_href_link(FILENAME_ADDON, 'module=visitors/create_visitor', 'SSL') . '">' . zen_image_button(BUTTON_IMAGE_VISITOR, BUTTON_VISITOR_ALT,'class="imgover"') . '</a>'; ?></p>
</div>
<?php
}
// 以下、visitorじゃない場合
else {
  require_once('includes/classes/order.php');
  $order = new order();
  if (count($order->products)) {
  $bt = "back";	
  }else{
  $bt = "submit";
  }
?>
<div id="newCustomerBoxButtons">
<p class="<?php echo $bt ; ?>"><?php echo '<a class="whiteButton" href="' . zen_href_link(FILENAME_CREATE_ACCOUNT, '', 'SSL') . '">' . zen_image_button(BUTTON_IMAGE_CREATE_ACCOUNT, BUTTON_CREATE_ACCOUNT_ALT,'class="imgover"') . '</a>'; ?></p>
</div>
<?php
}
// -> visitorsと通常の新規登録を分けます
?>

</div>
<!-- /mainBody -->
