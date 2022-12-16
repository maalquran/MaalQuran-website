ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `ayat_sura_index` (`sura`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `ayat_aya_index` (`aya`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `ayat_juz_index` (`juz`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `ayat_hizb_index` (`hizb`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `ayat_page_index` (`page`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `ayat_rub_index` (`rub`);


ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `word_aya_index` (`aya`);
ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `word_sura_index` (`sura`);
ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `word_juz_index` (`juz`);
ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `word_hizb_index` (`hizb`);
ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `word_rub_index` (`rub`);

ALTER TABLE `maalquran_data`.`sura` ADD INDEX `sura_index_index` (`index`);

