-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 18-Out-2019 às 03:55
-- Versão do servidor: 5.7.24-log
-- versão do PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chamados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamado`
--

DROP TABLE IF EXISTS `chamado`;
CREATE TABLE IF NOT EXISTS `chamado` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descricao` tinytext NOT NULL,
  `status` enum('Aberto','Cancelado','Resolvido') NOT NULL,
  `funcionario_matricula` int(10) UNSIGNED NOT NULL,
  `data_hora_abertura` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `servico_codigo` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `funcionario_matricula` (`funcionario_matricula`),
  KEY `servico_codigo` (`servico_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `chamado`
--

INSERT INTO `chamado` (`id`, `descricao`, `status`, `funcionario_matricula`, `data_hora_abertura`, `servico_codigo`) VALUES
(1, 'Computador lento', 'Resolvido', 20180004, '2018-06-15 12:22:14', 6),
(2, 'Programa travou ', 'Aberto', 20180001, '2018-06-16 19:21:34', 11),
(3, 'email não está abrindo', 'Aberto', 20180006, '2018-06-23 13:34:12', 7),
(4, 'Falha no sistema de ponto', 'Aberto', 20180003, '2018-07-01 14:52:36', 16),
(5, 'Sistema do sus travou', 'Aberto', 20180009, '2018-08-02 14:27:59', 17),
(6, 'Sem conexão com a internet', 'Resolvido', 20180002, '2018-07-11 11:40:17', 9),
(7, 'Troca de toner', 'Resolvido', 20180005, '2018-07-17 13:56:18', 24),
(8, 'Ramal não está funcionando', 'Resolvido', 20180005, '2018-07-20 20:11:04', 12),
(9, 'Câmeras não funcionam ', 'Resolvido', 20180003, '2018-08-02 14:37:56', 5),
(10, 'Sistema do sus travou', 'Resolvido', 20180007, '2018-08-02 14:54:24', 17),
(11, 'Nova imprssora ', 'Resolvido', 20180008, '2018-08-02 14:34:00', 22),
(12, 'Troca de mouse', 'Resolvido', 20180001, '2018-08-04 15:30:45', 6),
(13, 'Troca de toner', 'Resolvido', 20180001, '2018-08-06 12:30:59', 24),
(14, 'Troca de toner', 'Resolvido', 20180009, '2018-08-06 20:43:55', 24),
(15, 'Troca de teclado', 'Resolvido', 20180004, '2018-08-10 15:33:12', 6),
(16, 'Troca de monitor', 'Resolvido', 20180005, '2018-08-11 16:10:29', 6),
(17, 'Email voltou a funcionar', 'Cancelado', 20180010, '2018-07-09 17:02:23', 7),
(18, 'Sistema voltou a funcionar', 'Cancelado', 20180011, '2018-08-02 14:46:19', 17);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `chamado`
--
ALTER TABLE `chamado`
  ADD CONSTRAINT `chamado_ibfk_1` FOREIGN KEY (`funcionario_matricula`) REFERENCES `funcionario` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chamado_ibfk_2` FOREIGN KEY (`servico_codigo`) REFERENCES `tipo_de_servico` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
