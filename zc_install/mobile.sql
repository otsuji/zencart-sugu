DROP TABLE IF EXISTS configuration_foreach_template;                                                              
CREATE TABLE configuration_foreach_template (
   configuration_id int(11) NOT NULL auto_increment,
   configuration_title text NOT NULL,
   configuration_key varchar(255) NOT NULL default '',
   configuration_value text NOT NULL,
   configuration_description text NOT NULL,
   configuration_group_id int(11) NOT NULL default '0',
   template_dir varchar(64) NOT NULL,
   sort_order int(5) default NULL,
   last_modified datetime default NULL,
   date_added datetime NOT NULL default '0001-01-01 00:00:00',
   use_function text default NULL,
   set_function text default NULL,
   PRIMARY KEY  (configuration_id),
   UNIQUE KEY unq_config_key_zen (template_dir, configuration_key),
          KEY idx_key_value_zen (configuration_key,configuration_value(10)),
          KEY idx_cfg_grp_id_zen (configuration_group_id)
 ) TYPE=MyISAM; 
ALTER TABLE layout_boxes ADD layout_page VARCHAR(64) DEFAULT '';
ALTER TABLE customers ADD customers_mobile_serial_number VARCHAR(64) DEFAULT NULL;

insert into configuration_group (configuration_group_id,configuration_group_title,configuration_group_description,sort_order,visible) values(100,"���ӥ����Ȥδ���","���ӥ����ȤˤĤ��ƳƼ������򤷤ޤ���",100,1);

insert into configuration (configuration_id,configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,set_function,sort_order) values(null,"�ѥ��å��������������","MOBILE_SLIM_SIZE","1","�ѥ��å����������˴ؤ�������򤷤ޤ�<BR />���������HTML��β��Ԥ䥹�ڡ�����������ե����륵�����򾮤������ޤ�����������ǥѥ��å���������󤹤��������ޤ�<br />0=OFF<br />1=ON<br />",100,"zen_cfg_select_option(array('0', '1'),","2");
insert into configuration (configuration_id,configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,sort_order) values(NULL,"���ӥ����ȥơ��ޥ��顼������","MOBILE_THEME_COLOR","#CA6312","�����ȤΥơ��ޥ��顼���#666666�פʤ�HTML���顼�����ɤ����ꤷ�ޤ������Υơ��ޥ��顼�ϡ����Ф����Ӥ��طʿ��ʤɤǻ��Ѥ���ޤ�",100,"3");
insert into configuration (configuration_id,configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,set_function,sort_order) values(NULL,"CSS������","MOBILE_CSS_CONF","0","�����Ǥ�HTML���[class]��[id]��̵ͭ�����ꤷ�ޤ�<br />�ǥե���ȤǤϥե����륵�����̾���Ū�ΰ٤�0�����ꤵ��Ƥ��ޤ�<br />CSS����Ѥ������1�����ꤷ�Ʋ�����<BR /><br />0=CSS����Ѥ��ʤ�<br />1=CSS����Ѥ���<br />",100,"zen_cfg_select_option(array('0', '1'),","4");
