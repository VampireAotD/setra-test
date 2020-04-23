-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 23 2020 г., 15:27
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `setra-test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1587644260),
('m130524_201442_init', 1587644261),
('m190124_110200_add_verification_token_column_to_user_table', 1587644261),
('m200423_091834_create_task_table', 1587644261),
('m200423_112636_add_test_data_to_task_table', 1587644262);

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `description` text NOT NULL,
  `started_at` date DEFAULT NULL,
  `ended_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `created_at`, `type`, `status`, `description`, `started_at`, `ended_at`) VALUES
(1, 1587644261, 'Libero quidem.', 1, 'In the very middle of one! There ought to have got altered.\' \'It is a raven.', '1980-07-19', '1975-06-26'),
(2, 1587644261, 'Neque.', 1, 'Alice could see it trying in a tone of this ointment--one shilling the.', '2000-04-10', '2004-11-05'),
(3, 1587644261, 'Occaecati.', 1, 'Alice: \'I don\'t believe it,\' said the Mouse, getting up and ran the faster.', '1994-07-29', '1996-10-21'),
(4, 1587644261, 'Mollitia quo.', 2, 'Very soon the Rabbit asked. \'No, I didn\'t,\' said Alice: \'allow me to.', '2001-09-04', '2008-07-28'),
(5, 1587644261, 'Soluta.', 1, 'THEIR eyes bright and eager with many a strange.', '1993-02-15', '1980-09-01'),
(6, 1587644261, 'Ipsa repellat.', 1, 'Mock Turtle replied; \'and then the other, and making quite a.', '1974-03-13', '1971-09-19'),
(7, 1587644261, 'Ut sed.', 1, 'They had not gone (We know it to his ear. Alice considered a little startled by.', '2002-04-25', '1978-04-27'),
(8, 1587644261, 'Ut rerum.', 2, 'CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice (she was obliged to.', '1978-06-13', '2012-03-01'),
(9, 1587644261, 'Sed odio.', 2, 'Mary Ann, what ARE you talking to?\' said one of the month is it?\'.', '1993-12-26', '2018-01-05'),
(10, 1587644261, 'Esse perferendis.', 2, 'Hearts, and I shall have some fun now!\' thought Alice. \'I\'m.', '1972-10-23', '1992-12-15'),
(11, 1587644261, 'Laborum.', 1, 'Puss,\' she began, rather timidly, saying to herself how she would manage it.', '2000-01-29', '2019-05-08'),
(12, 1587644261, 'Recusandae enim.', 2, 'Bill,\' she gave a little bottle on it, (\'which certainly was not a moment that it was over.', '1972-12-02', '1972-06-23'),
(13, 1587644261, 'Neque voluptatibus.', 2, 'Alice did not like the largest telescope that ever was! Good-bye, feet!\' (for when.', '2010-11-14', '1975-04-25'),
(14, 1587644261, 'Aspernatur.', 2, 'I know!\' exclaimed Alice, who felt ready to make out at the righthand bit.', '1976-09-23', '2003-12-18'),
(15, 1587644261, 'Et molestiae.', 1, 'Beautiful, beautiful Soup! Soup of the cupboards as she was as long as you might like to be in a.', '1993-04-19', '1994-11-23'),
(16, 1587644261, 'Quo laborum.', 1, 'When she got used to queer things happening. While she was ever to.', '2020-01-30', '2016-04-14'),
(17, 1587644261, 'Voluptatem sit.', 2, 'Alice glanced rather anxiously at the Duchess to play croquet.', '1972-06-27', '1998-02-18'),
(18, 1587644261, 'Unde blanditiis.', 2, 'PLEASE mind what you\'re doing!\' cried Alice, jumping up and down in a sulky tone, as it was.', '2006-10-20', '2010-04-13'),
(19, 1587644261, 'Molestiae.', 2, 'How the Owl had the door between us. For instance, suppose it were nine o\'clock in the.', '2011-10-02', '2011-11-20'),
(20, 1587644261, 'Quo explicabo.', 1, 'YET,\' she said to herself, as well say,\' added the Queen. \'You make me.', '1971-09-15', '1976-10-26'),
(21, 1587644261, 'Est.', 2, 'I only wish people knew that: then they both bowed low, and.', '1972-01-02', '2009-01-29'),
(22, 1587644261, 'Debitis.', 1, 'ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER.', '2002-08-10', '2010-09-09'),
(23, 1587644261, 'Quod.', 2, 'Footman continued in the last time she heard something splashing about in the air. She did it.', '1982-02-08', '1994-08-30'),
(24, 1587644261, 'Et quas.', 1, 'Involved in this affair, He trusts to you to sit down.', '1994-04-04', '2008-05-27'),
(25, 1587644261, 'Deleniti.', 1, 'Quick, now!\' And Alice was rather glad there WAS no one to listen to her, And.', '1991-02-24', '1993-10-05'),
(26, 1587644261, 'Et.', 2, 'Alice, seriously, \'I\'ll have nothing more to be no chance of her own.', '1992-01-15', '2019-05-29'),
(27, 1587644261, 'Sequi odit.', 1, 'Elsie, Lacie, and Tillie; and they repeated their arguments to.', '2013-04-08', '2004-09-30'),
(28, 1587644261, 'Ad at.', 2, 'Adventures of hers would, in the newspapers, at the mushroom (she had grown.', '1997-03-13', '1993-08-18'),
(29, 1587644261, 'Fuga.', 1, 'I can\'t get out again. That\'s all.\' \'Thank you,\' said Alice, as.', '1976-12-10', '1973-09-04'),
(30, 1587644261, 'Aliquid dolorem.', 1, 'Alice, quite forgetting her promise. \'Treacle,\' said the Mock Turtle\'s heavy sobs. Lastly, she.', '1984-09-11', '2001-12-11'),
(31, 1587644261, 'Nihil quis.', 1, 'FIT you,\' said the King. \'Nearly two miles high,\' added the Dormouse, without.', '1994-04-06', '1990-05-29'),
(32, 1587644261, 'Aut aut.', 2, 'I eat\" is the same as the large birds complained that they must be Mabel after.', '1991-12-17', '2018-04-08'),
(33, 1587644261, 'Animi.', 2, 'Alice\'s elbow was pressed hard against it, that.', '1988-03-10', '1984-01-29'),
(34, 1587644261, 'Qui.', 2, 'I only wish they WOULD go with Edgar Atheling to meet William and offer him the crown.', '2013-11-27', '1980-03-09'),
(35, 1587644261, 'Nobis sit.', 1, 'VERY short remarks, and she had drunk half the bottle, saying to herself how she would catch.', '2014-09-24', '2005-09-29'),
(36, 1587644261, 'Qui.', 1, 'Alice, \'when one wasn\'t always growing larger and smaller, and being so many tea-things are put.', '2015-07-07', '1992-02-01'),
(37, 1587644261, 'Nihil praesentium.', 1, 'Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, \'you.', '2009-06-26', '2018-01-24'),
(38, 1587644261, 'Tempore.', 1, 'I must have been a holiday?\' \'Of course not,\' said.', '2008-02-07', '1991-06-04'),
(39, 1587644261, 'Expedita.', 2, 'It was as much as she came up to Alice, that she.', '1980-01-06', '2013-12-25'),
(40, 1587644261, 'Libero dolore.', 2, 'Dormouse go on with the name of the jury wrote it down.', '1976-07-23', '2013-10-30'),
(41, 1587644261, 'Deserunt incidunt.', 1, 'Hatter: and in another moment down went Alice like the three gardeners.', '1993-04-21', '2014-02-27'),
(42, 1587644261, 'Quo.', 2, 'Alice think it was,\' the March Hare. The Hatter opened his eyes very wide on hearing this; but.', '1970-08-16', '1972-03-26'),
(43, 1587644261, 'Numquam quasi.', 1, 'THEIR eyes bright and eager with many a strange tale, perhaps even with the Queen.', '2013-08-31', '2015-03-03'),
(44, 1587644261, 'Maxime.', 2, 'She had quite forgotten the words.\' So they got thrown out.', '1997-04-23', '2009-01-01'),
(45, 1587644261, 'Voluptatibus reiciendis.', 2, 'Queen, who had followed him into the sea, though.', '1978-01-13', '1981-04-11'),
(46, 1587644261, 'Deserunt.', 2, 'This did not venture to ask his neighbour to tell me who YOU.', '1974-12-19', '2015-09-13'),
(47, 1587644261, 'Delectus voluptates.', 2, 'The soldiers were silent, and looked along the passage into the garden, and marked.', '2016-11-13', '2007-03-22'),
(48, 1587644261, 'Maxime.', 2, 'Father William replied to his son, \'I feared it might.', '1991-12-09', '2016-03-04'),
(49, 1587644261, 'Magnam voluptatibus.', 1, 'However, when they liked, and left off writing on his slate with one elbow against the ceiling.', '1984-12-28', '1977-12-13'),
(50, 1587644261, 'Natus recusandae.', 1, 'Pigeon. \'I can hardly breathe.\' \'I can\'t remember half of.', '2008-01-30', '2005-06-05'),
(51, 1587644261, 'Repudiandae.', 1, 'The first witness was the only difficulty was.', '1978-04-19', '2002-08-10'),
(52, 1587644261, 'Illum ut.', 2, 'Caterpillar seemed to be full of the wood--(she considered him to be.', '1971-05-24', '2001-02-13'),
(53, 1587644261, 'Perspiciatis.', 2, 'WILL do next! As for pulling me out of it, and talking over its head. \'Very uncomfortable.', '1993-05-06', '2001-11-21'),
(54, 1587644261, 'Itaque.', 2, 'The Duchess took no notice of her age knew the meaning of.', '2007-04-24', '2007-02-23'),
(55, 1587644261, 'Maxime.', 1, 'Either the well was very nearly carried it out to sea!\" But the insolence of his shrill.', '1991-02-19', '2012-08-14'),
(56, 1587644261, 'Quibusdam repudiandae.', 2, 'Hatter grumbled: \'you shouldn\'t have put it more clearly,\' Alice.', '2010-02-08', '1996-10-13'),
(57, 1587644261, 'Atque.', 2, 'Alice gave a little hot tea upon its nose. The.', '2009-02-27', '1995-09-03'),
(58, 1587644261, 'Aut ut.', 2, 'Alice. \'And be quick about it,\' said the Eaglet. \'I don\'t much care.', '1973-08-11', '2009-04-26'),
(59, 1587644261, 'Nostrum et.', 2, 'Rabbit\'s little white kid gloves and a sad tale!\'.', '1975-04-23', '2015-05-11'),
(60, 1587644261, 'Rerum.', 2, 'King repeated angrily, \'or I\'ll have you executed.\' The.', '2002-05-10', '1989-01-18'),
(61, 1587644261, 'Ea.', 1, 'I can guess that,\' she added aloud. \'Do you play croquet with the day and night! You see the.', '2012-05-07', '1986-12-13'),
(62, 1587644261, 'Unde.', 1, 'Come on!\' So they got their tails fast in their mouths; and.', '2016-05-11', '1973-03-15'),
(63, 1587644261, 'Culpa voluptas.', 1, 'White Rabbit returning, splendidly dressed, with a large.', '1974-02-21', '1985-08-23'),
(64, 1587644261, 'Dolorem consequuntur.', 1, 'Lory and an Eaglet, and several other curious creatures. Alice led the way.', '1981-04-16', '2005-01-20'),
(65, 1587644261, 'Omnis.', 2, 'YOUR shoes done with?\' said the Caterpillar. \'Well, I.', '2015-12-19', '1975-01-19'),
(66, 1587644261, 'Ad.', 2, 'Alice, very much pleased at having found out that the hedgehog had unrolled itself.', '1983-07-27', '1981-05-09'),
(67, 1587644261, 'Accusantium.', 2, 'Oh dear! I wish I hadn\'t mentioned Dinah!\' she said to the shore. CHAPTER III. A.', '1976-07-18', '2000-02-10'),
(68, 1587644261, 'Nulla.', 2, 'I must have been changed for any lesson-books!\' And.', '1976-10-29', '1995-12-10'),
(69, 1587644261, 'Odio.', 2, 'King exclaimed, turning to Alice to herself, \'after such a thing. After a while.', '1972-05-13', '2001-04-17'),
(70, 1587644261, 'Voluptates reiciendis.', 1, 'SHE, of course,\' the Gryphon went on again: \'Twenty-four hours.', '1987-03-11', '2012-12-10'),
(71, 1587644261, 'Ea.', 1, 'English); \'now I\'m opening out like the three gardeners instantly.', '2020-04-11', '1976-05-14'),
(72, 1587644261, 'Soluta.', 1, 'It\'s by far the most important piece of rudeness was more than three.\' \'Your hair.', '1992-04-12', '1973-10-03'),
(73, 1587644261, 'Voluptatum.', 1, 'The Duchess took no notice of her hedgehog. The hedgehog was engaged in a wondering tone.', '2013-12-29', '1997-02-04'),
(74, 1587644261, 'Cum veritatis.', 2, 'White Rabbit blew three blasts on the English coast you find a pleasure in.', '2011-05-06', '1986-03-24'),
(75, 1587644261, 'Accusantium iure.', 2, 'Gryphon whispered in reply, \'for fear they should forget them.', '1984-04-14', '2017-05-28'),
(76, 1587644261, 'Voluptas.', 2, 'EVER happen in a thick wood. \'The first thing I\'ve got to come.', '1982-07-25', '1981-08-18'),
(77, 1587644261, 'Officiis.', 2, 'I\'m sure I can\'t put it right; \'not that it was indeed: she was appealed to by all three dates.', '1999-10-24', '1990-02-18'),
(78, 1587644261, 'A cupiditate.', 2, 'I wonder what they WILL do next! If they had to do with you. Mind now!\' The.', '2002-11-08', '1988-10-05'),
(79, 1587644262, 'Eum.', 1, 'Ann! Mary Ann!\' said the voice. \'Fetch me my.', '1984-12-22', '1991-05-05'),
(80, 1587644262, 'Sunt quas.', 1, 'Alice hastily replied; \'at least--at least I mean what I eat\" is the same solemn tone.', '1995-01-23', '1986-03-11'),
(81, 1587644262, 'Sint.', 2, 'There was no one listening, this time, as it spoke. \'As wet.', '2002-01-07', '1997-03-14'),
(82, 1587644262, 'Quo.', 2, 'I\'ve got to come out among the bright eager eyes were.', '2008-04-13', '2017-09-19'),
(83, 1587644262, 'Modi blanditiis.', 1, 'Alice led the way, was the first figure,\' said the Mouse. \'--I proceed. \"Edwin and.', '2000-07-06', '1993-08-15'),
(84, 1587644262, 'Provident.', 1, 'MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the end of.', '2016-10-21', '1992-03-14'),
(85, 1587644262, 'Voluptatum minus.', 2, 'I\'m a hatter.\' Here the other birds tittered.', '1987-02-23', '2012-08-21'),
(86, 1587644262, 'Ad placeat.', 2, 'Alice opened the door between us. For instance, suppose it were nine o\'clock.', '2016-03-27', '1998-06-23'),
(87, 1587644262, 'Ipsum.', 2, 'Mock Turtle, suddenly dropping his voice; and Alice looked up, and there was hardly room for.', '1973-08-12', '1975-08-17'),
(88, 1587644262, 'Earum consequuntur.', 1, 'PRECIOUS nose\'; as an unusually large saucepan flew close by it, and on it except a.', '1984-10-19', '2009-09-22'),
(89, 1587644262, 'Corporis rerum.', 1, 'She soon got it out loud. \'Thinking again?\' the Duchess began in a.', '1973-06-05', '2006-11-18'),
(90, 1587644262, 'Hic exercitationem.', 1, 'I think.\' And she tried to get in at all?\' said Alice, (she had grown so large.', '2003-06-12', '1972-04-07'),
(91, 1587644262, 'Voluptatem est.', 1, 'Mock Turtle, and to hear it say, as it settled down again very sadly and quietly, and.', '2017-02-10', '1999-01-03'),
(92, 1587644262, 'Sint eaque.', 2, 'Rabbit whispered in a trembling voice:-- \'I passed by his garden, and I shall have.', '1974-12-22', '1998-12-14'),
(93, 1587644262, 'Culpa.', 1, 'Knave of Hearts, he stole those tarts, And took them quite.', '2014-12-17', '2010-06-06'),
(94, 1587644262, 'A.', 2, 'Alice. \'Only a thimble,\' said Alice desperately: \'he\'s.', '1981-03-22', '1990-02-08'),
(95, 1587644262, 'Aut.', 1, 'The poor little feet, I wonder if I shall only look up in such a dear little puppy it was!\' said.', '2003-03-05', '2007-07-09'),
(96, 1587644262, 'Numquam.', 2, 'Between yourself and me.\' \'That\'s the judge,\' she said to the Caterpillar, and the baby--the.', '1988-04-03', '1993-07-31'),
(97, 1587644262, 'Accusantium.', 1, 'I got up this morning, but I hadn\'t gone down that rabbit-hole--and yet--and.', '2008-05-02', '2013-06-06'),
(98, 1587644262, 'Fuga minus.', 1, 'Caterpillar. Alice folded her hands, and was surprised to find.', '1974-08-13', '1995-12-26'),
(99, 1587644262, 'Earum.', 2, 'There was no use their putting their heads downward! The Antipathies, I.', '2015-10-03', '1998-03-19'),
(100, 1587644262, 'Explicabo.', 2, 'Alice. \'Well, then,\' the Cat in a very small cake.', '1993-04-26', '1975-09-01'),
(101, 1587644470, 'Some task ', 1, 'Some task desc', '2020-04-09', '2020-05-01');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
