<?php
/**
 * @copyright Copyright (c) ark-web, Inc. All rights reserved.
 * @author Syuichi Kohata
 * @copyright Portions Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 */
?>
<?php echo $html->form('delete'); ?>
  <input type="hidden" name="action"         value="delete_process">
  <input type="hidden" name="products_id"    value="<?php echo $_REQUEST['products_id']; ?>">
  <input type="hidden" name="products_name"  value="<?php echo htmlspecialchars($product["products_description_products_name"][(int)$_SESSION['languages_id']]); ?>">
  <input type="hidden" name="products_image" value="<?php echo htmlspecialchars($product["products_image"]); ?>">

<h3><?php echo MODULE_EASY_ADMIN_PRODUCTS_DELETE_TITLE; ?></h3>
<table class="tableLayout3 delete" border="0" width="100%" cellspacing="0" cellpadding="0">
    <tr>
      <th>����̾</th>
      <td>
        <?php
          echo htmlspecialchars($product["products_description_products_name"][(int)$_SESSION['languages_id']]);
          echo "(ID:".$_REQUEST['products_id'].")";
        ?>
      </td>
    </tr>

    <tr>
      <th>���ƥ���</th>
      <td>
        <?php
          $categories = explode(",", $product['categories']);
          foreach($categories as $v) {
            if ($v > 0) {
              $name = $model->get_category($v);
              echo '<div id=cat_'.$v.'>';
              echo sprintf(MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_FORMAT, $name);
              echo '</div>';
            }
          }
        ?>
      </td>
    </tr>
  </table>
  <table border="0" width="100%" cellspacing="0" cellpadding="0">

    <tr>
      <td  colspan="2" class="submit">
        <input type="image" src="<?php echo MODULE_EASY_ADMIN_PRODUCTS_DELETE_BTN; ?>" alt="<?php echo MODULE_EASY_ADMIN_PRODUCTS_DELETE; ?>">
        <a href="<?php echo $html->href_link(); ?>"><img src="<?php echo MODULE_EASY_ADMIN_PRODUCTS_CANCEL_BTN; ?>" alt="<?php echo MODULE_EASY_ADMIN_PRODUCTS_CANCEL; ?>"></a>
      </td>
    </tr>

  </table>
</form>
