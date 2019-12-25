-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 25, 2019 at 03:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pebmed`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliation_table`
--

DROP TABLE IF EXISTS `affiliation_table`;
CREATE TABLE IF NOT EXISTS `affiliation_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `id_published` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `affiliation_table`
--

INSERT INTO `affiliation_table` (`id`, `element`, `content`, `id_published`) VALUES
(103, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Department of Surgery, Faculty of Medicine, Khon Kaen\r\n      University, Khon Kaen, Thailand.\r\n', 36),
(104, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Department of Pathology, Faculty of Medicine, Khon Kaen\r\n      University, Khon Kaen, Thailand.\r\n', 36),
(105, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Department of Pathology, Faculty of Medicine, Khon Kaen\r\n      University, Khon Kaen, Thailand.\r\n', 36),
(106, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Department of Radiology, Faculty of Medicine, Khon Kaen\r\n      University, Khon Kaen, Thailand.\r\n', 36),
(107, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Department of Radiology, Faculty of Medicine, Khon Kaen\r\n      University, Khon Kaen, Thailand.\r\n', 36),
(108, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Department of Surgery, Faculty of Medicine, Khon Kaen\r\n      University, Khon Kaen, Thailand.\r\n', 36),
(109, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Department of Biochemistry, Faculty of Medicine, Khon Kaen\r\n      University, Khon Kaen, Thailand.\r\n', 36),
(110, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Department of Biochemistry, Faculty of Medicine, Khon Kaen\r\n      University, Khon Kaen, Thailand.\r\n', 36),
(111, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Department of Biochemistry, Faculty of Medicine, Khon Kaen\r\n      University, Khon Kaen, Thailand.\r\n', 36),
(112, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Faculty of Medicine, St Mary\'s Campus, Imperial College,\r\n      London, United Kingdom.\r\n', 36),
(113, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; State Museum of Natural History Karlsruhe, Erbprinzenstrasse\r\n      13, 76133 Karlsruhe, Germany.\r\n', 36),
(114, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Data Management and Statistical Analysis Center (DAMASAC),\r\n      Faculty of Public Health, Khon Kaen University, Thailand.\r\n', 36),
(115, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Data Management and Statistical Analysis Center (DAMASAC),\r\n      Faculty of Public Health, Khon Kaen University, Thailand.\r\n', 36),
(116, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Data Management and Statistical Analysis Center (DAMASAC),\r\n      Faculty of Public Health, Khon Kaen University, Thailand.\r\n', 36),
(117, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Data Management and Statistical Analysis Center (DAMASAC),\r\n      Faculty of Public Health, Khon Kaen University, Thailand.\r\n', 36),
(118, 'AD', 'Cholangiocarcinoma Screening and Care Program (CASCAP), Khon Kaen University,\r\n      Khon Kaen, Thailand; Cholangiocarcinoma Research Institute, Khon Kaen University,\r\n      Khon Kaen, Thailand; Data Management and Statistical Analysis Center (DAMASAC),\r\n      Faculty of Public Health, Khon Kaen University, Thailand. Electronic address:\r\n      bandit@kku.ac.th.\r\n', 36);

-- --------------------------------------------------------

--
-- Table structure for table `article_identifier_table`
--

DROP TABLE IF EXISTS `article_identifier_table`;
CREATE TABLE IF NOT EXISTS `article_identifier_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `id_published` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_identifier_table`
--

INSERT INTO `article_identifier_table` (`id`, `element`, `content`, `id_published`) VALUES
(3, 'AID', 'S1365-182X(19)30741-5 [pii]\r\n', 36),
(4, 'AID', '10.1016/j.hpb.2019.10.010 [doi]\r\n', 36);

-- --------------------------------------------------------

--
-- Table structure for table `author_table`
--

DROP TABLE IF EXISTS `author_table`;
CREATE TABLE IF NOT EXISTS `author_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `id_published` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author_table`
--

INSERT INTO `author_table` (`id`, `content`, `id_published`, `element`) VALUES
(228, 'Khuntikeo N\r\n', 36, 'AU'),
(229, 'Koonmee S\r\n', 36, 'AU'),
(230, 'Sa-Ngiamwibool P\r\n', 36, 'AU'),
(231, 'Chamadol N\r\n', 36, 'AU'),
(232, 'Laopaiboon V\r\n', 36, 'AU'),
(233, 'Titapun A\r\n', 36, 'AU'),
(234, 'Yongvanit P\r\n', 36, 'AU'),
(235, 'Loilome W\r\n', 36, 'AU'),
(236, 'Namwat N\r\n', 36, 'AU'),
(237, 'Andrews RH\r\n', 36, 'AU'),
(238, 'Petney TN\r\n', 36, 'AU'),
(239, 'Thinkhamrop K\r\n', 36, 'AU'),
(240, 'Chaichaya N\r\n', 36, 'AU'),
(241, 'Tawarungruang C\r\n', 36, 'AU'),
(242, 'Thuanman J\r\n', 36, 'AU'),
(243, 'Thinkhamrop B\r\n', 36, 'AU');

-- --------------------------------------------------------

--
-- Table structure for table `fields_published`
--

DROP TABLE IF EXISTS `fields_published`;
CREATE TABLE IF NOT EXISTS `fields_published` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fields_published`
--

