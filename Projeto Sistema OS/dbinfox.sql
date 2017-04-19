-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Abr-2017 às 00:10
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbinfox`
--
CREATE DATABASE IF NOT EXISTS `dbinfox` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbinfox`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbclientes`
--

CREATE TABLE `tbclientes` (
  `idcli` int(11) NOT NULL,
  `nomecli` varchar(50) NOT NULL,
  `endcli` varchar(100) DEFAULT NULL,
  `fonecli` varchar(15) NOT NULL,
  `emailcli` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbos`
--

CREATE TABLE `tbos` (
  `os` int(11) NOT NULL,
  `data_os` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `equipanto` varchar(150) NOT NULL,
  `defeito` varchar(150) NOT NULL,
  `servico` varchar(150) DEFAULT NULL,
  `tecnico` varchar(130) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `idcli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `iduser` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `fone` varchar(15) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `perfil` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbusuarios`
--

INSERT INTO `tbusuarios` (`iduser`, `usuario`, `fone`, `login`, `senha`, `perfil`) VALUES
(1, 'José de Assis', '9999-9999', 'joseassis', '123456', 'user'),
(2, 'Administrador', '9999-9999', 'admin', 'admin', 'admin'),
(3, 'Bill Gates', '9999-9999', 'tiobill', '121212', 'user'),
(4, 'Fernando Silva', '4444-4444', 'Nando', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbclientes`
--
ALTER TABLE `tbclientes`
  ADD PRIMARY KEY (`idcli`);

--
-- Indexes for table `tbos`
--
ALTER TABLE `tbos`
  ADD PRIMARY KEY (`os`),
  ADD KEY `idcli` (`idcli`);

--
-- Indexes for table `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbclientes`
--
ALTER TABLE `tbclientes`
  MODIFY `idcli` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbos`
--
ALTER TABLE `tbos`
  MODIFY `os` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbos`
--
ALTER TABLE `tbos`
  ADD CONSTRAINT `tbos_ibfk_1` FOREIGN KEY (`idcli`) REFERENCES `tbclientes` (`idcli`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
