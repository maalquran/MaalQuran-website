RENAME TABLE `maalquran`.`sure` TO `maalquran_data`.`sura`;

DROP TABLE `maalquran`.`quran_word`;
DROP TABLE `maalquran`.`quran_text`;

ALTER TABLE `maalquran_data`.`quran_ayat` CHANGE `hezb` `hizb` SMALLINT(3) NULL DEFAULT NULL;
ALTER TABLE `maalquran_data`.`quran_ayat` CHANGE `sajde` `sajdah` SMALLINT(3) NULL DEFAULT NULL;
ALTER TABLE `maalquran_data`.`quran_ayat` CHANGE `sajde_number` `sajdah_number` SMALLINT(3) NULL DEFAULT NULL;

ALTER TABLE `maalquran_data`.`quran_word` CHANGE `hezb` `hizb` SMALLINT(3) NULL DEFAULT NULL;