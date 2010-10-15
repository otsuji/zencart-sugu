##### �᡼����̾¿���첽 #####

# �����̥᡼����̾������ɲ�
ALTER TABLE manufacturers_info ADD manufacturers_name VARCHAR( 32 ) NOT NULL ;

# ��¸�Υ᡼����̾������̥᡼����̾�˥��ԡ�
UPDATE manufacturers_info mi
LEFT JOIN manufacturers m ON mi.manufacturers_id = m.manufacturers_id
SET mi.manufacturers_name = m.manufacturers_name ;

# --------------------------------------------------------


##### �ܵҥ᡼��¿���첽 #####

# �ܵҤθ��쥫����ɲ�
ALTER TABLE customers ADD customers_languages_id INT( 11 ) NOT NULL ;

# --------------------------------------------------------

##### �ϰ�̾����ƻ�ܸ�̾�ˤ�¿���첽 #####

DROP TABLE IF EXISTS zones_m17n;
CREATE TABLE IF NOT EXISTS zones_m17n (
  zone_id int(11) NOT NULL default '0',
  language_id int(11) NOT NULL default '0',
  zone_name_m17n varchar(32) NOT NULL default '',
  PRIMARY KEY  (zone_id,language_id)
) TYPE=MyISAM;

INSERT INTO zones_m17n
SELECT z.zone_id, l.languages_id as language_id, z.zone_name as zone_name_m17n
FROM zones z ,languages l;

UPDATE zones_m17n SET zone_name_m17n = 'Hokkaido' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�̳�ƻ';
UPDATE zones_m17n SET zone_name_m17n = 'Aomori' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�Ŀ���';
UPDATE zones_m17n SET zone_name_m17n = 'Iwate' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '��긩';
UPDATE zones_m17n SET zone_name_m17n = 'Miyagi' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�ܾ븩';
UPDATE zones_m17n SET zone_name_m17n = 'Akita' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���ĸ�';
UPDATE zones_m17n SET zone_name_m17n = 'Yamagata' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '������';
UPDATE zones_m17n SET zone_name_m17n = 'Fukushima' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY 'ʡ�縩';
UPDATE zones_m17n SET zone_name_m17n = 'Ibaraki' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '��븩';
UPDATE zones_m17n SET zone_name_m17n = 'Tochigi' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���ڸ�';
UPDATE zones_m17n SET zone_name_m17n = 'Gunma' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���ϸ�';
UPDATE zones_m17n SET zone_name_m17n = 'Saitama' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '��̸�';
UPDATE zones_m17n SET zone_name_m17n = 'Chiba' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���ո�';
UPDATE zones_m17n SET zone_name_m17n = 'Tokyo' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�����';
UPDATE zones_m17n SET zone_name_m17n = 'Kanagawa' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�����';
UPDATE zones_m17n SET zone_name_m17n = 'Niigata' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���㸩';
UPDATE zones_m17n SET zone_name_m17n = 'Toyama' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�ٻ���';
UPDATE zones_m17n SET zone_name_m17n = 'Ishikawa' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���';
UPDATE zones_m17n SET zone_name_m17n = 'Fukui' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY 'ʡ�温';
UPDATE zones_m17n SET zone_name_m17n = 'Yamagata' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '������';
UPDATE zones_m17n SET zone_name_m17n = 'Nagano' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY 'Ĺ�';
UPDATE zones_m17n SET zone_name_m17n = 'Gifu' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���츩';
UPDATE zones_m17n SET zone_name_m17n = 'Shizuoka' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�Ų���';
UPDATE zones_m17n SET zone_name_m17n = 'Aichi' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���θ�';
UPDATE zones_m17n SET zone_name_m17n = 'Mie' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���Ÿ�';
UPDATE zones_m17n SET zone_name_m17n = 'Shiga' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���츩';
UPDATE zones_m17n SET zone_name_m17n = 'Kyoto' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '������';
UPDATE zones_m17n SET zone_name_m17n = 'Osaka' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�����';
UPDATE zones_m17n SET zone_name_m17n = 'Hyogo' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY 'ʼ�˸�';
UPDATE zones_m17n SET zone_name_m17n = 'Nara' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���ɸ�';
UPDATE zones_m17n SET zone_name_m17n = 'Wakayama' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�²λ���';
UPDATE zones_m17n SET zone_name_m17n = 'Tottori' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY 'Ļ�踩';
UPDATE zones_m17n SET zone_name_m17n = 'Shimane' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�纬��';
UPDATE zones_m17n SET zone_name_m17n = 'Okayama' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '������';
UPDATE zones_m17n SET zone_name_m17n = 'Hiroshima' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���縩';
UPDATE zones_m17n SET zone_name_m17n = 'Yamaguchi' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '������';
UPDATE zones_m17n SET zone_name_m17n = 'Tokushima' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���縩';
UPDATE zones_m17n SET zone_name_m17n = 'Kagawa' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���';
UPDATE zones_m17n SET zone_name_m17n = 'Ehime' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '��ɲ��';
UPDATE zones_m17n SET zone_name_m17n = 'Kochi' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���θ�';
UPDATE zones_m17n SET zone_name_m17n = 'Fukuoka' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY 'ʡ����';
UPDATE zones_m17n SET zone_name_m17n = 'Saga' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���츩';
UPDATE zones_m17n SET zone_name_m17n = 'Nagasaki' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY 'Ĺ�긩';
UPDATE zones_m17n SET zone_name_m17n = 'Kumamoto' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���ܸ�';
UPDATE zones_m17n SET zone_name_m17n = 'Oita' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '��ʬ��';
UPDATE zones_m17n SET zone_name_m17n = 'Miyazaki' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�ܺ긩';
UPDATE zones_m17n SET zone_name_m17n = 'Kagoshima' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '�����縩';
UPDATE zones_m17n SET zone_name_m17n = 'Okinawa' WHERE language_id <> 2 AND zone_name_m17n LIKE BINARY '���츩';

