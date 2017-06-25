-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 27, 2017 at 09:16 AM
-- Server version: 5.5.49-MariaDB-1ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `CSV_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 8`
--

CREATE TABLE IF NOT EXISTS `game` (
  `title` varchar(56) DEFAULT NULL,
  `platform` varchar(16) DEFAULT NULL,
  `score` decimal(2,1) DEFAULT NULL,
  `genre` varchar(17) DEFAULT NULL,
  `editors_choice` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE 8`
--

INSERT INTO `game` (`title`, `platform`, `score`, `genre`, `editors_choice`) VALUES
('LittleBigPlanet PS Vita', 'PlayStation Vita', 9.0, 'Platformer', 'Y'),
('LittleBigPlanet PS Vita -- Marvel Super Hero Edition', 'PlayStation Vita', 9.0, 'Platformer', 'Y'),
('Splice: Tree of Life', 'iPad', 8.5, 'Puzzle', 'N'),
('NHL 13', 'Xbox 360', 8.5, 'Sports', 'N'),
('NHL 13', 'PlayStation 3', 8.5, 'Sports', 'N'),
('Total War Battles: Shogun', 'Macintosh', 7.0, 'Strategy', 'N'),
('Double Dragon: Neon', 'Xbox 360', 3.0, 'Fighting', 'N'),
('Guild Wars 2', 'PC', 9.0, 'RPG', 'Y'),
('Double Dragon: Neon', 'PlayStation 3', 3.0, 'Fighting', 'N'),
('Total War Battles: Shogun', 'PC', 7.0, 'Strategy', 'N'),
('Tekken Tag Tournament 2', 'PlayStation 3', 7.5, 'Fighting', 'N'),
('Tekken Tag Tournament 2', 'Xbox 360', 7.5, 'Fighting', 'N'),
('Wild Blood', 'iPhone', 7.0, '', 'N'),
('Mark of the Ninja', 'Xbox 360', 9.0, 'Action, Adventure', 'Y'),
('Mark of the Ninja', 'PC', 9.0, 'Action, Adventure', 'Y'),
('Home: A Unique Horror Adventure', 'Macintosh', 6.5, 'Adventure', 'N'),
('Home: A Unique Horror Adventure', 'PC', 6.5, 'Adventure', 'N'),
('Avengers Initiative', 'iPhone', 8.0, 'Action', 'N'),
('Way of the Samurai 4', 'PlayStation 3', 5.5, 'Action, Adventure', 'N'),
('JoJo''s Bizarre Adventure HD', 'Xbox 360', 7.0, 'Fighting', 'N'),
('JoJo''s Bizarre Adventure HD', 'PlayStation 3', 7.0, 'Fighting', 'N'),
('Mass Effect 3: Leviathan', 'Xbox 360', 7.5, 'RPG', 'N'),
('Mass Effect 3: Leviathan', 'PlayStation 3', 7.5, 'RPG', 'N'),
('Mass Effect 3: Leviathan', 'PC', 7.5, 'RPG', 'N'),
('Dark Souls (Prepare to Die Edition)', 'PC', 9.0, 'Action, RPG', 'Y'),
('Symphony', 'PC', 7.0, 'Shooter', 'N'),
('Bastion', 'iPad', 9.0, 'Action, RPG', 'Y'),
('Tom Clancy''s Ghost Recon Phantoms', 'PC', 7.5, 'Shooter', 'N'),
('Thirty Flights of Loving', 'PC', 8.0, 'Adventure', 'N'),
('Legasista', 'PlayStation 3', 6.5, 'Action, RPG', 'N'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Macintosh', 9.0, 'Adventure', 'Y'),
('World of Warcraft: Mists of Pandaria', 'PC', 8.7, 'RPG', 'Y'),
('Hell Yeah! Wrath of the Dead Rabbit', 'PlayStation 3', 4.9, 'Platformer', 'N'),
('Pokemon White Version 2', 'Nintendo DS', 9.6, 'RPG', 'Y'),
('War of the Roses', 'PC', 7.3, 'Action', 'N'),
('Pokemon Black Version 2', 'Nintendo DS', 9.6, 'RPG', 'Y'),
('Drakerider', 'iPhone', 6.5, 'RPG', 'N'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'Xbox 360', 9.0, 'Adventure', 'Y'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PC', 9.0, 'Adventure', 'Y'),
('The Walking Dead: The Game -- Episode 3: Long Road Ahead', 'PlayStation 3', 9.0, 'Adventure', 'Y'),
('Rock Band Blitz', 'Xbox 360', 8.5, 'Music', 'Y'),
('Counter-Strike: Global Offensive', 'Macintosh', 8.0, 'Shooter', 'N'),
('Worms Revolution', 'PlayStation 3', 8.5, 'Strategy', 'N'),
('Worms Revolution', 'PC', 8.5, 'Strategy', 'N'),
('Worms Revolution', 'Xbox 360', 8.5, 'Strategy', 'N'),
('Bad Piggies', 'iPhone', 9.2, 'Action', 'Y'),
('Resident Evil 6', 'PlayStation 3', 7.9, 'Action, Adventure', 'N'),
('Resident Evil 6', 'Xbox 360', 7.9, 'Action, Adventure', 'N'),
('Shad''O', 'PC', 7.0, 'Adventure', 'N'),
('Demon''s Score', 'iPhone', 6.9, 'Action', 'N'),
('NBA 2K13', 'Xbox 360', 9.1, 'Sports', 'Y'),
('Counter-Strike: Global Offensive', 'PC', 8.0, 'Shooter', 'N'),
('The World Ends with You: Solo Remix', 'iPad', 9.5, 'RPG', 'Y'),
('Counter-Strike: Global Offensive', 'PlayStation 3', 8.0, 'Shooter', 'N'),
('The World Ends with You: Solo Remix', 'iPhone', 9.5, 'RPG', 'Y'),
('Counter-Strike: Global Offensive', 'Xbox 360', 8.0, 'Shooter', 'N'),
('Madden NFL 13', 'PlayStation Vita', 6.0, 'Sports', 'N'),
('Madden NFL 13', 'PlayStation 3', 9.0, 'Sports', 'Y'),
('Madden NFL 13', 'Xbox 360', 9.0, 'Sports', 'Y'),
('Hoodwink', 'PC', 2.5, 'Adventure', 'N'),
('NBA 2K13', 'PlayStation 3', 9.1, 'Sports', 'Y'),
('NBA 2K13', 'PC', 9.1, 'Sports', 'Y'),
('Lili: Child of Geos', 'iPhone', 7.0, 'Adventure', 'N'),
('Marvel vs. Capcom Origins', 'Xbox 360', 8.2, 'Fighting', 'N'),
('Marvel vs. Capcom Origins', 'PlayStation 3', 8.2, 'Fighting', 'N'),
('Dead or Alive 5', 'PlayStation 3', 8.8, 'Fighting', 'N'),
('Dead or Alive 5', 'Xbox 360', 8.8, 'Fighting', 'N'),
('Medal of Honor Warfighter', 'PC', 4.0, 'Shooter', 'N'),
('Professor Layton and the Miracle Mask', 'Nintendo 3DS', 8.7, 'Adventure', 'Y'),
('Hotline Miami', 'PC', 8.8, 'Action', 'Y'),
('Edna & Harvey: Harvey''s New Eyes', 'PC', 6.0, 'Adventure', 'N'),
('Medal of Honor Warfighter', 'PlayStation 3', 4.0, 'Shooter', 'N'),
('Medal of Honor Warfighter', 'Xbox 360', 4.0, 'Shooter', 'N'),
('Transformers: Fall of Cybertron', 'Xbox 360', 8.5, 'Shooter', 'N'),
('Transformers: Fall of Cybertron', 'PlayStation 3', 8.5, 'Shooter', 'N'),
('Hero Academy', 'PC', 9.0, 'Board', 'Y'),
('Hero Academy', 'iPhone', 9.0, 'Strategy', 'Y'),
('Puzzle Craft', 'iPhone', 9.0, 'Puzzle', 'Y'),
('Realms Of Ancient War', 'Xbox 360', 5.5, 'Action', 'N'),
('Realms Of Ancient War', 'PlayStation 3', 5.5, 'Action', 'N'),
('Anomaly: Warzone Earth', 'PlayStation 3', 8.2, 'Action', 'N'),
('Darksiders II', 'PC', 7.5, 'Action', 'N'),
('Left 4 Dead 2: Cold Stream', 'Macintosh', 7.0, 'Shooter', 'N'),
('Left 4 Dead 2: Cold Stream', 'PC', 7.0, 'Shooter', 'N'),
('Puzzle Craft', 'Android', 9.0, 'Puzzle', 'Y'),
('Left 4 Dead 2: Cold Stream', 'Xbox 360', 7.0, 'Shooter', 'N'),
('Horn', 'iPhone', 9.0, 'Action, Adventure', 'Y'),
('Forza Horizon', 'Xbox 360', 9.0, 'Racing', 'Y'),
('FIFA Soccer 13', 'PlayStation Vita', 4.0, 'Sports', 'N'),
('Mugen Souls', 'PlayStation 3', 3.9, 'Strategy, RPG', 'N'),
('Crazy Taxi', 'iPhone', 7.1, 'Racing, Action', 'N'),
('New Little King''s Story', 'PlayStation Vita', 5.8, 'RPG', 'N'),
('Fable: The Journey', 'Xbox 360', 7.2, 'Action, RPG', 'N'),
('The Lord of the Rings Online: Riders of Rohan', 'PC', 8.3, 'RPG', 'N'),
('Doom 3: BFG Edition', 'Xbox 360', 7.6, 'RPG', 'N'),
('Rugby League Live 2', 'Xbox 360', 6.0, 'Sports', 'N'),
('Rugby League Live 2', 'PlayStation 3', 6.0, 'Sports', 'N'),
('Doom 3: BFG Edition', 'PlayStation 3', 7.6, 'RPG', 'N'),
('Punch Quest', 'iPhone', 9.3, 'Action', 'Y');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
CREATE TABLE `User` (
  `username` varchar(56) NOT NULL primary key,
  `password` varchar(16) NOT NULL,
  `email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `User` (`username`, `password`,`email`) VALUES
('yashdeeph709','mypassword','yashdeeph709@gmail.com'),
('admin','admin','admin@admin.com');

