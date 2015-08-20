-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2015 at 12:10 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `formula1`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`) VALUES
(1, 'Germany'),
(2, 'Great Britain'),
(3, 'France'),
(5, 'Finland'),
(6, 'Brazil'),
(7, 'Russia'),
(8, 'Mexico'),
(9, 'Spain'),
(10, 'Sweden'),
(11, 'Australia'),
(12, 'Netherlands'),
(13, 'Venezuela'),
(14, 'Australia'),
(15, 'Malaysia'),
(16, 'China'),
(17, 'Bahrain'),
(18, 'Canada'),
(19, 'Austria'),
(20, 'Hungary'),
(21, 'Belgium'),
(22, 'Italy'),
(23, 'Singapore'),
(24, 'Japan'),
(25, 'United States'),
(26, 'United Arab Emirates');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_number` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `driver_points` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `team_id` (`team_id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `driver_name`, `driver_number`, `team_id`, `country_id`, `driver_points`) VALUES
(1, 'Lewis Hamilton', 44, 1, 2, 202),
(2, 'Nico Rosberg', 6, 1, 1, 181),
(3, 'Valtteri Bottas', 77, 2, 5, 77),
(4, 'Sebastian Vettel', 5, 3, 1, 160),
(5, 'Felipe Massa', 19, 2, 6, 74),
(6, 'Kimi Raikkonen', 7, 3, 5, 76),
(7, 'Daniel Ricciardo', 3, 4, 11, 51),
(8, 'Daniil Kvyat', 26, 4, 7, 45),
(9, 'Nico Hulkenberg', 27, 5, 1, 24),
(10, 'Romain Grosjean', 8, 6, 3, 23),
(12, 'Max Verstappen', 33, 7, 12, 22),
(13, 'Felipe Nasr', 12, 8, 6, 16),
(14, 'Sergio Perez', 11, 5, 8, 15),
(15, 'Pastor Maldonado', 13, 6, 13, 12),
(16, 'Fernando Alonso', 14, 9, 9, 11),
(17, 'Carlos Sainz', 55, 7, 9, 9),
(18, 'Jenson Button', 22, 9, 2, 6),
(19, 'Marcus Ericsson', 9, 8, 10, 6),
(20, 'Roberto Merhi', 98, 10, 9, 0),
(21, 'Will Stevens', 28, 10, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE IF NOT EXISTS `race` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_id` int(11) NOT NULL,
  `race_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `track_id` (`track_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`id`, `track_id`, `race_date`) VALUES
