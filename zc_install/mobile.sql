ALTER TABLE layout_boxes ADD layout_page VARCHAR(64) DEFAULT '';
ALTER TABLE customers ADD customers_mobile_serial_number VARCHAR(64) DEFAULT NULL;

insert into configuration_group (configuration_group_id,configuration_group_title,configuration_group_description,sort_order,visible) values(100,"���ӥ����Ȥδ���","���ӥ����ȤˤĤ��ƳƼ������򤷤ޤ���",100,1);

insert into configuration (configuration_id,configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,set_function,sort_order) values(null,"�ѥ��å��������������","MOBILE_SLIM_SIZE","1","�ѥ��å����������˴ؤ�������򤷤ޤ�<BR />���������HTML��β��Ԥ䥹�ڡ�����������ե����륵�����򾮤������ޤ�����������ǥѥ��å���������󤹤��������ޤ�<br />0=OFF<br />1=ON<br />",100,"zen_cfg_select_option(array('0', '1'),","2");
insert into configuration (configuration_id,configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,sort_order) values(NULL,"���ӥ����ȥơ��ޥ��顼������","MOBILE_THEME_COLOR","#CA6312","�����ȤΥơ��ޥ��顼���#666666�פʤ�HTML���顼�����ɤ����ꤷ�ޤ������Υơ��ޥ��顼�ϡ����Ф����Ӥ��طʿ��ʤɤǻ��Ѥ���ޤ�",100,"3");
insert into configuration (configuration_id,configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,set_function,sort_order) values(NULL,"CSS������","MOBILE_CSS_CONF","0","�����Ǥ�HTML���[class]��[id]��̵ͭ�����ꤷ�ޤ�<br />�ǥե���ȤǤϥե����륵�����̾���Ū�ΰ٤�0�����ꤵ��Ƥ��ޤ�<br />CSS����Ѥ������1�����ꤷ�Ʋ�����<BR /><br />0=CSS����Ѥ��ʤ�<br />1=CSS����Ѥ���<br />",100,"zen_cfg_select_option(array('0', '1'),","4");
