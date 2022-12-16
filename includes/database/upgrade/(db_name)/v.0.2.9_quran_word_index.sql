
ALTER TABLE `maalquran_data`.`1_quran_word` ADD `index` smallint(5) DEFAULT NULL AFTER `id`;


UPDATE `maalquran_data`.`1_quran_word` SET `maalquran_data`.`1_quran_word`.`index` = (SELECT `maalquran_data`.`1_quran_ayat`.`index` FROM `maalquran_data`.`1_quran_ayat` WHERE `maalquran_data`.`1_quran_ayat`.`sura` = `maalquran_data`.`1_quran_word`.`sura` AND `maalquran_data`.`1_quran_ayat`.`aya` = `maalquran_data`.`1_quran_word`.`aya` LIMIT 1);