INSERT INTO `fields_published` (`id`, `key`, `value`) VALUES
(1, 'PMID', 'PMID'),
(2, 'OWN', 'owner'),
(3, 'STAT', 'status'),
(4, 'LR', 'date_last_revised'),
(5, 'DP', 'date_of_publication'),
(6, 'TI', 'title'),
(7, 'AB', 'abstract'),
(8, 'CI', 'copyright_Information'),
(9, 'LA', 'language'),
(10, 'PT', 'publication_type'),
(11, 'DEP', 'date_of_electronic_publication'),
(12, 'PL', 'place_of_publication'),
(13, 'TA', 'journal_Title_abbreviation'),
(14, 'JT', 'journal_title'),
(15, 'JID', 'NLM_Unique_ID'),
(16, 'SB', 'subset'),
(17, 'EDAT', 'entrez_date'),
(18, 'MHDA', 'MeSH_date'),
(19, 'CRDT', 'create_date'),
(20, 'PST', 'publication_status'),
(21, 'SO', 'source');

-- --------------------------------------------------------

--
-- Table structure for table `fields_tables`
--

DROP TABLE IF EXISTS `fields_tables`;
CREATE TABLE IF NOT EXISTS `fields_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fields_tables`
--

INSERT INTO `fields_tables` (`id`, `key`, `value`) VALUES
(1, 'AU', 'author_table'),
(2, 'IS', 'issn_table'),
(3, 'LID', 'location_identifier_table'),
(4, 'FAU', 'full_author_table'),
(5, 'AD', 'affiliation_table'),
(6, 'PHST', 'publication_history_status_table'),
(7, 'AID', 'article_identifier_table');

-- --------------------------------------------------------

--
-- Table structure for table `full_author_table`
--

DROP TABLE IF EXISTS `full_author_table`;
CREATE TABLE IF NOT EXISTS `full_author_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `id_published` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `full_author_table`
--

INSERT INTO `full_author_table` (`id`, `element`, `content`, `id_published`) VALUES
(110, 'FAU', 'Khuntikeo, Narong\r\n', 36),
(111, 'FAU', 'Koonmee, Supinda\r\n', 36),
(112, 'FAU', 'Sa-Ngiamwibool, Prakasit\r\n', 36),
(113, 'FAU', 'Chamadol, Nittaya\r\n', 36),
(114, 'FAU', 'Laopaiboon, Vallop\r\n', 36),
(115, 'FAU', 'Titapun, Attapol\r\n', 36),
(116, 'FAU', 'Yongvanit, Puangrat\r\n', 36),
(117, 'FAU', 'Loilome, Watcharin\r\n', 36),
(118, 'FAU', 'Namwat, Nisana\r\n', 36),
(119, 'FAU', 'Andrews, Ross H\r\n', 36),
(120, 'FAU', 'Petney, Trevor N\r\n', 36),
(121, 'FAU', 'Thinkhamrop, Kavin\r\n', 36),
(122, 'FAU', 'Chaichaya, Nathaphop\r\n', 36),
(123, 'FAU', 'Tawarungruang, Chaiwat\r\n', 36),
(124, 'FAU', 'Thuanman, Jaruwan\r\n', 36),
(125, 'FAU', 'Thinkhamrop, Bandit\r\n', 36);

-- --------------------------------------------------------

--
-- Table structure for table `issn_table`
--

DROP TABLE IF EXISTS `issn_table`;
CREATE TABLE IF NOT EXISTS `issn_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อย่อ',
  `content` text COLLATE utf8_unicode_ci COMMENT 'รายละเอียด',
  `id_published` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `issn_table`
