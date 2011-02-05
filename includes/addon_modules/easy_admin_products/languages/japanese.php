<?php
//
// +----------------------------------------------------------------------+
// |zen-cart Open Source E-commerce                                       |
// +----------------------------------------------------------------------+
// | Copyright (c) Voyager Japan, Inc. All rights reserved.               |
// | Author Yuki SHIDA                                                    |
// |                                                                      |
// | http://www.zen-cart.com/index.php                                    |
// |                                                                      |
// | Portions Copyright (c) 2003 The zen-cart developers                  |
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
// $Id: japanese.php $
//
define('MODULE_EASY_ADMIN_PRODUCTS_TITLE',                        'かんたん商品管理モジュール');
define('MODULE_EASY_ADMIN_PRODUCTS_DESCRIPTION',                  '商品を扱うための管理画面を提供します。');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_TITLE',                 'かんたん商品管理モジュールの有効化');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_DESCRIPTION',           'かんたん商品管理モジュールを有効化する場合は、「True」を選択してください。');
define('MODULE_EASY_ADMIN_PRODUCTS_SORT_ORDER_TITLE',             '優先順');
define('MODULE_EASY_ADMIN_PRODUCTS_SORT_ORDER_DESCRIPTION',       'モジュールの優先順を設定できます。数字が小さいほど先にモジュールの読み込みと処理が実行されます。半角数字で他のモジュールと重ならないように設定してください。');

define('BOX_ADDON_MODULES_EASY_ADMIN_PRODUCTS',                   'かんたん商品管理');

define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_TITLE',                'かんたん商品管理');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_CATEGORY',                'カテゴリ');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_TITLE',                   '商品タイトル');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_MODEL',                   '商品型番');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_MANUFACTURER',            '商品メーカー');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_DESCRIPTION',             '商品説明');
define('MODULE_EASY_ADMIN_PRODUCTS_ITEM_SPECIAL',                 '特殊商品');

// 一覧画面のヘッダ
// MODULE_EASY_ADMIN_PRODUCTS_HEADING_0から連番とする
// defineされているのを確認し自動で表示する
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_0',                    'カテゴリ');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_1',                    '商品名');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_2',                    '型番');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_3',                    '価格');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_4',                    '在庫数');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_5',                    'ステータス');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_6',                    'ソート順');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_7',                    '操作');
define('MODULE_EASY_ADMIN_PRODUCTS_SEARCH',                       '検索');
define('MODULE_EASY_ADMIN_PRODUCTS_INSERT',                       '新しい商品の追加');
define('MODULE_EASY_ADMIN_PRODUCTS_LIST',                         '商品一覧に戻る');

define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_SELECT',              '選択');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_ON',                    'ステータスオン');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_OFF',                   'ステータスオフ');

// カテゴリ一覧
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_TITLE_LIST',          '■カテゴリを一覧から選択');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_TITLE_SEARCH',        '■カテゴリを検索して選択');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_EXPAND',              '展開');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_CONTRACT',            '格納');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_SELECT',              '選択');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_RESET',               'リセット');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_TOP',                 'トップ');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_SEPARATE',            '&nbsp;>&nbsp;');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_FORMAT',              '【%s】');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_NAME',                'カテゴリ名');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_SEARCH',              '検索');
define('MODULE_EASY_ADMIN_PRODUCTS_CATEGORY_DROP',                '外す');

// 特殊商品
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_SELECT',               '【特殊商品絞り込み】');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_DOWNLOAD',             'ダウンロード商品');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_FEATURED',             'おすすめ商品');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_SPECIAL',              '特価商品');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_QUANTITY',             '数量割引商品');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_ARRIVAL',              '入荷予定商品');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_DISPLAY',              '表示商品');
define('MODULE_EASY_ADMIN_PRODUCTS_SPECIAL_NONDISPLAY',           '非表示商品');

// 操作
define('MODULE_EASY_ADMIN_PRODUCTS_EDIT',                         '編集');
define('MODULE_EASY_ADMIN_PRODUCTS_DELETE',                       '削除');
define('MODULE_EASY_ADMIN_PRODUCTS_COPY',                         'コピー');
define('MODULE_EASY_ADMIN_PRODUCTS_SAVE',                         '保存');
define('MODULE_EASY_ADMIN_PRODUCTS_CANCEL',                       'キャンセル');

