-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Jan 13. 11:38
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
-- Adatbázis: `szabo_mate_zarodoga`
--
CREATE DATABASE IF NOT EXISTS `szabo_mate_zarodoga` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `szabo_mate_zarodoga`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `etel_tipusok`
--

CREATE TABLE `etel_tipusok` (
  `etel_id` int(10) NOT NULL,
  `eteltipus` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `etel_tipusok`
--

INSERT INTO `etel_tipusok` (`etel_id`, `eteltipus`) VALUES
(1, 'Reggeli'),
(2, 'Ebéd'),
(3, 'Vacsora'),
(4, 'Desszertek');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `receptek`
--

CREATE TABLE `receptek` (
  `recept_id` int(10) NOT NULL,
  `recept_tipus_id` int(255) NOT NULL,
  `elkeszites` text COLLATE utf8_hungarian_ci NOT NULL,
  `recept_hozzavalok` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `receptek`
--

INSERT INTO `receptek` (`recept_id`, `recept_tipus_id`, `elkeszites`, `recept_hozzavalok`) VALUES
(1, 1, 'A bagettet 6 cm-es darabokra vágjuk. Olajjal kikenünk egy hőálló edényt vagy egy tepsit, belehelyezzük a kenyeret.\r\nA bagettdarabokat meglocsoljuk langyos tejjel. A közepét kanállal benyomjuk, hogy egy kis mélyedés legyen.\r\nA mélyedésekbe beletörünk egy-egy tojást, vigyázva, hogy a sárga ép maradjon.\r\nFűszerezzük, reszelt sajtot szórunk rá és kevés vajat teszünk a tetejére.\r\nElőmelegített sütőben addig sütjük, míg a tojás megalvad.\r\nMiután kivettük a sütőből, tejföllel meglocsoljuk. Friss zöldséggel tálaljuk.', '50 dkg bagett (vagy kenyér)\r\n100 ml tej\r\n4 db tojás\r\n50 g sajt\r\n2 ek tejföl\r\n1 ek napraforgó olaj\r\n30 g vaj\r\nsó ízlés szerint\r\nbors ízlés szerint'),
(2, 2, 'A babot néhány órával előtte bő vízben beáztatjuk. (Ha reggel főzzük, akkor este is megtehetjük.)\r\nA csülköt megmossuk, és egy nagyobb fazékba tesszük. A babot leszűrjük, és a fazékba tesszük, és bő vízben feltesszük főni a babérlevéllel.\r\nA habot leszedjük a tetejéről.\r\nKörülbelül 1 órán át főzzük, amíg a bab megpuhul. Közben többször megkeverjük. És a csipetkét is előkészítjük.\r\nAmikor már nem zörög a bab, akkor a megpucolt és apróra vágott répákat hozzáadjuk. Sózzuk.\r\nHa a répák is megpuhulnak, akkor jöhet a rántás.\r\nA rántás után 5-10 percig, gyakori kevergetés mellett főzzük. Majd hozzáadjuk a csipetkét.\r\nAmikor a csipetke feljön a tetejére, cukrozzuk, majd elzárjuk, és hozzáadjuk az ecetet is.\r\nA csülköt kivesszük.\r\nLila hagymával és tejföllel tálaljuk.\r\nRántás\r\nAz olajat felmelegítjük, hozzáadjuk a lisztet, és folyamatos kevergetés mellett aranybarnára pirítjuk.\r\nBeletörjük a fokhagymát, elzárjuk, és felöntjük fél deci vízzel.\r\nFém szűrőn át gyorsan a leveshez keverjük a rántást.\r\nCsipetke\r\nA tojást felverjük, hozzáadjuk a sót, lisztet és egy kevés hideg vizet.\r\nKiskanállal vagy nokedliszaggatóval beleszaggatjuk a levesbe.', 'Bableves\r\n1 kg füstölt sertéscsülök\r\n500 g fejtett bab (tarkabab)\r\n4 db babérlevél\r\n2 közepes db sárgarépa\r\n1 közepes db fehérrépa\r\nsó ízlés szerint\r\n1 teáskanál cukor\r\n1 ek ecet (10%-os)\r\n2.5 l víz (kb.)\r\nRántás\r\n4 ek napraforgó olaj (kb.)\r\n2 csapott ek finomliszt (kb.)\r\n1 gerezd fokhagyma\r\n0.5 dl víz\r\nCsipetke\r\n1 db tojás\r\n5 csapott ek finomliszt\r\n0.5 kávéskanál só\r\nTálaláshoz\r\n6 ek tejföl\r\n1 közepes db lila hagyma'),
(3, 3, 'A felkockázott csirkemellet olajon megpirítjuk, megsózzuk, megborsozzuk, majd kiszedegetjük és félretesszük.\r\nA visszamaradt olajon megdinszteljük a felkockázott vöröshagymát és fokhagymát, majd hozzáadjuk a feldarabolt gombát. Megpirítjuk, megsózzuk, megborsozzuk, majd visszatesszük a húst. Felöntjük az alaplével, majd lefedve 10 percig főzzük. \r\nEzután hozzáadjuk a mascarponét és a felaprított petrezselymet. Még egyszer felforraljuk, majd rizzsel tálaljuk.', '25dkg	csirkemell	\r\nolaj	\r\nsó	\r\nbors	\r\n1fej	hagyma	\r\n1gerezd	fokhagyma	\r\n20dkg	gomba	\r\n1dl	húsleves-alaplé	\r\n1doboz	Mascarpone	\r\npetrezselyem	'),
(4, 4, '20 dkg finomliszt\r\n1 csomag vaníliás cukor\r\n1 ek cukor\r\n1 csomag sütőpor\r\n2 db tojás\r\n2 dl tej\r\n2 ek vaj\r\n1 csipet só', 'A száraz hozzávalókat összekeverjük egy tálban.\r\nA tojást, a langyos tejet és az olvasztott vajat pedig egy másik tálban felverjük.\r\nA liszthez hozzáöntjük jó sűrű kevergetés mellett az előzőleg jól felvert tejes keveréket, majd az egészet kikeverjük úgy, hogy egy jó sűrű, de mégis kissé folyós masszát kapjunk.\r\nA gofrisütőt olajjal kikenjük, és belemerjük adagonként a gofri masszáját, és megsütjük. A végén ízlésünknek megfelelően fogyasztjuk!');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `termek_id` int(11) NOT NULL,
  `termektipus_id` int(255) NOT NULL,
  `termek_nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `termek_ar_HUF` int(255) NOT NULL,
  `termek_mertekegyseg` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`termek_id`, `termektipus_id`, `termek_nev`, `termek_ar_HUF`, `termek_mertekegyseg`) VALUES
(1, 1, 'Primőr paradicsom', 410, 'kg'),
(2, 2, 'Darabolt kacsacomb', 1100, 'kg'),
(3, 3, 'Jar mosogatószer', 650, 'db'),
(4, 1, 'Vöröshagyma', 160, 'kg'),
(5, 2, 'Marha hátszín', 1900, 'kg'),
(6, 4, 'Idared alma', 500, 'kg'),
(7, 4, 'Vilmos körte', 700, 'kg'),
(8, 4, 'Narancs', 700, 'kg'),
(9, 1, 'Kaliforniai paprika', 800, 'kg'),
(10, 2, 'Csirkemell filé', 1250, 'kg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tipus`
--

CREATE TABLE `tipus` (
  `tipus_id` int(11) NOT NULL,
  `tipus_nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tipus`
--

INSERT INTO `tipus` (`tipus_id`, `tipus_nev`) VALUES
(1, 'zöldség'),
(2, 'húsfélék'),
(3, 'mosogatószer'),
(4, 'gyümölcs');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `etel_tipusok`
--
ALTER TABLE `etel_tipusok`
  ADD PRIMARY KEY (`etel_id`);

--
-- A tábla indexei `receptek`
--
ALTER TABLE `receptek`
  ADD PRIMARY KEY (`recept_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`termek_id`);

--
-- A tábla indexei `tipus`
--
ALTER TABLE `tipus`
  ADD PRIMARY KEY (`tipus_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `etel_tipusok`
--
ALTER TABLE `etel_tipusok`
  MODIFY `etel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `receptek`
--
ALTER TABLE `receptek`
  MODIFY `recept_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `termek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `tipus`
--
ALTER TABLE `tipus`
  MODIFY `tipus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
