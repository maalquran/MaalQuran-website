ALTER TABLE `maalquran_data`.`quran_word` ADD `nim` smallint(3) DEFAULT NULL;
ALTER TABLE `maalquran_data`.`quran_ayat` ADD `nim` smallint(3) DEFAULT NULL;

UPDATE `maalquran_data`.`quran_ayat` SET `maalquran_data`.`quran_ayat`.`nim` = CEIL(`maalquran_data`.`quran_ayat`.`rub` / 2);
UPDATE `maalquran_data`.`quran_word` SET `maalquran_data`.`quran_word`.`nim` = CEIL(`maalquran_data`.`quran_word`.`rub` / 2);