--

INSERT INTO `issn_table` (`id`, `element`, `content`, `id_published`) VALUES
(25, 'IS', '1477-2574 (Electronic)\r\n', 36),
(26, 'IS', '1365-182X (Linking)\r\n', 36);

-- --------------------------------------------------------

--
-- Table structure for table `location_identifier_table`
--

DROP TABLE IF EXISTS `location_identifier_table`;
CREATE TABLE IF NOT EXISTS `location_identifier_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `id_published` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location_identifier_table`
--

INSERT INTO `location_identifier_table` (`id`, `element`, `content`, `id_published`) VALUES
(25, 'LID', 'S1365-182X(19)30741-5 [pii]\r\n', 36),
(26, 'LID', '10.1016/j.hpb.2019.10.010 [doi]\r\n', 36);

-- --------------------------------------------------------

--
-- Table structure for table `publication_history_status_table`
--

DROP TABLE IF EXISTS `publication_history_status_table`;
CREATE TABLE IF NOT EXISTS `publication_history_status_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `id_published` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publication_history_status_table`
--

INSERT INTO `publication_history_status_table` (`id`, `element`, `content`, `id_published`) VALUES
(13, 'PHST', '2019/04/09 00:00 [received]\r\n', 36),
(14, 'PHST', '2019/08/30 00:00 [revised]\r\n', 36),
(15, 'PHST', '2019/10/01 00:00 [accepted]\r\n', 36),
(16, 'PHST', '2019/10/31 06:00 [entrez]\r\n', 36),
(17, 'PHST', '2019/10/31 06:00 [pubmed]\r\n', 36),
(18, 'PHST', '2019/10/31 06:00 [medline]\r\n', 36);

-- --------------------------------------------------------

--
-- Table structure for table `publisheds`
--

DROP TABLE IF EXISTS `publisheds`;
CREATE TABLE IF NOT EXISTS `publisheds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PMID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_last_revised` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_publication` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `abstract` text COLLATE utf8_unicode_ci,
  `copyright_Information` text COLLATE utf8_unicode_ci,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_electronic_publication` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place_of_publication` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `journal_Title_abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `journal_title` text COLLATE utf8_unicode_ci,
  `NLM_Unique_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subset` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entrez_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MeSH_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publisheds`
--

INSERT INTO `publisheds` (`id`, `PMID`, `owner`, `status`, `date_last_revised`, `date_of_publication`, `title`, `abstract`, `copyright_Information`, `language`, `publication_type`, `date_of_electronic_publication`, `place_of_publication`, `journal_Title_abbreviation`, `journal_title`, `NLM_Unique_ID`, `subset`, `entrez_date`, `MeSH_date`, `create_date`, `publication_status`, `source`) VALUES
(36, '31662222\r\n', 'NLM\r\n', 'Publisher\r\n', '20191030\r\n', '2019 Oct 26\r\n', 'A comparison of the proportion of early stage cholangiocarcinoma found in an\r\n      ultrasound-screening program compared to walk-in patients.\r\n', 'BACKGROUND: Patients with cholangiocarcinoma (CCA) usually have no specific\r\n      symptoms until an advance stage of the disease and curative treatment is not\r\n      possible. Patients with early stage, operable disease can be found using\r\n      ultrasonography (US). A US-screening program was implemented in Thailand where\r\n      CCA incidence is the highest worldwide. Here we evaluate the effectiveness of the\r\n      program by comparing the proportion of individuals with early stage CCA in the\r\n      screening group with that of the walk-in group presenting at hospitals with\r\n      clinical symptoms. METHODS: All patients had a pathological diagnosis of CCA. The\r\n      difference in the proportions and the 95% confidence interval (CI) were obtained \r\n      using binomial regression. RESULTS: Of the 762 histologically proven CCA cases,\r\n      161 were from the screening group and 601 from the walk-in group. The proportion \r\n      of early stage CCA (stages 0 to II) diagnosed was 84.5% in the screening and\r\n      21.6% in the walk-in groups. After adjustment age, gender, and liver fluke\r\n      infection, there was a significantly higher proportion (P < 0.001) and higher\r\n      chance (P < 0.001) of having early stage CCA in the screening group than in the\r\n      walk-in group. CONCLUSIONS: US-screening is an effective tool for detecting early\r\n      stage, operable CCA in high incidence areas.\r\n', 'Crown Copyright (c) 2019. Published by Elsevier Ltd. All rights reserved.\r\n', 'eng\r\n', 'Journal Article\r\n', '20191026\r\n', 'England\r\n', 'HPB (Oxford)\r\n', 'HPB : the official journal of the International Hepato Pancreato Biliary\r\n      Association\r\n', '100900921\r\n', 'IM\r\n', '2019/10/31 06:00\r\n', '2019/10/31 06:00\r\n', '2019/10/31 06:00\r\n', 'aheadofprint\r\n', 'HPB (Oxford). 2019 Oct 26. pii: S1365-182X(19)30741-5. doi:\r\n      10.1016/j.hpb.2019.10.010.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pubmedfile`
--

