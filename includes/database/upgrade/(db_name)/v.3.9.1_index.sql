
ALTER TABLE `maalquran_data`.`quran_word` ADD INDEX `quran_word_index_index` (`index`);


ALTER TABLE `maalquran_data`.`quran_word` DROP INDEX `quran_word_index_id`;
ALTER TABLE `maalquran_data`.`quran_word` DROP INDEX `quran_word_index_aya`;
ALTER TABLE `maalquran_data`.`quran_word` DROP INDEX `quran_word_index_sura`;




ALTER TABLE `maalquran_data`.`quran_ayat` DROP INDEX `quran_ayat_index_sura`;
ALTER TABLE `maalquran_data`.`quran_ayat` DROP INDEX `quran_ayat_index_aya`;
ALTER TABLE `maalquran_data`.`quran_ayat` DROP INDEX `quran_ayat_index_juz`;
ALTER TABLE `maalquran_data`.`quran_ayat` DROP INDEX `quran_ayat_index_page`;
ALTER TABLE `maalquran_data`.`quran_ayat` DROP INDEX `quran_ayat_index_rub`;
