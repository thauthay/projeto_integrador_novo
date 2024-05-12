-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Nov-2020 às 13:42
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escolar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `responsavel` varchar(20) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `data_cadastro` date NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `sexo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `responsavel`, `data_nascimento`, `data_cadastro`, `foto`, `sexo`) VALUES
(1, 'Felipe Santos', '788.888.888-88', '(99) 99999-9999', 'felipe@hotmail.com', 'Rua Almeida Campos 150', '', '2000-11-16', '2020-11-16', 'team-1.jpg', 'M'),
(2, 'Mariano Campos', '789.555.555-55', '(55) 55555-5555', 'mariano@hotmail.com', 'Rua Almeida Campos 145', '', '2001-11-16', '2020-11-16', 'usuario-icone.jpg', 'M'),
(3, 'Marina Silva', '875.555.555-55', '(55) 55555-5555', 'marina@hotmail.com', 'Rua C', '', '2000-11-16', '2020-11-16', 'team-2.jpg', 'F'),
(5, 'Rui Costa Silva', '488.888.888-88', '(33) 33333-3333', 'rui@hotmail.com', 'Rua Almeida Campos 150', '222.222.222-22', '2002-11-17', '2020-11-17', 'sem-foto.jpg', 'M'),
(6, 'Fabricio Silva', '789.522.222-22', '(22) 22222-2222', 'fabricio@hotmail.com', 'Rua Almeida Campos 150', '', '2000-11-26', '2020-11-26', 'usuario-icone.jpg', 'M');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`id`, `turma`, `nome`, `descricao`, `arquivo`, `periodo`) VALUES
(5, 3, 'Introduçao ao Curso', 'Aula introdutória para explicar os conceitos e a grade ...', 'boleto-teste.pdf', 6),
(6, 3, 'Conceitos de Desenvolvimento', '', 'tabelas-sistema-oficina.rar', 6),
(7, 3, 'Introduçao ao Curso', '', 'tabelas-sistema-oficina.rar', 7),
(9, 3, 'Primeiros Comandos', '', NULL, 6),
(10, 3, 'Conceitos de Programação', 'aaaaaaaaa', 'tabelas-sistema-oficina.rar', 6),
(11, 3, 'Conceitos de Desenvolvimento', '', 'boletim.pdf', 7),
(12, 3, 'Introduçao ao Curso', '', NULL, 8),
(13, 3, 'Conceitos de Desenvolvimento', '', NULL, 8),
(14, 3, 'Conceitos de Programação', '', NULL, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamadas`
--

CREATE TABLE `chamadas` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `aula` int(11) NOT NULL,
  `presenca` varchar(5) NOT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `data` date NOT NULL,
  `periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `chamadas`
--

INSERT INTO `chamadas` (`id`, `turma`, `aluno`, `aula`, `presenca`, `justificativa`, `data`, `periodo`) VALUES
(13, 3, 1, 5, 'P', NULL, '2020-11-24', 6),
(14, 3, 2, 5, 'P', NULL, '2020-11-24', 6),
(15, 3, 3, 5, 'F', NULL, '2020-11-24', 6),
(16, 3, 5, 5, 'P', NULL, '2020-11-24', 6),
(17, 3, 5, 6, 'P', NULL, '2020-11-24', 6),
(18, 3, 5, 9, 'F', NULL, '2020-11-24', 6),
(19, 3, 5, 10, 'F', NULL, '2020-11-24', 6),
(20, 3, 5, 7, 'P', NULL, '2020-11-24', 7),
(21, 3, 5, 11, 'F', NULL, '2020-11-25', 7),
(22, 3, 5, 12, 'P', NULL, '2020-11-25', 8),
(23, 3, 5, 13, 'P', NULL, '2020-11-25', 8),
(24, 3, 5, 14, 'F', NULL, '2020-11-25', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_pagar`
--