DROP TABLE IF EXISTS `pubmedfile`;
CREATE TABLE IF NOT EXISTS `pubmedfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีชื่อไฟล์',
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อไฟล์',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pubmedfile`
--

INSERT INTO `pubmedfile` (`id`, `file_name`) VALUES
(163, 'citations.xls.nbib');

-- --------------------------------------------------------

--
-- Table structure for table `utations`
--

DROP TABLE IF EXISTS `utations`;
CREATE TABLE IF NOT EXISTS `utations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `var_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_published` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=469 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utations`
--

INSERT INTO `utations` (`id`, `field`, `content`, `table_name`, `var_name`, `id_published`) VALUES
(448, NULL, '31662222\r\n', 'publisheds', 'PMID', 36),
(449, NULL, 'NLM\r\n', 'publisheds', 'owner', 36),
(450, NULL, 'Publisher\r\n', 'publisheds', 'status', 36),
(451, NULL, '20191030\r\n', 'publisheds', 'date_last_revised', 36),
(452, NULL, '2019 Oct 26\r\n', 'publisheds', 'date_of_publication', 36),
(453, NULL, 'A comparison of the proportion of early stage cholangiocarcinoma found in an\r\n      ultrasound-screening program compared to walk-in patients.\r\n', 'publisheds', 'title', 36),
(454, NULL, 'BACKGROUND: Patients with cholangiocarcinoma (CCA) usually have no specific\r\n      symptoms until an advance stage of the disease and curative treatment is not\r\n      possible. Patients with early stage, operable disease can be found using\r\n      ultrasonography (US). A US-screening program was implemented in Thailand where\r\n      CCA incidence is the highest worldwide. Here we evaluate the effectiveness of the\r\n      program by comparing the proportion of individuals with early stage CCA in the\r\n      screening group with that of the walk-in group presenting at hospitals with\r\n      clinical symptoms. METHODS: All patients had a pathological diagnosis of CCA. The\r\n      difference in the proportions and the 95% confidence interval (CI) were obtained \r\n      using binomial regression. RESULTS: Of the 762 histologically proven CCA cases,\r\n      161 were from the screening group and 601 from the walk-in group. The proportion \r\n      of early stage CCA (stages 0 to II) diagnosed was 84.5% in the screening and\r\n      21.6% in the walk-in groups. After adjustment age, gender, and liver fluke\r\n      infection, there was a significantly higher proportion (P < 0.001) and higher\r\n      chance (P < 0.001) of having early stage CCA in the screening group than in the\r\n      walk-in group. CONCLUSIONS: US-screening is an effective tool for detecting early\r\n      stage, operable CCA in high incidence areas.\r\n', 'publisheds', 'abstract', 36),
(455, NULL, 'Crown Copyright (c) 2019. Published by Elsevier Ltd. All rights reserved.\r\n', 'publisheds', 'copyright_Information', 36),
(456, NULL, 'eng\r\n', 'publisheds', 'language', 36),
(457, NULL, 'Journal Article\r\n', 'publisheds', 'publication_type', 36),
(458, NULL, '20191026\r\n', 'publisheds', 'date_of_electronic_publication', 36),
(459, NULL, 'England\r\n', 'publisheds', 'place_of_publication', 36),
(460, NULL, 'HPB (Oxford)\r\n', 'publisheds', 'journal_Title_abbreviation', 36),
(461, NULL, 'HPB : the official journal of the International Hepato Pancreato Biliary\r\n      Association\r\n', 'publisheds', 'journal_title', 36),
(462, NULL, '100900921\r\n', 'publisheds', 'NLM_Unique_ID', 36),
(463, NULL, 'IM\r\n', 'publisheds', 'subset', 36),
(464, NULL, '2019/10/31 06:00\r\n', 'publisheds', 'entrez_date', 36),
(465, NULL, '2019/10/31 06:00\r\n', 'publisheds', 'MeSH_date', 36),
(466, NULL, '2019/10/31 06:00\r\n', 'publisheds', 'create_date', 36),
(467, NULL, 'aheadofprint\r\n', 'publisheds', 'publication_status', 36),
(468, NULL, 'HPB (Oxford). 2019 Oct 26. pii: S1365-182X(19)30741-5. doi:\r\n      10.1016/j.hpb.2019.10.010.\r\n\r\n', 'publisheds', 'source', 36);