# --------------------------------------------------------


##### �Ǽ��̥����ȥ롢������¿���첽 #####

DROP TABLE IF EXISTS tax_class_m17n;
CREATE TABLE IF NOT EXISTS tax_class_m17n (
  tax_class_id int(11) NOT NULL default '0',
  language_id int(11) NOT NULL default '0',
  tax_class_title varchar(32) NOT NULL default '',
  tax_class_description varchar(255) NOT NULL default '',
  PRIMARY KEY  (tax_class_id, language_id)
) TYPE=MyISAM;

INSERT INTO tax_class_m17n
SELECT t.tax_class_id, l.languages_id as language_id, t.tax_class_title, t.tax_class_description
FROM tax_class t ,languages l;

DROP TABLE IF EXISTS tax_rates_m17n;
CREATE TABLE IF NOT EXISTS tax_rates_m17n (
  tax_rates_id int(11) NOT NULL default '0',
  language_id int(11) NOT NULL default '0',
  tax_description varchar(255) NOT NULL default '',
  PRIMARY KEY  (tax_rates_id, language_id)
) TYPE=MyISAM;

INSERT INTO tax_rates_m17n
SELECT t.tax_rates_id, l.languages_id as language_id, t.tax_description
FROM tax_rates t ,languages l;

# --------------------------------------------------------


##### �̲� ��¦����ܥ� ��¦����ܥ��¿���첽 #####

DROP TABLE IF EXISTS currencies_m17n;
CREATE TABLE IF NOT EXISTS currencies_m17n (
  currencies_id int(11) NOT NULL default '0',
  language_id int(11) NOT NULL default '0',
  symbol_left varchar(24) default NULL,
  symbol_right varchar(24) default NULL,
  PRIMARY KEY  (currencies_id, language_id)
) TYPE=MyISAM;

INSERT INTO currencies_m17n
SELECT c.currencies_id, l.languages_id as language_id, c.symbol_left, c.symbol_right
FROM currencies c ,languages l;

# --------------------------------------------------------


##### ����ܵҥ��롼�פ�¿���첽 #####

DROP TABLE IF EXISTS group_pricing_m17n;
CREATE TABLE IF NOT EXISTS group_pricing_m17n (
  group_id int(11) NOT NULL default '0',
  language_id int(11) NOT NULL default '0',
  group_name varchar(32) NOT NULL default '',
  PRIMARY KEY  (group_id, language_id)
) TYPE=MyISAM;

INSERT INTO group_pricing_m17n
SELECT g.group_id, l.languages_id as language_id, g.group_name
FROM group_pricing g,languages l;

# --------------------------------------------------------
