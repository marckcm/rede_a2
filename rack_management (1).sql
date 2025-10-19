-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2025 às 00:59
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rack_management`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `connections`
--

CREATE TABLE `connections` (
  `id` int(11) NOT NULL,
  `switch_port` varchar(50) NOT NULL,
  `patch_panel_port` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `connections`
--

INSERT INTO `connections` (`id`, `switch_port`, `patch_panel_port`) VALUES
(1, 'R-C1 / S-01', 'P-01'),
(2, 'R-C2 / S-02', 'P-02'),
(3, 'R-P1 / S-03', 'P-03'),
(4, 'A-C1 / S-04', 'P-04'),
(5, 'A-C2 / S-05', 'P-05'),
(6, 'A-P1 / S-06', 'P-06'),
(7, 'X-C1 / S-07', 'P-07'),
(8, 'K1-C1 / S-08', 'P-08'),
(9, 'K2-C1 / S-09', 'P-09'),
(10, 'K3-C1 / S-10', 'P-10'),
(11, 'K4-C1 / S-11', 'P-11'),
(12, 'K5-C1 / S-12', 'P-12'),
(13, 'K6-C1 / S-13', 'P-13'),
(14, 'W-AP1 / S-14', 'P-14'),
(15, 'M-PA1 / S-15', 'P-15'),
(16, 'VAGO / S-16', 'P-16'),
(17, 'VAGO / S-17', 'P-17'),
(18, 'VAGO / S-18', 'P-18'),
(19, 'VAGO / S-19', 'P-19'),
(20, 'VAGO / S-20', 'P-20'),
(21, 'VAGO / S-21', 'P-21'),
(22, 'VAGO / S-22', 'P-22'),
(23, 'VAGO / S-23', 'P-23'),
(24, 'VAGO / S-24', 'P-24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `research_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `connections`
--
ALTER TABLE `connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
