<?php
/**
 * blog modules functions.php
 *
 * @package functions
 * @copyright Copyright 2008 Liquid System Technology, Inc.
 * @author Koji Sasaki
 * @copyright Portions Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: functions.php $
 */

  define('MAGPIE_DEBUG', false);
  define('MAGPIE_DIR',  DIR_FS_CATALOG."includes/addon_modules/blog/lib/");
  set_include_path(get_include_path() . PATH_SEPARATOR . DIR_FS_CATALOG."includes/addon_modules/blog/lib/");

  require_once "rss_parse.inc";
  require_once "Request2.php";

  // ����url��rss1.0,rss2.0,atom��ѡ��������ֵѤ���
  function getRss($url, $port, $timeout) {
    $results = array(
      'rss'  =>array(),
      'error'=>"",
    );

    try {
      $request  = new HTTP_Request2($url, HTTP_Request2::METHOD_POST);
      $request->setConfig("connect_timeout",  $timeout);
      $request->setConfig("timeout",          $timeout);
      $request->setHeader("user-agent",       $_SERVER['HTTP_USER_AGENT']);
      $response = $request->send();
      if ($response->getStatus() == 200) {
        // �ѡ���
        $body = $response->getBody();
        if (substr($body, 0, 5) == "<?xml") {
          $results['rss'] = new MagpieRSS($body, "UTF-8");
        }
        else {
          throw new Exception("Not xml data");
        }
      }
      else {
        throw new Exception("Server returned status: ".$response->getStatus());
      }
    }
    catch (HTTP_Request2_Exception $e) {
      $results['error'] = $e->getMessage();
    }
    catch (Exception $e) {
      $results['error'] = $e->getMessage();
    }

    // �����ॢ�����ᤷ
    ini_set('default_socket_timeout', $oldtimeout);

    return $results;
  }

  function rssConverText($text) {
    return htmlspecialchars(mb_convert_encoding($text, CHARSET, 'UTF-8'));
  }

  // ���դθ���
  // �Ƶ�Ū�˸�������������"date"�Τ�Τ�õ��
  function rssSearchDate($item) {
    foreach ($item as $key => $value) {
      if (strtolower($key) == "date")
        return $value;
      if (is_array($value)) {
        $date = rssSearchDate($value);
        if ($date !== false)
          return $date;
      }
    }
    return false;
  }
?>