CREATE TABLE `contas_pagar` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `data_venc` date NOT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `pago` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contas_pagar`
--

INSERT INTO `contas_pagar` (`id`, `descricao`, `valor`, `funcionario`, `data`, `data_venc`, `arquivo`, `pago`) VALUES
(1, 'Conta de Luz', '550.00', '444.444.455-55', '2020-11-25', '2020-11-27', 'conta3.jpg', 'Não'),
(2, 'Conta de Água', '950.00', '444.444.455-55', '2020-11-25', '2020-11-27', 'conta3.jpg', 'Sim'),
(3, 'Conta de Luz', '1450.00', '444.444.455-55', '2020-11-25', '2020-11-27', 'boletim.pdf', 'Sim'),
(4, 'Pagamento Eletrecista', '890.00', '444.444.455-55', '2020-11-25', '2020-11-27', 'sem-foto.jpg', 'Não'),
(6, 'Conta de Água', '690.00', '444.444.455-55', '2020-11-25', '2020-11-25', 'sem-foto.jpg', 'Não'),
(7, 'Compra de Cadeiras', '150.00', '444.444.455-55', '2020-11-25', '2020-11-25', 'sem-foto.jpg', 'Não'),
(8, 'Compra de Materiais', '600.00', '444.444.455-55', '2020-11-26', '2020-11-26', 'sem-foto.jpg', 'Não'),
(9, 'Pagamento Serviço', '250.00', '444.444.455-55', '2020-11-26', '2020-11-26', 'sem-foto.jpg', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`) VALUES
(1, 'Programação WEB'),
(2, 'WEB Designer'),
(4, 'Design Gráfico'),
(5, 'Programador de Jogos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cargo`) VALUES
(1, 'Matheus Santos', '788.888.888-88', 'mateus@hotmail.com', '(99) 99999-9999', 'Rua X', 'Porteiro'),
(2, 'Talita Silva', '899.999.999-99', 'talita@hotmail.com', '(99) 99999-9999', 'Rua Almeida Campos 150', 'Cantineira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `matriculas`
--

INSERT INTO `matriculas` (`id`, `turma`, `aluno`, `data`) VALUES
(13, 2, 5, '2020-11-18'),
(14, 1, 5, '2020-11-18'),
(15, 3, 5, '2020-11-18'),
(16, 4, 5, '2020-11-18'),
(17, 1, 2, '2020-11-18'),
(18, 1, 3, '2020-11-18'),
(19, 2, 1, '2020-11-18'),
(20, 2, 3, '2020-11-18'),
(21, 3, 3, '2020-11-18'),
(22, 3, 1, '2020-11-24'),
(23, 3, 2, '2020-11-24'),
(24, 1, 1, '2020-11-24'),
(25, 2, 2, '2020-11-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `mensalidade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movimentacoes`
--

INSERT INTO `movimentacoes` (`id`, `tipo`, `descricao`, `valor`, `funcionario`, `data`, `mensalidade`) VALUES
(1, 'Entrada', 'Pagamento Mensalidade', '60.00', '444.444.455-55', '2020-11-18', 'Sim'),
(2, 'Entrada', 'Pagamento Mensalidade', '60.00', '444.444.455-55', '2020-11-18', 'Sim'),
(3, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-18', 'Sim'),
(4, 'Entrada', 'Pagamento Mensalidade', '50.00', '444.444.455-55', '2020-11-18', 'Sim'),
(5, 'Entrada', 'Pagamento Mensalidade', '50.00', '444.444.455-55', '2020-11-18', 'Sim'),
(6, 'Entrada', 'Pagamento Mensalidade', '50.00', '444.444.455-55', '2020-11-18', 'Sim'),
(7, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-18', 'Sim'),
(10, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-18', 'Sim'),
(11, 'Entrada', 'Pagamento Mensalidade', '90.00', '444.444.455-55', '2020-11-19', 'Sim'),
(12, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-19', 'Sim'),
(15, 'Saída', 'Pagamento ', '0.00', '444.444.455-55', '2020-11-25', ''),
(16, 'Saída', 'Pagamento Conta de Água', '950.00', '444.444.455-55', '2020-11-25', ''),
(17, 'Saída', 'Pagamento Conta de Luz', '1450.00', '444.444.455-55', '2020-11-25', ''),
(18, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-25', 'Sim'),
(19, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-25', 'Sim'),
(20, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-26', 'Sim'),
(21, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-26', 'Sim'),
(22, 'Saída', 'Pagamento Pagamento Serviço', '250.00', '444.444.455-55', '2020-11-26', ''),
(23, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-26', 'Sim'),
(24, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-26', 'Sim'),
(25, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-26', 'Sim'),
(26, 'Entrada', 'Pagamento Mensalidade', '80.00', '444.444.455-55', '2020-11-26', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `nota` int(11) NOT NULL,
  `nota_max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notas`
--

INSERT INTO `notas` (`id`, `turma`, `periodo`, `aluno`, `descricao`, `nota`, `nota_max`) VALUES
(6, 3, 7, 3, 'Trabalho Bimestral', 7, 10),
(7, 3, 7, 3, 'Prova Bimestral', 8, 10),
(10, 3, 7, 3, 'Participação', 4, 5),
(11, 3, 6, 3, 'Trabalho Bimestral', 7, 8),
(13, 3, 6, 3, 'Prova Bimestral', 5, 10),
(14, 3, 6, 5, 'Trabalho Bimestral', 5, 8),
(15, 3, 6, 5, 'Prova Bimestral', 9, 10),
(17, 3, 6, 5, 'Participação', 5, 7),
(18, 3, 7, 5, 'Prova Bimestral', 8, 10),
(20, 3, 6, 2, 'Prova Bimestral', 8, 10),
(21, 3, 7, 5, 'Participação', 4, 5),
(22, 3, 7, 5, 'Trabalho Bimestral', 8, 10),
(23, 3, 8, 5, 'Trabalho Bimestral', 10, 10),
(24, 3, 8, 5, 'Prova Bimestral', 10, 10),
(25, 3, 8, 5, 'Participação', 3, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodos`
--

CREATE TABLE `periodos` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `total_pontos` int(11) NOT NULL,
  `minimo_media` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `periodos`
--

INSERT INTO `periodos` (`id`, `turma`, `nome`, `data_inicio`, `data_final`, `total_pontos`, `minimo_media`) VALUES
(4, 2, '1º Bimestre', '2020-11-01', '2020-11-27', 25, 15),
(5, 2, '2º Bimestre', '2020-11-01', '2020-11-27', 25, 15),
(6, 3, '1º Bimestre', '2020-11-01', '2020-11-27', 25, 15),
(7, 3, '2º Bimestre', '2020-11-01', '2020-11-27', 25, 15),
(8, 3, '3º Bimestre', '2020-11-01', '2020-11-28', 25, 15),
(9, 3, '4º Bimestre', '2020-11-01', '2020-11-28', 25, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pgto_matriculas`
--

CREATE TABLE `pgto_matriculas` (
  `id` int(11) NOT NULL,
  `matricula` int(11) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `data_venc` date NOT NULL,
  `pago` varchar(5) NOT NULL,
  `arquivo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pgto_matriculas`
--

INSERT INTO `pgto_matriculas` (`id`, `matricula`, `valor`, `data_venc`, `pago`, `arquivo`) VALUES
(13, 13, '90.00', '2020-02-02', 'Sim', 'boleto-teste.pdf'),
(14, 13, '90.00', '2020-03-02', 'Não', NULL),
(15, 13, '90.00', '2020-04-02', 'Não', NULL),
(16, 13, '90.00', '2020-05-02', 'Não', NULL),
(17, 13, '90.00', '2020-06-02', 'Não', NULL),
(18, 13, '90.00', '2020-07-02', 'Não', NULL),
(19, 13, '90.00', '2020-08-02', 'Não', NULL),
(20, 13, '90.00', '2020-09-02', 'Não', NULL),
(21, 13, '90.00', '2020-10-02', 'Não', NULL),
(22, 13, '90.00', '2020-11-02', 'Não', NULL),
(23, 13, '90.00', '2020-12-02', 'Não', NULL),
(24, 13, '90.00', '2021-01-02', 'Não', NULL),
(25, 14, '80.00', '2019-01-01', 'Sim', 'boleto-teste.pdf'),
(26, 14, '80.00', '2019-02-01', 'Sim', 'boleto-teste.pdf'),
(27, 14, '80.00', '2019-03-01', 'Sim', NULL),
(28, 14, '80.00', '2019-04-01', 'Não', NULL),
(29, 14, '80.00', '2019-05-01', 'Não', NULL),
(30, 14, '80.00', '2019-06-01', 'Não', NULL),
(31, 14, '80.00', '2019-07-01', 'Não', NULL),
(32, 14, '80.00', '2019-08-01', 'Não', NULL),
(33, 14, '80.00', '2019-09-01', 'Não', NULL),
(34, 14, '80.00', '2019-10-01', 'Não', NULL),
(35, 14, '80.00', '2019-11-01', 'Não', NULL),
(36, 14, '80.00', '2019-12-01', 'Não', NULL),
(37, 14, '80.00', '2020-01-01', 'Não', NULL),
(38, 14, '80.00', '2020-02-01', 'Não', NULL),
(39, 14, '80.00', '2020-03-01', 'Não', NULL),
(40, 14, '80.00', '2020-04-01', 'Não', NULL),
(41, 14, '80.00', '2020-05-01', 'Não', NULL),
(42, 14, '80.00', '2020-06-01', 'Não', NULL),
(43, 14, '80.00', '2020-07-01', 'Não', NULL),
(44, 14, '80.00', '2020-08-01', 'Não', NULL),
(45, 14, '80.00', '2020-09-01', 'Não', NULL),
(46, 14, '80.00', '2020-10-01', 'Não', NULL),
(47, 14, '80.00', '2020-11-01', 'Não', NULL),
(48, 14, '80.00', '2020-12-01', 'Não', NULL),
(49, 15, '50.00', '2020-12-01', 'Sim', 'boleto-teste.pdf'),
(50, 15, '50.00', '2021-01-01', 'Sim', NULL),
(51, 15, '50.00', '2021-02-01', 'Sim', NULL),
(52, 15, '50.00', '2021-03-01', 'Não', NULL),
(53, 15, '50.00', '2021-04-01', 'Não', NULL),
(54, 15, '50.00', '2021-05-01', 'Não', NULL),
(55, 15, '50.00', '2021-06-01', 'Não', NULL),
(56, 15, '50.00', '2021-07-01', 'Não', NULL),
(57, 15, '50.00', '2021-08-01', 'Não', NULL),
(58, 15, '50.00', '2021-09-01', 'Não', NULL),
(59, 15, '50.00', '2021-10-01', 'Não', NULL),
(60, 15, '50.00', '2021-11-01', 'Não', NULL),
(61, 16, '60.00', '2020-11-01', 'Sim', NULL),
(62, 16, '60.00', '2020-12-01', 'Sim', NULL),
(63, 16, '60.00', '2021-01-01', 'Não', NULL),
(64, 16, '60.00', '2021-02-01', 'Não', NULL),
(65, 16, '60.00', '2021-03-01', 'Não', NULL),
(66, 16, '60.00', '2021-04-01', 'Não', NULL),
(67, 16, '60.00', '2021-05-01', 'Não', NULL),
(68, 16, '60.00', '2021-06-01', 'Não', NULL),
(69, 16, '60.00', '2021-07-01', 'Não', NULL),
(70, 16, '60.00', '2021-08-01', 'Não', NULL),
(71, 16, '60.00', '2021-09-01', 'Não', NULL),
(72, 16, '60.00', '2021-10-01', 'Não', NULL),
(73, 17, '80.00', '2019-01-01', 'Sim', NULL),
(74, 17, '80.00', '2019-02-01', 'Sim', NULL),
(75, 17, '80.00', '2019-03-01', 'Sim', NULL),
(76, 17, '80.00', '2019-04-01', 'Não', NULL),
(77, 17, '80.00', '2019-05-01', 'Não', NULL),
(78, 17, '80.00', '2019-06-01', 'Não', NULL),
(79, 17, '80.00', '2019-07-01', 'Não', NULL),
(80, 17, '80.00', '2019-08-01', 'Não', NULL),
(81, 17, '80.00', '2019-09-01', 'Não', NULL),
(82, 17, '80.00', '2019-10-01', 'Não', NULL),
(83, 17, '80.00', '2019-11-01', 'Não', NULL),
(84, 17, '80.00', '2019-12-01', 'Não', NULL),
(85, 17, '80.00', '2020-01-01', 'Não', NULL),
(86, 17, '80.00', '2020-02-01', 'Não', NULL),
(87, 17, '80.00', '2020-03-01', 'Não', NULL),
(88, 17, '80.00', '2020-04-01', 'Não', NULL),
(89, 17, '80.00', '2020-05-01', 'Não', NULL),
(90, 17, '80.00', '2020-06-01', 'Não', NULL),
(91, 17, '80.00', '2020-07-01', 'Não', NULL),
(92, 17, '80.00', '2020-08-01', 'Não', NULL),
(93, 17, '80.00', '2020-09-01', 'Não', NULL),
(94, 17, '80.00', '2020-10-01', 'Não', NULL),
(95, 17, '80.00', '2020-11-01', 'Não', NULL),
(96, 17, '80.00', '2020-12-01', 'Não', NULL),
(97, 18, '80.00', '2019-01-01', 'Sim', 'boleto-teste.pdf'),
(98, 18, '80.00', '2019-02-01', 'Sim', NULL),
(99, 18, '80.00', '2019-03-01', 'Sim', NULL),
(100, 18, '80.00', '2019-04-01', 'Não', NULL),
(101, 18, '80.00', '2019-05-01', 'Não', NULL),
(102, 18, '80.00', '2019-06-01', 'Não', NULL),
(103, 18, '80.00', '2019-07-01', 'Não', NULL),
(104, 18, '80.00', '2019-08-01', 'Não', NULL),
(105, 18, '80.00', '2019-09-01', 'Não', NULL),
(106, 18, '80.00', '2019-10-01', 'Não', NULL),
(107, 18, '80.00', '2019-11-01', 'Não', NULL),
(108, 18, '80.00', '2019-12-01', 'Não', NULL),
(109, 18, '80.00', '2020-01-01', 'Não', NULL),
(110, 18, '80.00', '2020-02-01', 'Não', NULL),
(111, 18, '80.00', '2020-03-01', 'Não', NULL),
(112, 18, '80.00', '2020-04-01', 'Não', NULL),
(113, 18, '80.00', '2020-05-01', 'Não', NULL),
(114, 18, '80.00', '2020-06-01', 'Não', NULL),
(115, 18, '80.00', '2020-07-01', 'Não', NULL),
(116, 18, '80.00', '2020-08-01', 'Não', NULL),
(117, 18, '80.00', '2020-09-01', 'Não', NULL),
(118, 18, '80.00', '2020-10-01', 'Não', NULL),
(119, 18, '80.00', '2020-11-01', 'Não', NULL),
(120, 18, '80.00', '2020-12-01', 'Não', NULL),
(121, 19, '90.00', '2020-02-02', 'Não', NULL),
(122, 19, '90.00', '2020-03-02', 'Não', NULL),
(123, 19, '90.00', '2020-04-02', 'Não', NULL),
(124, 19, '90.00', '2020-05-02', 'Não', NULL),
(125, 19, '90.00', '2020-06-02', 'Não', NULL),
(126, 19, '90.00', '2020-07-02', 'Não', NULL),
(127, 19, '90.00', '2020-08-02', 'Não', NULL),
(128, 19, '90.00', '2020-09-02', 'Não', NULL),
(129, 19, '90.00', '2020-10-02', 'Não', NULL),
(130, 19, '90.00', '2020-11-02', 'Não', NULL),
(131, 19, '90.00', '2020-12-02', 'Não', NULL),
(132, 19, '90.00', '2021-01-02', 'Não', NULL),
(133, 20, '90.00', '2020-02-02', 'Não', NULL),
(134, 20, '90.00', '2020-03-02', 'Não', NULL),
(135, 20, '90.00', '2020-04-02', 'Não', NULL),
(136, 20, '90.00', '2020-05-02', 'Não', NULL),
(137, 20, '90.00', '2020-06-02', 'Não', NULL),
(138, 20, '90.00', '2020-07-02', 'Não', NULL),
(139, 20, '90.00', '2020-08-02', 'Não', NULL),
(140, 20, '90.00', '2020-09-02', 'Não', NULL),
(141, 20, '90.00', '2020-10-02', 'Não', NULL),
(142, 20, '90.00', '2020-11-02', 'Não', NULL),
(143, 20, '90.00', '2020-12-02', 'Não', NULL),
(144, 20, '90.00', '2021-01-02', 'Não', NULL),
(145, 21, '50.00', '2020-12-01', 'Não', NULL),
(146, 21, '50.00', '2021-01-01', 'Não', NULL),
(147, 21, '50.00', '2021-02-01', 'Não', NULL),
(148, 21, '50.00', '2021-03-01', 'Não', NULL),
(149, 21, '50.00', '2021-04-01', 'Não', NULL),
(150, 21, '50.00', '2021-05-01', 'Não', NULL),
(151, 21, '50.00', '2021-06-01', 'Não', NULL),
(152, 21, '50.00', '2021-07-01', 'Não', NULL),
(153, 21, '50.00', '2021-08-01', 'Não', NULL),
(154, 21, '50.00', '2021-09-01', 'Não', NULL),
(155, 21, '50.00', '2021-10-01', 'Não', NULL),
(156, 21, '50.00', '2021-11-01', 'Não', NULL),
(157, 22, '50.00', '2020-12-01', 'Não', NULL),
(158, 22, '50.00', '2021-01-01', 'Não', NULL),
(159, 22, '50.00', '2021-02-01', 'Não', NULL),
(160, 22, '50.00', '2021-03-01', 'Não', NULL),
(161, 22, '50.00', '2021-04-01', 'Não', NULL),
(162, 22, '50.00', '2021-05-01', 'Não', NULL),
(163, 22, '50.00', '2021-06-01', 'Não', NULL),
(164, 22, '50.00', '2021-07-01', 'Não', NULL),
(165, 22, '50.00', '2021-08-01', 'Não', NULL),
(166, 22, '50.00', '2021-09-01', 'Não', NULL),
(167, 22, '50.00', '2021-10-01', 'Não', NULL),
(168, 22, '50.00', '2021-11-01', 'Não', NULL),
(169, 23, '50.00', '2020-12-01', 'Não', NULL),
(170, 23, '50.00', '2021-01-01', 'Não', NULL),
(171, 23, '50.00', '2021-02-01', 'Não', NULL),
(172, 23, '50.00', '2021-03-01', 'Não', NULL),
(173, 23, '50.00', '2021-04-01', 'Não', NULL),
(174, 23, '50.00', '2021-05-01', 'Não', NULL),
(175, 23, '50.00', '2021-06-01', 'Não', NULL),
(176, 23, '50.00', '2021-07-01', 'Não', NULL),
(177, 23, '50.00', '2021-08-01', 'Não', NULL),
(178, 23, '50.00', '2021-09-01', 'Não', NULL),
(179, 23, '50.00', '2021-10-01', 'Não', NULL),
(180, 23, '50.00', '2021-11-01', 'Não', NULL),
(181, 24, '80.00', '2019-01-01', 'Sim', NULL),
(182, 24, '80.00', '2019-02-01', 'Sim', NULL),
(183, 24, '80.00', '2019-03-01', 'Sim', NULL),
(184, 24, '80.00', '2019-04-01', 'Não', NULL),
(185, 24, '80.00', '2019-05-01', 'Não', NULL),
(186, 24, '80.00', '2019-06-01', 'Não', NULL),
(187, 24, '80.00', '2019-07-01', 'Não', NULL),
(188, 24, '80.00', '2019-08-01', 'Não', NULL),
(189, 24, '80.00', '2019-09-01', 'Não', NULL),
(190, 24, '80.00', '2019-10-01', 'Não', NULL),
(191, 24, '80.00', '2019-11-01', 'Não', NULL),
(192, 24, '80.00', '2019-12-01', 'Não', NULL),
(193, 24, '80.00', '2020-01-01', 'Não', NULL),
(194, 24, '80.00', '2020-02-01', 'Não', NULL),
(195, 24, '80.00', '2020-03-01', 'Não', NULL),
(196, 24, '80.00', '2020-04-01', 'Não', NULL),
(197, 24, '80.00', '2020-05-01', 'Não', NULL),
(198, 24, '80.00', '2020-06-01', 'Não', NULL),
(199, 24, '80.00', '2020-07-01', 'Não', NULL),
(200, 24, '80.00', '2020-08-01', 'Não', NULL),
(201, 24, '80.00', '2020-09-01', 'Não', NULL),
(202, 24, '80.00', '2020-10-01', 'Não', NULL),
(203, 24, '80.00', '2020-11-01', 'Não', NULL),
(204, 24, '80.00', '2020-12-01', 'Não', NULL),
(205, 25, '90.00', '2020-02-02', 'Não', NULL),
(206, 25, '90.00', '2020-03-02', 'Não', NULL),
(207, 25, '90.00', '2020-04-02', 'Não', NULL),
(208, 25, '90.00', '2020-05-02', 'Não', NULL),
(209, 25, '90.00', '2020-06-02', 'Não', NULL),
(210, 25, '90.00', '2020-07-02', 'Não', NULL),
(211, 25, '90.00', '2020-08-02', 'Não', NULL),
(212, 25, '90.00', '2020-09-02', 'Não', NULL),
(213, 25, '90.00', '2020-10-02', 'Não', NULL),
(214, 25, '90.00', '2020-11-02', 'Não', NULL),
(215, 25, '90.00', '2020-12-02', 'Não', NULL),
(216, 25, '90.00', '2021-01-02', 'Não', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `foto`) VALUES
(3, 'Professor Teste', '777.777.777-77', '(77) 77777-7777', 'professor@hotmail.com', 'Rua Almeida Campos 150', 'usuario-icone.jpg'),
(4, 'Hugo Vasconcelos', '788.888.888-88', '(88) 88888-8888', 'hugovasconcelosf@hotmail.com', 'Rua Almeida Campos 150', 'hugo-profile.jpeg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `responsaveis`
--

CREATE TABLE `responsaveis` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `responsaveis`
--

INSERT INTO `responsaveis` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`) VALUES
(1, 'Katia Silva', '111.111.111-11', 'katia@hotmail.com', '(55) 55555-5555', 'Rua 5'),
(2, 'Kamilah Souza', '222.222.222-22', 'kamila@hotmail.com', '(22) 22222-2222', 'Rua C'),
(3, 'Tamara Freitas', '333.333.333-33', 'tamara@hotmail.com', '(33) 33333-3333', 'Rua G');

-- --------------------------------------------------------

--
-- Estrutura da tabela `salas`
--

CREATE TABLE `salas` (
  `id` int(11) NOT NULL,
  `sala` varchar(30) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `salas`
--

INSERT INTO `salas` (`id`, `sala`, `descricao`) VALUES
(1, '101', 'Segunda 09:00'),
(2, '102', 'Segunda 13:00'),
(3, '103', 'Segunda 18:00'),
(5, '104', 'Segunda 22:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secretarios`
--

CREATE TABLE `secretarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `secretarios`
--

INSERT INTO `secretarios` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`) VALUES
(5, 'Marcos Paulo', 'marcos@hotmail.com', '555.555.555-55', '(55) 55555-5555', 'Rua Almeida Campos 145'),
(6, 'Secretário Teste', 'secretario@hotmail.com', '222.222.222-22', '(22) 22222-2222', 'Rua C');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tesoureiros`
--

CREATE TABLE `tesoureiros` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tesoureiros`
--

INSERT INTO `tesoureiros` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`) VALUES
(3, 'Tesoureiro Teste', '444.444.455-55', '(55) 55555-5555', 'tesoureiro@hotmail.com', 'Rua Almeida Campos 150'),
(4, 'Rubens Silva', '789.541.222-22', '(45) 55555-5555', 'rubens@hotmail.com', 'Rua C');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE `turmas` (
  `id` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL,
  `sala` int(11) NOT NULL,
  `professor` int(11) NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `horario` varchar(30) DEFAULT NULL,
  `dia` varchar(30) DEFAULT NULL,
  `valor_mensalidade` decimal(7,2) DEFAULT NULL,
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`id`, `disciplina`, `sala`, `professor`, `data_inicio`, `data_final`, `horario`, `dia`, `valor_mensalidade`, `ano`) VALUES
(1, 1, 2, 3, '2019-01-01', '2021-01-01', '8:00 as 12:00', 'Sexta-Feira', '80.00', 2020),
(2, 4, 1, 4, '2020-02-02', '2021-02-02', '13:00 as 17:00', 'Segunda a Sexta', '90.00', 2020),
(3, 2, 5, 4, '2019-12-01', '2020-11-01', '13:00 as 17:00', 'Segunda a Sexta', '50.00', 2020),
(4, 5, 3, 3, '2020-11-01', '2021-11-01', '8:00 as 12:00', 'Sexta-Feira', '60.00', 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`) VALUES
(5, 'Marcos Pedro', '555.555.555-55', 'marcos@hotmail.com', '123', 'secretaria'),
(6, 'Secretário Teste', '222.222.222-22', 'secretario@hotmail.com', '123', 'secretaria'),
(9, 'Professor Teste', '777.777.777-77', 'professor@hotmail.com', '123', 'professor'),
(12, 'Administrador', '000.000.000-00', 'hvfadvocacia@gmail.com', '123', 'Admin'),
(13, 'Felipe Santos', '788.888.888-88', 'felipe@hotmail.com', '123', 'secretaria'),
(15, 'Felipe Santos', '788.888.888-88', 'felipe@hotmail.com', '123', 'aluno'),
(16, 'Mariano Campos', '789.555.555-55', 'mariano@hotmail.com', '123', 'aluno'),
(17, 'Marina Silva', '875.555.555-55', 'marina@hotmail.com', '123', 'aluno'),
(19, 'Rui Costa Silva', '488.888.888-88', 'rui@hotmail.com', '123', 'aluno'),
(20, 'Tesoureiro Teste', '444.444.455-55', 'tesoureiro@hotmail.com', '123', 'tesoureiro'),
(21, 'Rubens Silva', '789.541.222-22', 'rubens@hotmail.com', '123', 'tesoureiro'),
(22, 'Hugo Vasconcelos', '788.888.888-88', 'hugovasconcelosf@hotmail.com', '123', 'professor'),
(23, 'Fabricio Silva', '789.522.222-22', 'fabricio@hotmail.com', '123', 'aluno');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `chamadas`
--
ALTER TABLE `chamadas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pgto_matriculas`
--
ALTER TABLE `pgto_matriculas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `secretarios`
--
ALTER TABLE `secretarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tesoureiros`
--
ALTER TABLE `tesoureiros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `chamadas`
--
ALTER TABLE `chamadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pgto_matriculas`
--
ALTER TABLE `pgto_matriculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `salas`
--
ALTER TABLE `salas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `secretarios`
--
ALTER TABLE `secretarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tesoureiros`
--
ALTER TABLE `tesoureiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
