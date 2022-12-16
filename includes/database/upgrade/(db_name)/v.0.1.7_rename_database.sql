RENAME TABLE `maalquran`.`sure` TO `maalquran_data`.`1_sura`;

DROP TABLE `maalquran`.`quran_word`;
DROP TABLE `maalquran`.`quran_text`;

ALTER TABLE `maalquran_data`.`1_quran_ayat` CHANGE `hezb` `hizb` SMALLINT(3) NULL DEFAULT NULL;
ALTER TABLE `maalquran_data`.`1_quran_ayat` CHANGE `sajde` `sajdah` SMALLINT(3) NULL DEFAULT NULL;
ALTER TABLE `maalquran_data`.`1_quran_ayat` CHANGE `sajde_number` `sajdah_number` SMALLINT(3) NULL DEFAULT NULL;

ALTER TABLE `maalquran_data`.`1_quran_word` CHANGE `hezb` `hizb` SMALLINT(3) NULL DEFAULT NULL;