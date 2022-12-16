ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `quran_ayat_index_index` (`index`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `quran_ayat_index_sura` (`sura`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `quran_ayat_index_aya` (`aya`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `quran_ayat_index_juz` (`juz`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `quran_ayat_index_hezb` (`hezb`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `quran_ayat_index_page` (`page`);
ALTER TABLE `maalquran_data`.`quran_ayat` ADD INDEX `quran_ayat_index_rub` (`rub`);


ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `quran_word_index_id` (`id`);
ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `quran_word_index_aya` (`aya`);
ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `quran_word_index_sura` (`sura`);
ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `quran_word_index_page` (`page`);