(6, 2, '2015-05-24'),
(7, 4, '2015-07-05'),
(8, 5, '2015-03-15'),
(9, 6, '2015-03-29'),
(10, 7, '2015-04-12'),
(11, 8, '2015-04-19'),
(12, 9, '2015-05-10'),
(13, 10, '2015-06-07'),
(14, 11, '2015-06-21'),
(15, 12, '2015-07-26'),
(16, 13, '2015-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `race_results`
--

CREATE TABLE IF NOT EXISTS `race_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) NOT NULL,
  `no1_id` int(11) NOT NULL,
  `no2_id` int(11) NOT NULL,
  `no3_id` int(11) NOT NULL,
  `no4_id` int(11) NOT NULL,
  `no5_id` int(11) NOT NULL,
  `no6_id` int(11) NOT NULL,
  `no7_id` int(11) NOT NULL,
  `no8_id` int(11) NOT NULL,
  `no9_id` int(11) NOT NULL,
  `no10_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `race_id` (`race_id`),
  KEY `no1_id` (`no1_id`),
  KEY `no2_id` (`no2_id`),
  KEY `no3_id` (`no3_id`),
  KEY `no4_id` (`no4_id`),
  KEY `no5_id` (`no5_id`),
  KEY `no6_id` (`no6_id`),
  KEY `no7_id` (`no7_id`),
  KEY `no8_id` (`no8_id`),
  KEY `no9_id` (`no9_id`),
  KEY `no10_id` (`no10_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `race_results`
--

INSERT INTO `race_results` (`id`, `race_id`, `no1_id`, `no2_id`, `no3_id`, `no4_id`, `no5_id`, `no6_id`, `no7_id`, `no8_id`, `no9_id`, `no10_id`) VALUES
(6, 8, 1, 2, 4, 5, 13, 7, 9, 19, 17, 14),
(7, 9, 4, 1, 2, 6, 3, 5, 12, 17, 8, 7),
(8, 10, 1, 2, 4, 6, 5, 3, 10, 13, 7, 19),
(9, 11, 1, 6, 2, 3, 4, 7, 10, 14, 8, 5),
(10, 12, 2, 1, 4, 3, 6, 5, 7, 10, 17, 8),
(11, 6, 2, 4, 1, 8, 7, 6, 14, 18, 13, 17),
(12, 13, 1, 2, 3, 6, 4, 5, 15, 9, 8, 10),
(13, 14, 2, 1, 5, 4, 3, 9, 15, 12, 14, 7),
(14, 7, 1, 2, 4, 5, 3, 8, 9, 6, 14, 16),
(15, 15, 4, 8, 7, 12, 16, 1, 10, 2, 18, 19);

--
-- Triggers `race_results`
--
DROP TRIGGER IF EXISTS `trigger_race_results`;
DELIMITER //
CREATE TRIGGER `trigger_race_results` AFTER INSERT ON `race_results`
 FOR EACH ROW begin
declare no1_points int(11);
declare no2_points int(11);
declare no3_points int(11);
declare no4_points int(11);
declare no5_points int(11);
declare no6_points int(11);
declare no7_points int(11);
declare no8_points int(11);
declare no9_points int(11);
declare no10_points int(11);

select driver_points
into no1_points
from driver
where id = new.no1_id;

select driver_points
into no2_points
from driver
where id = new.no2_id;

select driver_points
into no3_points
from driver
where id = new.no3_id;

select driver_points
into no4_points
from driver
where id = new.no4_id;

select driver_points
into no5_points
from driver
where id = new.no5_id;

select driver_points
into no6_points
from driver
where id = new.no6_id;

select driver_points
into no7_points
from driver
where id = new.no7_id;

select driver_points
into no8_points
from driver
where id = new.no8_id;

select driver_points
into no9_points
from driver
where id = new.no9_id;

select driver_points
into no10_points
from driver
where id = new.no10_id;

update driver
set driver_points = (no1_points + 25)
where id = new.no1_id;

update driver
set driver_points = (no2_points + 18)
where id = new.no2_id;

update driver
set driver_points = (no3_points + 15)
where id = new.no3_id;

update driver
set driver_points = (no4_points + 12)
where id = new.no4_id;

update driver
set driver_points = (no5_points + 10)
where id = new.no5_id;

update driver
set driver_points = (no6_points + 8)
where id = new.no6_id;

update driver
set driver_points = (no7_points + 6)
where id = new.no7_id;

update driver
set driver_points = (no8_points + 4)
where id = new.no8_id;

update driver
set driver_points = (no9_points + 2)
where id = new.no9_id;

update driver
set driver_points = (no10_points + 1)
where id = new.no10_id;
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `team_name`) VALUES
(1, 'Mercedes'),
(2, 'Williams'),
(3, 'Ferrari'),
(4, 'Red Bull Racing'),
(5, 'Force India'),
(6, 'Lotus'),
(7, 'Toro Rosso'),
(8, 'Sauber'),
(9, 'McLaren'),
(10, 'Marussia');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE IF NOT EXISTS `track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `track_name`, `country_id`) VALUES
(2, 'Grand Prix de Monaco', 3),
(4, 'Silverstone Grand Prix', 2),
(5, 'Melbourne Grand Prix', 14),
(6, 'Malaysia Grand Prix', 15),
(7, 'Shanghai Grand Prix', 16),
(8, 'Bahrain Grand Prix', 17),
(9, 'Grand Prix de Catalunya', 9),
(10, 'Montreal Grand Prix', 18),
(11, 'Austria Grand Prix', 19),
(12, 'Hungaroring Grand Prix', 20),
(13, 'Belgian Grand Prix', 21),
(14, 'Monza Grand Prix', 22),
(15, 'Singapore Grand Prix', 23),
(16, 'Japanese Grand Prix', 24),
(17, 'Russian Grand Prix', 7),
(18, 'United States Grand Prix', 25),
(19, 'Grand Prix de Mexico', 8),
(20, 'Grand Prix de Brazil', 6),
(21, 'Abu Dhabi Grand Prix', 26);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `driver_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `race_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`);

--
-- Constraints for table `race_results`
--
ALTER TABLE `race_results`
  ADD CONSTRAINT `race_results_ibfk_1` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`),
  ADD CONSTRAINT `race_results_ibfk_10` FOREIGN KEY (`no9_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `race_results_ibfk_11` FOREIGN KEY (`no10_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `race_results_ibfk_2` FOREIGN KEY (`no1_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `race_results_ibfk_3` FOREIGN KEY (`no2_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `race_results_ibfk_4` FOREIGN KEY (`no3_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `race_results_ibfk_5` FOREIGN KEY (`no4_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `race_results_ibfk_6` FOREIGN KEY (`no5_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `race_results_ibfk_7` FOREIGN KEY (`no6_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `race_results_ibfk_8` FOREIGN KEY (`no7_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `race_results_ibfk_9` FOREIGN KEY (`no8_id`) REFERENCES `driver` (`id`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
