-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12-Out-2014 às 19:28
-- Versão do servidor: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `topsis`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contratante`
--

CREATE TABLE IF NOT EXISTS `contratante` (
  `dataCadastro` datetime DEFAULT NULL,
  `foto` longtext,
  `funcionario` varchar(255) DEFAULT NULL,
  `fucnionarioEdit` varchar(255) DEFAULT NULL,
  `matricula` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contratante`
--

INSERT INTO `contratante` (`dataCadastro`, `foto`, `funcionario`, `fucnionarioEdit`, `matricula`) VALUES
('2014-10-11 14:01:59', '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', NULL, 'David de Amorim Cortez', 3502);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependente`
--

CREATE TABLE IF NOT EXISTS `dependente` (
`idDependente` bigint(20) NOT NULL,
  `dataNasc` datetime DEFAULT NULL,
  `dateEdit` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `fk_contratante` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `dependente`
--

INSERT INTO `dependente` (`idDependente`, `dataNasc`, `dateEdit`, `nome`, `fk_contratante`) VALUES
(1, '1999-01-02 00:01:00', '02/01/1999', 'Dependente00', 3502),
(2, '1988-01-11 00:01:00', '11/01/1988', 'Dependente1', 3502),
(3, '1989-01-02 00:01:00', '02/01/1989', 'Dependente3', 3502);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE IF NOT EXISTS `endereco` (
`idEndereco` bigint(20) NOT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `fk_usuario` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `bairro`, `cep`, `cidade`, `complemento`, `logradouro`, `numero`, `uf`, `fk_usuario`) VALUES
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 355341),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10010),
(6, 'Vila Colúmbia', '25575613', 'São João de Meriti', 'Lote 45 Quadra 01', 'Avenida Getúlio Vargas', 11, 'RJ', 3502);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `login` varchar(255) DEFAULT NULL,
  `roles` int(11) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `matricula` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`login`, `roles`, `senha`, `matricula`) VALUES
('testeusr', 0, 'rqponm', 10010),
('dcortez', 1, 'rqponm', 355341);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plano`
--

CREATE TABLE IF NOT EXISTS `plano` (
`idPlano` bigint(20) NOT NULL,
  `nomePlano` varchar(255) DEFAULT NULL,
  `qtdDependente` int(11) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `fk_usuario` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `plano`
--

INSERT INTO `plano` (`idPlano`, `nomePlano`, `qtdDependente`, `valor`, `fk_usuario`) VALUES
(1, 'Intermediário', 3, 70, 3502);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE IF NOT EXISTS `telefone` (
`idTel` bigint(20) NOT NULL,
  `cel` varchar(255) DEFAULT NULL,
  `telCasa` varchar(255) DEFAULT NULL,
  `fk_usuario` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`idTel`, `cel`, `telCasa`, `fk_usuario`) VALUES
(4, '985152778', '26513367', 355341),
(5, '985152778', '26513367', 10010),
(6, '985152778', '26513367', 3502);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `matricula` bigint(20) NOT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `dataNasc` datetime DEFAULT NULL,
  `dateEdit` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `indHabilitado` tinyint(1) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nomeMae` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`matricula`, `cpf`, `dataNasc`, `dateEdit`, `email`, `indHabilitado`, `nome`, `nomeMae`, `sexo`, `tipo`) VALUES
(3502, '10132153700', '1982-08-28 00:00:00', NULL, 'gsdfgds@gmail.com', 0, 'David de Amorim Cortez', 'Arlete de Amorim Cortez', 'M', 'C'),
(10010, NULL, '1982-08-28 00:00:00', NULL, NULL, 0, 'Usuario Comum', NULL, 'M', 'F'),
(355341, NULL, NULL, NULL, NULL, 0, 'David de Amorim Cortez', NULL, 'M', 'F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contratante`
--
ALTER TABLE `contratante`
 ADD PRIMARY KEY (`matricula`), ADD KEY `FK_fwy2ojicuj7f86ec9jhmbs234` (`matricula`);

--
-- Indexes for table `dependente`
--
ALTER TABLE `dependente`
 ADD PRIMARY KEY (`idDependente`), ADD KEY `FK_fbyapj31mtva1qyok8py74s2j` (`fk_contratante`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
 ADD PRIMARY KEY (`idEndereco`), ADD KEY `FK_pho57afme6jclxxeftske6wm1` (`fk_usuario`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
 ADD PRIMARY KEY (`matricula`), ADD KEY `FK_finloe8x47gcj9htaxqphqcb6` (`matricula`);

--
-- Indexes for table `plano`
--
ALTER TABLE `plano`
 ADD PRIMARY KEY (`idPlano`), ADD KEY `FK_si7gq9r5hrjtopi1o9yhd4s0r` (`fk_usuario`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
 ADD PRIMARY KEY (`idTel`), ADD KEY `FK_5pe0uaaegs99aadkvopai0sb4` (`fk_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`matricula`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dependente`
--
ALTER TABLE `dependente`
MODIFY `idDependente` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
MODIFY `idEndereco` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `plano`
--
ALTER TABLE `plano`
MODIFY `idPlano` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `telefone`
--
ALTER TABLE `telefone`
MODIFY `idTel` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `contratante`
--
ALTER TABLE `contratante`
ADD CONSTRAINT `FK_fwy2ojicuj7f86ec9jhmbs234` FOREIGN KEY (`matricula`) REFERENCES `usuario` (`matricula`);

--
-- Limitadores para a tabela `dependente`
--
ALTER TABLE `dependente`
ADD CONSTRAINT `FK_fbyapj31mtva1qyok8py74s2j` FOREIGN KEY (`fk_contratante`) REFERENCES `contratante` (`matricula`);

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
ADD CONSTRAINT `FK_pho57afme6jclxxeftske6wm1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`matricula`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
ADD CONSTRAINT `FK_finloe8x47gcj9htaxqphqcb6` FOREIGN KEY (`matricula`) REFERENCES `usuario` (`matricula`);

--
-- Limitadores para a tabela `plano`
--
ALTER TABLE `plano`
ADD CONSTRAINT `FK_si7gq9r5hrjtopi1o9yhd4s0r` FOREIGN KEY (`fk_usuario`) REFERENCES `contratante` (`matricula`);

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
ADD CONSTRAINT `FK_5pe0uaaegs99aadkvopai0sb4` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`matricula`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
