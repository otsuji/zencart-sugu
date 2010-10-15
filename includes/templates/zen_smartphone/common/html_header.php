<?php
/**
 * Common Template
 *
 * outputs the html header. i,e, everything that comes before the \</head\> tag <br />
 *
 * @package templateSystem
 * @copyright Copyright 2003-2006 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: html_header.php 3688 2006-06-02 00:12:18Z drbyte $
 */

/**
 * load the module for generating page meta-tags
 */
require(DIR_WS_MODULES . zen_get_module_directory('meta_tags.php'));
/**
 * output main page HEAD tag and related headers/meta-tags, etc
 */
?>
<?php
$ua = $_SERVER['HTTP_USER_AGENT'];
if (!(ereg("Windows",$ua) && ereg("MSIE",$ua)) || ereg("MSIE 7",$ua)) {
$xml = '<?xml version="1.0" encoding="'.CHARSET.'"?>';
print $xml."\n";
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" <?php echo HTML_PARAMS; ?>>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>" />
<meta name="keywords" content="<?php echo META_TAG_KEYWORDS; ?>" />
<meta name="description" content="<?php echo META_TAG_DESCRIPTION; ?>" />
<meta http-equiv="imagetoolbar" content="no" />
<?php if (defined('ROBOTS_PAGES_TO_SKIP') && in_array($current_page_base,explode(",",constant('ROBOTS_PAGES_TO_SKIP'))) || $current_page_base=='down_for_maintenance') { ?>
<meta name="robots" content="noindex, nofollow" />
<?php } ?>
<?php if (defined('FAVICON')) { ?>
<link rel="icon" href="<?php echo FAVICON; ?>" type="image/x-icon" />
<link rel="shortcut icon" href="<?php echo FAVICON; ?>" type="image/x-icon" />
<?php } //endif FAVICON ?>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER . DIR_WS_HTTPS_CATALOG : HTTP_SERVER . DIR_WS_CATALOG ); ?>" />
<?php

  // addon_moodules specify css
  echo $styles;

/**
 * load all template-specific stylesheets, named like "style*.css", alphabetically
 */
  $directory_array = $template->get_template_part($template->get_template_dir('.css',DIR_WS_TEMPLATE, $current_page_base,'css'), '/^style/', '.css');
  while(list ($key, $value) = each($directory_array)) {
    echo '<link rel="stylesheet" type="text/css" href="' . $template->get_template_dir('.css',DIR_WS_TEMPLATE, $current_page_base,'css') . '/' . $value . '" />'."\n";
  }

  // ��ñ�ǥ���������
  if (MODULE_EASY_DESIGN_STATUS == 'true') {
    echo '<link rel="stylesheet" type="text/css" href="' . getEasyDesignCss() . '" />'."\n";
  }

/**
 * load stylesheets on a per-page/per-language/per-product/per-manufacturer/per-category basis. Concept by JuxiJoza.
 */
  $manufacturers_id = (isset($_GET['manufacturers_id'])) ? $_GET['manufacturers_id'] : '';
  $tmp_products_id = (isset($_GET['products_id'])) ? (int)$_GET['products_id'] : '';
  $sheets_array = array('/^' . $_SESSION['language'] . '_stylesheet/' ,
                        '/^' . $current_page_base.'/',
                        '/^' . $_SESSION['language'] . '_' . $current_page_base .'/',
                        '/^c_' . (int)$cPath .'/',
                        '/^' . $_SESSION['language'] . '_c_' . (int)$cPath . '/',
                        '/^m_' . $manufacturers_id.'/',
                        '/^' . $_SESSION['language'] . '_m_' . (int)$manufacturers_id . '/',
                        '/^p_' . $tmp_products_id . '/',
                        '/^' . $_SESSION['language'] . '_p_' . $tmp_products_id . '/'
                        );
  while(list ($key, $value) = each($sheets_array)) {
//echo "<--$value-->\n";
    $directory_array = $template->get_template_part($template->get_template_dir('.css',DIR_WS_TEMPLATE, $current_page_base,'css'), $value, '.css');
    sort($directory_array);
    while(list ($key2, $value2) = each($directory_array)) {
      echo '<link rel="stylesheet" type="text/css" href="' . $template->get_template_dir('.css',DIR_WS_TEMPLATE, $current_page_base,'css') . '/' . $value2 .'" />'."\n";
    }
  }

/**
 * load printer-friendly stylesheets -- named like "print*.css", alphabetically
 */
  $directory_array = $template->get_template_part($template->get_template_dir('.css',DIR_WS_TEMPLATE, $current_page_base,'css'), '/^print/', '.css');
  sort($directory_array);
  while(list ($key, $value) = each($directory_array)) {
    echo '<link rel="stylesheet" type="text/css" media="print" href="' . $template->get_template_dir('.css',DIR_WS_TEMPLATE, $current_page_base,'css') . '/' . $value . '" />'."\n";
  }
	
//Only IE

  $directory_array = $template->get_template_part($template->get_template_dir('.css',DIR_WS_TEMPLATE, $current_page_base,'css'), '/^ie/', '.css');
  sort($directory_array);
  while(list ($key, $value) = each($directory_array)) {
		$ie6 = 'ie6';
		$ie = strpos($value, $ie6);
		if ($ie === false) {
    echo '<!--[if IE]>'."\n".'<link rel="stylesheet" type="text/css" media="all" href="' . $template->get_template_dir('.css',DIR_WS_TEMPLATE, $current_page_base,'css') . '/' . $value . '" />'."\n".'<![endif]-->'."\n";
	}else{
    echo '<!--[if lt IE 7]>'."\n".'<link rel="stylesheet" type="text/css" media="all" href="' . $template->get_template_dir('.css',DIR_WS_TEMPLATE, $current_page_base,'css') . '/' . $value . '" />'."\n".'<![endif]-->'."\n";
		}
  }
echo '
<link rel="stylesheet" type="text/css" href="'. $template->get_template_dir('css/',DIR_WS_TEMPLATE, $current_page_base,'css/').'font-medium.css" title="styles1" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="'. $template->get_template_dir('css/',DIR_WS_TEMPLATE, $current_page_base,'css/').'font-large.css" title="styles2" media="screen" />
<link rel="alternate stylesheet" type="text/css" href="'. $template->get_template_dir('css/',DIR_WS_TEMPLATE, $current_page_base,'css/').'font-small.css" title="styles3" media="screen" />

'."\n";


$shop_editable_css_path = 'assets/css/stylesheet_' . strtr(DIR_WS_CATALOG, array('/' => '')) . '.css';
if (file_exists(DIR_FS_CATALOG . $shop_editable_css_path)) {
  $shop_editable_css_url  =  $shop_editable_css_path;
  echo '<link rel="stylesheet" type="text/css" href="' . $shop_editable_css_url . '" media="screen" />';
}

  // addon_moodules specify jscript
  echo $jscripts;

/**
 * load all site-wide jscript_*.js files from includes/templates/YOURTEMPLATE/jscript, alphabetically
 */
  $directory_array = $template->get_template_part($template->get_template_dir('.js',DIR_WS_TEMPLATE, $current_page_base,'jscript'), '/^jquery/', '.js');
  while(list ($key, $value) = each($directory_array)) {
    echo '<script type="text/javascript" src="' .  $template->get_template_dir('.js',DIR_WS_TEMPLATE, $current_page_base,'jscript') . '/' . $value . '"></script>'."\n";
  }

/**
 * load all page-specific jscript_*.js files from includes/modules/pages/PAGENAME, alphabetically
 */
  $directory_array = $template->get_template_part($page_directory, '/^jscript_/', '.js');
  while(list ($key, $value) = each($directory_array)) {
    echo '<script type="text/javascript" src="' . $page_directory . '/' . $value . '"></script>' . "\n";
  }

/**
 * load all site-wide jscript_*.php files from includes/templates/YOURTEMPLATE/jscript, alphabetically
 */
  $directory_array = $template->get_template_part($template->get_template_dir('.php',DIR_WS_TEMPLATE, $current_page_base,'jscript'), '/^jscript_/', '.php');
  while(list ($key, $value) = each($directory_array)) {
/**
 * include content from all site-wide jscript_*.php files from includes/templates/YOURTEMPLATE/jscript, alphabetically.
 * These .PHP files can be manipulated by PHP when they're called, and are copied in-full to the browser page
 */
    require($template->get_template_dir('.php',DIR_WS_TEMPLATE, $current_page_base,'jscript') . '/' . $value); echo "\n";
  }
/**
 * include content from all page-specific jscript_*.php files from includes/modules/pages/PAGENAME, alphabetically.
 */
  $directory_array = $template->get_template_part($page_directory, '/^jscript_/');
  while(list ($key, $value) = each($directory_array)) {
/**
 * include content from all page-specific jscript_*.php files from includes/modules/pages/PAGENAME, alphabetically.
 * These .PHP files can be manipulated by PHP when they're called, and are copied in-full to the browser page
 */
    require($page_directory . '/' . $value); echo "\n";
  }
	
echo '
<script type="text/javascript" src="'.$template->get_template_dir('rollover.js',DIR_WS_TEMPLATE, $current_page_base,'jscript/').'rollover.js"></script>
<script type="text/javascript" src="'.$template->get_template_dir('styleswitch.js',DIR_WS_TEMPLATE, $current_page_base,'jscript/').'styleswitch.js"></script>

<!--[if lt IE 7]>
<script type="text/javascript" src="'.$template->get_template_dir('DD_belatedPNG_0.0.7a.js',DIR_WS_TEMPLATE, $current_page_base,'jscript/').'DD_belatedPNG_0.0.7a.js"></script>
<script type="text/javascript" src="'.$template->get_template_dir('minmax.js',DIR_WS_TEMPLATE, $current_page_base,'jscript/').'minmax.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix(\'.transparent,.category #main h1\');
</script>
</style>
<![endif]-->
'."\n";

?>

<title><?php echo META_TAG_TITLE; ?></title>

</head>
<?php // NOTE: Blank line following is intended: ?>
