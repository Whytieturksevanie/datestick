-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 27 mei 2020 om 20:14
-- Serverversie: 10.1.37-MariaDB
-- PHP-versie: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datesticklaravel`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `availabilty`
--

CREATE TABLE `availabilty` (
  `Id` int(10) UNSIGNED NOT NULL,
  `available` date NOT NULL,
  `maybe_available` date NOT NULL,
  `unavailable` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `availabilty`
--

INSERT INTO `availabilty` (`Id`, `available`, `maybe_available`, `unavailable`) VALUES
(1, '2020-05-26', '2020-05-27', '2020-05-28'),
(2, '2020-05-31', '2020-06-01', '2020-06-02'),
(3, '2020-06-07', '2020-06-08', '2020-06-09'),
(4, '2020-06-10', '2020-06-11', '2020-06-12');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `peoples`
--

CREATE TABLE `peoples` (
  `Id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `peoples`
--

INSERT INTO `peoples` (`Id`, `name`, `date`, `status`) VALUES
(1, 'Esma', NULL, 'Ik kan misschien'),
(2, 'Esma', NULL, 'Ik kan misschien');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `availabilty`
--
ALTER TABLE `availabilty`
  ADD PRIMARY KEY (`Id`);

--
-- Indexen voor tabel `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `availabilty`
--
ALTER TABLE `availabilty`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `peoples`
--
ALTER TABLE `peoples`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
