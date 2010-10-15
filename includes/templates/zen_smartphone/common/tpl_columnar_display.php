<?php
/**
 * Common Template - tpl_columnar_display.php
 *
 * This file is used for generating tabular output where needed, based on the supplied array of table-cell contents.
 *
 * @package templateSystem
 * @copyright Copyright 2003-2006 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: tpl_columnar_display.php 3157 2006-03-10 23:24:22Z drbyte $
 */

?>


<?php
if (is_array($list_box_contents) > 0 ) {
 for($row=0;$row<sizeof($list_box_contents);$row++) {
    $params = "";
    //if (isset($list_box_contents[$row]['params'])) $params .= ' ' . $list_box_contents[$row]['params'];
?>

<?php
// -> zen_smartphone: ul��id��U��
// echo '<ul>';
// -> zen_smartphone: ajax�̏ꍇ�� ul �\�L�͗v��Ȃ�
// echo '<ul id="product-listing">';
if (! isset($_GET['page']) or $_GET['page'] <= 1) {
  echo '<ul id="product-listing">';
}
// -> zen_smartphone: ajax�̏ꍇ�� ul �\�L�͗v��Ȃ�
// <- zen_smartphone: ul��id��U��
    for($col=0;$col<sizeof($list_box_contents[$row]);$col++) {
      $r_params = "";
      if (isset($list_box_contents[$row][$col]['params'])) $r_params .= ' ' . (string)$list_box_contents[$row][$col]['params'];
     if (isset($list_box_contents[$row][$col]['text'])) {
?>
<?php //echo '<dl' . $r_params . '>' . $list_box_contents[$row][$col]['text'] .  '</dl>' . "\n"; ?>
<?php
// ������class�����A����$r_params�ɓ����Ă��ł����Amodules/categories_row.php �ł���A�I�[�o�[���C�h�ł��Ȃ��̂Ń����B
// �@�c�Ƃ������A�������������ɂ͗��Ȃ�?
?>
<?php echo '<li class="arrow">' . $list_box_contents[$row][$col]['text'] .  '</li>' . "\n"; ?>
<?php
      }
    }
// -> zen_smartphone: ajax�̏ꍇ�� ul �\�L�͗v��Ȃ�
//echo '</ul>';
if (! isset($_GET['page']) or $_GET['page'] <= 1) {
  echo '</ul>';
}
// <- zen_smartphone: ajax�̏ꍇ�� ul �\�L�͗v��Ȃ�
?>
<br class="clearBoth" />
<?php
  }
}
?> 
