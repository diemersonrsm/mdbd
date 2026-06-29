-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/06/2026 às 14:14
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_escola`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `ID_Aluno` int(10) NOT NULL,
  `Data_de_nascimento` date DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `ID_Rua` int(10) DEFAULT NULL,
  `ID_Info` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos_responsaveis`
--

CREATE TABLE `alunos_responsaveis` (
  `ID_Aluno` int(10) DEFAULT NULL,
  `ID_Responsavel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `ID_Avaliacao` int(10) NOT NULL,
  `Descricao` varchar(300) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`ID_Avaliacao`, `Descricao`, `Data`, `Valor`) VALUES
(1, 'Prova Bimestral 1 - Teorias da Administração', '2026-04-15', 3.00),
(2, 'Trabalho 1 - Teorias da Administração', '2026-05-10', 2.00),
(3, 'Prova Bimestral 2 - Teorias da Administração', '2026-06-18', 3.00),
(4, 'Projeto Final - Teorias da Administração', '2026-06-30', 2.00),
(5, 'Prova Bimestral 1 - Gestão de Pessoas', '2026-04-15', 3.00),
(6, 'Trabalho 1 - Gestão de Pessoas', '2026-05-10', 2.00),
(7, 'Prova Bimestral 2 - Gestão de Pessoas', '2026-06-18', 3.00),
(8, 'Projeto Final - Gestão de Pessoas', '2026-06-30', 2.00),
(9, 'Prova Bimestral 1 - Contabilidade Geral', '2026-04-15', 3.00),
(10, 'Trabalho 1 - Contabilidade Geral', '2026-05-10', 2.00),
(11, 'Prova Bimestral 2 - Contabilidade Geral', '2026-06-18', 3.00),
(12, 'Projeto Final - Contabilidade Geral', '2026-06-30', 2.00),
(13, 'Prova Bimestral 1 - Gestão Financeira', '2026-04-15', 3.00),
(14, 'Trabalho 1 - Gestão Financeira', '2026-05-10', 2.00),
(15, 'Prova Bimestral 2 - Gestão Financeira', '2026-06-18', 3.00),
(16, 'Projeto Final - Gestão Financeira', '2026-06-30', 2.00),
(17, 'Prova Bimestral 1 - Administração Mercadológica', '2026-04-15', 3.00),
(18, 'Trabalho 1 - Administração Mercadológica', '2026-05-10', 2.00),
(19, 'Prova Bimestral 2 - Administração Mercadológica', '2026-06-18', 3.00),
(20, 'Projeto Final - Administração Mercadológica', '2026-06-30', 2.00),
(21, 'Prova Bimestral 1 - Planejamento Estratégico', '2026-04-15', 3.00),
(22, 'Trabalho 1 - Planejamento Estratégico', '2026-05-10', 2.00),
(23, 'Prova Bimestral 2 - Planejamento Estratégico', '2026-06-18', 3.00),
(24, 'Projeto Final - Planejamento Estratégico', '2026-06-30', 2.00),
(25, 'Prova Bimestral 1 - Logística e Cadeia de Suprimentos', '2026-04-15', 3.00),
(26, 'Trabalho 1 - Logística e Cadeia de Suprimentos', '2026-05-10', 2.00),
(27, 'Prova Bimestral 2 - Logística e Cadeia de Suprimentos', '2026-06-18', 3.00),
(28, 'Projeto Final - Logística e Cadeia de Suprimentos', '2026-06-30', 2.00),
(29, 'Prova Bimestral 1 - Direito Empresarial', '2026-04-15', 3.00),
(30, 'Trabalho 1 - Direito Empresarial', '2026-05-10', 2.00),
(31, 'Prova Bimestral 2 - Direito Empresarial', '2026-06-18', 3.00),
(32, 'Projeto Final - Direito Empresarial', '2026-06-30', 2.00),
(33, 'Prova Bimestral 1 - Comportamento Organizacional', '2026-04-15', 3.00),
(34, 'Trabalho 1 - Comportamento Organizacional', '2026-05-10', 2.00),
(35, 'Prova Bimestral 2 - Comportamento Organizacional', '2026-06-18', 3.00),
(36, 'Projeto Final - Comportamento Organizacional', '2026-06-30', 2.00),
(37, 'Prova Bimestral 1 - Ética e Responsabilidade Social', '2026-04-15', 3.00),
(38, 'Trabalho 1 - Ética e Responsabilidade Social', '2026-05-10', 2.00),
(39, 'Prova Bimestral 2 - Ética e Responsabilidade Social', '2026-06-18', 3.00),
(40, 'Projeto Final - Ética e Responsabilidade Social', '2026-06-30', 2.00),
(41, 'Prova Bimestral 1 - Cálculo Diferencial e Integral', '2026-04-15', 3.00),
(42, 'Trabalho 1 - Cálculo Diferencial e Integral', '2026-05-10', 2.00),
(43, 'Prova Bimestral 2 - Cálculo Diferencial e Integral', '2026-06-18', 3.00),
(44, 'Projeto Final - Cálculo Diferencial e Integral', '2026-06-30', 2.00),
(45, 'Prova Bimestral 1 - Algoritmos e Programação', '2026-04-15', 3.00),
(46, 'Trabalho 1 - Algoritmos e Programação', '2026-05-10', 2.00),
(47, 'Prova Bimestral 2 - Algoritmos e Programação', '2026-06-18', 3.00),
(48, 'Projeto Final - Algoritmos e Programação', '2026-06-30', 2.00),
(49, 'Prova Bimestral 1 - Estrutura de Dados', '2026-04-15', 3.00),
(50, 'Trabalho 1 - Estrutura de Dados', '2026-05-10', 2.00),
(51, 'Prova Bimestral 2 - Estrutura de Dados', '2026-06-18', 3.00),
(52, 'Projeto Final - Estrutura de Dados', '2026-06-30', 2.00),
(53, 'Prova Bimestral 1 - Engenharia de Software', '2026-04-15', 3.00),
(54, 'Trabalho 1 - Engenharia de Software', '2026-05-10', 2.00),
(55, 'Prova Bimestral 2 - Engenharia de Software', '2026-06-18', 3.00),
(56, 'Projeto Final - Engenharia de Software', '2026-06-30', 2.00),
(57, 'Prova Bimestral 1 - Arquitetura de Computadores', '2026-04-15', 3.00),
(58, 'Trabalho 1 - Arquitetura de Computadores', '2026-05-10', 2.00),
(59, 'Prova Bimestral 2 - Arquitetura de Computadores', '2026-06-18', 3.00),
(60, 'Projeto Final - Arquitetura de Computadores', '2026-06-30', 2.00),
(61, 'Prova Bimestral 1 - Sistemas Operacionais', '2026-04-15', 3.00),
(62, 'Trabalho 1 - Sistemas Operacionais', '2026-05-10', 2.00),
(63, 'Prova Bimestral 2 - Sistemas Operacionais', '2026-06-18', 3.00),
(64, 'Projeto Final - Sistemas Operacionais', '2026-06-30', 2.00),
(65, 'Prova Bimestral 1 - Redes de Computadores', '2026-04-15', 3.00),
(66, 'Trabalho 1 - Redes de Computadores', '2026-05-10', 2.00),
(67, 'Prova Bimestral 2 - Redes de Computadores', '2026-06-18', 3.00),
(68, 'Projeto Final - Redes de Computadores', '2026-06-30', 2.00),
(69, 'Prova Bimestral 1 - Banco de Dados', '2026-04-15', 3.00),
(70, 'Trabalho 1 - Banco de Dados', '2026-05-10', 2.00),
(71, 'Prova Bimestral 2 - Banco de Dados', '2026-06-18', 3.00),
(72, 'Projeto Final - Banco de Dados', '2026-06-30', 2.00),
(73, 'Prova Bimestral 1 - Inteligência Artificial', '2026-04-15', 3.00),
(74, 'Trabalho 1 - Inteligência Artificial', '2026-05-10', 2.00),
(75, 'Prova Bimestral 2 - Inteligência Artificial', '2026-06-18', 3.00),
(76, 'Projeto Final - Inteligência Artificial', '2026-06-30', 2.00),
(77, 'Prova Bimestral 1 - Segurança da Informação', '2026-04-15', 3.00),
(78, 'Trabalho 1 - Segurança da Informação', '2026-05-10', 2.00),
(79, 'Prova Bimestral 2 - Segurança da Informação', '2026-06-18', 3.00),
(80, 'Projeto Final - Segurança da Informação', '2026-06-30', 2.00),
(81, 'Prova Bimestral 1 - História da Psicologia', '2026-04-15', 3.00),
(82, 'Trabalho 1 - História da Psicologia', '2026-05-10', 2.00),
(83, 'Prova Bimestral 2 - História da Psicologia', '2026-06-18', 3.00),
(84, 'Projeto Final - História da Psicologia', '2026-06-30', 2.00),
(85, 'Prova Bimestral 1 - Psicologia Social', '2026-04-15', 3.00),
(86, 'Trabalho 1 - Psicologia Social', '2026-05-10', 2.00),
(87, 'Prova Bimestral 2 - Psicologia Social', '2026-06-18', 3.00),
(88, 'Projeto Final - Psicologia Social', '2026-06-30', 2.00),
(89, 'Prova Bimestral 1 - Psicologia do Desenvolvimento', '2026-04-15', 3.00),
(90, 'Trabalho 1 - Psicologia do Desenvolvimento', '2026-05-10', 2.00),
(91, 'Prova Bimestral 2 - Psicologia do Desenvolvimento', '2026-06-18', 3.00),
(92, 'Projeto Final - Psicologia do Desenvolvimento', '2026-06-30', 2.00),
(93, 'Prova Bimestral 1 - Neuroanatomia', '2026-04-15', 3.00),
(94, 'Trabalho 1 - Neuroanatomia', '2026-05-10', 2.00),
(95, 'Prova Bimestral 2 - Neuroanatomia', '2026-06-18', 3.00),
(96, 'Projeto Final - Neuroanatomia', '2026-06-30', 2.00),
(97, 'Prova Bimestral 1 - Psicopatologia', '2026-04-15', 3.00),
(98, 'Trabalho 1 - Psicopatologia', '2026-05-10', 2.00),
(99, 'Prova Bimestral 2 - Psicopatologia', '2026-06-18', 3.00),
(100, 'Projeto Final - Psicopatologia', '2026-06-30', 2.00),
(101, 'Prova Bimestral 1 - Teorias da Personalidade', '2026-04-15', 3.00),
(102, 'Trabalho 1 - Teorias da Personalidade', '2026-05-10', 2.00),
(103, 'Prova Bimestral 2 - Teorias da Personalidade', '2026-06-18', 3.00),
(104, 'Projeto Final - Teorias da Personalidade', '2026-06-30', 2.00),
(105, 'Prova Bimestral 1 - Técnicas de Avaliação Psicológica', '2026-04-15', 3.00),
(106, 'Trabalho 1 - Técnicas de Avaliação Psicológica', '2026-05-10', 2.00),
(107, 'Prova Bimestral 2 - Técnicas de Avaliação Psicológica', '2026-06-18', 3.00),
(108, 'Projeto Final - Técnicas de Avaliação Psicológica', '2026-06-30', 2.00),
(109, 'Prova Bimestral 1 - Psicologia Hospitalar', '2026-04-15', 3.00),
(110, 'Trabalho 1 - Psicologia Hospitalar', '2026-05-10', 2.00),
(111, 'Prova Bimestral 2 - Psicologia Hospitalar', '2026-06-18', 3.00),
(112, 'Projeto Final - Psicologia Hospitalar', '2026-06-30', 2.00),
(113, 'Prova Bimestral 1 - Psicoterapia Clínicas', '2026-04-15', 3.00),
(114, 'Trabalho 1 - Psicoterapia Clínicas', '2026-05-10', 2.00),
(115, 'Prova Bimestral 2 - Psicoterapia Clínicas', '2026-06-18', 3.00),
(116, 'Projeto Final - Psicoterapia Clínicas', '2026-06-30', 2.00),
(117, 'Prova Bimestral 1 - Análise do Comportamento', '2026-04-15', 3.00),
(118, 'Trabalho 1 - Análise do Comportamento', '2026-05-10', 2.00),
(119, 'Prova Bimestral 2 - Análise do Comportamento', '2026-06-18', 3.00),
(120, 'Projeto Final - Análise do Comportamento', '2026-06-30', 2.00),
(121, 'Prova Bimestral 1 - Geometria Analítica e Álgebra Linear', '2026-04-15', 3.00),
(122, 'Trabalho 1 - Geometria Analítica e Álgebra Linear', '2026-05-10', 2.00),
(123, 'Prova Bimestral 2 - Geometria Analítica e Álgebra Linear', '2026-06-18', 3.00),
(124, 'Projeto Final - Geometria Analítica e Álgebra Linear', '2026-06-30', 2.00),
(125, 'Prova Bimestral 1 - Física Mecânica', '2026-04-15', 3.00),
(126, 'Trabalho 1 - Física Mecânica', '2026-05-10', 2.00),
(127, 'Prova Bimestral 2 - Física Mecânica', '2026-06-18', 3.00),
(128, 'Projeto Final - Física Mecânica', '2026-06-30', 2.00),
(129, 'Prova Bimestral 1 - Topografia', '2026-04-15', 3.00),
(130, 'Trabalho 1 - Topografia', '2026-05-10', 2.00),
(131, 'Prova Bimestral 2 - Topografia', '2026-06-18', 3.00),
(132, 'Projeto Final - Topografia', '2026-06-30', 2.00),
(133, 'Prova Bimestral 1 - Resistência dos Materiais', '2026-04-15', 3.00),
(134, 'Trabalho 1 - Resistência dos Materiais', '2026-05-10', 2.00),
(135, 'Prova Bimestral 2 - Resistência dos Materiais', '2026-06-18', 3.00),
(136, 'Projeto Final - Resistência dos Materiais', '2026-06-30', 2.00),
(137, 'Prova Bimestral 1 - Mecânica dos Solos', '2026-04-15', 3.00),
(138, 'Trabalho 1 - Mecânica dos Solos', '2026-05-10', 2.00),
(139, 'Prova Bimestral 2 - Mecânica dos Solos', '2026-06-18', 3.00),
(140, 'Projeto Final - Mecânica dos Solos', '2026-06-30', 2.00),
(141, 'Prova Bimestral 1 - Hidráulica', '2026-04-15', 3.00),
(142, 'Trabalho 1 - Hidráulica', '2026-05-10', 2.00),
(143, 'Prova Bimestral 2 - Hidráulica', '2026-06-18', 3.00),
(144, 'Projeto Final - Hidráulica', '2026-06-30', 2.00),
(145, 'Prova Bimestral 1 - Sistemas Estruturais', '2026-04-15', 3.00),
(146, 'Trabalho 1 - Sistemas Estruturais', '2026-05-10', 2.00),
(147, 'Prova Bimestral 2 - Sistemas Estruturais', '2026-06-18', 3.00),
(148, 'Projeto Final - Sistemas Estruturais', '2026-06-30', 2.00),
(149, 'Prova Bimestral 1 - Instalações Prediais', '2026-04-15', 3.00),
(150, 'Trabalho 1 - Instalações Prediais', '2026-05-10', 2.00),
(151, 'Prova Bimestral 2 - Instalações Prediais', '2026-06-18', 3.00),
(152, 'Projeto Final - Instalações Prediais', '2026-06-30', 2.00),
(153, 'Prova Bimestral 1 - Saneamento Básico', '2026-04-15', 3.00),
(154, 'Trabalho 1 - Saneamento Básico', '2026-05-10', 2.00),
(155, 'Prova Bimestral 2 - Saneamento Básico', '2026-06-18', 3.00),
(156, 'Projeto Final - Saneamento Básico', '2026-06-30', 2.00),
(157, 'Prova Bimestral 1 - Planejamento e Controle de Obras', '2026-04-15', 3.00),
(158, 'Trabalho 1 - Planejamento e Controle de Obras', '2026-05-10', 2.00),
(159, 'Prova Bimestral 2 - Planejamento e Controle de Obras', '2026-06-18', 3.00),
(160, 'Projeto Final - Planejamento e Controle de Obras', '2026-06-30', 2.00),
(161, 'Prova Bimestral 1 - Teorias da Comunicação', '2026-04-15', 3.00),
(162, 'Trabalho 1 - Teorias da Comunicação', '2026-05-10', 2.00),
(163, 'Prova Bimestral 2 - Teorias da Comunicação', '2026-06-18', 3.00),
(164, 'Projeto Final - Teorias da Comunicação', '2026-06-30', 2.00),
(165, 'Prova Bimestral 1 - Redação Jornalística', '2026-04-15', 3.00),
(166, 'Trabalho 1 - Redação Jornalística', '2026-05-10', 2.00),
(167, 'Prova Bimestral 2 - Redação Jornalística', '2026-06-18', 3.00),
(168, 'Projeto Final - Redação Jornalística', '2026-06-30', 2.00),
(169, 'Prova Bimestral 1 - Técnicas de Reportagem e Entrevista', '2026-04-15', 3.00),
(170, 'Trabalho 1 - Técnicas de Reportagem e Entrevista', '2026-05-10', 2.00),
(171, 'Prova Bimestral 2 - Técnicas de Reportagem e Entrevista', '2026-06-18', 3.00),
(172, 'Projeto Final - Técnicas de Reportagem e Entrevista', '2026-06-30', 2.00),
(173, 'Prova Bimestral 1 - Telejornalismo', '2026-04-15', 3.00),
(174, 'Trabalho 1 - Telejornalismo', '2026-05-10', 2.00),
(175, 'Prova Bimestral 2 - Telejornalismo', '2026-06-18', 3.00),
(176, 'Projeto Final - Telejornalismo', '2026-06-30', 2.00),
(177, 'Prova Bimestral 1 - Fotojornalismo', '2026-04-15', 3.00),
(178, 'Trabalho 1 - Fotojornalismo', '2026-05-10', 2.00),
(179, 'Prova Bimestral 2 - Fotojornalismo', '2026-06-18', 3.00),
(180, 'Projeto Final - Fotojornalismo', '2026-06-30', 2.00),
(181, 'Prova Bimestral 1 - Radiojornalismo e Podcasting', '2026-04-15', 3.00),
(182, 'Trabalho 1 - Radiojornalismo e Podcasting', '2026-05-10', 2.00),
(183, 'Prova Bimestral 2 - Radiojornalismo e Podcasting', '2026-06-18', 3.00),
(184, 'Projeto Final - Radiojornalismo e Podcasting', '2026-06-30', 2.00),
(185, 'Prova Bimestral 1 - Jornalismo Digital e Mídias Sociais', '2026-04-15', 3.00),
(186, 'Trabalho 1 - Jornalismo Digital e Mídias Sociais', '2026-05-10', 2.00),
(187, 'Prova Bimestral 2 - Jornalismo Digital e Mídias Sociais', '2026-06-18', 3.00),
(188, 'Projeto Final - Jornalismo Digital e Mídias Sociais', '2026-06-30', 2.00),
(189, 'Prova Bimestral 1 - Ética e Legislação dos Meios', '2026-04-15', 3.00),
(190, 'Trabalho 1 - Ética e Legislação dos Meios', '2026-05-10', 2.00),
(191, 'Prova Bimestral 2 - Ética e Legislação dos Meios', '2026-06-18', 3.00),
(192, 'Projeto Final - Ética e Legislação dos Meios', '2026-06-30', 2.00),
(193, 'Prova Bimestral 1 - Assessoria de Imprensa', '2026-04-15', 3.00),
(194, 'Trabalho 1 - Assessoria de Imprensa', '2026-05-10', 2.00),
(195, 'Prova Bimestral 2 - Assessoria de Imprensa', '2026-06-18', 3.00),
(196, 'Projeto Final - Assessoria de Imprensa', '2026-06-30', 2.00),
(197, 'Prova Bimestral 1 - Geopolítica e Atualidades', '2026-04-15', 3.00),
(198, 'Trabalho 1 - Geopolítica e Atualidades', '2026-05-10', 2.00),
(199, 'Prova Bimestral 2 - Geopolítica e Atualidades', '2026-06-18', 3.00),
(200, 'Projeto Final - Geopolítica e Atualidades', '2026-06-30', 2.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bairros`
--

CREATE TABLE `bairros` (
  `ID_Bairro` int(10) NOT NULL,
  `ID_Cidade` int(10) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins`
--

CREATE TABLE `boletins` (
  `ID_Boletim` int(10) NOT NULL,
  `Notas` decimal(4,2) DEFAULT NULL,
  `Media` decimal(4,2) DEFAULT NULL,
  `Situacao_Final` int(3) DEFAULT NULL,
  `Frequencia` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins_disciplinas`
--

CREATE TABLE `boletins_disciplinas` (
  `ID_Boletim` int(10) DEFAULT NULL,
  `ID_Disciplina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `ID_Cidade` int(10) NOT NULL,
  `ID_UF` int(10) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `coordenadores`
--

CREATE TABLE `coordenadores` (
  `ID_Coordenador` int(10) NOT NULL,
  `Formacao` varchar(30) DEFAULT NULL,
  `ID_Info` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `coordenadores`
--

INSERT INTO `coordenadores` (`ID_Coordenador`, `Formacao`, `ID_Info`) VALUES
(1, 'Doutorado em Administração', 21),
(2, 'Doutorado em Computação', 22),
(3, 'Doutorado em Psicologia', 23),
(4, 'Doutorado em Eng. Civil', 24),
(5, 'Doutorado em Jornalismo', 25);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `ID_Curso` int(10) NOT NULL,
  `Nome_Curso` varchar(50) DEFAULT NULL,
  `Carga_Horaria` time DEFAULT NULL,
  `Duracao` time DEFAULT NULL,
  `Descricao` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`ID_Curso`, `Nome_Curso`, `Carga_Horaria`, `Duracao`, `Descricao`) VALUES
(1, 'Administração', '05:00:00', '99:59:59', 'Focado na gestão de empresas, recursos, finanças e pessoas.'),
(2, 'Ciência da Computação', '05:00:00', '99:59:59', 'Voltado para o desenvolvimento de softwares, algoritmos e infraestrutura tecnológica.'),
(3, 'Psicologia', '05:00:00', '99:59:59', 'Dedicado ao estudo do comportamento humano, processos mentais e saúde mental.'),
(4, 'Engenharia Civil', '05:00:00', '99:59:59', 'Focado no projeto, construção e manutenção de infraestruturas e edifícios.'),
(5, 'Jornalismo', '05:00:00', '99:59:59', 'Voltado para a apuração, produção e disseminação de notícias na mídia.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos_disciplinas`
--

CREATE TABLE `cursos_disciplinas` (
  `ID_Curso` int(10) DEFAULT NULL,
  `ID_Disciplina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `ID_Disciplina` int(10) NOT NULL,
  `Carga_Horaria` time DEFAULT NULL,
  `ProfessorResp` varchar(50) DEFAULT NULL,
  `nome_da_disciplina` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`ID_Disciplina`, `Carga_Horaria`, `ProfessorResp`, `nome_da_disciplina`) VALUES
(1, '02:30:00', 'Roberta Souza', 'Teorias da Administração'),
(2, '02:30:00', 'Roberta Souza', 'Gestão de Pessoas'),
(3, '02:30:00', 'Carlos Eduardo Mendes', 'Contabilidade Geral'),
(4, '02:30:00', 'Carlos Eduardo Mendes', 'Gestão Financeira'),
(5, '02:30:00', 'Bruno Albuquerque', 'Administração Mercadológica'),
(6, '02:30:00', 'Bruno Albuquerque', 'Planejamento Estratégico'),
(7, '02:30:00', 'Arnaldo Antunes Neto', 'Logística e Cadeia de Suprimentos'),
(8, '02:30:00', 'Arnaldo Antunes Neto', 'Direito Empresarial'),
(9, '02:30:00', 'Roberta Souza', 'Comportamento Organizacional'),
(10, '02:30:00', 'Arnaldo Antunes Neto', 'Ética e Responsabilidade Social'),
(11, '02:30:00', 'Eliana Hayashi', 'Cálculo Diferencial e Integral'),
(12, '02:30:00', 'Thiago Ramos', 'Algoritmos e Programação'),
(13, '02:30:00', 'Thiago Ramos', 'Estrutura de Dados'),
(14, '02:30:00', 'Thiago Ramos', 'Engenharia de Software'),
(15, '02:30:00', 'Alexandre Rebouças', 'Arquitetura de Computadores'),
(16, '02:30:00', 'Alexandre Rebouças', 'Sistemas Operacionais'),
(17, '02:30:00', 'Alexandre Rebouças', 'Redes de Computadores'),
(18, '02:30:00', 'Murilo Fontes', 'Banco de Dados'),
(19, '02:30:00', 'Murilo Fontes', 'Inteligência Artificial'),
(20, '02:30:00', 'Murilo Fontes', 'Segurança da Informação'),
(21, '02:30:00', 'Sandra Helena Medeiros', 'História da Psicologia'),
(22, '02:30:00', 'Sandra Helena Medeiros', 'Psicologia Social'),
(23, '02:30:00', 'Ricardo Fragoso', 'Psicologia do Desenvolvimento'),
(24, '02:30:00', 'Ricardo Fragoso', 'Neuroanatomia'),
(25, '02:30:00', 'Beatriz Junqueira', 'Psicopatologia'),
(26, '02:30:00', 'Beatriz Junqueira', 'Teorias da Personalidade'),
(27, '02:30:00', 'Rogério Pires', 'Técnicas de Avaliação Psicológica'),
(28, '02:30:00', 'Rogério Pires', 'Psicologia Hospitalar'),
(29, '02:30:00', 'Beatriz Junqueira', 'Psicoterapia Clínicas'),
(30, '02:30:00', 'Rogério Pires', 'Análise do Comportamento'),
(31, '02:30:00', 'Marcos Vinícius Dias', 'Geometria Analítica e Álgebra Linear'),
(32, '02:30:00', 'Marcos Vinícius Dias', 'Física Mecânica'),
(33, '02:30:00', 'Fernando Castelo', 'Topografia'),
(34, '02:30:00', 'Fernando Castelo', 'Resistência dos Materiais'),
(35, '02:30:00', 'Fernando Castelo', 'Mecânica dos Solos'),
(36, '02:30:00', 'Letícia Guimarães', 'Hidráulica'),
(37, '02:30:00', 'Roberto Montenegro', 'Sistemas Estruturais'),
(38, '02:30:00', 'Roberto Montenegro', 'Instalações Prediais'),
(39, '02:30:00', 'Letícia Guimarães', 'Saneamento Básico'),
(40, '02:30:00', 'Roberto Montenegro', 'Planejamento e Controle de Obras'),
(41, '02:30:00', 'Glória Maria Vasconcellos', 'Teorias da Comunicação'),
(42, '02:30:00', 'Glória Maria Vasconcellos', 'Redação Jornalística'),
(43, '02:30:00', 'Glória Maria Vasconcellos', 'Técnicas de Reportagem e Entrevista'),
(44, '02:30:00', 'Juliano Prado', 'Telejornalismo'),
(45, '02:30:00', 'Juliano Prado', 'Fotojornalismo'),
(46, '02:30:00', 'Mariana Lins', 'Radiojornalismo e Podcasting'),
(47, '02:30:00', 'Mariana Lins', 'Jornalismo Digital e Mídias Sociais'),
(48, '02:30:00', 'Otávio Mesquita Filho', 'Ética e Legislação dos Meios'),
(49, '02:30:00', 'Otávio Mesquita Filho', 'Assessoria de Imprensa'),
(50, '02:30:00', 'Otávio Mesquita Filho', 'Geopolítica e Atualidades');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas_professores`
--

CREATE TABLE `disciplinas_professores` (
  `ID_Disciplina` int(11) DEFAULT NULL,
  `ID_Professor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `formacoes`
--

CREATE TABLE `formacoes` (
  `ID_Formacao` int(10) NOT NULL,
  `Descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `formacoes`
--

INSERT INTO `formacoes` (`ID_Formacao`, `Descricao`) VALUES
(1, 'Doutorado'),
(2, 'Mestrado'),
(3, 'Especialização');

-- --------------------------------------------------------

--
-- Estrutura para tabela `info_pessoal`
--

CREATE TABLE `info_pessoal` (
  `ID_Info` int(10) NOT NULL,
  `CPF` char(11) DEFAULT NULL,
  `Telefone` varchar(12) DEFAULT NULL,
  `E_mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `info_pessoal`
--

INSERT INTO `info_pessoal` (`ID_Info`, `CPF`, `Telefone`, `E_mail`) VALUES
(1, '12345678901', '11987654321', 'carlos.mendes@email.com'),
(2, '23456789012', '11976543210', 'roberta.souza@email.com'),
(3, '34567890123', '11965432109', 'bruno.albuquerque@email.com'),
(4, '45678901234', '11954321098', 'arnaldo.antunes@email.com'),
(5, '56789012345', '11943210987', 'thiago.ramos@email.com'),
(6, '67890123456', '11932109876', 'alexandre.reboucas@email.com'),
(7, '78901234567', '11921098765', 'eliana.hayashi@email.com'),
(8, '89012345678', '11910987654', 'murilo.fontes@email.com'),
(9, '90123456789', '11909876543', 'sandra.medeiros@email.com'),
(10, '01234567890', '11998765432', 'ricardo.fragoso@email.com'),
(11, '11223344556', '11988776655', 'beatriz.junqueira@email.com'),
(12, '22334455667', '11977665544', 'rogerio.pires@email.com'),
(13, '33445566778', '11966554433', 'marcos.dias@email.com'),
(14, '44556677889', '11955443322', 'fernando.castelo@email.com'),
(15, '55667788990', '11944332211', 'leticia.guimaraes@email.com'),
(16, '66778899001', '11933221100', 'roberto.montenegro@email.com'),
(17, '77889900112', '11922110099', 'gloria.vasconcellos@email.com'),
(18, '88990011223', '11911009988', 'juliano.prado@email.com'),
(19, '99001122334', '11900998877', 'mariana.lins@email.com'),
(20, '00112233445', '11999887766', 'otavio.mesquita@email.com'),
(21, '00011122233', '11955551111', 'coord.adm@email.com'),
(22, '11122233344', '11955552222', 'coord.comp@email.com'),
(23, '22233344455', '11955553333', 'coord.psico@email.com'),
(24, '33344455566', '11955554444', 'coord.civil@email.com'),
(25, '44455566677', '11955555555', 'coord.jor@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `ID_Matricula` int(10) NOT NULL,
  `Data_de_Matricula` date DEFAULT NULL,
  `Situação` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `matriculas`
--

INSERT INTO `matriculas` (`ID_Matricula`, `Data_de_Matricula`, `Situação`) VALUES
(1, '2026-06-12', 1),
(2, '2026-06-12', 1),
(3, '2026-06-12', 3),
(4, '2026-06-12', 3),
(5, '2026-06-12', 2),
(6, '2026-06-12', 3),
(7, '2026-06-12', 2),
(8, '2026-06-12', 3),
(9, '2026-06-12', 3),
(10, '2026-06-12', 3),
(11, '2026-06-12', 2),
(12, '2026-06-12', 1),
(13, '2026-06-12', 1),
(14, '2026-06-12', 1),
(15, '2026-06-12', 3),
(16, '2026-06-12', 1),
(17, '2026-06-12', 3),
(18, '2026-06-12', 3),
(19, '2026-06-12', 1),
(20, '2026-06-12', 3),
(21, '2026-06-12', 2),
(22, '2026-06-12', 2),
(23, '2026-06-12', 3),
(24, '2026-06-12', 3),
(25, '2026-06-12', 2),
(26, '2026-06-12', 2),
(27, '2026-06-12', 2),
(28, '2026-06-12', 1),
(29, '2026-06-12', 2),
(30, '2026-06-12', 2),
(31, '2026-06-12', 3),
(32, '2026-06-12', 1),
(33, '2026-06-12', 3),
(34, '2026-06-12', 3),
(35, '2026-06-12', 1),
(36, '2026-06-12', 2),
(37, '2026-06-12', 1),
(38, '2026-06-12', 3),
(39, '2026-06-12', 2),
(40, '2026-06-12', 3),
(41, '2026-06-12', 3),
(42, '2026-06-12', 2),
(43, '2026-06-12', 2),
(44, '2026-06-12', 3),
(45, '2026-06-12', 1),
(46, '2026-06-12', 2),
(47, '2026-06-12', 3),
(48, '2026-06-12', 2),
(49, '2026-06-12', 3),
(50, '2026-06-12', 3),
(51, '2026-06-12', 3),
(52, '2026-06-12', 2),
(53, '2026-06-12', 2),
(54, '2026-06-12', 3),
(55, '2026-06-12', 1),
(56, '2026-06-12', 2),
(57, '2026-06-12', 2),
(58, '2026-06-12', 1),
(59, '2026-06-12', 3),
(60, '2026-06-12', 1),
(61, '2026-06-12', 1),
(62, '2026-06-12', 2),
(63, '2026-06-12', 2),
(64, '2026-06-12', 1),
(65, '2026-06-12', 1),
(66, '2026-06-12', 3),
(67, '2026-06-12', 2),
(68, '2026-06-12', 3),
(69, '2026-06-12', 1),
(70, '2026-06-12', 2),
(71, '2026-06-12', 2),
(72, '2026-06-12', 3),
(73, '2026-06-12', 3),
(74, '2026-06-12', 1),
(75, '2026-06-12', 3),
(76, '2026-06-12', 2),
(77, '2026-06-12', 2),
(78, '2026-06-12', 1),
(79, '2026-06-12', 3),
(80, '2026-06-12', 3),
(81, '2026-06-12', 3),
(82, '2026-06-12', 1),
(83, '2026-06-12', 3),
(84, '2026-06-12', 1),
(85, '2026-06-12', 2),
(86, '2026-06-12', 2),
(87, '2026-06-12', 3),
(88, '2026-06-12', 1),
(89, '2026-06-12', 2),
(90, '2026-06-12', 1),
(91, '2026-06-12', 3),
(92, '2026-06-12', 2),
(93, '2026-06-12', 1),
(94, '2026-06-12', 2),
(95, '2026-06-12', 2),
(96, '2026-06-12', 3),
(97, '2026-06-12', 2),
(98, '2026-06-12', 1),
(99, '2026-06-12', 3),
(100, '2026-06-12', 1),
(101, '2026-06-12', 1),
(102, '2026-06-12', 2),
(103, '2026-06-12', 3),
(104, '2026-06-12', 1),
(105, '2026-06-12', 3),
(106, '2026-06-12', 1),
(107, '2026-06-12', 2),
(108, '2026-06-12', 2),
(109, '2026-06-12', 1),
(110, '2026-06-12', 3),
(111, '2026-06-12', 1),
(112, '2026-06-12', 2),
(113, '2026-06-12', 3),
(114, '2026-06-12', 1),
(115, '2026-06-12', 1),
(116, '2026-06-12', 3),
(117, '2026-06-12', 1),
(118, '2026-06-12', 2),
(119, '2026-06-12', 1),
(120, '2026-06-12', 1),
(121, '2026-06-12', 2),
(122, '2026-06-12', 3),
(123, '2026-06-12', 1),
(124, '2026-06-12', 2),
(125, '2026-06-12', 3),
(126, '2026-06-12', 2),
(127, '2026-06-12', 3),
(128, '2026-06-12', 3),
(129, '2026-06-12', 2),
(130, '2026-06-12', 3),
(131, '2026-06-12', 3),
(132, '2026-06-12', 1),
(133, '2026-06-12', 2),
(134, '2026-06-12', 2),
(135, '2026-06-12', 2),
(136, '2026-06-12', 3),
(137, '2026-06-12', 3),
(138, '2026-06-12', 2),
(139, '2026-06-12', 1),
(140, '2026-06-12', 1),
(141, '2026-06-12', 2),
(142, '2026-06-12', 1),
(143, '2026-06-12', 1),
(144, '2026-06-12', 1),
(145, '2026-06-12', 2),
(146, '2026-06-12', 3),
(147, '2026-06-12', 2),
(148, '2026-06-12', 2),
(149, '2026-06-12', 2),
(150, '2026-06-12', 1),
(151, '2026-06-12', 1),
(152, '2026-06-12', 3),
(153, '2026-06-12', 1),
(154, '2026-06-12', 3),
(155, '2026-06-12', 2),
(156, '2026-06-12', 1),
(157, '2026-06-12', 1),
(158, '2026-06-12', 3),
(159, '2026-06-12', 1),
(160, '2026-06-12', 3),
(161, '2026-06-12', 3),
(162, '2026-06-12', 2),
(163, '2026-06-12', 1),
(164, '2026-06-12', 3),
(165, '2026-06-12', 3),
(166, '2026-06-12', 1),
(167, '2026-06-12', 2),
(168, '2026-06-12', 1),
(169, '2026-06-12', 1),
(170, '2026-06-12', 2),
(171, '2026-06-12', 2),
(172, '2026-06-12', 1),
(173, '2026-06-12', 2),
(174, '2026-06-12', 3),
(175, '2026-06-12', 3),
(176, '2026-06-12', 3),
(177, '2026-06-12', 2),
(178, '2026-06-12', 3),
(179, '2026-06-12', 2),
(180, '2026-06-12', 2),
(181, '2026-06-12', 2),
(182, '2026-06-12', 2),
(183, '2026-06-12', 3),
(184, '2026-06-12', 1),
(185, '2026-06-12', 2),
(186, '2026-06-12', 3),
(187, '2026-06-12', 2),
(188, '2026-06-12', 2),
(189, '2026-06-12', 2),
(190, '2026-06-12', 3),
(191, '2026-06-12', 1),
(192, '2026-06-12', 3),
(193, '2026-06-12', 3),
(194, '2026-06-12', 3),
(195, '2026-06-12', 3),
(196, '2026-06-12', 3),
(197, '2026-06-12', 2),
(198, '2026-06-12', 1),
(199, '2026-06-12', 1),
(200, '2026-06-12', 1),
(201, '2026-06-12', 3),
(202, '2026-06-12', 3),
(203, '2026-06-12', 2),
(204, '2026-06-12', 1),
(205, '2026-06-12', 3),
(206, '2026-06-12', 3),
(207, '2026-06-12', 1),
(208, '2026-06-12', 1),
(209, '2026-06-12', 3),
(210, '2026-06-12', 1),
(211, '2026-06-12', 3),
(212, '2026-06-12', 3),
(213, '2026-06-12', 2),
(214, '2026-06-12', 2),
(215, '2026-06-12', 1),
(216, '2026-06-12', 2),
(217, '2026-06-12', 3),
(218, '2026-06-12', 2),
(219, '2026-06-12', 3),
(220, '2026-06-12', 1),
(221, '2026-06-12', 2),
(222, '2026-06-12', 1),
(223, '2026-06-12', 1),
(224, '2026-06-12', 3),
(225, '2026-06-12', 1),
(226, '2026-06-12', 2),
(227, '2026-06-12', 2),
(228, '2026-06-12', 2),
(229, '2026-06-12', 1),
(230, '2026-06-12', 3),
(231, '2026-06-12', 2),
(232, '2026-06-12', 3),
(233, '2026-06-12', 2),
(234, '2026-06-12', 3),
(235, '2026-06-12', 3),
(236, '2026-06-12', 2),
(237, '2026-06-12', 3),
(238, '2026-06-12', 3),
(239, '2026-06-12', 2),
(240, '2026-06-12', 1),
(241, '2026-06-12', 3),
(242, '2026-06-12', 2),
(243, '2026-06-12', 2),
(244, '2026-06-12', 2),
(245, '2026-06-12', 2),
(246, '2026-06-12', 3),
(247, '2026-06-12', 2),
(248, '2026-06-12', 1),
(249, '2026-06-12', 2),
(250, '2026-06-12', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas_cursos`
--

CREATE TABLE `matriculas_cursos` (
  `ID_Matricula` int(10) DEFAULT NULL,
  `ID_Curso` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `ID_Professor` int(10) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `ID_Info` int(10) DEFAULT NULL,
  `ID_Formacao` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`ID_Professor`, `Nome`, `ID_Info`, `ID_Formacao`) VALUES
(1, 'Carlos Eduardo Mendes', 1, 1),
(2, 'Roberta Souza', 2, 2),
(3, 'Bruno Albuquerque', 3, 1),
(4, 'Arnaldo Antunes Neto', 4, 1),
(5, 'Thiago Ramos', 5, 2),
(6, 'Alexandre Rebouças', 6, 1),
(7, 'Eliana Hayashi', 7, 1),
(8, 'Murilo Fontes', 8, 1),
(9, 'Sandra Helena Medeiros', 9, 1),
(10, 'Ricardo Fragoso', 10, 1),
(11, 'Beatriz Junqueira', 11, 1),
(12, 'Rogério Pires', 12, 2),
(13, 'Marcos Vinícius Dias', 13, 2),
(14, 'Fernando Castelo', 14, 1),
(15, 'Letícia Guimarães', 15, 1),
(16, 'Roberto Montenegro', 16, 3),
(17, 'Glória Maria Vasconcellos', 17, 1),
(18, 'Juliano Prado', 18, 2),
(19, 'Mariana Lins', 19, 2),
(20, 'Otávio Mesquita Filho', 20, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `responsaveis`
--

CREATE TABLE `responsaveis` (
  `ID_Responsavel` int(10) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Parentesco` varchar(20) DEFAULT NULL,
  `ID_Info` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ruas`
--

CREATE TABLE `ruas` (
  `ID_Rua` int(10) NOT NULL,
  `ID_Bairro` int(10) DEFAULT NULL,
  `Numero` varchar(5) DEFAULT NULL,
  `CEP` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `ID_Turma` int(10) NOT NULL,
  `Ano_Letivo` varchar(4) DEFAULT NULL,
  `Turno` char(5) DEFAULT NULL,
  `Sala` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `uf`
--

CREATE TABLE `uf` (
  `ID_UF` int(10) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Sigla` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`ID_Aluno`),
  ADD KEY `FK_Alunos_2` (`ID_Rua`),
  ADD KEY `FK_Alunos_3` (`ID_Info`);

--
-- Índices de tabela `alunos_responsaveis`
--
ALTER TABLE `alunos_responsaveis`
  ADD KEY `FK_Alunos_Responsaveis_1` (`ID_Responsavel`),
  ADD KEY `FK_Alunos_Responsaveis_2` (`ID_Aluno`);

--
-- Índices de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`ID_Avaliacao`);

--
-- Índices de tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`ID_Bairro`),
  ADD KEY `FK_Bairros_2` (`ID_Cidade`);

--
-- Índices de tabela `boletins`
--
ALTER TABLE `boletins`
  ADD PRIMARY KEY (`ID_Boletim`);

--
-- Índices de tabela `boletins_disciplinas`
--
ALTER TABLE `boletins_disciplinas`
  ADD KEY `FK_Boletins_Disciplinas_1` (`ID_Disciplina`),
  ADD KEY `FK_Boletins_Disciplinas_2` (`ID_Boletim`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`ID_Cidade`),
  ADD KEY `FK_Cidades_2` (`ID_UF`);

--
-- Índices de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD PRIMARY KEY (`ID_Coordenador`),
  ADD KEY `FK_Coordenadores_2` (`ID_Info`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID_Curso`);

--
-- Índices de tabela `cursos_disciplinas`
--
ALTER TABLE `cursos_disciplinas`
  ADD KEY `FK_Cursos_Disciplinas_1` (`ID_Curso`),
  ADD KEY `FK_Cursos_Disciplinas_2` (`ID_Disciplina`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`ID_Disciplina`);

--
-- Índices de tabela `disciplinas_professores`
--
ALTER TABLE `disciplinas_professores`
  ADD KEY `FK_Disciplinas_Professores_1` (`ID_Disciplina`),
  ADD KEY `FK_Disciplinas_Professores_2` (`ID_Professor`);

--
-- Índices de tabela `formacoes`
--
ALTER TABLE `formacoes`
  ADD PRIMARY KEY (`ID_Formacao`);

--
-- Índices de tabela `info_pessoal`
--
ALTER TABLE `info_pessoal`
  ADD PRIMARY KEY (`ID_Info`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`ID_Matricula`);

--
-- Índices de tabela `matriculas_cursos`
--
ALTER TABLE `matriculas_cursos`
  ADD KEY `FK_Matriculas_Cursos_1` (`ID_Matricula`),
  ADD KEY `FK_Matriculas_Cursos_2` (`ID_Curso`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`ID_Professor`),
  ADD KEY `FK_Professores_2` (`ID_Info`),
  ADD KEY `FK_Professores_3` (`ID_Formacao`);

--
-- Índices de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`ID_Responsavel`),
  ADD KEY `FK_Responsaveis_2` (`ID_Info`);

--
-- Índices de tabela `ruas`
--
ALTER TABLE `ruas`
  ADD PRIMARY KEY (`ID_Rua`),
  ADD KEY `FK_Ruas_2` (`ID_Bairro`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`ID_Turma`);

--
-- Índices de tabela `uf`
--
ALTER TABLE `uf`
  ADD PRIMARY KEY (`ID_UF`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `ID_Aluno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `ID_Avaliacao` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `ID_Bairro` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `boletins`
--
ALTER TABLE `boletins`
  MODIFY `ID_Boletim` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `ID_Cidade` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  MODIFY `ID_Coordenador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID_Curso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `ID_Disciplina` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `formacoes`
--
ALTER TABLE `formacoes`
  MODIFY `ID_Formacao` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `info_pessoal`
--
ALTER TABLE `info_pessoal`
  MODIFY `ID_Info` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `ID_Matricula` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `ID_Professor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  MODIFY `ID_Responsavel` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ruas`
--
ALTER TABLE `ruas`
  MODIFY `ID_Rua` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `ID_Turma` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `uf`
--
ALTER TABLE `uf`
  MODIFY `ID_UF` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `FK_Alunos_2` FOREIGN KEY (`ID_Rua`) REFERENCES `ruas` (`ID_Rua`),
  ADD CONSTRAINT `FK_Alunos_3` FOREIGN KEY (`ID_Info`) REFERENCES `info_pessoal` (`ID_Info`);

--
-- Restrições para tabelas `alunos_responsaveis`
--
ALTER TABLE `alunos_responsaveis`
  ADD CONSTRAINT `FK_Alunos_Responsaveis_1` FOREIGN KEY (`ID_Responsavel`) REFERENCES `responsaveis` (`ID_Responsavel`),
  ADD CONSTRAINT `FK_Alunos_Responsaveis_2` FOREIGN KEY (`ID_Aluno`) REFERENCES `alunos` (`ID_Aluno`);

--
-- Restrições para tabelas `bairros`
--
ALTER TABLE `bairros`
  ADD CONSTRAINT `FK_Bairros_2` FOREIGN KEY (`ID_Cidade`) REFERENCES `cidades` (`ID_Cidade`);

--
-- Restrições para tabelas `boletins_disciplinas`
--
ALTER TABLE `boletins_disciplinas`
  ADD CONSTRAINT `FK_Boletins_Disciplinas_1` FOREIGN KEY (`ID_Disciplina`) REFERENCES `disciplinas` (`ID_Disciplina`),
  ADD CONSTRAINT `FK_Boletins_Disciplinas_2` FOREIGN KEY (`ID_Boletim`) REFERENCES `boletins` (`ID_Boletim`);

--
-- Restrições para tabelas `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `FK_Cidades_2` FOREIGN KEY (`ID_UF`) REFERENCES `uf` (`ID_UF`);

--
-- Restrições para tabelas `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD CONSTRAINT `FK_Coordenadores_2` FOREIGN KEY (`ID_Info`) REFERENCES `info_pessoal` (`ID_Info`);

--
-- Restrições para tabelas `cursos_disciplinas`
--
ALTER TABLE `cursos_disciplinas`
  ADD CONSTRAINT `FK_Cursos_Disciplinas_1` FOREIGN KEY (`ID_Curso`) REFERENCES `cursos` (`ID_Curso`),
  ADD CONSTRAINT `FK_Cursos_Disciplinas_2` FOREIGN KEY (`ID_Disciplina`) REFERENCES `disciplinas` (`ID_Disciplina`);

--
-- Restrições para tabelas `disciplinas_professores`
--
ALTER TABLE `disciplinas_professores`
  ADD CONSTRAINT `FK_Disciplinas_Professores_1` FOREIGN KEY (`ID_Disciplina`) REFERENCES `disciplinas` (`ID_Disciplina`),
  ADD CONSTRAINT `FK_Disciplinas_Professores_2` FOREIGN KEY (`ID_Professor`) REFERENCES `professores` (`ID_Professor`);

--
-- Restrições para tabelas `matriculas_cursos`
--
ALTER TABLE `matriculas_cursos`
  ADD CONSTRAINT `FK_Matriculas_Cursos_1` FOREIGN KEY (`ID_Matricula`) REFERENCES `matriculas` (`ID_Matricula`),
  ADD CONSTRAINT `FK_Matriculas_Cursos_2` FOREIGN KEY (`ID_Curso`) REFERENCES `cursos` (`ID_Curso`);

--
-- Restrições para tabelas `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `FK_Professores_2` FOREIGN KEY (`ID_Info`) REFERENCES `info_pessoal` (`ID_Info`),
  ADD CONSTRAINT `FK_Professores_3` FOREIGN KEY (`ID_Formacao`) REFERENCES `formacoes` (`ID_Formacao`);

--
-- Restrições para tabelas `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD CONSTRAINT `FK_Responsaveis_2` FOREIGN KEY (`ID_Info`) REFERENCES `info_pessoal` (`ID_Info`);

--
-- Restrições para tabelas `ruas`
--
ALTER TABLE `ruas`
  ADD CONSTRAINT `FK_Ruas_2` FOREIGN KEY (`ID_Bairro`) REFERENCES `bairros` (`ID_Bairro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
