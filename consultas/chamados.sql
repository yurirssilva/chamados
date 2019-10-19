-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 18-Out-2019 às 02:16
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
CREATE DATABASE IF NOT EXISTS `chamados` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `chamados`;

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
(1, 'Computador lento', 'Aberto', 20180004, '2018-06-15 12:22:14', 6),
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamado_resolvido`
--

DROP TABLE IF EXISTS `chamado_resolvido`;
CREATE TABLE IF NOT EXISTS `chamado_resolvido` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `funcionario_matricula` int(10) UNSIGNED NOT NULL,
  `chamado_id` int(10) UNSIGNED NOT NULL,
  `data_hora_resolucao` timestamp NULL DEFAULT NULL,
  `descricao_solucao` tinytext,
  `data_hora_vinculo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `funcionario_matricula` (`funcionario_matricula`),
  KEY `chamado_resolvido_ibfk_2` (`chamado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `chamado_resolvido`
--

INSERT INTO `chamado_resolvido` (`id`, `funcionario_matricula`, `chamado_id`, `data_hora_resolucao`, `descricao_solucao`, `data_hora_vinculo`) VALUES
(1, 20180011, 6, '2018-07-11 11:50:17', 'problema solucionado', '2018-07-11 11:41:23'),
(2, 20180011, 7, '2018-07-17 15:24:44', 'problema solucionado', '2018-07-17 14:12:05'),
(3, 20180011, 8, '2018-07-20 20:21:43', 'problema solucionado', '2018-07-20 13:58:11'),
(4, 20180011, 9, '2018-08-02 14:42:45', 'problema solucionado', '2018-08-02 14:33:54'),
(5, 20180011, 10, '2018-08-02 15:13:54', 'problema solucionado', '2018-08-02 14:40:40'),
(6, 20180011, 11, '2018-08-02 14:50:54', 'problema solucionado', '2018-08-02 14:37:44'),
(7, 20180010, 12, '2018-08-04 15:45:47', 'problema solucionado', '2018-08-04 15:33:05'),
(8, 20180011, 13, '2018-08-06 12:43:39', 'problema solucionado', '2018-08-06 12:36:54'),
(9, 20180010, 14, '2018-08-06 20:49:15', 'problema solucionado', '2018-08-06 20:45:43'),
(10, 20180010, 15, '2018-08-10 15:45:16', 'problema solucionado', '2018-08-10 15:37:12'),
(11, 20180010, 16, '2018-08-11 16:24:45', 'problema solucionado', '2018-08-11 16:19:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `matricula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `senha` varchar(60) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `tipo` enum('TI','Outros') NOT NULL,
  `setor_codigo` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`matricula`),
  UNIQUE KEY `matricula` (`matricula`),
  KEY `setor_codigo` (`setor_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=20180012 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`matricula`, `senha`, `nome`, `tipo`, `setor_codigo`) VALUES
(20180001, 'e7d80ffeefa212b7c5c55700e4f7193e', 'João Santos Araujo', 'Outros', 11),
(20180002, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Maria Almeida Rosa', 'Outros', 1),
(20180003, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Thiago Aguiar Lopes', 'Outros', 25),
(20180004, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Lucia Pereira Amorim', 'Outros', 16),
(20180005, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Kelly Oliveira de Deus', 'Outros', 27),
(20180006, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Marcelo Santos Ferraz', 'Outros', 15),
(20180007, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Lucas Amaral Lima', 'Outros', 28),
(20180008, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Deli Oliveira Neto', 'Outros', 18),
(20180009, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Jackson Araujo de Carvalho', 'Outros', 13),
(20180010, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Daniel Moitinho Pereira', 'TI', 33),
(20180011, 'e7d80ffeefa212b7c5c55700e4f7193e', 'Luciano Oliveira Santos ', 'TI', 33);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `descricao` tinytext NOT NULL,
  `quantidade` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `descricao`, `quantidade`) VALUES
(1, 'HD', '1 TB', 10),
(2, 'HD', '500 GB', 10),
(3, 'PC', 'i7, 1 TB, Dell, W7', 3),
(4, 'Impressora', 'Hp', 15),
(5, 'Toner', 'Hp', 20),
(6, 'Mouse', 'Hp', 30),
(7, 'Teclado', 'Hp', 30),
(8, 'Estabilizador', ' 220v', 10),
(9, 'Monitor', 'Dell 20 polegadas', 10),
(10, 'Câmeras', 'IntelBras', 10),
(11, 'Cabo de Rede', '100 metros', 2),
(12, 'Cabo telefônico', '100 metros', 2),
(13, 'Conector', 'Para cabo de rede', 200);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_utilizado`
--

DROP TABLE IF EXISTS `produto_utilizado`;
CREATE TABLE IF NOT EXISTS `produto_utilizado` (
  `produto_id` int(10) UNSIGNED NOT NULL,
  `funcionario_matricula` int(10) UNSIGNED NOT NULL,
  `chamado_resolvido_id` int(10) UNSIGNED NOT NULL,
  KEY `produto_id` (`produto_id`),
  KEY `funcionario_matricula` (`funcionario_matricula`),
  KEY `chamado_resolvido_id` (`chamado_resolvido_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto_utilizado`
--

INSERT INTO `produto_utilizado` (`produto_id`, `funcionario_matricula`, `chamado_resolvido_id`) VALUES
(13, 20180010, 1),
(5, 20180011, 2),
(12, 20180011, 3),
(10, 20180011, 4),
(4, 20180011, 5),
(6, 20180010, 6),
(5, 20180011, 7),
(5, 20180010, 8),
(7, 20180010, 9),
(9, 20180010, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

DROP TABLE IF EXISTS `setor`;
CREATE TABLE IF NOT EXISTS `setor` (
  `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `cod_setor` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`codigo`, `nome`) VALUES
(1, 'ADMINISTRAÇÃO'),
(2, 'ARQUIVO'),
(3, 'ESTAGIÁRIO'),
(4, 'AUDITÓRIA PRON.'),
(5, 'AUTORIZAÇÃO'),
(6, 'AUDITÓRIO'),
(7, 'BIOIMAGEM'),
(8, 'CENTRO CIRÚRG.'),
(9, 'COLONOSCOPIA'),
(10, 'COMERCIAL'),
(11, 'CONTABIL.  RH'),
(12, 'ELETROCARD.'),
(13, 'COOR. ENFERM.'),
(14, 'FARMÁCIA'),
(15, 'FATURAMENTO'),
(16, 'FINANCEIRO'),
(17, 'INTERNAMENTO'),
(18, 'LABORATÓRIO'),
(19, 'LECO'),
(20, 'MANUTENÇÃO'),
(21, 'HOTELARIA'),
(22, 'MARKET. QUAL.'),
(23, 'MÉDICOS'),
(24, 'PABX'),
(25, 'PORTARIA'),
(26, 'POSTO ENFERM.'),
(27, 'RECEPÇÃO'),
(28, 'MARCAÇÃO'),
(29, 'SND'),
(30, 'ULTRASSOM'),
(31, 'URODINÃMICA'),
(32, 'UROFLUXO'),
(33, 'TI'),
(34, 'SERVIDORES');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_servico`
--

DROP TABLE IF EXISTS `tipo_de_servico`;
CREATE TABLE IF NOT EXISTS `tipo_de_servico` (
  `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prioridade` enum('Baixa','Media','Alta') NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `cod_servico` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_de_servico`
--

INSERT INTO `tipo_de_servico` (`codigo`, `nome`, `prioridade`) VALUES
(1, 'ALTERAR CPS', 'Baixa'),
(2, 'AVISO DE LENTIDÃO', 'Alta'),
(3, 'DESTRAVAR SAÍDA', 'Baixa'),
(4, 'GERENCIAR USUÁRIO', 'Media'),
(5, 'MANUT. DE CÃMERAS', 'Media'),
(6, 'MANUT. DE COMPUTADOR', 'Alta'),
(7, 'MANUT. DE EMAIL', 'Media'),
(8, 'MANUT. DE IMP/SCAN.', 'Alta'),
(9, 'MANUT. DE INTERNET', 'Alta'),
(10, 'MANUT. OUTROS EQUIP.', 'Baixa'),
(11, 'MANUT. OUTROS PROG.', 'Baixa'),
(12, 'MANUT.DE TEL/RAMAL', 'Baixa'),
(13, 'MANUT. CALL CENTER', 'Alta'),
(14, 'MANUT. DO ECG/MAPA', 'Alta'),
(15, 'MANUT. SISTEMA CPC', 'Alta'),
(16, 'MANUT. SIS. DE PONTO', 'Alta'),
(17, 'MANUT. SIS. DO SUS', 'Baixa'),
(18, 'MANUT. SIS. DOMÍNIO', 'Alta'),
(19, 'MANUT. UROFLUXO MICA', 'Alta'),
(20, 'RETIRAR ALTA', 'Baixa'),
(21, 'SOLICI. DESBLOQUEIOS', 'Baixa'),
(22, 'SOLICI.EQUIPAMENTOS', 'Baixa'),
(23, 'SUPORTE AO USUÁRIO', 'Baixa'),
(24, 'TROCA DE TONER', 'Alta'),
(25, 'UNIFICAR CADASTRO', 'Baixa');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `chamado`
--
ALTER TABLE `chamado`
  ADD CONSTRAINT `chamado_ibfk_1` FOREIGN KEY (`funcionario_matricula`) REFERENCES `funcionario` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chamado_ibfk_2` FOREIGN KEY (`servico_codigo`) REFERENCES `tipo_de_servico` (`codigo`);

--
-- Limitadores para a tabela `chamado_resolvido`
--
ALTER TABLE `chamado_resolvido`
  ADD CONSTRAINT `chamado_resolvido_ibfk_1` FOREIGN KEY (`funcionario_matricula`) REFERENCES `funcionario` (`matricula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `chamado_resolvido_ibfk_2` FOREIGN KEY (`chamado_id`) REFERENCES `chamado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`setor_codigo`) REFERENCES `setor` (`codigo`);

--
-- Limitadores para a tabela `produto_utilizado`
--
ALTER TABLE `produto_utilizado`
  ADD CONSTRAINT `produto_utilizado_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  ADD CONSTRAINT `produto_utilizado_ibfk_2` FOREIGN KEY (`funcionario_matricula`) REFERENCES `funcionario` (`matricula`),
  ADD CONSTRAINT `produto_utilizado_ibfk_3` FOREIGN KEY (`chamado_resolvido_id`) REFERENCES `chamado_resolvido` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
