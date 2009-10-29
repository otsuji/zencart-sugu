<?php
//
// +----------------------------------------------------------------------+
// |zen-cart Open Source E-commerce                                       |
// +----------------------------------------------------------------------+
// | Copyright (c) 2003 The zen-cart developers                           |
// |                                                                      |
// | http://www.zen-cart.com/index.php                                    |
// |                                                                      |
// | Portions Copyright (c) 2003 osCommerce                               |
// +----------------------------------------------------------------------+
// | This source file is subject to version 2.0 of the GPL license,       |
// | that is bundled with this package in the file LICENSE, and is        |
// | available through the world-wide-web at the following url:           |
// | http://www.zen-cart.com/license/2_0.txt.                             |
// | If you did not receive a copy of the zen-cart license and are unable |
// | to obtain it through the world-wide-web, please send a note to       |
// | license@zen-cart.com so we can mail you a copy immediately.          |
// +----------------------------------------------------------------------+
//  $Id: email_welcome.php 2999 2006-02-09 17:21:39Z drbyte $
//
  require("../includes/addon_modules/easy_design/languages/" . $_SESSION['language'] . '.php');
?>
<!doctype html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<html <?php echo HTML_PARAMS; ?>>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>">
<title><?php echo TITLE; ?></title>
<link rel="stylesheet" type="text/css" href="includes/stylesheet.css">
<link rel="stylesheet" type="text/css" href="includes/cssjsmenuhover.css" media="all" id="hoverJS">
<script language="javascript" src="includes/menu.js"></script>
<script language="javascript" src="includes/general.js"></script>
<link rel="stylesheet" type="text/css" href="includes/javascript/spiffyCal/spiffyCal_v2_1.css">
<script language="JavaScript" src="includes/javascript/spiffyCal/spiffyCal_v2_1.js"></script>
<script type="text/javascript">
  <!--
  function init()
  {
    cssjsmenu('navbar');
    if (document.getElementById)
    {
      var kill = document.getElementById('hoverJS');
      kill.disabled = true;

      var specificday = document.getElementById('specificday');
      if (specificday) {
        while (specificday.childNodes.length)
          specificday.removeChild(specificday.childNodes.item(specificday.childNodes.length-1));
      }
    }
  }
  // -->
</script>

<link rel="stylesheet" href="<?php echo DIR_WS_CATALOG.DIR_WS_INCLUDES; ?>addon_modules/easy_design/css/colorPicker.css" type="text/css" />
<script language="javascript" src="<?php echo DIR_WS_CATALOG.DIR_WS_INCLUDES; ?>addon_modules/easy_design/js/jquery-1.3.2.min.js"></script>
<script language="javascript" src="<?php echo DIR_WS_CATALOG.DIR_WS_INCLUDES; ?>addon_modules/easy_design/js/jquery.colorPicker.js"></script>
<script type="text/javascript">
  <!--
  // ���顼�ԥå����ѤΥ��顼�򤹤٤��ѹ�����
  $(function(){
    var i=0;
    for (;;) {
      var key   = 'template_color_picker['+i.toString()+']';
      var check = document.getElementById(key);
      if (check) {
        var color = $(check);
        if (color)
          color.colorPicker();
        else
          break;
      }
      else
        break;
      i++;
    }
  });

  function checkRecoveryColor() {
    return window.confirm("<?php echo TEXT_CONFIRM_COLOR_RECOVERY; ?>");
  }
  // -->
</script>
</head>
<body onload="init()">
<div id="spiffyEASY_DESIGN" class="text"></div>
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header.php'); ?>
<!-- header_eof //-->

<!-- body_text //-->
<?php
// ��å�����
$message = "";
$error   = "";

// ���
$action = $_REQUEST['action'];
$id     = (int)$_REQUEST['ID'];

// �ƥ�ץ졼�Ⱦ������
$template_info = getTemplates();

if (isset($_REQUEST['change_color']))
  $action = "change_color";
if (isset($_REQUEST['recovery_color']))
  $action = "recovery_color";
if (isset($_REQUEST['change_objection']))
  $action = "change_objection";
if (isset($_REQUEST['change_logo']))
  $action = "change_logo";

