<?php
/**
 * read the configuration settings from the db
 *
 * see {@link  http://www.zen-cart.com/wiki/index.php/Developers_API_Tutorials#InitSystem wikitutorials} for more details.
 *
 * @package initSystem
 * @copyright Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: init_db_config_read.php 2753 2005-12-31 19:17:17Z wilt $
 */
if (!defined('IS_ADMIN_FLAG')) {
  die('Illegal Access');
}
if (!is_array($exclude_db_configuretion_keys)) $exclude_db_configuretion_keys = array();
$use_cache = (isset($_GET['nocache']) ? false : true ) ;
$configuration = $db->Execute('SELECT cfg_t.configuration_key AS cfgkey, cfg_t.configuration_value AS cfgvalue 
                               FROM '.TABLE_CONFIGURATION.' as cfg_t  LEFT JOIN '.TABLE_CONFIGURATION_FOREACH_TEMPLATE.' as cfg_ft 
                               ON cfg_t.configuration_key=cfg_ft.configuration_key 
                               WHERE cfg_ft.configuration_key IS NULL','',$use_cache,150);
db_define($configuration);

$configuration = $db->Execute('select configuration_key as cfgkey, configuration_value as cfgvalue
                          from ' . TABLE_PRODUCT_TYPE_LAYOUT);
db_define($configuration);
function db_define($configuration){
  global $exclude_db_configuretion_keys;
  if(isset($configuration)){
    while (!$configuration->EOF) {
     /**
    * dynamic define based on info read from DB
    * @ignore
    */
      $db_configuration_key = strtoupper($configuration->fields['cfgkey']);
      if (!in_array($db_configuration_key, $exclude_db_configuretion_keys)) {
        define($db_configuration_key, $configuration->fields['cfgvalue']);
      }
      $configuration->MoveNext();
    }
  }
}

if (file_exists(DIR_WS_CLASSES . 'db/' . DB_TYPE . '/define_queries_configuration_foreach_template.php')) {
  /**
 * Load the database dependant query defines
<<<<<<< HEAD:includes/init_includes/overrides/init_db_config_read.php
 */ 
  include(DIR_WS_CLASSES . 'db/' . DB_TYPE . '/define_queries_configuration_foreach_template.php');
}
?>