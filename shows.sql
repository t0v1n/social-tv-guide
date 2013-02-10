-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 68.178.136.115
-- Generation Time: Dec 13, 2012 at 11:09 AM
-- Server version: 5.0.92
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `it515r`
--

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `hashtag` varchar(99) NOT NULL,
  `title` varchar(99) NOT NULL,
  `handle` varchar(99) NOT NULL,
  `network` varchar(99) NOT NULL,
  `hour` int(99) NOT NULL,
  `day` int(99) NOT NULL,
  `week` int(99) NOT NULL,
  `month` int(99) NOT NULL,
  `alltime` int(99) NOT NULL,
  `score` int(99) NOT NULL,
  `onAir` int(1) NOT NULL default '0',
  `channel` int(5) NOT NULL,
  `logo` varchar(2083) NOT NULL,
  `episode` mediumtext NOT NULL,
  PRIMARY KEY  (`hashtag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` VALUES('LastResort', 'Last Resort', 'LastResort_ABC', 'ABC', 0, 81, 764, 5045, 19392, 9675, 1, 4, 'http://cps-static.rovicorp.com/2/Open/SourceLogos/Cleared%20Logos/ABC/ABC.jpg?partner=tovinhudsonhafxfq9tz95ekg5zjdmf5fzq', 'Blue Water');
INSERT INTO `shows` VALUES('NashvilleABC', 'Nashville', 'Nashville_ABC', 'ABC', 1, 26, 256, 3602, 18708, 5162, 0, 0, '', '');
INSERT INTO `shows` VALUES('OnceUponATime', 'Once Upon a Time', 'OnceABC', 'ABC', 58, 927, 5861, 22574, 149757, 62309, 0, 0, '', '');
INSERT INTO `shows` VALUES('666ParkAve', '666 Park Avenue', '666ParkAve_ABC', 'ABC', 2, 30, 227, 2519, 12031, 3994, 0, 0, '', '');
INSERT INTO `shows` VALUES('MalibuCountry', 'Malibu Country', 'Malibu_Country', 'ABC', 3, 42, 316, 1338, 4223, 3398, 0, 0, '', '');
INSERT INTO `shows` VALUES('SharkTank', 'Shark Tank', 'ABCSharkTank', 'ABC', 2, 60, 970, 6622, 62072, 12112, 0, 0, '', '');
INSERT INTO `shows` VALUES('DWTS', 'Dancing with the Stars', 'DancingABC', 'ABC', 4, 295, 1919, 41745, 370563, 54370, 0, 0, '', '');
INSERT INTO `shows` VALUES('HappyEndings', 'Happy Endings', 'HappyEndingsABC', 'ABC', 1, 163, 994, 3465, 27046, 10085, 0, 0, '', '');
INSERT INTO `shows` VALUES('Castle', 'Castle', 'Castle_ABC', 'ABC', 79, 1375, 10765, 59046, 386493, 128201, 0, 0, '', '');
INSERT INTO `shows` VALUES('Apt23', 'Don''t Trust the B', 'Apt23', 'ABC', 0, 54, 351, 1705, 7988, 4000, 0, 0, '', '');
INSERT INTO `shows` VALUES('PrivatePractice', 'Private Practice', 'PrivatePractice', 'ABC', 3, 218, 1672, 4089, 22922, 14689, 0, 0, '', '');
INSERT INTO `shows` VALUES('GreysAnatomy', 'Grey''s Anatomy', 'ABCGreysAnatomy', 'ABC', 24, 944, 8120, 28530, 170102, 79050, 0, 0, '', '');
INSERT INTO `shows` VALUES('Scandal', 'Scandal', 'ScandalABC', 'ABC', 146, 2423, 27206, 61549, 201758, 224729, 0, 0, '', '');
INSERT INTO `shows` VALUES('TheMiddle', 'The Middle', 'TheMiddle_ABC', 'ABC', 0, 91, 230, 1218, 8087, 3278, 0, 0, '', '');
INSERT INTO `shows` VALUES('Suburgatory', 'Suburgatory', 'SuburgatoryABC', 'ABC', 2, 23, 273, 1863, 10205, 3498, 0, 0, '', '');
INSERT INTO `shows` VALUES('LastManStanding', 'Last Man Standing', 'LastManABC', 'ABC', 2, 37, 250, 1020, 7790, 2680, 0, 0, '', '');
INSERT INTO `shows` VALUES('Arrow', 'Arrow', 'CW_network', 'CW', 30, 5398, 11785, 43932, 134201, 157437, 0, 0, '', '');
INSERT INTO `shows` VALUES('Elementary', 'Elementary', 'Elementary_CBS', 'CBS', 13, 128, 1415, 5842, 35247, 14457, 0, 0, '', '');
INSERT INTO `shows` VALUES('MadeInJersey', 'Made In Jersey', 'MadeInJerseyCBS', 'CBS', 0, 3, 10, 125, 1378, 205, 0, 0, '', '');
INSERT INTO `shows` VALUES('partners', 'Partners', 'Partners_CBS', 'CBS', 4, 68, 532, 3735, 55196, 7155, 0, 0, '', '');
INSERT INTO `shows` VALUES('Vegas', 'Vegas', 'Vegas_CBS', 'CBS', 117, 3680, 26138, 108128, 849813, 277958, 0, 0, '', '');
INSERT INTO `shows` VALUES('BlueBloods', 'Blue Bloods', 'BlueBloods_CBS', 'CBS', 0, 22, 696, 2934, 44118, 6634, 0, 0, '', '');
INSERT INTO `shows` VALUES('CSINY', 'CSI: NY', 'CSINY_CBS', 'CBS', 0, 48, 767, 2820, 34807, 7135, 0, 0, '', '');
INSERT INTO `shows` VALUES('H50', 'Hawaii Five-0', 'HawaiiFive0CBS', 'CBS', 11, 406, 3856, 14914, 185485, 38474, 0, 0, '', '');
INSERT INTO `shows` VALUES('MikeandMolly', 'Mike & Molly', 'MikeMolly_CBS', 'CBS', 0, 15, 80, 597, 5716, 1147, 0, 0, '', '');
INSERT INTO `shows` VALUES('2BrokeGirls', '2 Broke Girls', '2BrokeGirls_CBS', 'CBS', 5, 229, 1657, 6181, 30189, 16856, 0, 0, '', '');
INSERT INTO `shows` VALUES('BigBangTheory', 'The Big Bang Theory', 'BigBang_CBS', 'CBS', 21, 546, 5172, 24645, 165352, 56385, 1, 2, 'http://cps-static.rovicorp.com/2/Open/SourceLogos/Cleared%20Logos/CBS/CBS.jpg?partner=tovinhudsonhafxfq9tz95ekg5zjdmf5fzq', 'The Santa Simulation');
INSERT INTO `shows` VALUES('HIMYM', 'How I Met Your Mother', 'HIMYM_CBS', 'CBS', 16, 805, 6027, 26457, 157031, 64962, 0, 0, '', '');
INSERT INTO `shows` VALUES('PersonOfInterest', 'Person of Interest', 'PersonInterest', 'CBS', 4, 87, 1097, 4526, 30514, 10961, 0, 0, '', '');
INSERT INTO `shows` VALUES('NCIS', 'NCIS', 'NCIS_CBS', 'CBS', 102, 2348, 8398, 25943, 197766, 93453, 0, 0, '', '');
INSERT INTO `shows` VALUES('NCISLA', 'NCIS: LA', 'NCISLA_CBS', 'CBS', 4, 374, 2125, 7392, 51440, 21837, 0, 0, '', '');
INSERT INTO `shows` VALUES('TheMentalist', 'The Mentalist', 'Mentalist_CBS', 'CBS', 5, 146, 1346, 5803, 41574, 14093, 0, 0, '', '');
INSERT INTO `shows` VALUES('AmazingRace', 'Amazing Race', 'AmazingRace_CBS', 'CBS', 5, 132, 3485, 8288, 40532, 27133, 0, 0, '', '');
INSERT INTO `shows` VALUES('Survivor', 'Survivor', 'Survivor_Tweet', 'CBS', 30, 1407, 3254, 14052, 101175, 44992, 0, 0, '', '');
INSERT INTO `shows` VALUES('CriminalMinds', 'Criminal Minds', 'CrimMinds_CBS', 'CBS', 3, 1159, 4448, 18776, 129555, 52666, 0, 0, '', '');
INSERT INTO `shows` VALUES('CSI', 'CSI', 'CSI_CBS', 'CBS', 16, 478, 2224, 6565, 66864, 22785, 0, 0, '', '');
INSERT INTO `shows` VALUES('TwoAndAHalfMen', 'Two and a Half Men', 'TwoHalfMen_CBS', 'CBS', 12, 126, 551, 3820, 40487, 8075, 0, 0, '', '');
INSERT INTO `shows` VALUES('TheGoodWife', 'The Good Wife', 'TheGoodWife_CBS', 'CBS', 12, 116, 439, 3147, 32244, 6742, 0, 0, '', '');
INSERT INTO `shows` VALUES('90210', '90210', 'CW_network', 'CW', 9, 181, 2113, 9337, 79082, 21892, 0, 0, '', '');
INSERT INTO `shows` VALUES('emilyowensmd', 'Emily Owens M.D.', 'CW_network', 'CW', 0, 53, 459, 4729, 11762, 7554, 0, 0, '', '');
INSERT INTO `shows` VALUES('gossipgirl', 'Gossip Girl', 'CW_network', 'CW', 43, 1162, 10737, 38090, 275338, 104255, 0, 0, '', '');
INSERT INTO `shows` VALUES('batb', 'Beauty & The Beast', 'CW_network', 'CW', 34, 688, 4718, 15703, 36319, 46853, 0, 0, '', '');
INSERT INTO `shows` VALUES('tvd', 'The Vampire Diaries', 'CW_network', 'CW', 197, 4312, 38241, 128361, 849379, 366626, 1, 12, 'http://cps-static.rovicorp.com/2/Open/SourceLogos/Cleared%20Logos/CW/The%20CW.jpg?partner=tovinhudsonhafxfq9tz95ekg5zjdmf5fzq', 'O Come, All Ye Faithful');
INSERT INTO `shows` VALUES('hartofdixie', 'Hart of Dixie', 'CW_network', 'CW', 5, 289, 2025, 8708, 61436, 21823, 0, 0, '', '');
INSERT INTO `shows` VALUES('Supernatural', 'Supernatural', 'CW_network', 'CW', 51, 1787, 13312, 63754, 810716, 149204, 0, 0, '', '');
INSERT INTO `shows` VALUES('ANTM', 'America''s Next Top Model', 'CW_ANTM', 'CW', 4, 138, 1814, 8516, 94468, 19046, 0, 0, '', '');
INSERT INTO `shows` VALUES('Nikita', 'Nikita', 'CW_network', 'CW', 8, 173, 1778, 7647, 90015, 18427, 0, 0, '', '');
INSERT INTO `shows` VALUES('fringe', 'Fringe', 'FRINGEonFOX', 'FOX', 73, 1047, 14402, 46840, 487881, 130780, 0, 0, '', '');
INSERT INTO `shows` VALUES('xfactor', 'The X Factor', 'TheXFactorUSA', 'FOX', 148, 21704, 295750, 990579, 2449605, 2689329, 1, 13, 'http://cps-static.rovicorp.com/2/Open/SourceLogos/Cleared%20Logos/Fox/Fox.jpg?partner=tovinhudsonhafxfq9tz95ekg5zjdmf5fzq', 'Live Results');
INSERT INTO `shows` VALUES('benandkate', 'Ben & Kate', 'BenandKateFOX', 'FOX', 0, 15, 359, 3477, 13835, 5422, 0, 0, '', '');
INSERT INTO `shows` VALUES('themindyproject', 'The Mindy Project', 'MindyProjectFOX', 'FOX', 0, 206, 1792, 6525, 17674, 17545, 0, 0, '', '');
INSERT INTO `shows` VALUES('themobdoctor', 'The Mob Doctor', 'TheMobDoctorFOX', 'FOX', 1, 19, 198, 2481, 12219, 3681, 0, 0, '', '');
INSERT INTO `shows` VALUES('FamilyGuy', 'Family Guy', 'FamilyGuyonFOX', 'FOX', 9, 756, 6992, 30608, 164513, 73308, 0, 0, '', '');
INSERT INTO `shows` VALUES('americandad', 'American Dad', 'AmericanDadFOX', 'FOX', 0, 127, 1107, 4066, 24500, 10871, 0, 0, '', '');
INSERT INTO `shows` VALUES('bobsburgers', 'Bob''s Burgers', 'BobsBurgersFOX', 'FOX', 0, 48, 967, 4372, 18362, 9687, 0, 0, '', '');
INSERT INTO `shows` VALUES('thesimpsons', 'The Simpsons', 'HomerJSimpson', 'FOX', 3, 332, 4066, 14871, 123660, 38581, 0, 0, '', '');
INSERT INTO `shows` VALUES('touch', 'Touch', 'TouchOnTv', 'FOX', 5, 186, 1404, 5511, 88834, 14491, 0, 0, '', '');
INSERT INTO `shows` VALUES('bones', 'Bones', 'BONESonFOX', 'FOX', 14, 714, 4801, 35025, 311856, 66450, 0, 0, '', '');
INSERT INTO `shows` VALUES('Glee', 'Glee', 'GLEEonFOX', 'FOX', 102, 2375, 31936, 136315, 1467666, 321785, 0, 0, '', '');
INSERT INTO `shows` VALUES('NewGirl', 'New Girl', 'NewGirlonFOX', 'FOX', 14, 1196, 6686, 31218, 169505, 76888, 0, 0, '', '');
INSERT INTO `shows` VALUES('Parenthood', 'Parenthood', 'nbcparenthood', 'NBC', 4, 283, 2180, 7340, 36890, 21150, 0, 0, '', '');
INSERT INTO `shows` VALUES('AnimalPractice', 'Animal Practice', 'AnimalPractice', 'NBC', 0, 0, 3, 109, 3513, 124, 0, 0, '', '');
INSERT INTO `shows` VALUES('ChicagoFire', 'Chicago Fire', 'NBCChicagoFire', 'NBC', 7, 841, 2022, 9903, 37185, 28563, 0, 0, '', '');
INSERT INTO `shows` VALUES('GoOn', 'Go On', 'NBCGo_On', 'NBC', 3, 284, 2029, 9866, 43315, 22911, 0, 0, '', '');
INSERT INTO `shows` VALUES('GuyswithKids', 'Guys with Kids', 'NBCGuyswithKids', 'NBC', 0, 30, 126, 844, 4814, 1774, 0, 0, '', '');
INSERT INTO `shows` VALUES('NewNormal', 'New Normal', 'NBCTheNewNormal', 'NBC', 1, 56, 983, 4858, 16847, 10353, 0, 0, '', '');
INSERT INTO `shows` VALUES('Revolution', 'Revolution', 'NBCRevolution', 'NBC', 21, 941, 6016, 35969, 619130, 75879, 0, 0, '', '');
INSERT INTO `shows` VALUES('ParksandRec', 'Parks and Recreation', 'parksandrecnbc', 'NBC', 4, 111, 1539, 7114, 69950, 15999, 0, 0, '', '');
INSERT INTO `shows` VALUES('TheOffice', 'The Office', 'theofficenbc', 'NBC', 7, 483, 3986, 14598, 136956, 39498, 0, 0, '', '');
INSERT INTO `shows` VALUES('30Rock', '30 Rock', 'nbc30roc', 'NBC', 1, 163, 2172, 6860, 53757, 19370, 0, 0, '', '');
INSERT INTO `shows` VALUES('UpAllNight', 'Up All Night', 'NBCUpAllNight', 'NBC', 55, 1379, 3486, 12503, 199943, 44823, 1, 5, 'http://cps-static.rovicorp.com/2/Open/NBC/logo1.jpg?partner=tovinhudsonhafxfq9tz95ekg5zjdmf5fzq', 'First Snow');
INSERT INTO `shows` VALUES('TheVoice', 'The Voice', 'NBCTheVoice', 'NBC', 18, 2198, 22406, 133760, 631183, 268130, 0, 0, '', '');
INSERT INTO `shows` VALUES('propertybrothers', 'Property Brothers', 'PropertyBrother', 'HGTV', 0, 13, 43, 196, 2044, 541, 0, 0, '', '');
INSERT INTO `shows` VALUES('Grimm', 'Grimm', 'NBCGrimm', 'NBC', 12, 168, 876, 5870, 59492, 12170, 0, 0, '', '');
INSERT INTO `shows` VALUES('SVU', 'Law & Order: SVU', 'nbcsvu', 'NBC', 3, 109, 1564, 9230, 79902, 18200, 0, 0, '', '');
INSERT INTO `shows` VALUES('Whitney', 'Whitney', 'NBCWhitney', 'NBC', 2, 185, 659, 3185, 55915, 8370, 0, 0, '', '');
INSERT INTO `shows` VALUES('Community', 'Community', 'nbccommunity', 'NBC', 19, 1184, 9367, 37624, 417131, 96679, 0, 0, '', '');
