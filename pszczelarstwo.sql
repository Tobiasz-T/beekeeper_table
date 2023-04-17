-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Kwi 2023, 23:39
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pszczelarstwo`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dokarmianie`
--

CREATE TABLE `dokarmianie` (
  `Ul` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Rodzaj` text COLLATE utf8_polish_ci NOT NULL,
  `Waga` varchar(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dokarmianie`
--

INSERT INTO `dokarmianie` (`Ul`, `Data`, `Rodzaj`, `Waga`) VALUES
(1, '2022-03-06', 'Ciasto', '0.5'),
(2, '2022-03-06', 'Ciasto', '0.5'),
(3, '2022-03-06', 'Ciasto', '0.4'),
(4, '2022-03-06', 'Ciasto', '0.4'),
(5, '2022-03-06', 'Ciasto', '0.5'),
(9, '2021-09-30', 'Ciasto', '0.5'),
(10, '2021-09-30', 'Ciasto', '0.5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miodobranie`
--

CREATE TABLE `miodobranie` (
  `Ul` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Rodzaj` text COLLATE utf8_polish_ci NOT NULL,
  `Waga/Kg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `miodobranie`
--

INSERT INTO `miodobranie` (`Ul`, `Data`, `Rodzaj`, `Waga/Kg`) VALUES
(1, '2022-05-25', 'Rzepakowy', 10),
(2, '2022-05-25', 'Rzepakowy', 9),
(3, '2022-05-25', 'Rzepakowy', 12),
(4, '2022-05-25', 'Rzepakowy', 8),
(5, '2022-06-01', 'Rzepakowy', 12),
(6, '2022-06-01', 'Rzepakowy', 5),
(7, '2022-06-01', 'Rzepakowy', 10),
(8, '2022-06-01', 'Rzepakowy', 15),
(9, '2022-06-01', 'Rzepakowy', 10),
(10, '2022-06-01', 'Rzepakowy', 11),
(1, '2022-07-06', 'Wielokwiatowy', 10),
(2, '2022-07-06', 'Wielokwiatowy', 12),
(3, '2022-07-06', 'Wielokwiatowy', 9),
(4, '2022-07-06', 'Wielokwiatowy', 10),
(8, '2022-07-20', 'Lipowy', 12),
(9, '2022-07-20', 'Lipowy', 9),
(10, '2022-07-20', 'Lipowy', 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przeglad`
--

CREATE TABLE `przeglad` (
  `Ul` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Opis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `przeglad`
--

INSERT INTO `przeglad` (`Ul`, `Data`, `Opis`) VALUES
(10, '2022-04-05', 'Czyszczenie ul.'),
(1, '2022-05-20', 'Sprawdzenie zasklepionego miodu.'),
(1, '2022-07-01', 'Sprawdzenie zasklepionego miodu.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ramki`
--

CREATE TABLE `ramki` (
  `Ul` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Rodzaj` text COLLATE utf8_polish_ci NOT NULL,
  `Ilosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ramki`
--

INSERT INTO `ramki` (`Ul`, `Data`, `Rodzaj`, `Ilosc`) VALUES
(1, '2022-04-09', 'Weza', 2),
(2, '2022-04-09', 'Weza', 1),
(3, '2022-04-09', 'Z czerwiem', 1),
(4, '2022-04-09', 'Weza', 2),
(5, '2022-04-09', 'Weza', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ul`
--

CREATE TABLE `ul` (
  `Ul` int(11) NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ul`
--

INSERT INTO `ul` (`Ul`, `Data`) VALUES
(1, '2021-05-20'),
(2, '2019-05-15'),
(3, '2020-05-22'),
(4, '2021-06-04'),
(5, '2020-06-05'),
(6, '2022-07-01'),
(7, '2022-05-18'),
(8, '2022-08-01'),
(9, '2021-07-15'),
(10, '2021-06-18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
