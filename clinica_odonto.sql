-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 11, 2024 at 05:49 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinica_odonto`
--

-- --------------------------------------------------------

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
CREATE TABLE IF NOT EXISTS `horario` (
  `ID_HORARIO` int NOT NULL AUTO_INCREMENT,
  `HORARIO_FIN` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `HORARIO_INICIO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_HORARIO`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `horario`
--

INSERT INTO `horario` (`ID_HORARIO`, `HORARIO_FIN`, `HORARIO_INICIO`) VALUES
(1, '4:00 pm', '7:00 am'),
(2, '5:00 pm', '8:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `odontologo`
--

DROP TABLE IF EXISTS `odontologo`;
CREATE TABLE IF NOT EXISTS `odontologo` (
  `ID` int NOT NULL,
  `APELLIDO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DIRECCION` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ESPECIALIDAD` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `TELEFONO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `UNHORARIO_ID_HORARIO` int DEFAULT NULL,
  `UNUSUARIO_ID_USUARIO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ODONTOLOGO_UNHORARIO_ID_HORARIO` (`UNHORARIO_ID_HORARIO`),
  KEY `FK_ODONTOLOGO_UNUSUARIO_ID_USUARIO` (`UNUSUARIO_ID_USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `odontologo`
--

INSERT INTO `odontologo` (`ID`, `APELLIDO`, `DIRECCION`, `DNI`, `ESPECIALIDAD`, `FECHA_NAC`, `NOMBRE`, `TELEFONO`, `UNHORARIO_ID_HORARIO`, `UNUSUARIO_ID_USUARIO`) VALUES
(251, 'Isaac', 'Santa Monica', '24325326643', 'Muelas', '2005-01-06', 'Elvin', '95538433', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `ID` int NOT NULL,
  `APELLIDO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DIRECCION` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `TELEFONO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `TIENE_OS` tinyint(1) DEFAULT '0',
  `TIPO_SANGRE` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `UNRESPONSABLE_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PACIENTE_UNRESPONSABLE_ID` (`UNRESPONSABLE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `ID` int NOT NULL,
  `APELLIDO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DIRECCION` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `TELEFONO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsable`
--

DROP TABLE IF EXISTS `responsable`;
CREATE TABLE IF NOT EXISTS `responsable` (
  `ID` int NOT NULL,
  `APELLIDO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DIRECCION` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `TELEFONO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `TIPO_RESP` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `secretario`
--

DROP TABLE IF EXISTS `secretario`;
CREATE TABLE IF NOT EXISTS `secretario` (
  `ID` int NOT NULL,
  `APELLIDO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DIRECCION` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `SECTOR` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `TELEFONO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `UNUSUARIO_ID_USUARIO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SECRETARIO_UNUSUARIO_ID_USUARIO` (`UNUSUARIO_ID_USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `secretario`
--

INSERT INTO `secretario` (`ID`, `APELLIDO`, `DIRECCION`, `DNI`, `FECHA_NAC`, `NOMBRE`, `SECTOR`, `TELEFONO`, `UNUSUARIO_ID_USUARIO`) VALUES
(201, 'Perez', 'La Lopez', '32131424214214', '2003-02-14', 'Melissa', 'Recepcion', '92382844', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
CREATE TABLE IF NOT EXISTS `sequence` (
  `SEQ_NAME` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `sequence`
--

INSERT INTO `sequence` (`SEQ_NAME`, `SEQ_COUNT`) VALUES
('SEQ_GEN', 300);

-- --------------------------------------------------------

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
CREATE TABLE IF NOT EXISTS `turno` (
  `ID_TURNO` int NOT NULL AUTO_INCREMENT,
  `AFECCION` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `FECHA_TURNO` date DEFAULT NULL,
  `HORA_TURNO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_odonto` int DEFAULT NULL,
  `id_pacien` int DEFAULT NULL,
  PRIMARY KEY (`ID_TURNO`),
  KEY `FK_TURNO_id_odonto` (`id_odonto`),
  KEY `FK_TURNO_id_pacien` (`id_pacien`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID_USUARIO` int NOT NULL AUTO_INCREMENT,
  `CONTRASENIA` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `NOMBRE_USUARIO` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ROL` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `CONTRASENIA`, `NOMBRE_USUARIO`, `ROL`) VALUES
(1, 'adtr', 'Davidr1594', 'admin'),
(2, '12345', 'IDaniel', 'Odontologo'),
(7, '12345', 'Melissa', 'Secretaria'),
(11, '12345', 'ElvinC', 'Odontologo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
