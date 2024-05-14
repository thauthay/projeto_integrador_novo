-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/05/2024 às 17:15
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
-- Banco de dados: `escolar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `responsavel`, `data_nascimento`, `data_cadastro`, `foto`, `sexo`) VALUES
(1, 'Felipe Santos', '788.888.888-88', '(99) 99999-9999', 'felipe@hotmail.com', 'Rua Almeida Campos 150', '333.333.333-33', '2013-11-16', '2020-11-16', 'team-1.jpg', 'M'),
(2, 'Mariano Campos', '789.555.555-55', '(55) 55555-5555', 'mariano@hotmail.com', 'Rua Almeida Campos 145', '222.222.222-22', '2012-11-16', '2020-11-16', 'usuario-icone.jpg', 'M'),
(3, 'Aline Neto Marcello', '664.300.687-22', '(55) 55555-5555', 'aline@hotmail.com', 'Rua C', '222.222.222-22', '2015-11-16', '2020-11-16', 'team-2.jpg', 'M'),
(5, 'Thalita Fausto Luques', '372.876.831-64', '(33) 33333-3333', 'thalita@hotmail.com', 'Rua Almeida Campos 150', '111.111.111-11', '2012-11-17', '2020-11-17', 'sem-foto.jpg', 'F'),
(6, 'Geraldo Vidal', '476.873.123-68', '(22) 22222-2222', 'geraldo@hotmail.com', 'Rua Almeida Campos 150', '111.111.111-11', '2010-11-26', '2020-11-26', 'usuario-icone.jpg', 'M');

-- --------------------------------------------------------

--
-- Estrutura para tabela `aulas`
--

CREATE TABLE `aulas` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `aulas`
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
(14, 3, 'Conceitos de Programação', '', NULL, 8),
(15, 2, 'teste', 'aaa', NULL, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `campos`
--

CREATE TABLE `campos` (
  `id` int(11) NOT NULL,
  `campo` varchar(30) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `campos`
--

INSERT INTO `campos` (`id`, `campo`, `descricao`) VALUES
(5, 'Campo Principal', 'Campo principal'),
(6, 'Campo Reduzido', 'Campo reduzido');

-- --------------------------------------------------------

--
-- Estrutura para tabela `chamadas`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `chamadas`
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
-- Estrutura para tabela `contas_pagar`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `contas_pagar`
--

INSERT INTO `contas_pagar` (`id`, `descricao`, `valor`, `funcionario`, `data`, `data_venc`, `arquivo`, `pago`) VALUES
(1, 'Conta de Luz', 550.00, '444.444.455-55', '2020-11-25', '2020-11-27', 'conta3.jpg', 'Não'),
(2, 'Conta de Água', 950.00, '444.444.455-55', '2020-11-25', '2020-11-27', 'conta3.jpg', 'Sim'),
(3, 'Conta de Luz', 1450.00, '444.444.455-55', '2020-11-25', '2020-11-27', 'boletim.pdf', 'Sim'),
(4, 'Pagamento Eletrecista', 890.00, '444.444.455-55', '2020-11-25', '2020-11-27', 'sem-foto.jpg', 'Não'),
(6, 'Conta de Água', 690.00, '444.444.455-55', '2020-11-25', '2020-11-25', 'sem-foto.jpg', 'Não'),
(7, 'Compra de Cadeiras', 150.00, '444.444.455-55', '2020-11-25', '2020-11-25', 'sem-foto.jpg', 'Não'),
(8, 'Compra de Materiais', 600.00, '444.444.455-55', '2020-11-26', '2020-11-26', 'sem-foto.jpg', 'Não'),
(9, 'Pagamento Serviço', 250.00, '444.444.455-55', '2020-11-26', '2020-11-26', 'sem-foto.jpg', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`, `cargo`) VALUES
(1, 'Matheus Santos', '788.888.888-88', 'mateus@hotmail.com', '(99) 99999-9999', 'Rua X', 'Porteiro'),
(2, 'Talita Silva', '899.999.999-99', 'talita@hotmail.com', '(99) 99999-9999', 'Rua Almeida Campos 150', 'Cantineira');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `matriculas`
--

