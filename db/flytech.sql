-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 09. 11:59
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `flytech`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cart`
--

CREATE TABLE `cart` (
  `item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `cart`
--

INSERT INTO `cart` (`item`) VALUES
(0),
(6);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `country_code` varchar(3) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `card_number` varchar(19) NOT NULL,
  `card_name` varchar(20) NOT NULL,
  `expiration` varchar(5) NOT NULL,
  `cvc` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `flights`
--

CREATE TABLE `flights` (
  `flights_id` int(11) NOT NULL,
  `starting_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `start` datetime NOT NULL,
  `arrival` datetime NOT NULL,
  `seat` smallint(2) NOT NULL,
  `distance` int(11) NOT NULL,
  `period` int(250) NOT NULL,
  `price` int(11) NOT NULL,
  `direction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `flights`
--

INSERT INTO `flights` (`flights_id`, `starting_id`, `name`, `start`, `arrival`, `seat`, `distance`, `period`, `price`, `direction`) VALUES
(1, 1, 'Balatoni körút', '2024-05-29 14:00:00', '2024-05-29 15:40:00', 6, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(2, 1, 'Balatoni körút', '2024-06-01 16:00:00', '2024-06-01 17:40:00', 8, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(3, 1, 'Balatoni körút', '2024-06-07 12:00:00', '2024-06-07 13:40:00', 6, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(4, 1, 'Balatoni körút', '2024-07-22 15:00:00', '2024-07-22 16:40:00', 10, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(5, 1, 'Balatoni körút', '2024-08-05 12:00:00', '2024-08-05 13:40:00', 8, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(6, 1, 'Balatoni körút', '2024-07-20 17:00:00', '2024-07-20 18:40:00', 8, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(7, 1, 'Balatoni körút', '2024-07-28 16:00:00', '2024-07-28 17:40:00', 6, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(8, 1, 'Balatoni körút', '2024-08-02 12:00:00', '2024-08-02 13:40:00', 10, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(9, 1, 'Balatoni körút', '2024-08-20 14:00:00', '2024-08-20 15:40:00', 10, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(10, 1, 'Balatoni körút', '2024-09-14 16:00:00', '2024-09-14 17:40:00', 6, 344, 100, 60000, 'Dunakeszi - Budapest - Székesfehérvár - Siófok - Keszthely - Balatonfüred - Székesfehérvár -Budapest - Dunakeszi'),
(11, 1, 'Déli körút', '2024-05-28 13:00:00', '2024-05-28 13:50:00', 8, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(12, 1, 'Déli körút', '2024-06-10 16:00:00', '2024-06-10 16:50:00', 8, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(13, 1, 'Déli körút', '2024-06-22 13:00:00', '2024-06-22 13:50:00', 8, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(14, 1, 'Déli körút', '2024-07-12 16:00:00', '2024-06-22 16:50:00', 6, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(15, 1, 'Déli körút', '2024-07-30 10:00:00', '2024-06-30 10:50:00', 8, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(16, 1, 'Déli körút', '2024-08-19 15:00:00', '2024-08-19 15:50:00', 10, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(17, 1, 'Déli körút', '2024-08-29 15:00:00', '2024-08-29 15:50:00', 10, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(18, 1, 'Déli körút', '2024-09-15 12:00:00', '2024-09-15 12:50:00', 8, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(19, 1, 'Déli körút', '2024-10-09 16:00:00', '2024-10-09 16:50:00', 8, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(20, 1, 'Déli körút', '2024-10-22 14:00:00', '2024-10-22 14:50:00', 6, 162, 50, 30000, 'Dunakeszi - Budapest - Szigetszentmiklós - Ráckeve - Dunaújváros - Kunszentmiklós - Dabas - Budapest - Dunakeszi '),
(21, 1, 'Keleti körút', '2024-06-01 14:00:00', '2024-06-01 15:20:00', 8, 270, 80, 50000, 'Dunakeszi - Vác - Salgótarján - Eger - Tiszafüred - Jászberény - Gödöllő - Dunakeszi'),
(22, 1, 'Keleti körút', '2024-06-12 16:00:00', '2024-06-01 17:20:00', 10, 270, 80, 50000, 'Dunakeszi - Vác - Salgótarján - Eger - Tiszafüred - Jászberény - Gödöllő - Dunakeszi'),
(23, 1, 'Keleti körút', '2024-06-26 12:00:00', '2024-06-26 13:20:00', 6, 270, 80, 50000, 'Dunakeszi - Vác - Salgótarján - Eger - Tiszafüred - Jászberény - Gödöllő - Dunakeszi'),
(24, 1, 'Keleti körút', '2024-07-12 14:00:00', '2024-07-12 15:20:00', 8, 270, 80, 50000, 'Dunakeszi - Vác - Salgótarján - Eger - Tiszafüred - Jászberény - Gödöllő - Dunakeszi'),
(25, 1, 'Keleti körút', '2024-09-08 17:00:00', '2024-09-08 17:20:00', 10, 270, 80, 50000, 'Dunakeszi - Vác - Salgótarján - Eger - Tiszafüred - Jászberény - Gödöllő - Dunakeszi'),
(26, 1, 'Keleti körút', '2024-09-21 18:00:00', '2024-09-21 19:20:00', 10, 270, 80, 50000, 'Dunakeszi - Vác - Salgótarján - Eger - Tiszafüred - Jászberény - Gödöllő - Dunakeszi'),
(27, 1, 'Keleti körút', '2024-10-03 14:00:00', '2024-10-03 15:20:00', 6, 270, 80, 50000, 'Dunakeszi - Vác - Salgótarján - Eger - Tiszafüred - Jászberény - Gödöllő - Dunakeszi'),
(28, 1, 'Keleti körút', '2024-10-13 16:00:00', '2024-10-13 17:20:00', 8, 270, 80, 50000, 'Dunakeszi - Vác - Salgótarján - Eger - Tiszafüred - Jászberény - Gödöllő - Dunakeszi'),
(29, 1, 'Keleti körút', '2024-10-20 12:00:00', '2024-10-20 13:20:00', 6, 270, 80, 50000, 'Dunakeszi - Vác - Salgótarján - Eger - Tiszafüred - Jászberény - Gödöllő - Dunakeszi'),
(30, 2, 'Balatoni körút', '2024-05-31 12:00:00', '2024-05-31 13:00:00', 8, 190, 60, 35000, 'Hévíz - Keszthely - Fonyód - Balatonszemes - Siófok - Balatonkenese - Balatonfüred - Badacsonytomaj - Hévíz'),
(31, 2, 'Balatoni körút', '2024-06-10 14:00:00', '2024-06-10 15:00:00', 10, 190, 60, 35000, 'Hévíz - Keszthely - Fonyód - Balatonszemes - Siófok - Balatonkenese - Balatonfüred - Badacsonytomaj - Hévíz'),
(32, 2, 'Balatoni körút', '2024-06-21 16:00:00', '2024-06-21 17:00:00', 6, 190, 60, 35000, 'Hévíz - Keszthely - Fonyód - Balatonszemes - Siófok - Balatonkenese - Balatonfüred - Badacsonytomaj - Hévíz'),
(33, 2, 'Balatoni körút', '2024-07-08 16:00:00', '2024-07-08 17:00:00', 10, 190, 60, 35000, 'Hévíz - Keszthely - Fonyód - Balatonszemes - Siófok - Balatonkenese - Balatonfüred - Badacsonytomaj - Hévíz'),
(34, 2, 'Balatoni körút', '2024-07-18 13:00:00', '2024-07-18 14:00:00', 8, 190, 60, 35000, 'Hévíz - Keszthely - Fonyód - Balatonszemes - Siófok - Balatonkenese - Balatonfüred - Badacsonytomaj - Hévíz'),
(35, 2, 'Balatoni körút', '2024-08-13 17:00:00', '2024-08-13 18:00:00', 10, 190, 60, 35000, 'Hévíz - Keszthely - Fonyód - Balatonszemes - Siófok - Balatonkenese - Balatonfüred - Badacsonytomaj - Hévíz'),
(36, 2, 'Balatoni körút', '2024-10-02 15:00:00', '2024-10-02 16:00:00', 8, 190, 60, 35000, 'Hévíz - Keszthely - Fonyód - Balatonszemes - Siófok - Balatonkenese - Balatonfüred - Badacsonytomaj - Hévíz'),
(37, 2, 'Balatoni körút', '2024-10-20 14:00:00', '2024-10-20 15:00:00', 8, 190, 60, 35000, 'Hévíz - Keszthely - Fonyód - Balatonszemes - Siófok - Balatonkenese - Balatonfüred - Badacsonytomaj - Hévíz'),
(38, 2, 'Balatoni körút', '2024-10-30 16:00:00', '2024-10-30 17:00:00', 6, 190, 60, 35000, 'Hévíz - Keszthely - Fonyód - Balatonszemes - Siófok - Balatonkenese - Balatonfüred - Badacsonytomaj - Hévíz'),
(39, 2, 'Északi körút', '2024-06-01 14:00:00', '2024-06-01 15:30:00', 8, 314, 90, 55000, 'Hévíz - Zalaegerszeg- Vasvár - Szombathely - Kőszeg - Bük - Celldömölk - Devecser - Tapolca - Hévíz'),
(40, 2, 'Északi körút', '2024-06-11 12:00:00', '2024-06-11 13:30:00', 6, 314, 90, 55000, 'Hévíz - Zalaegerszeg- Vasvár - Szombathely - Kőszeg - Bük - Celldömölk - Devecser - Tapolca - Hévíz'),
(41, 2, 'Északi körút', '2024-07-04 15:00:00', '2024-07-04 16:30:00', 8, 314, 90, 55000, 'Hévíz - Zalaegerszeg- Vasvár - Szombathely - Kőszeg - Bük - Celldömölk - Devecser - Tapolca - Hévíz'),
(42, 2, 'Északi körút', '2024-07-15 16:00:00', '2024-07-15 17:30:00', 10, 314, 90, 55000, 'Hévíz - Zalaegerszeg- Vasvár - Szombathely - Kőszeg - Bük - Celldömölk - Devecser - Tapolca - Hévíz'),
(43, 2, 'Északi körút', '2024-08-03 15:00:00', '2024-08-03 16:30:00', 8, 314, 90, 55000, 'Hévíz - Zalaegerszeg- Vasvár - Szombathely - Kőszeg - Bük - Celldömölk - Devecser - Tapolca - Hévíz'),
(44, 2, 'Északi körút', '2024-09-08 12:00:00', '2024-09-08 13:30:00', 6, 314, 90, 55000, 'Hévíz - Zalaegerszeg- Vasvár - Szombathely - Kőszeg - Bük - Celldömölk - Devecser - Tapolca - Hévíz'),
(45, 2, 'Északi körút', '2024-09-21 13:00:00', '2024-09-21 14:30:00', 8, 314, 90, 55000, 'Hévíz - Zalaegerszeg- Vasvár - Szombathely - Kőszeg - Bük - Celldömölk - Devecser - Tapolca - Hévíz'),
(46, 2, 'Északi körút', '2024-09-30 17:00:00', '2024-09-30 18:30:00', 8, 314, 90, 55000, 'Hévíz - Zalaegerszeg- Vasvár - Szombathely - Kőszeg - Bük - Celldömölk - Devecser - Tapolca - Hévíz'),
(47, 2, 'Északi körút', '2024-10-16 14:00:00', '2024-10-16 15:30:00', 8, 314, 90, 55000, 'Hévíz - Zalaegerszeg- Vasvár - Szombathely - Kőszeg - Bük - Celldömölk - Devecser - Tapolca - Hévíz'),
(48, 2, 'Déli körút', '2024-05-22 14:00:00', '2024-05-22 15:10:00', 10, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(49, 2, 'Déli körút', '2024-06-06 16:00:00', '2024-06-06 17:10:00', 8, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(50, 2, 'Déli körút', '2024-06-19 14:00:00', '2024-06-19 15:10:00', 6, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(51, 2, 'Déli körút', '2024-07-12 17:00:00', '2024-07-12 18:10:00', 8, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(52, 2, 'Déli körút', '2024-07-27 15:00:00', '2024-07-27 16:10:00', 10, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(53, 2, 'Déli körút', '2024-08-10 12:00:00', '2024-08-10 13:10:00', 8, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(54, 2, 'Déli körút', '2024-08-24 17:00:00', '2024-08-24 18:10:00', 8, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(55, 2, 'Déli körút', '2024-09-17 14:00:00', '2024-09-17 15:10:00', 8, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(56, 2, 'Déli körút', '2024-10-12 16:00:00', '2024-10-12 17:10:00', 6, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(57, 2, 'Déli körút', '2024-10-28 15:00:00', '2024-10-28 16:10:00', 8, 240, 70, 40000, 'Hévíz - Marcali - Kaposvár - Szigetvár - Csurgó - Zalakaros - Hévíz'),
(58, 3, 'Északi körút', '2024-05-23 16:00:00', '2024-05-23 17:10:00', 10, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(59, 3, 'Északi körút', '2024-06-09 14:00:00', '2024-06-09 15:10:00', 8, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(60, 3, 'Északi körút', '2024-06-15 16:00:00', '2024-06-15 17:10:00', 10, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(61, 3, 'Északi körút', '2024-06-26 15:00:00', '2024-06-26 16:10:00', 8, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(62, 3, 'Északi körút', '2024-07-11 12:00:00', '2024-07-11 13:10:00', 6, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(63, 3, 'Északi körút', '2024-07-30 16:00:00', '2024-07-31 17:10:00', 8, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(64, 3, 'Északi körút', '2024-08-14 13:00:00', '2024-08-14 14:10:00', 10, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(65, 3, 'Északi körút', '2024-08-21 17:00:00', '2024-08-21 18:10:00', 6, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(66, 3, 'Északi körút', '2024-09-08 17:00:00', '2024-09-08 18:10:00', 8, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(67, 3, 'Északi körút', '2024-09-18 15:00:00', '2024-09-18 16:10:00', 8, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(68, 3, 'Északi körút', '2024-10-02 16:00:00', '2024-10-02 17:10:00', 6, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(69, 3, 'Északi körút', '2024-10-16 17:00:00', '2024-10-16 18:10:00', 8, 230, 70, 40000, 'Szeged - Hódmezővásárhely - Szentes - Kecskemét - Kiskunfélegyház - Kiskunhalas - Mórahalom - Szeged'),
(70, 3, 'Nyugati körút', '2024-06-12 16:00:00', '2024-06-12 17:15:00', 10, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(71, 3, 'Nyugati körút', '2024-06-29 14:00:00', '2024-06-29 15:15:00', 8, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(72, 3, 'Nyugati körút', '2024-07-07 15:00:00', '2024-07-07 16:15:00', 6, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(73, 3, 'Nyugati körút', '2024-07-14 16:00:00', '2024-07-14 17:15:00', 8, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(74, 3, 'Nyugati körút', '2024-07-26 12:00:00', '2024-07-26 13:15:00', 6, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(75, 3, 'Nyugati körút', '2024-08-11 14:00:00', '2024-08-11 15:15:00', 8, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(76, 3, 'Nyugati körút', '2024-08-25 17:00:00', '2024-08-25 18:15:00', 10, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(77, 3, 'Nyugati körút', '2024-09-06 16:00:00', '2024-09-06 17:15:00', 8, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(78, 3, 'Nyugati körút', '2024-09-20 17:00:00', '2024-09-20 18:15:00', 8, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(79, 3, 'Nyugati körút', '2024-09-30 15:00:00', '2024-09-30 16:15:00', 10, 250, 75, 42000, ' Szeged - Mórahalom - Bácsalmás - Baja - Kiskörős - Kiskunmajsa - Szeged'),
(80, 3, 'Keleti körút', '2024-05-30 15:00:00', '2024-05-30 16:30:00', 8, 300, 90, 55000, 'Szeged - Makó - Gyula - Békéscsaba - Szarvas - Szentes - Szeged'),
(81, 3, 'Keleti körút', '2024-06-10 16:00:00', '2024-06-10 17:30:00', 8, 300, 90, 55000, 'Szeged - Makó - Gyula - Békéscsaba - Szarvas - Szentes - Szeged'),
(82, 3, 'Keleti körút', '2024-06-22 18:00:00', '2024-06-22 19:30:00', 8, 300, 90, 55000, 'Szeged - Makó - Gyula - Békéscsaba - Szarvas - Szentes - Szeged'),
(83, 3, 'Keleti körút', '2024-07-02 15:00:00', '2024-07-02 16:30:00', 8, 300, 90, 55000, 'Szeged - Makó - Gyula - Békéscsaba - Szarvas - Szentes - Szeged'),
(84, 3, 'Keleti körút', '2024-07-19 16:00:00', '2024-07-19 17:30:00', 6, 300, 90, 55000, 'Szeged - Makó - Gyula - Békéscsaba - Szarvas - Szentes - Szeged'),
(85, 3, 'Keleti körút', '2024-08-03 14:00:00', '2024-08-03 15:30:00', 10, 300, 90, 55000, 'Szeged - Makó - Gyula - Békéscsaba - Szarvas - Szentes - Szeged'),
(86, 3, 'Keleti körút', '2024-08-15 17:00:00', '2024-08-15 18:30:00', 8, 300, 90, 55000, 'Szeged - Makó - Gyula - Békéscsaba - Szarvas - Szentes - Szeged'),
(87, 3, 'Keleti körút', '2024-09-01 13:00:00', '2024-09-01 14:30:00', 10, 300, 90, 55000, 'Szeged - Makó - Gyula - Békéscsaba - Szarvas - Szentes - Szeged'),
(88, 3, 'Keleti körút', '2024-09-21 13:00:00', '2024-09-21 14:30:00', 6, 300, 90, 55000, 'Szeged - Makó - Gyula - Békéscsaba - Szarvas - Szentes - Szeged'),
(89, 4, 'Északi körút', '2024-06-01 13:00:00', '2024-06-01 14:45:00', 8, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(90, 4, 'Északi körút', '2024-06-12 15:00:00', '2024-06-12 16:45:00', 10, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(91, 4, 'Északi körút', '2024-06-23 16:00:00', '2024-06-23 17:45:00', 8, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(92, 4, 'Északi körút', '2024-06-30 17:00:00', '2024-06-30 18:45:00', 10, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(93, 4, 'Északi körút', '2024-07-09 15:00:00', '2024-07-09 16:45:00', 8, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(94, 4, 'Északi körút', '2024-07-24 12:00:00', '2024-07-24 13:45:00', 8, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(95, 4, 'Északi körút', '2024-08-18 15:00:00', '2024-08-18 16:45:00', 10, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(96, 4, 'Északi körút', '2024-08-26 14:00:00', '2024-08-26 15:45:00', 6, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(97, 4, 'Északi körút', '2024-09-14 16:00:00', '2024-09-14 17:45:00', 8, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(98, 4, 'Északi körút', '2024-09-27 14:00:00', '2024-09-27 15:45:00', 10, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(99, 4, 'Északi körút', '2024-10-10 16:00:00', '2024-10-10 17:45:00', 6, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(100, 4, 'Északi körút', '2024-10-22 14:00:00', '2024-10-22 15:45:00', 8, 350, 105, 60000, 'Debrecen - Nyíregyháza - Miskolc - Eger - Tiszafüred - Debrecen'),
(101, 4, 'Déli körút', '2024-05-24 14:00:00', '2024-05-24 15:30:00', 8, 300, 90, 55000, ' Debrecen - Berettyóújfalu - Békéscsaba - Törökszentmiklós - Karcag - Debrecen'),
(102, 4, 'Déli körút', '2024-06-04 16:00:00', '2024-06-04 17:30:00', 10, 300, 90, 55000, ' Debrecen - Berettyóújfalu - Békéscsaba - Törökszentmiklós - Karcag - Debrecen'),
(103, 4, 'Déli körút', '2024-06-16 17:00:00', '2024-06-16 18:30:00', 6, 300, 90, 55000, ' Debrecen - Berettyóújfalu - Békéscsaba - Törökszentmiklós - Karcag - Debrecen'),
(104, 4, 'Déli körút', '2024-06-29 14:00:00', '2024-06-29 15:30:00', 8, 300, 90, 55000, ' Debrecen - Berettyóújfalu - Békéscsaba - Törökszentmiklós - Karcag - Debrecen'),
(105, 4, 'Déli körút', '2024-07-06 17:00:00', '2024-07-06 18:30:00', 8, 300, 90, 55000, ' Debrecen - Berettyóújfalu - Békéscsaba - Törökszentmiklós - Karcag - Debrecen'),
(106, 4, 'Déli körút', '2024-07-19 18:00:00', '2024-07-19 19:30:00', 10, 300, 90, 55000, ' Debrecen - Berettyóújfalu - Békéscsaba - Törökszentmiklós - Karcag - Debrecen'),
(107, 4, 'Déli körút', '2024-07-30 17:00:00', '2024-07-30 18:30:00', 6, 300, 90, 55000, ' Debrecen - Berettyóújfalu - Békéscsaba - Törökszentmiklós - Karcag - Debrecen'),
(108, 4, 'Déli körút', '2024-08-10 15:00:00', '2024-08-10 16:30:00', 8, 300, 90, 55000, ' Debrecen - Berettyóújfalu - Békéscsaba - Törökszentmiklós - Karcag - Debrecen'),
(109, 4, 'Nyugati körút', '2024-05-26 15:00:00', '2024-05-26 16:00:00', 10, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen'),
(110, 4, 'Nyugati körút', '2024-06-08 14:00:00', '2024-06-08 15:00:00', 8, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen'),
(111, 4, 'Nyugati körút', '2024-06-19 16:00:00', '2024-06-19 17:00:00', 8, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen'),
(112, 4, 'Nyugati körút', '2024-06-30 12:00:00', '2024-06-30 13:00:00', 6, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen'),
(113, 4, 'Nyugati körút', '2024-07-12 17:00:00', '2024-07-12 18:00:00', 10, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen'),
(114, 4, 'Nyugati körút', '2024-08-01 16:00:00', '2024-08-01 17:00:00', 8, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen'),
(115, 4, 'Nyugati körút', '2024-08-15 15:00:00', '2024-08-15 16:00:00', 8, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen'),
(116, 4, 'Nyugati körút', '2024-08-25 17:00:00', '2024-08-25 18:00:00', 10, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen'),
(117, 4, 'Nyugati körút', '2024-09-10 17:00:00', '2024-09-10 18:00:00', 6, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen'),
(118, 4, 'Nyugati körút', '2024-09-30 14:00:00', '2024-09-30 15:00:00', 8, 200, 60, 35000, ' Debrecen - Tiszaújváros - Mezőkövesd - Tiszafüred - Debrecen');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `begin` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `depature` date NOT NULL,
  `arrive` date NOT NULL,
  `name` varchar(20) NOT NULL,
  `coutry_code` varchar(3) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `comment` text NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `opinions`
--

CREATE TABLE `opinions` (
  `name` varchar(20) NOT NULL,
  `rating` int(5) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL,
  `img` varchar(20) NOT NULL,
  `day_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `planes`
--

INSERT INTO `planes` (`id`, `name`, `seats`, `img`, `day_price`) VALUES
(1, 'Hawker 400xp', 7, 'hawker.jpg', 0),
(2, 'King air 250', 8, 'king_air.jpg', 0),
(3, 'Citation Mustang', 7, 'citation_mustang.jpg', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `starting_point`
--

CREATE TABLE `starting_point` (
  `id` int(11) NOT NULL,
  `city` varchar(10) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `starting_point`
--

INSERT INTO `starting_point` (`id`, `city`, `img`) VALUES
(1, 'Dunakeszi', 'dunakeszi'),
(2, 'Hévíz', 'heviz'),
(3, 'Szeged', 'szeged'),
(4, 'Debrecen', 'debrecen');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `testdrive`
--

CREATE TABLE `testdrive` (
  `id` int(11) NOT NULL,
  `plane_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_code` varchar(3) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `experience` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `testdrive`
--

INSERT INTO `testdrive` (`id`, `plane_id`, `name`, `country_code`, `phone`, `email`, `address`, `experience`, `comment`, `created`) VALUES
(0, 0, 'Török Ferenc', '36', '303947299', 'torokferi2004@gmail.com', '6636 Mártély Hunyadi utca 23', 1, 'Remélem jó', '2024-04-03 08:38:33');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
