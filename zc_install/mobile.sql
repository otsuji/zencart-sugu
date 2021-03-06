ALTER TABLE layout_boxes ADD layout_page VARCHAR(64) DEFAULT '';
ALTER TABLE customers ADD customers_mobile_serial_number VARCHAR(64) DEFAULT NULL;

insert into configuration_group (configuration_group_id,configuration_group_title,configuration_group_description,sort_order,visible) values(100,"携帯サイトの管理","携帯サイトについて各種の設定をします。",100,1);

insert into configuration (configuration_id,configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,set_function,sort_order) values(null,"パケット料金節約の設定","MOBILE_SLIM_SIZE","1","パケット料金の節約に関する設定をします<BR />この設定はHTML中の改行やスペースを取り除きファイルサイズを小さくします。この設定でパケット料金を節約する事が出来ます<br />0=OFF<br />1=ON<br />",100,"zen_cfg_select_option(array('0', '1'),","2");
insert into configuration (configuration_id,configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,sort_order) values(NULL,"携帯サイトテーマカラーの設定","MOBILE_THEME_COLOR","#CA6312","サイトのテーマカラーを「#666666」などHTMLカラーコードで設定します。このテーマカラーは、見出しの帯の背景色などで使用されます",100,"3");
insert into configuration (configuration_id,configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,set_function,sort_order) values(NULL,"CSSの設定","MOBILE_CSS_CONF","0","ここではHTML中の[class]と[id]の有無を設定します<br />デフォルトではファイルサイズ縮小目的の為に0が設定されています<br />CSSを使用する場合は1を設定して下さい<BR /><br />0=CSSを使用しない<br />1=CSSを使用する<br />",100,"zen_cfg_select_option(array('0', '1'),","4");
