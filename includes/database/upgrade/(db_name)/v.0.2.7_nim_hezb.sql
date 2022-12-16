ALTER TABLE `maalquran_data`.`1_quran_word` ADD `nim` smallint(3) DEFAULT NULL;
ALTER TABLE `maalquran_data`.`1_quran_ayat` ADD `nim` smallint(3) DEFAULT NULL;

UPDATE `maalquran_data`.`1_quran_ayat` SET `maalquran_data`.`1_quran_ayat`.`nim` = CEIL(`maalquran_data`.`1_quran_ayat`.`rub` / 2);
UPDATE `maalquran_data`.`1_quran_word` SET `maalquran_data`.`1_quran_word`.`nim` = CEIL(`maalquran_data`.`1_quran_word`.`rub` / 2);