if ($action == "change_template") {
  // ������ƥ�ץ졼�Ȥι���
  // (��������¸�ߤ�����Τ�)
  $template = $_REQUEST['template'];
  for ($i=0; $i<count($template_info); $i++) {
    if ($template_info[$i]['id'] == $template) {
      updateDefaultTemplate($template);

      // �ǡ����١�������
      $file = DIR_FS_CATALOG_TEMPLATES . $template . "/" . FILENAME_EASY_DESIGN_INIT_DATABASE . ".php";
      if (file_exists($file))
        require_once($file);

      $message .= "<br/>".TEXT_UPDATE_SUCCESS_TEMPLATE;
      break;
    }
  }
}
else if ($action == "change_color") {
  // �����ѹ�
  // �ƥ�ץ졼��̾�����ꤵ��Ƥ����
  $template = $_REQUEST['template'];
  if ($template != "") {
    $template_color = array();
    $i              = 0;
    // POST���줿���ǡ������оݤȤ���
    // (key���ɲä���Ƥ�����פʤ褦��)
    for (;;) {
      if (!isset($_REQUEST['template_color_key'][$i]) ||
          !isset($_REQUEST['template_color_name'][$i]) ||
          !isset($_REQUEST['template_color_picker'][$i]))
        break;
      $template_color[] = array('key'  =>$_REQUEST['template_color_key'][$i],
                                'name' =>$_REQUEST['template_color_name'][$i],
                                'value'=>$_REQUEST['template_color_picker'][$i]);
      $i++;
    }
    if (count($template_color)) {
      updateTemplateColor($template, $template_color);
      // ���������Τǡ��ƥ�ץ졼�Ⱦ������
      $template_info = getTemplates();

      // css����
      if (updateCssFromTemplateColor($template))
        $message .= "<br/>".TEXT_UPDATE_SUCCESS_COLOR;
      else
        $error .= "<br/>".TEXT_UPDATE_FAILURE_COLOR;
    }
  }
}
else if ($action == "recovery_color") {
  // ���ν����
  // �ƥ�ץ졼��̾�����ꤵ��Ƥ����
  $template = $_REQUEST['template'];
  if ($template != "") {
    // �ƥ�ץ졼�ȤΥ��顼���������
    // �����ɤ߹��ߤ�Ԥ�
    deleteTemplateColor($template);
    $template_info = getTemplates();

    // css����
    if (updateCssFromTemplateColor($template))
      $message .= "<br/>".TEXT_UPDATE_SUCCESS_COLOR;
    else
      $error .= "<br/>".TEXT_UPDATE_FAILURE_COLOR;

  }
}
else if ($action == "change_objection") {
  // POST���줿���ǡ������оݤȤ���
  // (key���ɲä���Ƥ�����פʤ褦��)
  $objection = array();
  $i         = 0;
  for (;;) {
    if (!isset($_REQUEST['objection_id'][$i])       ||
        !isset($_REQUEST['objection_value'][$i]))
      break;
    $objection[] = array('id'      =>$_REQUEST['objection_id'][$i],
                         'value'   =>$_REQUEST['objection_value'][$i]);
    $i++;
  }
  if (count($objection)) {
    updateObjectionWords($objection);
    $message .= "<br/>".TEXT_UPDATE_SUCCESS_OBJECTION;
  }
}
else if ($action == "change_logo") {
  $template = $_REQUEST['template'];
  $tempname = $_FILES['upfile']['tmp_name'];
  $filename = $_FILES['upfile']['name'];
  if ($template == "" ||
      $tempname == "" ||
      $filename == "") {
    $error .= "<br/>".TEXT_UPDATE_FAILURE_LOGO;
  }
  else {
    $result = uploadLogoImage($template, $tempname, $filename);
    if ($result == "OK")
      $message .= "<br/>".TEXT_UPDATE_SUCCESS_LOGO;
    else
      $error .= "<br/>".TEXT_UPDATE_FAILURE_LOGO;
    if ($result == "EXT")
      $error .= "<br/>".TEXT_UPDATE_FAILURE_LOGO_EXT;
    if ($result == "UNLINK")
      $error .= "<br/>".TEXT_UPDATE_FAILURE_LOGO_UNLINK;
    if ($result == "DIR")
      $error .= "<br/>".TEXT_UPDATE_FAILURE_LOGO_DIR;
  }
}

// ������ƥ�ץ졼�Ⱦ������
$selected_template = getDefaultTemplate();
$selected_index    = 0;
for ($i=0; $i<count($template_info); $i++) {
  if ($template_info[$i]['id'] == $selected_template) {
    $selected_index = $i;
    break;
  }
}

// ʸ������
$objection = getObjectionWords();

// ������
$logo = getLogoImage($selected_template, true);
?>
<div class="messageStackSuccess"><?php echo $message; ?></div>
<div class="messageStackError"><?php echo $error; ?></div>
<table align="center" width="95%" cellpadding="0" cellspacing="0" border="0">
<tr>
	<td><?php echo zen_draw_separator('pixel_trans.gif', 1, 10); ?></p>
</tr>
<tr>
<td class="pageHeading"><?php echo HEADING_TITLE; ?></td>
</tr>
<tr>
	<td><?php echo zen_draw_separator('pixel_trans.gif', 1, 10); ?></p>
</tr>
<tr>
<td valign="top">
<table width="100%" cellpadding="0" cellspacing="0" class="tableLayout1">
<tr>
<th><?php
  // �ƥ�ץ졼���ѹ�
  echo TEXT_HEADER_CHANGE_TEMPLATE;