INSERT INTO `matriculas` (`id`, `turma`, `aluno`, `data`) VALUES
(26, 6, 6, '2024-05-13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `mensalidade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `movimentacoes`
--

INSERT INTO `movimentacoes` (`id`, `tipo`, `descricao`, `valor`, `funcionario`, `data`, `mensalidade`) VALUES
(1, 'Entrada', 'Pagamento Mensalidade', 60.00, '444.444.455-55', '2020-11-18', 'Sim'),
(2, 'Entrada', 'Pagamento Mensalidade', 60.00, '444.444.455-55', '2020-11-18', 'Sim'),
(3, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-18', 'Sim'),
(4, 'Entrada', 'Pagamento Mensalidade', 50.00, '444.444.455-55', '2020-11-18', 'Sim'),
(5, 'Entrada', 'Pagamento Mensalidade', 50.00, '444.444.455-55', '2020-11-18', 'Sim'),
(6, 'Entrada', 'Pagamento Mensalidade', 50.00, '444.444.455-55', '2020-11-18', 'Sim'),
(7, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-18', 'Sim'),
(10, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-18', 'Sim'),
(11, 'Entrada', 'Pagamento Mensalidade', 90.00, '444.444.455-55', '2020-11-19', 'Sim'),
(12, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-19', 'Sim'),
(15, 'Saída', 'Pagamento ', 0.00, '444.444.455-55', '2020-11-25', ''),
(16, 'Saída', 'Pagamento Conta de Água', 950.00, '444.444.455-55', '2020-11-25', ''),
(17, 'Saída', 'Pagamento Conta de Luz', 1450.00, '444.444.455-55', '2020-11-25', ''),
(18, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-25', 'Sim'),
(19, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-25', 'Sim'),
(20, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-26', 'Sim'),
(21, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-26', 'Sim'),
(22, 'Saída', 'Pagamento Pagamento Serviço', 250.00, '444.444.455-55', '2020-11-26', ''),
(23, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-26', 'Sim'),
(24, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-26', 'Sim'),
(25, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-26', 'Sim'),
(26, 'Entrada', 'Pagamento Mensalidade', 80.00, '444.444.455-55', '2020-11-26', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `nota` int(11) NOT NULL,
  `nota_max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `notas`
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
-- Estrutura para tabela `periodos`
--

CREATE TABLE `periodos` (
  `id` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `total_pontos` int(11) NOT NULL,
  `minimo_media` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `periodos`
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
-- Estrutura para tabela `pgto_matriculas`
--

CREATE TABLE `pgto_matriculas` (
  `id` int(11) NOT NULL,
  `matricula` int(11) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `data_venc` date NOT NULL,
  `pago` varchar(5) NOT NULL,
  `arquivo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pgto_matriculas`
--

INSERT INTO `pgto_matriculas` (`id`, `matricula`, `valor`, `data_venc`, `pago`, `arquivo`) VALUES
(217, 26, 100.00, '2024-01-01', 'Não', NULL),
(218, 26, 100.00, '2024-02-01', 'Não', NULL),
(219, 26, 100.00, '2024-03-01', 'Não', NULL),
(220, 26, 100.00, '2024-04-01', 'Não', NULL),
(221, 26, 100.00, '2024-05-01', 'Não', NULL),
(222, 26, 100.00, '2024-06-01', 'Não', NULL),
(223, 26, 100.00, '2024-07-01', 'Não', NULL),
(224, 26, 100.00, '2024-08-01', 'Não', NULL),
(225, 26, 100.00, '2024-09-01', 'Não', NULL),
(226, 26, 100.00, '2024-10-01', 'Não', NULL),
(227, 26, 100.00, '2024-11-01', 'Não', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `foto`) VALUES
(3, 'Professor Teste', '777.777.777-77', '(77) 77777-7777', 'professor@hotmail.com', 'Rua Almeida Campos 150', 'usuario-icone.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `responsaveis`
--

CREATE TABLE `responsaveis` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `responsaveis`
--

INSERT INTO `responsaveis` (`id`, `nome`, `cpf`, `email`, `telefone`, `endereco`) VALUES
(1, 'Katia Silva', '111.111.111-11', 'katia@hotmail.com', '(55) 55555-5555', 'Rua 5'),
(2, 'Kamilah Souza', '222.222.222-22', 'kamila@hotmail.com', '(22) 22222-2222', 'Rua C'),
(3, 'Tamara Freitas', '333.333.333-33', 'tamara@hotmail.com', '(33) 33333-3333', 'Rua G');

-- --------------------------------------------------------

--
-- Estrutura para tabela `secretarios`
--

CREATE TABLE `secretarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `secretarios`
--

INSERT INTO `secretarios` (`id`, `nome`, `email`, `cpf`, `telefone`, `endereco`) VALUES
(6, 'Secretário Teste', 'secretario@hotmail.com', '222.222.222-22', '(22) 22222-2222', 'Rua C');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tesoureiros`
--

CREATE TABLE `tesoureiros` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tesoureiros`
--

INSERT INTO `tesoureiros` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`) VALUES
(3, 'Tesoureiro Teste', '444.444.455-55', '(55) 55555-5555', 'tesoureiro@hotmail.com', 'Rua Almeida Campos 150');

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinos`
--

CREATE TABLE `treinos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `treinos`
--

INSERT INTO `treinos` (`id`, `nome`) VALUES
(1, 'Sub 14'),
(2, 'Sub 12'),
(4, 'Sub 10'),
(5, 'Sub 8'),
(6, 'Sub 16'),
(7, 'Goleiros');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `id` int(11) NOT NULL,
  `treino` int(11) NOT NULL,
  `campo` int(11) NOT NULL,
  `professor` int(11) NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `horario` varchar(30) DEFAULT NULL,
  `dia` varchar(30) DEFAULT NULL,
  `valor_mensalidade` decimal(7,2) DEFAULT NULL,
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`id`, `treino`, `campo`, `professor`, `data_inicio`, `data_final`, `horario`, `dia`, `valor_mensalidade`, `ano`) VALUES
(1, 1, 5, 3, '2024-01-01', '2024-12-31', '16:00 as 17:00', 'Terça e Quinta', 80.00, 2024),
(2, 2, 6, 3, '2024-01-01', '2024-12-31', '18:00 as 19:00', 'Quarta e Sexta', 60.00, 2024),
(3, 4, 6, 3, '2024-01-01', '2024-12-31', '17:00 as 18:00', 'Quarta e Sexta', 60.00, 2024),
(4, 5, 6, 3, '2024-01-01', '2024-12-31', '16:00 as 17:00', 'Quarta e Sexta', 60.00, 2024),
(5, 6, 5, 3, '2024-01-01', '2024-12-31', '17:00 as 18:00', 'Terça e Quinta', 100.00, 2024),
(6, 7, 6, 3, '2024-01-01', '2024-12-31', '18:30 as 19:30', 'Terça e Quinta', 100.00, 2024);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`) VALUES
(6, 'Secretário Teste', '222.222.222-22', 'secretario@hotmail.com', '123', 'secretaria'),
(9, 'Professor Teste', '777.777.777-77', 'professor@hotmail.com', '123', 'professor'),
(12, 'Administrador', '000.000.000-00', 'adm@hotmail.com', '123', 'Admin'),
(16, 'Mariano Campos', '789.555.555-55', 'mariano@hotmail.com', '123', 'aluno'),
(17, 'Aline Neto Marcello', '664.300.687-22', 'aline@hotmail.com', '123', 'aluno'),
(19, 'Thalita Fausto Luques', '372.876.831-64', 'thalita@hotmail.com', '123', 'aluno'),
(20, 'Tesoureiro Teste', '444.444.455-55', 'tesoureiro@hotmail.com', '123', 'tesoureiro'),
(22, 'Felipe Santos', '788.888.888-88', 'felipe@hotmail.com', '123', 'professor'),
(23, 'Geraldo Vidal', '476.873.123-68', 'geraldo@hotmail.com', '123', 'aluno');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `campos`
--
ALTER TABLE `campos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `chamadas`
--
ALTER TABLE `chamadas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pgto_matriculas`
--
ALTER TABLE `pgto_matriculas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `secretarios`
--
ALTER TABLE `secretarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tesoureiros`
--
ALTER TABLE `tesoureiros`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `treinos`
--
ALTER TABLE `treinos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `campos`
--
ALTER TABLE `campos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

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
-- AUTO_INCREMENT de tabela `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
