<?php
/**
 * Page Template
 *
 * @package templateSystem
 * @copyright Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: tpl_tell_a_friend_default.php 2894 2006-01-25 04:51:59Z birdbrain $
 */
?>
<div class="centerColumn" id="tellAFriendDefault">
<?php echo zen_draw_form('email_friend', zen_href_link(FILENAME_TELL_A_FRIEND, 'action=process&products_id=' . $_GET['products_id'])); ?>

<?php if ($messageStack->size('friend') > 0) echo $messageStack->output('friend'); ?>
<table>
<tr>
<td>
<fieldset>
<legend><?php echo sprintf(HEADING_TITLE, $product_info->fields['products_name']); ?></legend>
<div class="alert forward"><?php echo FORM_REQUIRED_INFORMATION; ?></div>
<br class="clearBoth" />

<label class="inputLabel" for="from-name"><?php echo FORM_FIELD_CUSTOMER_NAME . '&nbsp;<span class="alert">' . ENTRY_FIRST_NAME_TEXT . '</span>'; ?></label>
<?php echo zen_draw_input_field('from_name','','id="from-name"'); ?>
<br class="clearBoth" />

<label class="inputLabel" for="from-email-address"><?php echo FORM_FIELD_CUSTOMER_EMAIL . '&nbsp;<span class="alert">' . ENTRY_EMAIL_ADDRESS_TEXT . '</span>'; ?></label>
<?php echo zen_draw_input_field('from_email_address','','id="from-email-address"'); ?>
<br class="clearBoth" />

<label class="inputLabel" for="to-name"><?php echo FORM_FIELD_FRIEND_NAME . '&nbsp;<span class="alert">' . ENTRY_FIRST_NAME_TEXT . '</span>'; ?></label>
<?php echo zen_draw_input_field('to_name', '', 'id="to-name"'); ?>
<br class="clearBoth" />

<label class="inputLabel" for="to-email-address"><?php echo FORM_FIELD_FRIEND_EMAIL . '&nbsp;<span class="alert">' . ENTRY_EMAIL_ADDRESS_TEXT . '</span>'; ?></label>
<?php echo zen_draw_input_field('to_email_address', $_GET['to_email_address'], 'id="to-email-address"'); ?>
<br class="clearBoth" />

<label for="email-message"><?php echo FORM_TITLE_FRIEND_MESSAGE; ?></label>
<?php echo zen_draw_textarea_field('message', 30, 5, '', 'id="email-message"'); ?>
<br class="clearBoth" />
</fieldset>
</td>
</tr>
</table>

<div class="buttonRow forward"><?php echo zen_image_submit(BUTTON_IMAGE_SEND, BUTTON_SEND_ALT); ?></div>
<br class="clearBoth" />

<div id="tellAFriendAdvisory" class="advisory"><?php echo EMAIL_ADVISORY_INCLUDED_WARNING . str_replace('-----', '', EMAIL_ADVISORY); ?></div>

</form>
</div>