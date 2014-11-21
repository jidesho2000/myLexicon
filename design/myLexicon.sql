-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 21, 2014 at 06:36 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myLexicon`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `base_lexemes`
--
CREATE TABLE IF NOT EXISTS `base_lexemes` (
`meaningid` int(10)
,`targetid` int(10)
,`userid` int(10)
,`id` int(10)
,`language` char(2)
,`entry` varchar(255)
,`date_entered` timestamp
);
-- --------------------------------------------------------

--
-- Table structure for table `clarifications`
--

CREATE TABLE IF NOT EXISTS `clarifications` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `meaningid` int(10) NOT NULL,
  `clarification` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meaning_clarifications` (`meaningid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clarifications`
--

INSERT INTO `clarifications` (`id`, `meaningid`, `clarification`) VALUES
(1, 73, 'music');

-- --------------------------------------------------------

--
-- Table structure for table `examples`
--

CREATE TABLE IF NOT EXISTS `examples` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `meaningid` int(10) NOT NULL,
  `example` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meaning_examples` (`meaningid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `name` char(49) DEFAULT NULL,
  `iso_639` char(2) NOT NULL,
  PRIMARY KEY (`iso_639`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`name`, `iso_639`) VALUES
('Afar', 'aa'),
('Abkhazian', 'ab'),
('Afrikaans', 'af'),
('Amharic', 'am'),
('Arabic', 'ar'),
('Assamese', 'as'),
('Aymara', 'ay'),
('Azerbaijani', 'az'),
('Bashkir', 'ba'),
('Byelorussian', 'be'),
('Bulgarian', 'bg'),
('Bihari', 'bh'),
('Bislama', 'bi'),
('Bengali/Bangla', 'bn'),
('Tibetan', 'bo'),
('Breton', 'br'),
('Catalan', 'ca'),
('Corsican', 'co'),
('Czech', 'cs'),
('Welsh', 'cy'),
('Danish', 'da'),
('German', 'de'),
('Bhutani', 'dz'),
('Greek', 'el'),
('English', 'en'),
('Esperanto', 'eo'),
('Spanish', 'es'),
('Estonian', 'et'),
('Basque', 'eu'),
('Persian', 'fa'),
('Finnish', 'fi'),
('Fiji', 'fj'),
('Faeroese', 'fo'),
('French', 'fr'),
('Frisian', 'fy'),
('Irish', 'ga'),
('Scots/Gaelic', 'gd'),
('Galician', 'gl'),
('Guarani', 'gn'),
('Gujarati', 'gu'),
('Hausa', 'ha'),
('Hindi', 'hi'),
('Croatian', 'hr'),
('Hungarian', 'hu'),
('Armenian', 'hy'),
('Interlingua', 'ia'),
('Interlingue', 'ie'),
('Inupiak', 'ik'),
('Indonesian', 'in'),
('Icelandic', 'is'),
('Italian', 'it'),
('Hebrew', 'iw'),
('Japanese', 'ja'),
('Yiddish', 'ji'),
('Javanese', 'jw'),
('Georgian', 'ka'),
('Kazakh', 'kk'),
('Greenlandic', 'kl'),
('Cambodian', 'km'),
('Kannada', 'kn'),
('Korean', 'ko'),
('Kashmiri', 'ks'),
('Kurdish', 'ku'),
('Kirghiz', 'ky'),
('Latin', 'la'),
('Lingala', 'ln'),
('Laothian', 'lo'),
('Lithuanian', 'lt'),
('Latvian/Lettish', 'lv'),
('Malagasy', 'mg'),
('Maori', 'mi'),
('Macedonian', 'mk'),
('Malayalam', 'ml'),
('Mongolian', 'mn'),
('Moldavian', 'mo'),
('Marathi', 'mr'),
('Malay', 'ms'),
('Maltese', 'mt'),
('Burmese', 'my'),
('Nauru', 'na'),
('Nepali', 'ne'),
('Dutch', 'nl'),
('Norwegian', 'no'),
('Occitan', 'oc'),
('(Afan)/Oromoor/Oriya', 'om'),
('Punjabi', 'pa'),
('Polish', 'pl'),
('Pashto/Pushto', 'ps'),
('Portuguese', 'pt'),
('Quechua', 'qu'),
('Rhaeto-Romance', 'rm'),
('Kirundi', 'rn'),
('Romanian', 'ro'),
('Russian', 'ru'),
('Kinyarwanda', 'rw'),
('Sanskrit', 'sa'),
('Sindhi', 'sd'),
('Sangro', 'sg'),
('Serbo-Croatian', 'sh'),
('Singhalese', 'si'),
('Slovak', 'sk'),
('Slovenian', 'sl'),
('Samoan', 'sm'),
('Shona', 'sn'),
('Somali', 'so'),
('Albanian', 'sq'),
('Serbian', 'sr'),
('Siswati', 'ss'),
('Sesotho', 'st'),
('Sundanese', 'su'),
('Swedish', 'sv'),
('Swahili', 'sw'),
('Tamil', 'ta'),
('Tegulu', 'te'),
('Tajik', 'tg'),
('Thai', 'th'),
('Tigrinya', 'ti'),
('Turkmen', 'tk'),
('Tagalog', 'tl'),
('Setswana', 'tn'),
('Tonga', 'to'),
('Turkish', 'tr'),
('Tsonga', 'ts'),
('Tatar', 'tt'),
('Twi', 'tw'),
('Ukrainian', 'uk'),
('Urdu', 'ur'),
('Uzbek', 'uz'),
('Vietnamese', 'vi'),
('Volapuk', 'vo'),
('Wolof', 'wo'),
('Xhosa', 'xh'),
('Yoruba', 'yo'),
('Chinese', 'zh'),
('Zulu', 'zu');

-- --------------------------------------------------------

--
-- Table structure for table `lexemes`
--

CREATE TABLE IF NOT EXISTS `lexemes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `language` char(2) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `entry` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_lexeme` (`language`,`entry`,`type`),
  KEY `lexeme_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=293 ;

--
-- Dumping data for table `lexemes`
--

INSERT INTO `lexemes` (`id`, `language`, `type`, `entry`) VALUES
(36, 'de', 'verb', 'annehmen'),
(169, 'de', 'verb', 'auf die Welt kommen'),
(194, 'de', 'adjective/adverb', 'auf Raten'),
(54, 'de', 'verb', 'aufbrechen'),
(112, 'de', 'verb', 'auflegen'),
(242, 'de', 'verb', 'auftreten'),
(173, 'de', 'adjective/adverb', 'ausführlich'),
(260, 'de', 'verb', 'ausüben'),
(104, 'de', 'verb', 'begeistern'),
(129, 'de', 'verb', 'besitzen'),
(165, 'de', 'verb', 'betrügen'),
(78, 'de', 'verb', 'bewältigen'),
(291, 'de', 'verb', 'bügeln'),
(22, 'de', 'noun', 'das Anschreiben'),
(88, 'de', 'noun', 'das Gericht'),
(62, 'de', 'noun', 'das Gerücht'),
(252, 'de', 'noun', 'das Mitleid'),
(136, 'de', 'noun', 'das Sparschwein'),
(51, 'de', 'noun', 'das Ufer'),
(30, 'de', 'noun', 'das Verzeichnis'),
(154, 'de', 'noun', 'der Anlass'),
(191, 'de', 'noun', 'der Auftakt'),
(273, 'de', 'noun', 'der Auftrag'),
(138, 'de', 'noun', 'der Bankrott'),
(214, 'de', 'noun', 'der Beamtenapparat'),
(286, 'de', 'noun', 'der Begriff'),
(250, 'de', 'noun', 'der Eigenname'),
(143, 'de', 'noun', 'der Gegenstand'),
(266, 'de', 'noun', 'der Gleichsetzungsnominativ'),
(270, 'de', 'noun', 'der Gönner'),
(49, 'de', 'noun', 'der Hafen'),
(146, 'de', 'noun', 'der Hai'),
(277, 'de', 'noun', 'der Hals'),
(96, 'de', 'noun', 'der Hubschrauber'),
(184, 'de', 'noun', 'der Kragen'),
(268, 'de', 'noun', 'der Schreiner'),
(90, 'de', 'noun', 'der Stift'),
(198, 'de', 'noun', 'der Umgang'),
(196, 'de', 'noun', 'der Veranstalter'),
(34, 'de', 'noun', 'der Versprecher'),
(24, 'de', 'noun', 'der Vorgang'),
(67, 'de', 'noun', 'der Vorstand'),
(203, 'de', 'noun', 'der Zuschauer'),
(18, 'de', 'noun', 'die Anforderung'),
(5, 'de', 'noun', 'die Anleitung'),
(171, 'de', 'noun', 'die Anreise'),
(150, 'de', 'noun', 'die Beleidigung'),
(163, 'de', 'noun', 'die Dachwohnung'),
(208, 'de', 'noun', 'die Ergreifung'),
(28, 'de', 'noun', 'die Fabel'),
(65, 'de', 'noun', 'die Gewissheit'),
(167, 'de', 'noun', 'die Glühbirne'),
(140, 'de', 'noun', 'die Immobilien'),
(210, 'de', 'noun', 'die Initiierung'),
(132, 'de', 'noun', 'die Mütze'),
(230, 'de', 'noun', 'die Probe'),
(20, 'de', 'noun', 'die Rechnung'),
(98, 'de', 'noun', 'die Sauftour'),
(119, 'de', 'noun', 'die Scheibe'),
(148, 'de', 'noun', 'die Sünde'),
(188, 'de', 'noun', 'die Uraufführung'),
(182, 'de', 'noun', 'die Vergnügung'),
(227, 'de', 'noun', 'die Voraussetzung'),
(116, 'de', 'verb', 'durchsetzen'),
(265, 'de', 'verb', 'enthalten'),
(14, 'de', 'verb', 'erfordern'),
(127, 'de', 'verb', 'erklären'),
(219, 'de', 'verb', 'erledigen'),
(256, 'de', 'verb', 'feststellen'),
(100, 'de', 'adjective/adverb', 'gelaunt'),
(186, 'de', 'adjective/adverb', 'gelockert'),
(152, 'de', 'adjective/adverb', 'im Namen von'),
(69, 'de', 'verb', 'jmdm. etw. mitteilen'),
(73, 'de', 'verb', 'jmdm. für etw. loben'),
(110, 'de', 'adjective/adverb', 'jmdm. zu Ehren'),
(42, 'de', 'verb', 'jmdm. zum Schweigen bringen'),
(102, 'de', 'verb', 'jubeln'),
(223, 'de', 'verb', 'liefern'),
(60, 'de', 'verb', 'losgehen'),
(177, 'de', 'verb', 'lösen'),
(85, 'de', 'verb', 'monieren'),
(247, 'de', 'adjective/adverb', 'pflegeleicht'),
(238, 'de', 'adjective/adverb', 'schlagartig'),
(122, 'de', 'adjective/adverb', 'schnurstracks'),
(134, 'de', 'verb', 'Schwein haben'),
(108, 'de', 'verb', 'schütteln'),
(283, 'de', 'verb', 'sich als etw. entpuppen'),
(236, 'de', 'verb', 'sich auf etw. verlassen'),
(114, 'de', 'verb', 'sich durchsetzen'),
(106, 'de', 'verb', 'sich für etw. begeistern'),
(160, 'de', 'verb', 'sich um etw. kümmern'),
(1, 'de', 'verb', 'sich von jmdm. verabschieden'),
(92, 'de', 'verb', 'sperren'),
(75, 'de', 'adjective/adverb', 'stellvertretend'),
(263, 'de', 'verb', 'umfassen'),
(216, 'de', 'adjective/adverb', 'umfassend'),
(280, 'de', 'adjective/adverb', 'unausführbar'),
(212, 'de', 'adjective/adverb', 'undicht'),
(279, 'de', 'adjective/adverb', 'unmöglich'),
(45, 'de', 'verb', 'verdrängen'),
(10, 'de', 'verb', 'verfassen'),
(234, 'de', 'verb', 'verlassen'),
(158, 'de', 'adjective/adverb', 'vermählt'),
(41, 'de', 'verb', 'über eine Fertigkeit verfügen'),
(39, 'de', 'verb', 'über eine Fähigkeit verfügen'),
(82, 'de', 'verb', 'zerschlagen'),
(156, 'de', 'adjective/adverb', 'zu besonderen Anlässen'),
(124, 'de', 'verb', 'zu Gesicht bekommen'),
(206, 'de', 'verb', 'zurückliegen'),
(239, 'en', 'adjective/adverb', 'abrupt'),
(26, 'en', 'noun', 'art'),
(276, 'en', 'noun', 'assignment'),
(77, 'en', 'adjective/adverb', 'assistant'),
(201, 'en', 'noun', 'association'),
(228, 'en', 'noun', 'assumption'),
(204, 'en', 'noun', 'audience'),
(53, 'en', 'noun', 'bank'),
(139, 'en', 'noun', 'bankruptcy'),
(271, 'en', 'noun', 'benefactor'),
(21, 'en', 'noun', 'bill'),
(215, 'en', 'noun', 'bureaucracy'),
(133, 'en', 'noun', 'cap'),
(269, 'en', 'noun', 'carpenter'),
(66, 'en', 'noun', 'certainty'),
(232, 'en', 'noun', 'challenge'),
(255, 'en', 'noun', 'charity'),
(185, 'en', 'noun', 'collar'),
(217, 'en', 'adjective/adverb', 'comprehensive'),
(289, 'en', 'noun', 'concept'),
(229, 'en', 'noun', 'condition'),
(199, 'en', 'noun', 'contact'),
(23, 'en', 'noun', 'correspondence'),
(89, 'en', 'noun', 'court'),
(288, 'en', 'noun', 'definition'),
(76, 'en', 'adjective/adverb', 'deputy'),
(174, 'en', 'adjective/adverb', 'detailed'),
(9, 'en', 'noun', 'direction'),
(121, 'en', 'noun', 'disc'),
(248, 'en', 'adjective/adverb', 'easy to clean'),
(175, 'en', 'adjective/adverb', 'elaborate'),
(200, 'en', 'noun', 'exposure'),
(218, 'en', 'adjective/adverb', 'extensive'),
(29, 'en', 'noun', 'fable'),
(189, 'en', 'noun', 'first release'),
(8, 'en', 'noun', 'guidance'),
(50, 'en', 'noun', 'harbour'),
(97, 'en', 'noun', 'helicopter'),
(101, 'en', 'adjective/adverb', 'humoured'),
(290, 'en', 'noun', 'idea'),
(281, 'en', 'adjective/adverb', 'impossible'),
(176, 'en', 'adjective/adverb', 'in detail'),
(195, 'en', 'adjective/adverb', 'in installments'),
(111, 'en', 'adjective/adverb', 'in so.''s honour'),
(33, 'en', 'noun', 'index'),
(211, 'en', 'noun', 'initiation'),
(151, 'en', 'noun', 'insult'),
(145, 'en', 'noun', 'item'),
(172, 'en', 'noun', 'journey'),
(193, 'en', 'noun', 'kick-off'),
(213, 'en', 'adjective/adverb', 'leaky'),
(168, 'en', 'noun', 'light bulb'),
(31, 'en', 'noun', 'list'),
(249, 'en', 'adjective/adverb', 'low-maintenance'),
(68, 'en', 'noun', 'management'),
(159, 'en', 'adjective/adverb', 'married'),
(63, 'en', 'noun', 'myth'),
(278, 'en', 'noun', 'neck'),
(144, 'en', 'noun', 'object'),
(155, 'en', 'noun', 'occasion'),
(153, 'en', 'adjective/adverb', 'on behalf of'),
(157, 'en', 'adjective/adverb', 'on special occasions'),
(275, 'en', 'noun', 'order'),
(197, 'en', 'noun', 'organiser'),
(91, 'en', 'noun', 'pen'),
(164, 'en', 'noun', 'penthouse'),
(137, 'en', 'noun', 'piggy bank'),
(253, 'en', 'noun', 'pity'),
(183, 'en', 'noun', 'pleasure'),
(267, 'en', 'noun', 'predicate nominative'),
(190, 'en', 'noun', 'premiere'),
(27, 'en', 'noun', 'procedure'),
(25, 'en', 'noun', 'process'),
(240, 'en', 'adjective/adverb', 'prompt'),
(251, 'en', 'noun', 'proper noun'),
(141, 'en', 'noun', 'property'),
(99, 'en', 'noun', 'pub crawl'),
(142, 'en', 'noun', 'real estate'),
(32, 'en', 'noun', 'register'),
(187, 'en', 'adjective/adverb', 'relaxed'),
(19, 'en', 'noun', 'requirement'),
(64, 'en', 'noun', 'rumour'),
(231, 'en', 'noun', 'sample'),
(209, 'en', 'noun', 'seizure'),
(147, 'en', 'noun', 'shark'),
(52, 'en', 'noun', 'shore'),
(149, 'en', 'noun', 'sin'),
(120, 'en', 'noun', 'slice'),
(35, 'en', 'noun', 'slip of the tongue'),
(205, 'en', 'noun', 'spectator'),
(272, 'en', 'noun', 'sponsor'),
(192, 'en', 'noun', 'start'),
(123, 'en', 'adjective/adverb', 'straightaway'),
(241, 'en', 'adjective/adverb', 'sudden'),
(254, 'en', 'noun', 'sympathy'),
(274, 'en', 'noun', 'task'),
(287, 'en', 'noun', 'term'),
(233, 'en', 'noun', 'test'),
(37, 'en', 'verb', 'to accept'),
(83, 'en', 'verb', 'to annihilate'),
(245, 'en', 'verb', 'to appear'),
(243, 'en', 'verb', 'to arise'),
(258, 'en', 'verb', 'to assert'),
(12, 'en', 'verb', 'to author'),
(170, 'en', 'verb', 'to be born'),
(107, 'en', 'verb', 'to be crazy about sth.'),
(135, 'en', 'verb', 'to be lucky'),
(94, 'en', 'verb', 'to block out'),
(262, 'en', 'verb', 'to carry out'),
(125, 'en', 'verb', 'to catch sight of'),
(166, 'en', 'verb', 'to cheat'),
(103, 'en', 'verb', 'to cheer'),
(40, 'en', 'verb', 'to command a skill'),
(86, 'en', 'verb', 'to complain'),
(222, 'en', 'verb', 'to complete'),
(74, 'en', 'verb', 'to compliment so. on sth.'),
(13, 'en', 'verb', 'to compose'),
(264, 'en', 'verb', 'to contain'),
(87, 'en', 'verb', 'to criticise'),
(207, 'en', 'verb', 'to date back'),
(259, 'en', 'verb', 'to declare'),
(15, 'en', 'verb', 'to demand'),
(257, 'en', 'verb', 'to determine'),
(246, 'en', 'verb', 'to develop'),
(48, 'en', 'verb', 'to displace'),
(284, 'en', 'verb', 'to emerge as sth.'),
(117, 'en', 'verb', 'to enforce'),
(221, 'en', 'verb', 'to execute'),
(128, 'en', 'verb', 'to explain'),
(220, 'en', 'verb', 'to finish'),
(178, 'en', 'verb', 'to free'),
(72, 'en', 'verb', 'to inform so. about sth.'),
(105, 'en', 'verb', 'to inspire'),
(292, 'en', 'verb', 'to iron'),
(55, 'en', 'verb', 'to leave'),
(95, 'en', 'verb', 'to lock'),
(162, 'en', 'verb', 'to look after sth.'),
(80, 'en', 'verb', 'to manage'),
(16, 'en', 'verb', 'to necessitate'),
(244, 'en', 'verb', 'to occur'),
(81, 'en', 'verb', 'to overcome'),
(130, 'en', 'verb', 'to own'),
(261, 'en', 'verb', 'to perform'),
(113, 'en', 'verb', 'to play'),
(131, 'en', 'verb', 'to possess'),
(115, 'en', 'verb', 'to prevail'),
(224, 'en', 'verb', 'to provide'),
(118, 'en', 'verb', 'to push'),
(237, 'en', 'verb', 'to rely on sth.'),
(47, 'en', 'verb', 'to replace'),
(17, 'en', 'verb', 'to require'),
(180, 'en', 'verb', 'to resolve'),
(2, 'en', 'verb', 'to say goodbye'),
(126, 'en', 'verb', 'to set eyes on'),
(109, 'en', 'verb', 'to shake'),
(71, 'en', 'verb', 'to share sth. with so.'),
(43, 'en', 'verb', 'to silence so.'),
(181, 'en', 'verb', 'to slacken'),
(84, 'en', 'verb', 'to smash'),
(179, 'en', 'verb', 'to solve'),
(93, 'en', 'verb', 'to stop'),
(46, 'en', 'verb', 'to supersede'),
(38, 'en', 'verb', 'to suppose'),
(79, 'en', 'verb', 'to tackle'),
(161, 'en', 'verb', 'to take care of sth.'),
(3, 'en', 'verb', 'to take one''s leave of so.'),
(70, 'en', 'verb', 'to tell so. sth.'),
(285, 'en', 'verb', 'to turn out to be sth.'),
(11, 'en', 'verb', 'to write'),
(282, 'en', 'adjective/adverb', 'unfeasible'),
(4, 'fr', 'verb', 'congédier qn.');

-- --------------------------------------------------------

--
-- Table structure for table `meanings`
--

CREATE TABLE IF NOT EXISTS `meanings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL,
  `targetid` int(10) NOT NULL,
  `baseid` int(10) NOT NULL,
  `frequency` int(10) NOT NULL DEFAULT '1',
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_meaning_per_user_constraint` (`targetid`,`baseid`,`userid`),
  KEY `base` (`targetid`),
  KEY `target` (`baseid`),
  KEY `user_meaning` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=195 ;

--
-- Dumping data for table `meanings`
--

INSERT INTO `meanings` (`id`, `userid`, `targetid`, `baseid`, `frequency`, `date_entered`) VALUES
(1, 1, 1, 2, 1, '2014-11-17 07:37:55'),
(2, 1, 1, 3, 1, '2014-11-17 08:09:21'),
(3, 1, 1, 4, 1, '2014-11-17 08:42:13'),
(4, 1, 5, 8, 1, '2014-11-18 08:37:34'),
(5, 1, 5, 9, 1, '2014-11-18 08:39:18'),
(6, 1, 10, 11, 1, '2014-11-18 08:41:49'),
(7, 1, 10, 12, 1, '2014-11-18 08:41:53'),
(8, 1, 10, 13, 1, '2014-11-18 08:42:01'),
(10, 1, 14, 15, 1, '2014-11-18 08:53:27'),
(11, 1, 14, 16, 1, '2014-11-18 08:53:34'),
(12, 1, 14, 17, 1, '2014-11-18 08:53:39'),
(14, 1, 18, 19, 1, '2014-11-18 08:55:07'),
(15, 1, 20, 21, 1, '2014-11-18 08:57:02'),
(16, 1, 22, 23, 1, '2014-11-18 08:57:55'),
(17, 1, 24, 25, 1, '2014-11-18 08:59:05'),
(18, 1, 24, 26, 1, '2014-11-18 08:59:10'),
(19, 1, 24, 27, 1, '2014-11-18 08:59:14'),
(20, 1, 28, 29, 1, '2014-11-18 09:00:39'),
(22, 1, 30, 31, 1, '2014-11-18 09:04:37'),
(23, 1, 30, 32, 1, '2014-11-18 09:04:41'),
(24, 1, 30, 33, 1, '2014-11-18 09:04:49'),
(25, 1, 34, 35, 1, '2014-11-18 09:05:52'),
(26, 1, 36, 37, 1, '2014-11-18 09:07:02'),
(27, 1, 36, 38, 1, '2014-11-18 09:07:09'),
(28, 1, 39, 40, 1, '2014-11-18 09:19:35'),
(29, 1, 41, 40, 1, '2014-11-18 09:19:35'),
(30, 1, 42, 43, 1, '2014-11-18 09:25:59'),
(31, 1, 45, 46, 1, '2014-11-19 08:07:19'),
(32, 1, 45, 47, 1, '2014-11-19 08:07:36'),
(33, 1, 45, 48, 1, '2014-11-19 08:08:15'),
(34, 1, 49, 50, 1, '2014-11-19 08:10:33'),
(35, 1, 51, 52, 1, '2014-11-19 08:11:31'),
(36, 1, 51, 53, 1, '2014-11-19 08:11:40'),
(37, 1, 54, 55, 1, '2014-11-19 08:14:04'),
(39, 1, 60, 55, 1, '2014-11-19 08:14:04'),
(41, 1, 62, 63, 1, '2014-11-19 08:34:57'),
(42, 1, 62, 64, 1, '2014-11-19 08:35:01'),
(44, 1, 65, 66, 1, '2014-11-19 08:46:54'),
(45, 1, 67, 68, 1, '2014-11-19 08:48:27'),
(46, 1, 69, 70, 1, '2014-11-19 08:50:18'),
(47, 1, 69, 71, 1, '2014-11-19 08:50:39'),
(48, 1, 69, 72, 1, '2014-11-19 08:50:54'),
(49, 1, 73, 74, 1, '2014-11-19 08:53:16'),
(50, 1, 75, 76, 1, '2014-11-19 09:18:53'),
(51, 1, 75, 77, 1, '2014-11-19 09:19:00'),
(52, 1, 78, 79, 1, '2014-11-19 09:21:10'),
(53, 1, 78, 80, 1, '2014-11-19 09:21:16'),
(54, 1, 78, 81, 1, '2014-11-19 09:21:19'),
(55, 1, 82, 83, 1, '2014-11-19 09:32:28'),
(57, 1, 82, 84, 1, '2014-11-19 09:32:44'),
(58, 1, 85, 86, 1, '2014-11-19 09:34:45'),
(59, 1, 85, 87, 1, '2014-11-19 09:34:54'),
(60, 1, 88, 89, 1, '2014-11-19 09:36:07'),
(61, 1, 90, 91, 1, '2014-11-19 14:28:12'),
(62, 1, 92, 93, 1, '2014-11-19 14:30:50'),
(63, 1, 92, 94, 1, '2014-11-19 14:30:56'),
(64, 1, 92, 95, 1, '2014-11-19 14:31:05'),
(65, 1, 96, 97, 1, '2014-11-19 14:33:05'),
(66, 1, 98, 99, 1, '2014-11-19 14:34:21'),
(67, 1, 100, 101, 1, '2014-11-19 14:35:59'),
(68, 1, 102, 103, 1, '2014-11-19 14:36:40'),
(69, 1, 104, 105, 1, '2014-11-19 14:38:04'),
(70, 1, 106, 107, 1, '2014-11-19 14:38:44'),
(71, 1, 108, 109, 1, '2014-11-19 14:39:22'),
(72, 1, 110, 111, 1, '2014-11-19 14:42:53'),
(73, 1, 112, 113, 1, '2014-11-19 14:47:23'),
(74, 1, 114, 115, 1, '2014-11-19 15:02:18'),
(75, 1, 116, 117, 1, '2014-11-19 15:03:19'),
(76, 1, 116, 118, 1, '2014-11-19 15:03:25'),
(77, 1, 119, 120, 1, '2014-11-19 15:05:36'),
(78, 1, 119, 121, 1, '2014-11-19 15:05:45'),
(79, 1, 122, 123, 1, '2014-11-19 15:10:20'),
(84, 1, 124, 125, 1, '2014-11-20 12:31:09'),
(85, 1, 124, 126, 1, '2014-11-20 12:31:11'),
(86, 1, 127, 128, 1, '2014-11-20 12:33:26'),
(87, 1, 129, 130, 1, '2014-11-20 12:34:39'),
(88, 1, 129, 131, 1, '2014-11-20 12:34:41'),
(89, 1, 132, 133, 1, '2014-11-20 12:36:41'),
(90, 1, 134, 135, 1, '2014-11-20 12:38:36'),
(91, 1, 136, 137, 1, '2014-11-20 12:39:26'),
(92, 1, 138, 139, 1, '2014-11-20 12:40:05'),
(93, 1, 140, 141, 1, '2014-11-20 12:40:53'),
(94, 1, 140, 142, 1, '2014-11-20 12:40:56'),
(95, 1, 143, 144, 1, '2014-11-20 12:41:38'),
(96, 1, 143, 145, 1, '2014-11-20 12:41:41'),
(97, 1, 146, 147, 1, '2014-11-20 12:42:09'),
(98, 1, 148, 149, 1, '2014-11-20 12:43:18'),
(99, 1, 150, 151, 1, '2014-11-20 12:44:03'),
(100, 1, 152, 153, 1, '2014-11-20 12:47:20'),
(101, 1, 154, 155, 1, '2014-11-20 12:47:59'),
(102, 1, 156, 157, 1, '2014-11-20 12:49:02'),
(103, 1, 158, 159, 1, '2014-11-20 12:50:31'),
(105, 1, 160, 161, 1, '2014-11-20 12:53:27'),
(106, 1, 160, 162, 1, '2014-11-20 12:53:31'),
(107, 1, 163, 164, 1, '2014-11-20 12:54:48'),
(108, 1, 165, 166, 1, '2014-11-20 12:57:26'),
(109, 1, 167, 168, 1, '2014-11-20 12:58:24'),
(110, 1, 169, 170, 1, '2014-11-20 13:00:43'),
(111, 1, 171, 172, 1, '2014-11-20 13:02:39'),
(112, 1, 173, 174, 1, '2014-11-20 13:04:11'),
(113, 1, 173, 175, 1, '2014-11-20 13:04:14'),
(114, 1, 173, 176, 1, '2014-11-20 13:04:16'),
(115, 1, 177, 178, 1, '2014-11-20 13:05:45'),
(116, 1, 177, 179, 1, '2014-11-20 13:05:48'),
(117, 1, 177, 180, 1, '2014-11-20 13:05:51'),
(118, 1, 177, 181, 1, '2014-11-20 13:05:55'),
(119, 1, 182, 183, 1, '2014-11-20 13:06:52'),
(120, 1, 184, 185, 1, '2014-11-20 13:08:03'),
(121, 1, 186, 187, 1, '2014-11-20 13:08:55'),
(122, 1, 188, 189, 1, '2014-11-20 13:10:54'),
(123, 1, 188, 190, 1, '2014-11-20 13:10:57'),
(125, 1, 191, 192, 1, '2014-11-20 13:12:05'),
(126, 1, 191, 193, 1, '2014-11-20 13:12:08'),
(128, 1, 194, 195, 1, '2014-11-20 13:13:14'),
(129, 1, 196, 197, 1, '2014-11-20 13:14:19'),
(130, 1, 198, 199, 1, '2014-11-20 13:15:02'),
(132, 1, 198, 200, 1, '2014-11-20 13:15:26'),
(133, 1, 198, 201, 1, '2014-11-20 13:15:50'),
(134, 1, 203, 204, 1, '2014-11-20 13:18:09'),
(135, 1, 203, 205, 1, '2014-11-20 13:18:15'),
(136, 1, 206, 207, 1, '2014-11-20 13:19:29'),
(137, 1, 208, 209, 1, '2014-11-20 13:20:16'),
(138, 1, 210, 211, 1, '2014-11-20 13:20:49'),
(139, 1, 212, 213, 1, '2014-11-20 13:23:24'),
(140, 1, 214, 215, 1, '2014-11-20 13:24:27'),
(141, 1, 216, 217, 1, '2014-11-20 13:25:20'),
(142, 1, 216, 218, 1, '2014-11-20 13:25:23'),
(143, 1, 219, 220, 1, '2014-11-20 13:26:49'),
(145, 1, 219, 221, 1, '2014-11-20 13:26:56'),
(146, 1, 219, 222, 1, '2014-11-20 13:26:59'),
(147, 1, 223, 224, 1, '2014-11-21 02:39:21'),
(148, 1, 227, 19, 1, '2014-11-21 02:41:58'),
(149, 1, 227, 228, 1, '2014-11-21 02:43:03'),
(150, 1, 227, 229, 1, '2014-11-21 02:43:05'),
(151, 1, 230, 231, 1, '2014-11-21 03:10:26'),
(152, 1, 230, 232, 1, '2014-11-21 03:10:30'),
(153, 1, 230, 233, 1, '2014-11-21 03:10:34'),
(154, 1, 234, 55, 1, '2014-11-21 03:15:13'),
(155, 1, 236, 237, 1, '2014-11-21 03:16:13'),
(156, 1, 238, 239, 1, '2014-11-21 03:20:19'),
(157, 1, 238, 240, 1, '2014-11-21 03:20:21'),
(158, 1, 238, 241, 1, '2014-11-21 03:20:26'),
(159, 1, 242, 243, 1, '2014-11-21 03:22:04'),
(160, 1, 242, 244, 1, '2014-11-21 03:22:08'),
(161, 1, 242, 245, 1, '2014-11-21 03:22:12'),
(162, 1, 242, 246, 1, '2014-11-21 03:22:15'),
(163, 1, 247, 248, 1, '2014-11-21 03:24:28'),
(164, 1, 247, 249, 1, '2014-11-21 03:24:31'),
(165, 1, 250, 251, 1, '2014-11-21 03:25:30'),
(166, 1, 252, 253, 1, '2014-11-21 03:26:51'),
(167, 1, 252, 254, 1, '2014-11-21 03:26:55'),
(168, 1, 252, 255, 1, '2014-11-21 03:26:59'),
(169, 1, 256, 257, 1, '2014-11-21 03:28:39'),
(170, 1, 256, 258, 1, '2014-11-21 03:28:42'),
(171, 1, 256, 259, 1, '2014-11-21 03:28:45'),
(172, 1, 260, 261, 1, '2014-11-21 03:33:55'),
(173, 1, 260, 262, 1, '2014-11-21 03:33:57'),
(174, 1, 263, 264, 1, '2014-11-21 04:14:21'),
(175, 1, 265, 264, 1, '2014-11-21 04:14:54'),
(176, 1, 266, 267, 1, '2014-11-21 04:59:24'),
(177, 1, 268, 269, 1, '2014-11-21 05:00:18'),
(178, 1, 270, 271, 1, '2014-11-21 05:01:02'),
(179, 1, 270, 272, 1, '2014-11-21 05:01:04'),
(180, 1, 273, 274, 1, '2014-11-21 05:01:52'),
(181, 1, 273, 275, 1, '2014-11-21 05:01:54'),
(182, 1, 273, 276, 1, '2014-11-21 05:01:57'),
(183, 1, 277, 278, 1, '2014-11-21 05:02:42'),
(184, 1, 279, 281, 1, '2014-11-21 05:04:26'),
(185, 1, 279, 282, 1, '2014-11-21 05:04:28'),
(186, 1, 280, 281, 1, '2014-11-21 05:05:00'),
(187, 1, 280, 282, 1, '2014-11-21 05:05:08'),
(188, 1, 283, 284, 1, '2014-11-21 05:07:02'),
(189, 1, 283, 285, 1, '2014-11-21 05:07:53'),
(190, 1, 286, 287, 1, '2014-11-21 05:11:24'),
(191, 1, 286, 288, 1, '2014-11-21 05:11:30'),
(192, 1, 286, 289, 1, '2014-11-21 05:11:37'),
(193, 1, 286, 290, 1, '2014-11-21 05:11:41'),
(194, 1, 291, 292, 1, '2014-11-21 05:12:38');

-- --------------------------------------------------------

--
-- Stand-in structure for view `target_lexemes`
--
CREATE TABLE IF NOT EXISTS `target_lexemes` (
`id` int(10)
,`language` char(2)
,`type` varchar(30)
,`entry` varchar(255)
,`frequency` int(10)
);
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `target_language` char(2) NOT NULL,
  `base_language` char(2) NOT NULL,
  `date_joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `user_base_language` (`base_language`),
  KEY `user_target_language` (`target_language`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `target_language`, `base_language`, `date_joined`) VALUES
(1, 'deanrobertcook', 'password', 'de', 'en', '2014-11-17 07:35:16'),
(2, 'testUser', 'password', 'de', 'en', '2014-11-20 11:46:42');

-- --------------------------------------------------------

--
-- Stand-in structure for view `word_list`
--
CREATE TABLE IF NOT EXISTS `word_list` (
`meaningid` int(10)
,`frequency` int(10)
,`target_id` int(10)
,`target_entry_type` varchar(30)
,`target_entry` varchar(255)
,`base_id` int(10)
,`base_entry` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `word_list_verbose`
--
CREATE TABLE IF NOT EXISTS `word_list_verbose` (
`userid` int(10)
,`meaningid` int(10)
,`frequency` int(10)
,`target_id` int(10)
,`target_language` char(2)
,`target_entry_type` varchar(30)
,`target_entry` varchar(255)
,`base_id` int(10)
,`base_language` char(2)
,`base_entry` varchar(255)
,`date_entered` timestamp
);
-- --------------------------------------------------------

--
-- Structure for view `base_lexemes`
--
DROP TABLE IF EXISTS `base_lexemes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `base_lexemes` AS select distinct `meanings`.`id` AS `meaningid`,`meanings`.`targetid` AS `targetid`,`meanings`.`userid` AS `userid`,`lexemes`.`id` AS `id`,`lexemes`.`language` AS `language`,`lexemes`.`entry` AS `entry`,`meanings`.`date_entered` AS `date_entered` from (`lexemes` join `meanings` on((`lexemes`.`id` = `meanings`.`baseid`)));

-- --------------------------------------------------------

--
-- Structure for view `target_lexemes`
--
DROP TABLE IF EXISTS `target_lexemes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `target_lexemes` AS select distinct `lexemes`.`id` AS `id`,`lexemes`.`language` AS `language`,`lexemes`.`type` AS `type`,`lexemes`.`entry` AS `entry`,`meanings`.`frequency` AS `frequency` from (`lexemes` join `meanings` on((`lexemes`.`id` = `meanings`.`targetid`)));

-- --------------------------------------------------------

--
-- Structure for view `word_list`
--
DROP TABLE IF EXISTS `word_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `word_list` AS select `word_list_verbose`.`meaningid` AS `meaningid`,`word_list_verbose`.`frequency` AS `frequency`,`word_list_verbose`.`target_id` AS `target_id`,`word_list_verbose`.`target_entry_type` AS `target_entry_type`,`word_list_verbose`.`target_entry` AS `target_entry`,`word_list_verbose`.`base_id` AS `base_id`,`word_list_verbose`.`base_entry` AS `base_entry` from `word_list_verbose`;

-- --------------------------------------------------------

--
-- Structure for view `word_list_verbose`
--
DROP TABLE IF EXISTS `word_list_verbose`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `word_list_verbose` AS select `base_lexemes`.`userid` AS `userid`,`base_lexemes`.`meaningid` AS `meaningid`,`target_lexemes`.`frequency` AS `frequency`,`target_lexemes`.`id` AS `target_id`,`target_lexemes`.`language` AS `target_language`,`target_lexemes`.`type` AS `target_entry_type`,`target_lexemes`.`entry` AS `target_entry`,`base_lexemes`.`id` AS `base_id`,`base_lexemes`.`language` AS `base_language`,`base_lexemes`.`entry` AS `base_entry`,`base_lexemes`.`date_entered` AS `date_entered` from (`target_lexemes` join `base_lexemes` on((`base_lexemes`.`targetid` = `target_lexemes`.`id`)));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clarifications`
--
ALTER TABLE `clarifications`
  ADD CONSTRAINT `meaning_clarifications` FOREIGN KEY (`meaningID`) REFERENCES `meanings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `examples`
--
ALTER TABLE `examples`
  ADD CONSTRAINT `meaning_examples` FOREIGN KEY (`meaningID`) REFERENCES `meanings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lexemes`
--
ALTER TABLE `lexemes`
  ADD CONSTRAINT `lexeme_language` FOREIGN KEY (`language`) REFERENCES `languages` (`iso_639`) ON UPDATE CASCADE;

--
-- Constraints for table `meanings`
--
ALTER TABLE `meanings`
  ADD CONSTRAINT `base` FOREIGN KEY (`targetid`) REFERENCES `lexemes` (`id`),
  ADD CONSTRAINT `target` FOREIGN KEY (`baseid`) REFERENCES `lexemes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_meaning` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user_base_language` FOREIGN KEY (`base_language`) REFERENCES `languages` (`iso_639`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_target_language` FOREIGN KEY (`target_language`) REFERENCES `languages` (`iso_639`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
