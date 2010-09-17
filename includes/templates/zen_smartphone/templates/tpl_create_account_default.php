<?php
/**
 * Page Template
 *
 * Loaded automatically by index.php?main_page=create_account.<br />
 * Displays Create Account form.
 *
 * @package templateSystem
 * @copyright Copyright 2003-2006 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: tpl_create_account_default.php 3359 2006-04-03 05:00:37Z drbyte $
 */
?>

<?php
// -> zen_smartphone: div �͕K�v�Ȃ�
/*
<div class="centerColumn" id="createAcctDefault">
*/
?>

<?php
// -> zen_smartphone: h1 �� toolbar ���g��
/*
<h1 id="createAcctDefaultHeading"><?php echo HEADING_TITLE; ?></h1>
*/
?>
<div class="toolbar"><h1><?php echo HEADING_TITLE; ?></h1></div>
<a class="back" href="#">cancel</a>
<?php
// <- zen_smartphone: h1 �� toolbar ���g��
?>

<div id="centerColumnBody">
<?php echo zen_draw_form('create_account', zen_href_link(FILENAME_CREATE_ACCOUNT, '', 'SSL'), 'post', 'onsubmit="return check_form(create_account);"') . zen_draw_hidden_field('action', 'process') . zen_draw_hidden_field('email_pref_html', 'email_format'); ?>

<p id="flow"><?php echo FLOW ; ?></p>

<p class="attention"><?php echo TEXT_ORIGIN_LOGIN; ?></p>

<?php require($template->get_template_dir('tpl_modules_create_account.php',DIR_WS_TEMPLATE, $current_page_base,'templates'). '/tpl_modules_create_account.php'); ?>

<div class="submit"><?php echo zen_image_submit(BUTTON_IMAGE_REGISTER, BUTTON_REGISTER_ALT,'class="imgover"'); ?></div>
</form>
</div>

<?php
// -> zen_smartphone: div �͕K�v�Ȃ�
/*
</div>
*/
?>
