UPDATE `maalquran_data`.`1_quran_word` SET `maalquran_data`.`1_quran_word`.`juz` = ( SELECT `maalquran_data`.`1_quran_ayat`.`juz` FROM `maalquran_data`.`1_quran_ayat` WHERE `maalquran_data`.`1_quran_ayat`.`sura` = `maalquran_data`.`1_quran_word`.`sura` AND `maalquran_data`.`1_quran_ayat`.`aya` = `maalquran_data`.`1_quran_word`.`aya` LIMIT 1 );

UPDATE `maalquran_data`.`1_quran_word` SET `maalquran_data`.`1_quran_word`.`hizb` = ( SELECT `maalquran_data`.`1_quran_ayat`.`hizb` FROM `maalquran_data`.`1_quran_ayat` WHERE `maalquran_data`.`1_quran_ayat`.`sura` = `maalquran_data`.`1_quran_word`.`sura` AND `maalquran_data`.`1_quran_ayat`.`aya` = `maalquran_data`.`1_quran_word`.`aya` LIMIT 1 );

UPDATE `maalquran_data`.`1_quran_word` SET `maalquran_data`.`1_quran_word`.`rub` = ( SELECT `maalquran_data`.`1_quran_ayat`.`rub` FROM `maalquran_data`.`1_quran_ayat` WHERE `maalquran_data`.`1_quran_ayat`.`sura` = `maalquran_data`.`1_quran_word`.`sura` AND `maalquran_data`.`1_quran_ayat`.`aya` = `maalquran_data`.`1_quran_word`.`aya` LIMIT 1 );


ALTER TABLE `maalquran_data`.`1_sura` CHANGE `juz` `startjuz` smallint(3) DEFAULT NULL;
ALTER TABLE `maalquran_data`.`1_sura` CHANGE `alljuz` `endjuz` smallint(3) DEFAULT NULL;

UPDATE `maalquran_data`.`1_sura` SET `maalquran_data`.`1_sura`.`startjuz` = ( SELECT `maalquran_data`.`1_quran_ayat`.`juz` FROM `maalquran_data`.`1_quran_ayat` WHERE `maalquran_data`.`1_quran_ayat`.`sura` = `maalquran_data`.`1_sura`.`index` ORDER BY `maalquran_data`.`1_quran_ayat`.`index` ASC LIMIT 1);
UPDATE `maalquran_data`.`1_sura` SET `maalquran_data`.`1_sura`.`endjuz` = ( SELECT `maalquran_data`.`1_quran_ayat`.`juz` FROM `maalquran_data`.`1_quran_ayat` WHERE `maalquran_data`.`1_quran_ayat`.`sura` = `maalquran_data`.`1_sura`.`index` ORDER BY `maalquran_data`.`1_quran_ayat`.`index` DESC LIMIT 1);
