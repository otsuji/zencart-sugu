<?php
/**
 * Module Template
 *
 * Template used to render attribute display/input fields
 *
 * @package templateSystem
 * @copyright Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: tpl_modules_attributes.php 3208 2006-03-19 16:48:57Z birdbrain $
 */
?>

<?php if ($zv_display_select_option > 0) { ?>

<?php } // show please select unless all are readonly ?>

<?php
// -> zen_smartphone: dl dt dd �ł͂Ȃ��Aul li �ŁB
/*
<dt><?php echo $options_name[$i]; ?></dt>
<dd><?php echo "\n" . $options_menu[$i]; ?></dd>


<?php if ($options_comment[$i] != '' and $options_comment_position[$i] == '1') { ?>
    <div class="ProductInfoComments"><?php echo $options_comment[$i]; ?></div>
<?php } ?>
*/
?>
<li>
<div><?php echo $options_name[$i]; ?></div>
<?php echo "\n" . $options_menu[$i]; ?>
</li>

<?php if ($options_comment[$i] != '' and $options_comment_position[$i] == '1') { ?>
    <div class="ProductInfoComments"><?php echo $options_comment[$i]; ?></div>
<?php } ?>

<?php
if ($options_attributes_image[$i] != '') {
?>
<?php echo $options_attributes_image[$i]; ?>
<?php
}
?>


<?php
  if ($show_onetime_charges_description == 'true') {
?>
    <div class="wrapperAttribsOneTime"><?php echo TEXT_ONETIME_CHARGE_SYMBOL . TEXT_ONETIME_CHARGE_DESCRIPTION; ?></div>
<?php } ?>


<?php
  if ($show_attributes_qty_prices_description == 'true') {
?>
    <div class="wrapperAttribsQtyPrices"><?php echo zen_image(DIR_WS_TEMPLATE_ICONS . 'icon_status_green.gif', TEXT_ATTRIBUTES_QTY_PRICE_HELP_LINK, 10, 10) . '&nbsp;' . '<a href="javascript:popupWindowPrice(\'' . zen_href_link(FILENAME_POPUP_ATTRIBUTES_QTY_PRICES, 'products_id=' . $_GET['products_id'] . '&products_tax_class_id=' . $products_tax_class_id) . '\')">' . TEXT_ATTRIBUTES_QTY_PRICE_HELP_LINK . '</a>'; ?></div>
<?php } ?>