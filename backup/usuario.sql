-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.11.11-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para fluxo_caixa
CREATE DATABASE IF NOT EXISTS `fluxo_caixa` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `fluxo_caixa`;

-- Copiando estrutura para tabela fluxo_caixa.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `senha` varchar(6) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `obs` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabela de usuários do sistema';

-- Copiando dados para a tabela fluxo_caixa.usuario: ~1 rows (aproximadamente)
INSERT INTO `usuario` (`id_user`, `nome`, `username`, `senha`, `data`, `obs`) VALUES
	(1, 'Administrador', 'Admin', '123456', '2025-02-25', 'Administrador do ssitemas');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