?></th>
<td>
<?php
  echo zen_draw_separator("pixel_trans.gif", 16, 1);
  echo zen_draw_form('change_template', FILENAME_ADDON_MODULES_ADMIN, 'module='.FILENAME_EASY_DESIGN, 'post');
  echo   zen_draw_pull_down_menu("template", $template_info, $selected_template);
  echo   zen_draw_hidden_field('action', 'change_template');
  echo   '<input type="submit" value="'.TEXT_ACTION_CHANGE.'">'."\n";
  echo '</form>'."\n";
  echo '<br/>';
  echo zen_draw_separator("pixel_trans.gif", 1,17);
?>
</td>
</tr>
<tr>
<th><?php
  // ���顼�ѹ�
  echo TEXT_HEADER_CHANGE_COLOR;
?></th>
<td>
<?php echo zen_draw_form('change_color', FILENAME_ADDON_MODULES_ADMIN, 'module='.FILENAME_EASY_DESIGN, 'post')."\n"; ?>
<?php echo zen_draw_hidden_field('template', $selected_template)."\n"; ?>
<table border="0" class="borderNone" cellpadding="0" cellspacing="0">
<?php
  for ($i=0; $i<count($template_info[$selected_index]['color']); $i++) {
    $color_name = "template_color_picker[".$i."]";
    echo zen_draw_hidden_field('template_color_key['.$i.']',  $template_info[$selected_index]['color'][$i]['key'])."\n";
    echo zen_draw_hidden_field('template_color_name['.$i.']', $template_info[$selected_index]['color'][$i]['name'])."\n";

    echo '<tr>';
    echo   '<td width="16">��</td>';
    echo   '<td width="10%" nowrap>';
    echo     $template_info[$selected_index]['color'][$i]['name'];
    echo   '</td>';
    echo   '<td>';
    echo     '<input id="'.$color_name.'" name="'.$color_name.'" type="text" value="'.$template_info[$selected_index]['color'][$i]['value'].'" />'."\n";
    echo   '</td>';
    echo '</tr>';
  }

  echo '<tr>';
  echo   '<td>��</td>';
  echo   '<td colspan="2">';
  echo     '<input type="submit" name="change_color"   value="'.TEXT_ACTION_SAVE.'">'."\n";
  echo     '<input type="submit" name="recovery_color" value="'.TEXT_ACTION_RECOVERY.'" onclick="return checkRecoveryColor();">'."\n";
  echo   '</td>';
  echo '</tr>';
?>
</table>
</form>
</td>
</tr>
<tr>
<th><?php
  // ʸ���ѹ�
  echo TEXT_HEADER_CHANGE_OBJECTION;
?></th>
<td>
<?php echo zen_draw_form('change_objection', FILENAME_ADDON_MODULES_ADMIN, 'module='.FILENAME_EASY_DESIGN, 'post')."\n"; ?>
<table border="0" class="borderNone" cellpadding="0" cellspacing="0">
<?php
  for ($i=0; $i<count($objection); $i++) {
    $objection_name = "objection_value[".$i."]";
    echo zen_draw_hidden_field('objection_id['.$i.']', $objection[$i]['id'])."\n";

    echo '<tr>';
    echo   '<td width="16">��</td>';
    echo   '<td width="10%" nowrap>';
    echo     $objection[$i]['name'];
    echo   '</td>';
    echo   '<td>';
    echo     '<input id="'.$objection_name.'" name="'.$objection_name.'" type="text" value="'.htmlspecialchars($objection[$i]['value']).'" size="60"/>'."\n";
    echo   '</td>';
    echo '</tr>';
  }

  echo '<tr>';
  echo   '<td>��</td>';
  echo   '<td colspan="2">';
  echo     '<input type="submit" name="change_objection" value="'.TEXT_ACTION_CHANGE.'">'."\n";
  echo   '</td>';
  echo '</tr>';
?>
</table>
</form>
</td>
</tr>
<tr>
<th><?php
  // �������ѹ�
  echo TEXT_HEADER_CHANGE_LOGO;
?></th>
<td>
<?php echo zen_draw_form('change_logo', FILENAME_ADDON_MODULES_ADMIN, 'module='.FILENAME_EASY_DESIGN, 'post', 'enctype="multipart/form-data"')."\n"; ?>
<?php echo zen_draw_hidden_field('template', $selected_template)."\n"; ?>
<table border="0" class="borderNone" cellpadding="0" cellspacing="0">
<?php
  echo '<tr>';
  echo   '<td>��</td>';
  echo   '<td colspan="2">'.$logo.'</td>';
  echo '</tr>';

  echo '<tr>';
  echo   '<td>��</td>';
  echo   '<td colspan="2">';
  echo     '<input name="upfile" type="file">'."\n";
  echo     '<input type="submit" name="change_logo" value="'.TEXT_ACTION_CHANGE.'">'."\n";
  echo   '</td>';
  echo '</tr>';

  echo '<tr>';
  echo   '<td>��</td>';
  echo   '<td colspan="2"><img src="'.$logo.'"></td>';
  echo '</tr>';

?>
</table>
</form>
</td>
</tr>
</table>
<!-- body_text_eof //-->

</td>
</tr>
</table>
</body>
</html>