-- --------------------------------------------------------

--
-- Table structure for table `_published`
--

DROP TABLE IF EXISTS `_published`;
CREATE TABLE IF NOT EXISTS `_published` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อเรื่อง',
  `author` text COLLATE utf8_unicode_ci COMMENT 'ผู้แต่ง',
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `_published`
--

INSERT INTO `_published` (`id`, `title`, `author`, `year`) VALUES
(51, 'Thai nurse cohort study: cohort profiles and key findings', 'Sawaengdee, K. Tangcharoensathien, V. Theerawit, T. Thungjaroenkul, P.  Thinkhamrop, W.  Prathumkam, P.  Chaichaya, N.  Thinkhamrop, K.  Tawarungruang, C.  Thinkhamrop, B.', '2016'),
(52, 'Thai nurse cohort study: cohort profiles and key findings test', 'Sawaengdee, K. Tangcharoensathien, V. Theerawit, T. Thungjaroenkul, P.  Thinkhamrop, W.  Prathumkam, P.  Chaichaya, N.  Thinkhamrop, K.  Tawarungruang, C.  Thinkhamrop, B.', '2016');

-- --------------------------------------------------------

--
-- Table structure for table `_utation`
--

DROP TABLE IF EXISTS `_utation`;
CREATE TABLE IF NOT EXISTS `_utation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `var_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_publish` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `_utation`
--

INSERT INTO `_utation` (`id`, `field`, `content`, `table_name`, `var_name`, `id_publish`) VALUES
(50, 'title', 'Thai nurse cohort study: cohort profiles and key findings', 'title', 'title', 51),
(51, 'author', 'Sawaengdee, K. Tangcharoensathien, V. Theerawit, T. Thungjaroenkul, P.  Thinkhamrop, W.  Prathumkam, P.  Chaichaya, N.  Thinkhamrop, K.  Tawarungruang, C.  Thinkhamrop, B.', 'author', 'author', 51),
(52, 'year', '2016', 'year', 'year', 51),
(53, 'title', 'Thai nurse cohort study: cohort profiles and key findings test', 'title', 'title', 52),
(54, 'author', 'Sawaengdee, K. Tangcharoensathien, V. Theerawit, T. Thungjaroenkul, P.  Thinkhamrop, W.  Prathumkam, P.  Chaichaya, N.  Thinkhamrop, K.  Tawarungruang, C.  Thinkhamrop, B.', 'author', 'author', 52),
(55, 'year', '2016', 'year', 'year', 52);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
