<?php
class zenTweet extends base {

	var $products;

	function zenTweet() {
        $this->products = $_SESSION['cart']->get_products();
	}

	function execTweet() {
		require_once(DIR_FS_CATALOG . 'includes/addon_modules/' . FILENAME_ZEN_TWEET . '/classes/class.bitly.php');

		########### �Ĥ֤䤭�����
        for($i=0; $i<count($this->products); $i++) {
            //����̾����
            $p_name = $this->products[$i]["name"];
            /*
             * �������ʤξ�硢ID�θ��˥ϥå��奭������Ϳ����Ƥ���١�
             * ID��������������ɲ�
             */
            if(preg_match("/:/", $this->products[$i]["id"])) {
                $arr = explode(":", $this->products[$i]["id"]);
                $p_id = $arr[0];
            } else {
                $p_id = $this->products[$i]["id"];
            }


        /*========================================================================
         * �ɲý��� 10/06/08
         *
         * �߸˿��Ȥ������ᾦ�ʤ����
		========================================================================*/

            $products_quantity = $this->queryGetQuantity($p_id);
            $featured = $this->queryGetFeatured($p_id);

            //�������ᾦ�ʤΤĤ֤䤭��ͭ���ˤ��Ƥ�����
            if(MODULE_ZEN_TWEET_THRESHOLD > 0 && MODULE_ZEN_TWEET_RECOMMEND == "true") {

            	//�߸˿����������ͤ�ã���������ᾦ�ʤ��ä���Ĥ֤䤭���������
	            if(MODULE_ZEN_TWEET_THRESHOLD >= $products_quantity && $featured == 1) {
		            $url = zen_href_link(FILENAME_PRODUCT_INFO, "&products_id=" . $p_id, 'NONSSL');

		            //bit.ly�ƤӽФ�
		            //$bitly = new Bitly();
		            //$shortUrl = $bitly->shorten($url);
		            $words[] = $this->products[$i]["name"] . MODULE_ZEN_TWEET_WORD . "\n" . $url;
	            }

	        //�������ᾦ�ʤΤĤ֤䤭��̵���ˤ��Ƥ�����
            }elseif(MODULE_ZEN_TWEET_THRESHOLD > 0 && MODULE_ZEN_TWEET_RECOMMEND == "false") {

            	//�߸˿����������ͤ�ã������Ĥ֤䤭���������
				if(MODULE_ZEN_TWEET_THRESHOLD >= $products_quantity) {
		            $url = zen_href_link(FILENAME_PRODUCT_INFO, "&products_id=" . $p_id, 'NONSSL');

		            //bit.ly�ƤӽФ�
		            //$bitly = new Bitly();
		            //$shortUrl = $bitly->shorten($url);
		            $words[] = $this->products[$i]["name"] . MODULE_ZEN_TWEET_WORD . "\n" . $url;
				}

            }

        }

		########### �Ĥ֤䤭�����
	    for($i=0; $i<count($words); $i++) {
	        $message = $words[$i];

	        //ʸ�������ɤ�Ĵ�٤�
	        $code = mb_detect_encoding($message);
			if($code != "UTF-8") {
            	//ʸ�������ɤ��Ѵ�
                $message = mb_convert_encoding($message, "UTF-8", $code);
			}

	        $this->tweet_statuses_update(MODULE_ZEN_TWEET_ACCOUNT_ID, MODULE_ZEN_TWEET_ACCOUNT_PASS, $message);
	    }
	}

	/*
	 * �ºݤ���ƥե��󥯥����
	 */
    function tweet_statuses_update($id, $pw, $msg){
        $url = 'http://twitter.com/statuses/update.xml?status=' . rawurlencode($msg);
        //��³���ץ����
        $option = array(
			"http"=>array(
				"method"=>"POST",
				"header"=>"Authorization: Basic ". base64_encode($id. ":". $pw)
			)
        );

        //����ƥ����ȥ꥽����
        $context = stream_context_create($option);
        file_get_contents($url, false, $context);
    }

    function queryGetQuantity($id) {

		global $db;

		$query = "select products_quantity from " . TABLE_PRODUCTS . " where products_id = :products_id;";
		$query = $db->bindVars($query, ':products_id', $id, 'integer');
		$quantity = $db->Execute($query);
		return $quantity->fields['products_quantity'];

    }

    function queryGetFeatured($id) {
		global $db;

		$query = "select count(*) as total from " . TABLE_FEATURED . " where products_id = :products_id;";
		$query = $db->bindVars($query, ':products_id', $id, 'integer');
		$num = $db->Execute($query);
		return $num->fields['total'];

    }

}
?>