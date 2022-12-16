
ALTER TABLE `maalquran_data`.`quran_word` ADD `index` smallint(5) DEFAULT NULL AFTER `id`;


UPDATE `maalquran_data`.`quran_word` SET `maalquran_data`.`quran_word`.`index` = (SELECT `maalquran_data`.`quran_ayat`.`index` FROM `maalquran_data`.`quran_ayat` WHERE `maalquran_data`.`quran_ayat`.`sura` = `maalquran_data`.`quran_word`.`sura` AND `maalquran_data`.`quran_ayat`.`aya` = `maalquran_data`.`quran_word`.`aya` LIMIT 1);