// 商品
define('MODULE_EASY_ADMIN_PRODUCTS_INDISPENSABILITY',             '<font color="red">必須</font>');
define('MODULE_EASY_ADMIN_PRODUCTS_YES',                          'はい');
define('MODULE_EASY_ADMIN_PRODUCTS_NO',                           'いいえ');
define('MODULE_EASY_ADMIN_PRODUCTS_DATE_START',                   '開始日');
define('MODULE_EASY_ADMIN_PRODUCTS_DATE_END',                     '終了日');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_STARTDATE',            '開始日(YYYY-MM-DD):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ENDDATE',              '終了日(YYYY-MM-DD):');
define('MODULE_EASY_ADMIN_PRODUCTS_INSERT_TITLE',                 '新規商品登録');
define('MODULE_EASY_ADMIN_PRODUCTS_UPDATE_TITLE',                 '既存商品修正');
define('MODULE_EASY_ADMIN_PRODUCTS_BASE_TITLE',                   '■基本設定');
define('MODULE_EASY_ADMIN_PRODUCTS_PRICE_TITLE',                  '■価格詳細設定');
define('MODULE_EASY_ADMIN_PRODUCTS_SHIPPING_TITLE',               '■配送設定');
define('MODULE_EASY_ADMIN_PRODUCTS_CART_TITLE',                   '■カート追加設定');
define('MODULE_EASY_ADMIN_PRODUCTS_SEO_TITLE',                    '■SEO設定');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_STATUS',               'ステータス:');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_1',                     '表示');
define('MODULE_EASY_ADMIN_PRODUCTS_STATUS_0',                     '非表示');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_MODEL',                '型番:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_NAME',                 '商品名:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_TAX',                  '税種別:');
define('MODULE_EASY_ADMIN_PRODUCTS_TAX_0',                        'なし');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_PRICE',                '価格(税抜):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_GROSS',                '価格(税込):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_IMAGE',                '画像:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_UPLOAD',               'アップロード先ディレクトリ:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_UPLOAD_NOTE',          '<br/>既存のオプション画像を上書きしますか？<br/>上書きしたくない場合は[いいえ]を選択して、既存ファイルとは異なる名前のファイルを[オプション画像]に指定してください。<br/>');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_DESCRIPTION',          '商品説明:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QUANTITY',             '商品数量:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_WEIGHT',               '商品重量:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_CATEGORY',             'カテゴリ:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SORT',                 'ソート順:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_MANUFACTURER',         '商品メーカー:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_URL',                  '商品URL:');
define('MODULE_EASY_ADMIN_PRODUCTS_MANUFACTURER_0',               'なし');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_DATE_AVAILABLE',       '提供可能日(YYYY-MM-DD):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_FEATURED',             'おすすめ:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS',             '特価価格:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION',      '特価価格設定:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION_0',    '無効');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION_1',    'オプションで価格設定');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION_2',    '無料商品');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SPECIALS_OPTION_3',    '価格問い合わせ商品');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_VIRTUAL',              'デジタル商品');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_VIRTUAL_1',            'はい、送付先住所をスキップ');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_VIRTUAL_0',            'いいえ、送付先住所が必要');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SHIPPING',             '送料無料');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SHIPPING_1',           'はい、常に送料無料');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SHIPPING_0',           'いいえ、通常送料を適用');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_SHIPPING_2',           'ダウンロード商品');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QTY_BOX',              '商品の数量欄の表示:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QTY_BOX_1',            'はい、数量欄を表示');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QTY_BOX_0',            'いいえ、数量欄は非表示');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ORDER_MIN',            '商品の最小数量:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ORDER_MAX',            '商品の最大数量:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ORDER_MAX_NOTE',       '0=無制限&nbsp;1=商品欄非表示');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_ORDER_UNIT',           '商品の数量単位:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_QUANTITY_MIX',         '最小数量/単位ミックス:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAG_TITLE',       '&lt;title&gt;タグ:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAG_TITLE_NOTE',  '挿入する情報を選択して指定<br/>');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_NAME',            '商品名:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TITLE',           'タイトル:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_MODEL',           'モデル:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_PRICE',           '価格:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAGLINE',         '定義済タグライン:');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_IMMIDIATE',       '直接指定');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAG_KEYWORD',     '&lt;meta&gt;タグ(keywords):');
define('MODULE_EASY_ADMIN_PRODUCTS_HEADING_META_TAG_DESCRIPTION', '&lt;meta&gt;タグ(description):');

// 展開/閉じる
define('MODULE_EASY_ADMIN_PRODUCTS_OPEN',                         '--- [開く] ---');
define('MODULE_EASY_ADMIN_PRODUCTS_CLOSE',                        '--- [閉じる] ---');

// 削除
define('MODULE_EASY_ADMIN_PRODUCTS_DELETE_TITLE',                 '本当に商品を削除しますか?');

// コピー
define('MODULE_EASY_ADMIN_PRODUCTS_COPY_TITLE',                   '商品をコピーする');
define('MODULE_EASY_ADMIN_PRODUCTS_COPY_NOTE',                    '商品 %s をコピーしたいカテゴリを選んでください');

// エラー
define('MODULE_EASY_ADMIN_PRODUCTS_ERROR_MODEL',                  '型番は必須です');
define('MODULE_EASY_ADMIN_PRODUCTS_ERROR_CATEGORIES',             '最低でもひとつのカテゴリを選択してください');

// notice
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_ERROR_SAVE',            '保存時にエラーが発生しました');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_STATUS',                'ステータス変更しました');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_INSERT',                '商品を作成しました');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_UPDATE',                '商品を保存しました');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_DELETE',                '%sを削除しました');
define('MODULE_EASY_ADMIN_PRODUCTS_NOTICE_COPY',                  '%sを「%s」にコピーしました');
?>
