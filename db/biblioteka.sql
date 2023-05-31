-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Sty 2023, 23:25
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `imię` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(60) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `autor`
--

INSERT INTO `autor` (`id_autor`, `imię`, `nazwisko`) VALUES
(1, 'Terencjusz', 'Dołęgowski'),
(2, 'Cyrus', 'Sieracki'),
(3, 'Porfiry', 'Wilczyński'),
(4, 'Justyn', 'Osuchowski'),
(5, 'Seweryn', 'Furgał'),
(6, 'Wacław', 'Jaszczyk'),
(7, 'Gedeon', 'Dobek'),
(8, 'Albert', 'Osowski'),
(9, 'Borys', 'Tatara'),
(10, 'Witalis', 'Skłodowski'),
(11, 'Nazary', 'Arciszewski'),
(12, 'Prokop', 'Mysłek'),
(13, 'Edwin', 'Czerniecki'),
(14, 'Bertram', 'Bielski'),
(15, 'Donald', 'Fabiszewski'),
(16, 'Maksym', 'Kostrzewa'),
(17, 'Nazariusz', 'Warchoł'),
(18, 'Roderyk', 'Kotecki'),
(19, 'Nazary', 'Suchecki'),
(20, 'Ksawery', 'Koza'),
(21, 'Natan', 'Mielcarek'),
(22, 'Dorian', 'Morawski'),
(23, 'Oleg', 'KIelar'),
(24, 'Osmund', 'Kuzioła'),
(25, 'Magnus', 'Dmitruk'),
(26, 'Marek', 'Grzonka'),
(27, 'Arkadiusz', 'Bijak'),
(28, 'Salwator', 'Stanicki'),
(29, 'Salomon', 'Brzezicki'),
(30, 'Ernest', 'Bławat'),
(31, 'Hilary', 'Loch'),
(32, 'Prokles', 'Ignaszak'),
(33, 'Dorian', 'Murzyn'),
(34, 'Tomasz', 'Tylek'),
(35, 'Filip', 'Rusiecki'),
(36, 'Rajmund', 'Maślak'),
(37, 'Zygmunt', 'Okoń'),
(38, 'Randolf', 'Siuta'),
(39, 'Krzysztof', 'Gaca'),
(40, 'Izajasz', 'Naumowicz'),
(41, 'Marceli', 'Makulski'),
(42, 'Anatol', 'Fudala'),
(43, 'Ksawery', 'Kolenda'),
(44, 'Walerian', 'Kostuch'),
(45, 'Atanazy', 'Adam'),
(46, 'Gerazym', 'Mazurkiewicz'),
(47, 'Jeremi', 'Buczek'),
(48, 'Baldwin', 'Kapała'),
(49, 'Ireneusz', 'Rogowicz'),
(50, 'Jeremiasz', 'Kalkowski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bibliotekarz`
--

CREATE TABLE `bibliotekarz` (
  `id_bibliotekarz` int(11) NOT NULL,
  `imię` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `pesel` varchar(11) COLLATE utf8_polish_ci NOT NULL,
  `nr_telefonu` varchar(12) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `bibliotekarz`
--

INSERT INTO `bibliotekarz` (`id_bibliotekarz`, `imię`, `nazwisko`, `pesel`, `nr_telefonu`) VALUES
(1, 'Andrzej', 'Bury', '12345678900', '111222333'),
(2, 'Paweł', 'Nowak', '46743465342', '567345876'),
(3, 'Piotr', 'Wiśniewski', '23534636364', '333444555'),
(4, 'Adam', 'Polak', '57658585646', '444555666'),
(5, 'Filip ', 'Jabłczyński', '48756834532', '555666777'),
(6, 'Sebastian', 'Jabłkowski', '34657635242', '666777888'),
(7, 'Łuaksz', 'Jabłonowski', '24643635254', '777888999'),
(8, 'Adrian', 'Jabłoński', '34653656214', '888999000'),
(9, 'Ewa', 'Jachimowicz', '86546323442', '123456789'),
(10, 'Marian', 'Jachimowski', '45745765453', '987654321'),
(11, 'Feliks', 'Jagałła', '46537547544', '122343256'),
(12, 'Zenon', 'Jagodziński', '57647366435', '123098456'),
(13, 'Bogumił', 'Jakimowicz', '78585678676', '123455666'),
(14, 'Jakub', 'Jakimowski', '57467475344', '444666888'),
(15, 'Kacper', 'Jałoszyński', '54767476364', '123344554'),
(16, 'Klemens', 'Janczak ', '75547536353', '322343243'),
(17, 'Dawid', 'Janicki', '46764745747', '254356635'),
(18, 'Aaron', 'Janiszewski', '64786474673', '445365665'),
(19, 'Alan', 'Jankowski', '68647475636', '323543543'),
(20, 'Albert', 'Janowski', '76474573363', '354354356'),
(21, 'Amadeusz', 'Jarczyński', '45745756634', '354564524'),
(22, 'Antoni', 'Jarmakowski', '46746757565', '436575234'),
(23, 'Bartosz', 'Jaskólski', '45747575573', '346536632'),
(24, 'Błażej', 'Jastrzębski', '46747574333', '436547647'),
(25, 'Bogdan', 'Jaśkiewicz', '93132158659', '347467474'),
(26, 'Borys', 'Jaworski', '99726277001', '435435364'),
(27, 'Cezary', 'Jażdżewski', '38397754415', '547658564'),
(28, 'Damian', 'Jerzmanowski', '23051353680', '457747434'),
(29, 'Emil', 'Józefowicz', '67207657548', '436356362'),
(30, 'Eryk', 'Jurczyk', '99955710291', '464363656'),
(31, 'Jan', 'Kaczmarek', '23983334376', '425425245'),
(32, 'Józef', 'Kaczmarski', '39586176097', '642365645'),
(33, 'Jolanta', 'Kaczor ', '98019522862', '352463635'),
(34, 'Maciej', 'Kaczorowski', '75170172012', '325436547'),
(35, 'Magdalena', 'Kaczorowska', '99832609952', '235425422'),
(36, 'Wacław', 'Kaja', '94787747721', '346576547'),
(37, 'Wiesław', 'Kalinow', '69606405719', '325436342'),
(38, 'Walery', 'Kalinowski', '93208587489', '346547565'),
(39, 'Sylwester', 'Kalkstein', '16176350148', '576547457'),
(40, 'Karol', 'Kałuziński', '83837466135', '325252533'),
(41, 'Karolina', 'Kamieńska', '71086606632', '426356474'),
(42, 'Dominik', 'Kamiński', '49147535062', '457547465'),
(43, 'Dominika', 'Kandefer', '84159808488', '124152346'),
(44, 'Tymon', 'Białas', '44325448506', '332544565'),
(45, 'Tomasz', 'Białecki', '70526236964', '576677453'),
(46, 'Wojciech', 'Białek ', '43475293160', '576547454'),
(47, 'Wioletta', 'Bielecka', '79130639787', '587679658'),
(48, 'Julia', 'Bielicka', '81782875409', '457685798'),
(49, 'Sylwia', 'Bielińska', '76472543656', '457675868'),
(50, 'Alicja', 'Bienias', '78975834653', '679689643');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnik`
--

CREATE TABLE `czytelnik` (
  `id_czytelnik` int(11) NOT NULL,
  `imię` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `pesel` varchar(11) COLLATE utf8_polish_ci NOT NULL,
  `nr_telefonu` varchar(12) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `czytelnik`
--

INSERT INTO `czytelnik` (`id_czytelnik`, `imię`, `nazwisko`, `pesel`, `nr_telefonu`) VALUES
(1, 'Lech', 'Napierski', '18737218537', '574765634'),
(2, 'Lechosław', 'Narkiewicz', '49692324919', '537635636'),
(3, 'Leo', 'Narzymski', '66761648394', '574367352'),
(4, 'Leon', 'Nawarski', '58912777286', '686746753'),
(5, 'Leonard', 'Nawrocki ', '66625238211', '468467536'),
(6, 'Leonardo', 'Niementowski', '45959483577', '684674673'),
(7, 'Leopold', 'Niemiec ', '21473355636', '686474745'),
(8, 'Lesław', 'Niemojowski', '14672246791', '468648753'),
(9, 'Leszek', 'Niewiadomski', '77067464667', '568686676'),
(10, 'Lew', 'Niewiarow', '27275658276', '647864764'),
(11, 'Liberat', 'Niwiński', '28423483391', '568687563'),
(12, 'Longin', 'Nowacki', '97862339977', '547467647'),
(13, 'Lotariusz', 'Nowak', '99757858431', '123455666'),
(14, 'Lothar', 'Nowakowski', '79341873166', '444666888'),
(15, 'Lucjan', 'Nowik', '23963676882', '123344554'),
(16, 'Ludwik', 'Nowicki', '91450210582', '322343243'),
(17, 'Maciej', 'Nowiński', '26858626209', '254356635'),
(18, 'Makary', 'Patek', '99629369507', '445365665'),
(19, 'Maks', 'Pawełczyk', '87372638493', '323543543'),
(20, 'Maksym', 'Pawełek', '91919899294', '354354356'),
(21, 'Maksymilian', 'Pawełkiewicz', '84047817986', '354564524'),
(22, 'Marcel', 'Pawlak', '99758613584', '436575234'),
(23, 'Marceli', 'Pawlaszczyk', '91895543900', '346536632'),
(24, 'Marcin', 'Pawlicki', '99453805681', '436547647'),
(25, 'Marek', 'Pawlikowski', '87447626834', '347467474'),
(26, 'Marian', 'Pazderski ', '82956370950', '435435364'),
(27, 'Mariusz', 'Paziński', '89171377006', '547658564'),
(28, 'Martin', 'Pazura ', '93300969609', '457747434'),
(29, 'Mateusz', 'Pągowski', '98428241949', '436356362'),
(30, 'Matteo', 'Pelc', '84735614307', '464363656'),
(31, 'Mattaniasz', 'Pełka', '90088120280', '425425245'),
(32, 'Maurycy', 'Perepeczko', '87854966099', '642365645'),
(33, 'Max', 'Peretjatkowicz', '93897813511', '352463635'),
(34, 'Maximilian', 'Perkowski', '95300673376', '325436547'),
(35, 'Maxymilian', 'Perlicki', '96521943840', '235425422'),
(36, 'Metody', 'Piątek ', '92311589883', '346576547'),
(37, 'Michael', 'Piecha', '92451154585', '325436342'),
(38, 'Michał', 'Piechota ', '88801169746', '346547565'),
(39, 'Mieczysław ', 'Piekarski', '85681449872', '576547457'),
(40, 'Mieszko', 'Pietrasiak', '86941350313', '325252533'),
(41, 'Mikołaj', 'Pietraszek ', '86007239114', '426356474'),
(42, 'Milan', 'Pietrzak', '88913444639', '457547465'),
(43, 'Miłosz', 'Pietrzykowski', '92140893546', '124152346'),
(44, 'Miron', 'Pięta ', '82915280266', '332544565'),
(45, 'Mirosław', 'Piętka ', '89809749084', '576677453'),
(46, 'Mścisław', 'Pilarski', '94804451716', '576547454'),
(47, 'Orest', 'Pilarz', '93781721652', '587679658'),
(48, 'Orion', 'Piskorski', '93057972858', '457685798'),
(49, 'Oscar', 'Piszcz', '86440283163', '457675868'),
(50, 'Oskar', 'Piszczek', '85511938052', '679689643');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunek`
--

CREATE TABLE `gatunek` (
  `id_gatunek` int(11) NOT NULL,
  `gatunek` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gatunek`
--

INSERT INTO `gatunek` (`id_gatunek`, `gatunek`) VALUES
(1, 'Fantastyka'),
(2, 'Sci–Fi'),
(3, 'Romans'),
(4, 'Powieść historyczna'),
(5, 'Horror'),
(6, 'Kryminał'),
(7, 'Thriller'),
(8, 'Biografia'),
(9, 'Reportaż'),
(10, 'Poradnik'),
(11, 'Powieść młodzieżowa'),
(12, 'Literatura dziecięca'),
(13, 'Kucharska'),
(14, 'Album'),
(15, 'Przewodnik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `książka`
--

CREATE TABLE `książka` (
  `id_książka` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_gatunek` int(11) NOT NULL,
  `id_wydawnictwo` int(11) NOT NULL,
  `tytuł` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `rok` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `książka`
--

INSERT INTO `książka` (`id_książka`, `id_autor`, `id_gatunek`, `id_wydawnictwo`, `tytuł`, `rok`) VALUES
(1, 1, 1, 1, 'Opowieść bajeczna', 1999),
(2, 2, 2, 2, 'Góry Sowie', 2002),
(3, 3, 3, 3, 'Ten dzień', 2021),
(4, 4, 4, 4, 'Dawna Historia ', 1992),
(5, 5, 5, 5, 'Piła', 2000),
(6, 6, 6, 6, 'Zaginiona', 2004),
(7, 7, 7, 7, 'Zdążyć przed czasem ', 2010),
(8, 8, 8, 8, 'Moja spowiedź', 2021),
(9, 9, 9, 9, 'Życie w Afryce', 2021),
(10, 10, 10, 10, 'Jak żyć w zgodzie ze sobą?', 2019),
(11, 11, 11, 11, 'Szkoła', 2017),
(12, 12, 12, 12, 'Zabawy', 1999),
(13, 13, 13, 13, 'Przepisy świąteczne', 2009),
(14, 14, 14, 14, 'Album moich marzeń', 2011),
(15, 15, 15, 15, 'Polskie góry', 2014),
(16, 16, 1, 16, 'Kosmiczny dzień', 1994),
(17, 17, 2, 17, 'Dwa światy', 2001),
(18, 18, 3, 18, 'Ja i ty', 2008),
(19, 19, 4, 19, 'Dawno temu', 2000),
(20, 20, 5, 20, 'Cień', 2016),
(21, 21, 6, 21, 'Na tropie zbrodni', 2017),
(22, 22, 7, 22, 'Spór', 2021),
(23, 23, 8, 23, 'Spalony', 2012),
(24, 24, 9, 24, 'Dzikie miejsce', 1998),
(25, 25, 10, 25, 'Jak schudnąć? ', 2019),
(26, 26, 11, 26, 'Istota', 2005),
(27, 27, 12, 27, 'Miś uszatek', 2003),
(28, 28, 13, 28, 'Dzikie smaki świata', 2008),
(29, 29, 14, 29, 'Kolor', 2020),
(30, 30, 15, 30, 'Polskie morze', 1996),
(31, 31, 1, 31, 'Person', 2004),
(32, 32, 2, 32, 'Tajemnica', 2009),
(33, 33, 3, 33, 'She', 2015),
(34, 34, 4, 34, 'Jak to było...', 2014),
(35, 35, 5, 35, 'Opuszczony dom', 2013),
(36, 36, 6, 36, 'Zamek ', 2012),
(37, 37, 7, 37, 'Nie pora umierać', 2022),
(38, 38, 8, 38, 'Moje wspomnienia', 2007),
(39, 39, 9, 39, 'Tak jest', 2002),
(40, 40, 10, 40, 'Dzieci', 2008),
(41, 41, 11, 41, 'Opal', 1999),
(42, 42, 12, 42, 'Kubuś Puchatek', 2004),
(43, 43, 13, 43, 'Ugotuj to', 2010),
(44, 44, 14, 44, 'Zdjęcia świata', 2017),
(45, 45, 15, 45, 'Ameryka ', 2006),
(46, 46, 1, 46, 'Statek kosmiczny', 2006),
(47, 47, 2, 47, 'Obcy', 1995),
(48, 48, 3, 48, '365 dni', 2018),
(49, 49, 4, 49, 'Dzieje świata', 1994),
(50, 50, 5, 50, 'Atak', 2013);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `widok`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `widok` (
`id_wypożyczenie` int(11)
,`id_bibliotekarz` int(11)
,`id_czytelnik` int(11)
,`id_książka` int(11)
,`data_wypożyczenia` datetime
,`data_zwrotu` datetime
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydawnictwo`
--

CREATE TABLE `wydawnictwo` (
  `id_wydawnictwo` int(11) NOT NULL,
  `wydawnictwo` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wydawnictwo`
--

INSERT INTO `wydawnictwo` (`id_wydawnictwo`, `wydawnictwo`) VALUES
(1, 'Biały Kruk'),
(2, 'Albus '),
(3, 'Alma-Press '),
(4, 'Alatheia '),
(5, 'Anagram'),
(6, 'Arcana '),
(7, 'Arkady '),
(8, 'Ars Polonia S.A.'),
(9, 'ARX REGIA'),
(10, 'Astrum'),
(11, 'Debit '),
(12, 'Dekorgraf'),
(13, 'Difin'),
(14, 'DiG '),
(15, 'Drukarnia i Księgarnia Świętego Wojciecha'),
(16, 'Drzewo Babel'),
(17, 'Dwie Siostry'),
(18, 'E media '),
(19, 'Edgard'),
(20, 'Egmont Polska'),
(21, 'eMPi2'),
(22, 'Enset'),
(23, 'Ezop'),
(24, 'PWN'),
(25, 'In Rock'),
(26, 'Impuls'),
(27, 'Karakter'),
(28, 'Koroprint'),
(29, 'Książnica'),
(30, 'Limbus'),
(31, 'Logos'),
(32, 'Mag'),
(33, 'Media'),
(34, 'Mila'),
(35, 'Morex'),
(36, 'Agora'),
(37, 'Znak'),
(38, 'Czarne'),
(39, 'Zysk'),
(40, 'Dom Wydawniczy Rebis'),
(41, 'Nowa Era'),
(42, 'Nowy Świat'),
(43, 'ODDK'),
(44, 'Operon'),
(45, 'Pascal'),
(46, 'Powergraph'),
(47, 'RTW'),
(48, 'Semper'),
(49, 'Sic'),
(50, 'Stenor');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypożyczenie`
--

CREATE TABLE `wypożyczenie` (
  `id_wypożyczenie` int(11) NOT NULL,
  `id_bibliotekarz` int(11) NOT NULL,
  `id_czytelnik` int(11) NOT NULL,
  `id_książka` int(11) NOT NULL,
  `data_wypożyczenia` datetime NOT NULL,
  `data_zwrotu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wypożyczenie`
--

INSERT INTO `wypożyczenie` (`id_wypożyczenie`, `id_bibliotekarz`, `id_czytelnik`, `id_książka`, `data_wypożyczenia`, `data_zwrotu`) VALUES
(1, 1, 1, 1, '2022-10-03 19:52:27', '2022-12-06 13:52:27'),
(2, 2, 2, 2, '2022-06-06 19:53:29', '2022-09-06 19:53:29'),
(3, 3, 3, 3, '2022-12-06 19:53:49', '2022-12-27 19:53:49'),
(4, 50, 8, 4, '2022-10-04 20:12:13', '2022-11-09 20:12:13'),
(5, 20, 41, 10, '2022-05-11 12:12:36', '2022-07-19 14:12:36'),
(6, 39, 35, 24, '2022-06-03 10:13:03', '2022-08-15 12:13:03'),
(7, 48, 49, 8, '2022-08-09 15:14:10', '2022-10-05 14:14:10'),
(8, 15, 11, 6, '2022-11-08 15:14:34', '2022-12-14 16:14:34'),
(9, 32, 27, 5, '2023-01-02 13:15:05', '2023-01-04 14:15:05'),
(10, 9, 32, 13, '2022-01-04 13:15:37', '2022-03-09 16:15:37'),
(11, 40, 12, 12, '2022-03-02 14:24:09', '2022-05-03 15:24:09'),
(12, 12, 24, 18, '2022-06-22 11:24:38', '2022-10-18 14:24:38'),
(13, 33, 42, 17, '2021-09-15 20:25:08', '2021-12-21 14:25:08'),
(14, 18, 20, 15, '2022-08-01 13:25:41', '2022-10-19 16:25:41'),
(15, 42, 9, 20, '2022-10-17 14:26:19', '2022-11-29 13:26:19'),
(16, 36, 9, 50, '2021-11-16 15:28:05', '2021-12-30 16:28:05'),
(17, 10, 29, 49, '2022-10-27 11:28:56', '2022-11-30 14:28:56'),
(18, 26, 41, 40, '2022-04-20 17:29:22', '2022-07-26 11:29:22'),
(19, 30, 13, 35, '2022-01-11 15:29:58', '2022-03-23 13:29:58'),
(20, 31, 27, 32, '2022-04-12 14:30:29', '2022-07-18 14:30:29'),
(21, 11, 15, 24, '2022-08-24 13:31:08', '2022-09-20 14:31:08'),
(22, 24, 47, 32, '2022-11-29 17:31:46', '2022-12-19 14:31:46'),
(23, 12, 37, 43, '2022-09-13 14:32:11', '2022-11-16 13:32:11'),
(24, 15, 50, 29, '2022-01-18 14:32:46', '2022-04-20 15:32:46'),
(25, 38, 40, 22, '2022-04-13 10:33:16', '2022-06-06 13:33:16'),
(26, 29, 16, 27, '2022-08-09 11:34:24', '2022-08-31 14:34:24'),
(27, 16, 30, 9, '2022-07-05 10:34:51', '2022-08-18 14:34:51'),
(28, 27, 24, 42, '2022-10-25 10:35:23', '2022-11-18 14:43:23'),
(29, 20, 28, 47, '2022-08-02 12:35:54', '2022-09-21 13:35:54'),
(30, 24, 41, 34, '2022-05-18 13:36:28', '2022-08-02 13:56:28'),
(31, 14, 36, 37, '2022-04-19 11:37:11', '2022-08-23 13:37:11'),
(32, 41, 5, 22, '2022-08-26 12:37:44', '2022-09-21 11:37:44'),
(33, 46, 29, 11, '2022-04-11 10:38:14', '2022-05-25 10:42:14'),
(34, 47, 25, 21, '2022-05-26 12:38:47', '2022-07-18 15:38:47'),
(35, 19, 16, 47, '2022-06-16 14:39:16', '2022-09-06 10:39:16'),
(36, 17, 38, 12, '2022-01-11 10:39:48', '2022-03-03 15:39:48'),
(37, 24, 8, 23, '2022-08-16 14:40:15', '2022-09-14 10:49:15'),
(38, 21, 9, 38, '2022-06-06 16:40:49', '2022-07-28 13:23:49'),
(39, 4, 43, 26, '2022-05-10 15:41:26', '2022-06-23 13:21:26'),
(40, 39, 33, 2, '2021-12-15 11:42:12', '2022-01-26 14:32:12'),
(41, 29, 34, 25, '2022-01-19 13:42:54', '2022-03-16 13:12:54'),
(42, 11, 43, 28, '2022-04-05 15:43:37', '2022-05-25 15:34:37'),
(43, 4, 37, 17, '2022-07-18 14:44:19', '2022-08-26 10:43:19'),
(44, 27, 18, 25, '2022-01-05 16:44:38', '2021-02-05 10:04:38'),
(45, 28, 18, 13, '2022-02-07 12:26:36', '2022-04-22 10:35:18'),
(46, 18, 46, 41, '2022-08-01 13:46:10', '2022-08-31 11:06:10'),
(47, 8, 17, 48, '2022-09-14 11:46:48', '2022-10-25 09:26:48'),
(48, 20, 40, 19, '2022-10-04 13:47:17', '2022-11-23 10:27:17'),
(49, 24, 34, 13, '2022-10-10 13:07:42', '2022-11-16 10:08:42'),
(50, 41, 42, 14, '2022-06-14 10:23:12', '2022-08-16 08:58:12');

-- --------------------------------------------------------

--
-- Struktura widoku `widok`
--
DROP TABLE IF EXISTS `widok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `widok`  AS SELECT `wypożyczenie`.`id_wypożyczenie` AS `id_wypożyczenie`, `wypożyczenie`.`id_bibliotekarz` AS `id_bibliotekarz`, `wypożyczenie`.`id_czytelnik` AS `id_czytelnik`, `wypożyczenie`.`id_książka` AS `id_książka`, `wypożyczenie`.`data_wypożyczenia` AS `data_wypożyczenia`, `wypożyczenie`.`data_zwrotu` AS `data_zwrotu` FROM `wypożyczenie` WHERE `wypożyczenie`.`id_książka` = 3232  ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indeksy dla tabeli `bibliotekarz`
--
ALTER TABLE `bibliotekarz`
  ADD PRIMARY KEY (`id_bibliotekarz`);

--
-- Indeksy dla tabeli `czytelnik`
--
ALTER TABLE `czytelnik`
  ADD PRIMARY KEY (`id_czytelnik`);

--
-- Indeksy dla tabeli `gatunek`
--
ALTER TABLE `gatunek`
  ADD PRIMARY KEY (`id_gatunek`);

--
-- Indeksy dla tabeli `książka`
--
ALTER TABLE `książka`
  ADD PRIMARY KEY (`id_książka`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_gatunek` (`id_gatunek`),
  ADD KEY `id_wydawnictwo` (`id_wydawnictwo`);

--
-- Indeksy dla tabeli `wydawnictwo`
--
ALTER TABLE `wydawnictwo`
  ADD PRIMARY KEY (`id_wydawnictwo`);

--
-- Indeksy dla tabeli `wypożyczenie`
--
ALTER TABLE `wypożyczenie`
  ADD PRIMARY KEY (`id_wypożyczenie`),
  ADD KEY `id_bibliotekarz` (`id_bibliotekarz`),
  ADD KEY `id_czytelnik` (`id_czytelnik`),
  ADD KEY `id_książka` (`id_książka`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT dla tabeli `bibliotekarz`
--
ALTER TABLE `bibliotekarz`
  MODIFY `id_bibliotekarz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT dla tabeli `czytelnik`
--
ALTER TABLE `czytelnik`
  MODIFY `id_czytelnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT dla tabeli `gatunek`
--
ALTER TABLE `gatunek`
  MODIFY `id_gatunek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `książka`
--
ALTER TABLE `książka`
  MODIFY `id_książka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT dla tabeli `wydawnictwo`
--
ALTER TABLE `wydawnictwo`
  MODIFY `id_wydawnictwo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT dla tabeli `wypożyczenie`
--
ALTER TABLE `wypożyczenie`
  MODIFY `id_wypożyczenie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `książka`
--
ALTER TABLE `książka`
  ADD CONSTRAINT `książka_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `książka_ibfk_2` FOREIGN KEY (`id_gatunek`) REFERENCES `gatunek` (`id_gatunek`),
  ADD CONSTRAINT `książka_ibfk_3` FOREIGN KEY (`id_wydawnictwo`) REFERENCES `wydawnictwo` (`id_wydawnictwo`);

--
-- Ograniczenia dla tabeli `wypożyczenie`
--
ALTER TABLE `wypożyczenie`
  ADD CONSTRAINT `wypożyczenie_ibfk_1` FOREIGN KEY (`id_bibliotekarz`) REFERENCES `bibliotekarz` (`id_bibliotekarz`),
  ADD CONSTRAINT `wypożyczenie_ibfk_2` FOREIGN KEY (`id_czytelnik`) REFERENCES `czytelnik` (`id_czytelnik`),
  ADD CONSTRAINT `wypożyczenie_ibfk_3` FOREIGN KEY (`id_książka`) REFERENCES `książka` (`id_książka`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
