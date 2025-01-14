-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 10:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Create Database loginattendance
  CREATE DATABASE IF NOT EXISTS `loginattendance`;
  USE `loginattendance`;

-- Database: `loginattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `infosave`
--

CREATE TABLE `infosave` (
  `emp_id` bigint(20) NOT NULL,
  `emp_Name` varchar(255) NOT NULL,
  `Logtime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `infosave`
--

INSERT INTO `infosave` (`emp_id`, `emp_Name`, `Logtime`) VALUES
(1160025, 'Arizo, Neptune Anthony', '2024-05-23 12:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `listdata`
--

CREATE TABLE `listdata` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listdata`
--

INSERT INTO `listdata` (`emp_id`, `emp_name`) VALUES
(1138583, 'Abellana, Maria Colina'),
(1160092, 'Abellanosa, Marry Joy'),
(1138205, 'Aceron, Frelyn'),
(1138120, 'Alforque, Maria Bella'),
(1142727, 'Alquilos, Jessica'),
(1133380, 'Amora, Vincent'),
(1160076, 'Añasco, Alvin'),
(1138130, 'Angus, Viernesito'),
(1160077, 'Antiquiera, Reynaldo'),
(1138062, 'Antone, Aires'),
(1138862, 'Anunciado, Marco'),
(1159972, 'Araco, Eugene'),
(1133074, 'Arias, Harvey'),
(1160025, 'Arizo, Neptune Anthony'),
(1133364, 'Ayuda, Petchyl Mae'),
(1138128, 'Babatuan, Sunshine'),
(1138380, 'Baguio, Sergia Rhea'),
(1137820, 'Baloyo, Leo'),
(1159994, 'Bañados, Michael'),
(1138596, 'Barcenas, Jose Vito'),
(1138651, 'Barcenas, Joan'),
(1138588, 'Bardaje, Iris'),
(1138720, 'Bardaje, Rogen'),
(1160047, 'Baritua, Madelin'),
(1133038, 'Baritugo, Jose Giovanni'),
(1138778, 'Barulo, Eliaquim'),
(1143770, 'Baylosis, Sheila May'),
(1137782, 'Berdon, Arlene'),
(1133283, 'Bernados, Katherine'),
(1136748, 'Binongo, Carlie'),
(1137680, 'Booc, Laarni'),
(1160078, 'Booc, Jonas'),
(1133244, 'Bordas, Maria Carmen'),
(1138611, 'Brigoli, Ernie'),
(1133164, 'Cababan, Eleazar'),
(1138734, 'Cabalhug, Regelyn'),
(1138549, 'Cabardo, Cherrie Lyn'),
(1136872, 'Cabasagan, Martin'),
(1135378, 'Cabatingan, Dennis'),
(1133162, 'Cabungcal, Christian Noel'),
(1160072, 'Caburnay, Leonila'),
(1141941, 'Cadampog, Roland'),
(1137882, 'Capirol, Fe'),
(1160084, 'Carreon, Cathelle Louise'),
(1137781, 'Casaysay, Judith'),
(1137764, 'Casaysay, Anthony'),
(1137704, 'Ceniza, Myrna'),
(1138551, 'Cernal, Rommel'),
(1138706, 'Chavez, Alemarcia'),
(1133262, 'Chua, Jordan'),
(1135229, 'Colina, Gay'),
(1138088, 'Colina, Carmen Marie'),
(1138521, 'Comanda, Chiela'),
(1138115, 'Comendador, Regiel'),
(1159981, 'Cosmo, Jetro John'),
(1137738, 'Coyoca, Josefina'),
(1138164, 'Cu, Ronelo'),
(1160070, 'Cuario, Edmund'),
(1160091, 'Cuaton, Agel Venus'),
(1160080, 'Cuizon, Marriel'),
(1138707, 'Cuizon, Arlyne'),
(1137918, 'Curacha, Melisa'),
(1133137, 'Daclan, Treschilda'),
(1160014, 'Dañosos, Dodgie'),
(1137950, 'De Villa, Lizel'),
(1137999, 'del Corro, Katherine'),
(1137843, 'Dela Cerna, Jeffrey'),
(1133263, 'Dela Peña, John Paul'),
(1138035, 'Delgado, Maryzyl'),
(1138738, 'Diano, Laila'),
(1133186, 'Digal, Eutemio'),
(1137948, 'Divinagracia, Ma. Anita'),
(1138301, 'Dolloso, Moneth'),
(1160074, 'Duran, Charlemagne'),
(1160044, 'Ea, Ivy'),
(1133286, 'Faustino, Aileen'),
(1133008, 'Fuentes, Jimmy'),
(1138356, 'Fuentes, Bernice Ann'),
(1138099, 'Fuentes, Jessie'),
(1138747, 'Furog, Christian'),
(1133413, 'Galano, Raulo Pio'),
(1133513, 'Gandhi, Christine'),
(1160061, 'Garcia, Veronica'),
(1138686, 'Gastador, Jeramie'),
(1137766, 'Gaviola, Myrna'),
(1137712, 'Genita, Isidro'),
(1137739, 'Gomez, Roderick'),
(1133441, 'Gomonit, Niel Joseph'),
(1133171, 'Gonzales, Phil Gregorius'),
(1160094, 'Gonzales, Rondy'),
(1138794, 'Guarin, Elna'),
(1138748, 'Gungob, Faith Marie'),
(1135380, 'Igot, Welkien'),
(1138568, 'Igot, Welson'),
(1137808, 'Ites, Hernani'),
(1133207, 'Jamola, John'),
(1138857, 'Jamola, Margie'),
(1160071, 'Jimenez, Sol Katrin'),
(1160075, 'Jimenez, Ramarie'),
(1160086, 'Jugarap, Avemie'),
(1160037, 'Jumapao, Alona'),
(1137719, 'Juranes, Anita'),
(1138637, 'Kohda, Junicel'),
(1158999, 'Kuroda, Shinji'),
(1133018, 'Labitad, Hepolito'),
(1138054, 'Lagnason, Vincent Jae'),
(1138344, 'Lawas, Albert'),
(1133285, 'Lawas, Zosimo'),
(1133415, 'Lerio, Rodennis'),
(1160087, 'Licmo-an, Justin Jacob'),
(1137715, 'Ligutom, Marlon'),
(1137973, 'Linao, Christine'),
(1137891, 'Livelo, Archie'),
(1137921, 'Llanos, Anna Marie'),
(1138321, 'Madelo, Louie'),
(1138282, 'Madelo, Christine'),
(1133293, 'Magale, Junil'),
(1133087, 'Malahay, Jay'),
(1138363, 'Malahay, Liza'),
(1138759, 'Maloloy-on, Jessa'),
(1133014, 'Manatad, Mario Luisito'),
(1160058, 'Manhihilot, Jesus'),
(1133012, 'Mantalaba, Joseph Jerry'),
(1133056, 'Melano, Leonides'),
(1133391, 'Mendoza, Stephen Crisanto'),
(1159982, 'Mercado, Rhommel'),
(1133063, 'Monilar, Alexander'),
(1137863, 'Monilar, Margie'),
(1160085, 'Morales, Marivic'),
(1138258, 'Naces, Sarah Mae'),
(1146818, 'Nacorda, Leah'),
(1138603, 'Nahial, Jarvey'),
(1137990, 'Nahial, Mary Grace'),
(1138541, 'Nalitan, Ellarizza'),
(1137938, 'Naral, Richie'),
(1138036, 'Naylon, Noel'),
(1138473, 'Nerves, Josephine'),
(1138190, 'Novela, Irish'),
(1133017, 'Novela, Glenn'),
(1138367, 'Obeso, Ann'),
(1136288, 'Ocarol, Marissa'),
(1132946, 'Ocio, Arnel Jose'),
(1160073, 'Olis, Maristela'),
(1137792, 'Omandac, Christopher'),
(1137896, 'Omandac, Arnel'),
(1159984, 'Optina, Jethro'),
(1160018, 'Osias, Tefanie'),
(1137851, 'Ouano, Sidney'),
(1137693, 'Ouano, Jenny'),
(1133338, 'Pabonita, Catherine'),
(1138369, 'Pabonita, Jeffrey'),
(1132921, 'Pacto, Reynaldo'),
(1138795, 'Pagador, Renely'),
(1138407, 'Paquibot, Nanette'),
(1133015, 'Parro, Randy'),
(1160093, 'Pasana, Jonathan'),
(1137442, 'Patoc, Emy'),
(1148102, 'Perales, Lennart'),
(1133421, 'Piape, Jenny Pearl'),
(1133267, 'Pinote, Milger'),
(1160013, 'Piramide, Catherine'),
(1160082, 'Pobadora, Erna Lou'),
(1138803, 'Polinar, James Jinks'),
(1137856, 'Presillas, Mary Grace'),
(1143163, 'Pugoy, Michael Ian'),
(1138692, 'Pulido, Rosalina'),
(1138289, 'Pulvera, Mary Jean'),
(1132924, 'Quiapo, Cecilia'),
(1138302, 'Quilab, Rezel'),
(1138510, 'Quimco, Rosanna'),
(1159990, 'Quimson, Richelle Babe'),
(1137798, 'Rama, Melissa'),
(1138476, 'Rapirap, Rudelo'),
(1138503, 'Remedio, Franklin'),
(1137158, 'Romero, Miraflor'),
(1133299, 'Rosit, Jay-Angelo'),
(1160090, 'Saeki, Yasushi'),
(1137814, 'Saldaña, Noel'),
(1138232, 'Samson, Cesario'),
(1137894, 'Sanchez, Ramises'),
(1133334, 'Santillan, Wilfredo'),
(1133000, 'Sarez, Betchie'),
(1138058, 'Sarigumba, Maria'),
(1141613, 'Satina, Norwyne'),
(1132942, 'Secuya, Joebert'),
(1138156, 'Selim, Ritchel'),
(1138507, 'Setenta, Reynato'),
(1160022, 'Solis, Elvin'),
(1157258, 'Soon, Desiree Mae'),
(1138520, 'Soon, Aileen'),
(1159992, 'Soronio, Roxanne'),
(1137996, 'Sortida, Inocencia'),
(1133007, 'Suico, Edwin'),
(1138567, 'Surigao, Jucerie'),
(1135239, 'Taborada, Kristoff'),
(1138378, 'Tampus, John Arkven'),
(1133071, 'Tan, Alex'),
(1138851, 'Taneo, Regina'),
(1137802, 'Tangaha, Rosenie'),
(1138656, 'Tanudra, Charlane'),
(1133055, 'Tapan, Edwin'),
(1133350, 'Tarucan, Jobert'),
(1137895, 'Tautu-an, Christine'),
(1137890, 'Tecson, Veronica'),
(1160049, 'Terashita, Norio'),
(1137908, 'Tesaluna, Rovie'),
(1136236, 'Truz, Irene'),
(1137741, 'Tumabiene, Juliet'),
(1138216, 'Tumabiene, Ramie'),
(1138658, 'Tuñacao, Wilberto'),
(1137793, 'Tungol, Generosa'),
(1133245, 'Turla, Jeremiah'),
(1133383, 'Valmores, Heliomar'),
(1159996, 'Verbo, Christine'),
(1133218, 'Villaflor, James Christopher'),
(1133301, 'Villanueva, Clifford Jose'),
(1141765, 'Villarino, Careen Rose'),
(1138841, 'Villaver, Elrey'),
(1132966, 'Yap, Sheila Saira'),
(1159985, 'Ybañez, Jerk Jarill'),
(1137804, 'Ycong, Christopher'),
(1138376, 'Ygot, Chanda'),
(1160067, 'Yusico, Maria Victoria');
COMMIT;	


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
