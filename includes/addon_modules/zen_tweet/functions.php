<?php
/**
 * addon_modules_skeleten modules functions.php
 *
 * @package functions
 * @copyright Portions Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: functions.php $
 */

	/*
	 * DB��Ͽ��ηв���֤�����å�
	 */
	function check_time($res) {
		if(!empty($res)) {

			while (!$res->EOF) {
				$now_date = $res->fields['date_now'];
				break;
			}
		}else{
			$get_flag = true;
		}
		//��Ͽ����Ƥ���ǿ��ǡ����ηв���֤������hour�������
		$time = (time() - strtotime($now_date)) / 3600;
		$fairing_time = floor($time * 100) / 100;

		//print $fairing_time."<br />";
		if($fairing_time > 1)  {
			//print "1���ַв�";
			$get_flag = true;
		}else{
			$get_flag = false;
		}

		return $get_flag;
	}

	/*
	 * �Ĥ֤䤭�����
	 */
	function tweet_get_feeds($url){
		//��³���ץ����
		$option = array(
			"http"=>array(
				"method"=>"GET",
				"header"=>"Authorization: Basic ". base64_encode(MODULE_ZEN_TWEET_ACCOUNT_ID.":". MODULE_ZEN_TWEET_ACCOUNT_PASS)
			)
		);

		//����ƥ����ȥ꥽����
		$context = stream_context_create($option);
		//�������٤�ꥯ�����Ȥ���Ȥ�����HTTP:400 Bad Request���Ф�Τǽ�����ɤ����롩 10/06/09
		$result = file_get_contents($url, false, $context);
		$xml = simplexml_load_string($result);

		return $xml;
	}

	/*
	 * zen_tweet�ơ��֥�򿷤����ǡ����˽��Ѥ�
	 */
	function ins_table($twt) {
		global $db;

		if(!empty($twt->status)) {

			$sql = "delete from " . TABLE_ADDON_MODULES_ZEN_TWEET;
			$db->execute($sql);

			foreach($twt->status as $val) {

				$code = mb_detect_encoding($val->text);
				if($code != "EUC-JP") $txt = mb_convert_encoding($val->text, "EUC-JP", $code);
				$word = preg_replace("/(http)(:\/\/[[:alnum:]\S\$\+\?\.-=_%,:@!#~*\/&]+)/", "<a href=\"\\1\\2\">\\1\\2</a>", $txt);

				$sql = "insert into " . TABLE_ADDON_MODULES_ZEN_TWEET . " "
						. "(tweet, "
						. "date_added, "
						. "date_now)"
						. "values "
						. "('" . $word . "', "
						. "'" . date("Y-m-d H:i:s", strtotime($val->created_at)) . "', "
						. "'" . date("Y-m-d H:i:s", time()) . "')";

				$db->execute($sql);
			}
		}

	}

	/*
	 * sales_twitter�ơ��֥뤫��ǡ��������
	 */
	function get_zen_tweet() {
		global $db;

    	$sql = "select "
    				. "* "
    			. "from "
    				. TABLE_ADDON_MODULES_ZEN_TWEET . " "
    			. "order by date_added desc";
    	$result = $db->execute($sql);

    	$index = 0;
    	while(!$result->EOF) {
    		$data[$index]['text'] = $result->fields['tweet'];
    		$data[$index]['date'] = $result->fields['date_added'];
    		$result->MoveNext();
    		$index++;
    	}

    	return $data;

	}

	/*
	 * �Ĥ֤䤯�ܥ��������
	 */
	function build_tweet_button() {

    	global $db;

    	//�ѥ�᡼���ˤ�äƤĤ֤䤭ʸ�������
		if(!empty($_GET['products_id'])) {

			//����̾�μ���
	    	$query = "select "
	    				. "products_name "
	    			. "from "
	    				. TABLE_PRODUCTS_DESCRIPTION . " "
					. "where "
						. "products_id = :products_id "
					. "and "
						. "language_id = :language_id";

			$query = $db->bindVars($query, ':products_id', $_GET['products_id'], 'integer');
			$query = $db->bindVars($query, ':language_id', (int)$_SESSION['languages_id'], 'integer');
			$result = $db->Execute($query);

			$tweet_word = $result->fields['products_name'] . "��";

		}elseif(!empty($_GET['cPath'])) {

			if(preg_match("/_/", $_GET['cPath'])) {
				$arr_id = explode("_", $_GET['cPath']);
				$c_id = $arr_id[1];
			}else{
				$c_id = $_GET['cPath'];
			}

			//���ƥ��꡼̾�μ���
	    	$query = "select "
	    				. "categories_name "
	    			. "from "
	    				. TABLE_CATEGORIES_DESCRIPTION . " "
					. "where "
						. "categories_id = :categories_id "
					. "and "
						. "language_id = :language_id";

			$query = $db->bindVars($query, ':categories_id', $c_id, 'integer');
			$query = $db->bindVars($query, ':language_id', (int)$_SESSION['languages_id'], 'integer');
			$result = $db->Execute($query);

			$tweet_word = $result->fields['categories_name'] . "��";

		}else{
			$tweet_word = "�����Ǥ�ZenCart" . "��";
		}

		$twitter_url = "http://twitter.com/home?status=";

		//���󥳡���
		$code = mb_detect_encoding($tweet_word);
		$tweet_word = mb_convert_encoding($tweet_word, "UTF-8", $code);
		$tweet_word = urlencode($tweet_word);

		//URL
		$url = "http://";
		$url .= $_SERVER["SERVER_NAME"];
		$url .= $_SERVER["SCRIPT_NAME"];
		if(!empty($_SERVER["QUERY_STRING"])) {
			$url .= '?';
			$url .= urlencode($_SERVER["QUERY_STRING"]);
		}

		//�Ĥ֤䤭
		$complete = $tweet_word . $url;

		//TwitterURL��status�ѥ�᡼���ˤĤ֤䤭���Ϥ�
		$twitter_url .= $complete;
		$img_tag = zen_image_button(BUTTON_IMAGE_PRODUCT_TWEET, BUTTON_IMAGE_PRODUCT_TWEET_ALT, 'class="imgover"');
		$a_tag = "<a href='". $twitter_url ."' target='_blank'>";
		$tweet_btn = $a_tag . $img_tag . "</a>";

		return $tweet_btn;
	}
?>
