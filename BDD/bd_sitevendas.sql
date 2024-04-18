-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bdSiteVendas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bdSiteVendas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bdSiteVendas` ;
USE `bdSiteVendas` ;

-- -----------------------------------------------------
-- Table `bdSiteVendas`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdSiteVendas`.`tb_usuarios` (
  `idtb_usuarios` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `tb_usuarioscol` VARCHAR(45) NULL,
  PRIMARY KEY (`idtb_usuarios`),
  UNIQUE INDEX `idtb_usuarios_UNIQUE` (`idtb_usuarios` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bdSiteVendas`.`tb_endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdSiteVendas`.`tb_endereco` (
  `idtb_endereco` INT NOT NULL AUTO_INCREMENT,
  `rua` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `numero` VARCHAR(45) NOT NULL,
  `complemento` VARCHAR(45) NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `CEP` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtb_endereco`),
  UNIQUE INDEX `idtb_endereco_UNIQUE` (`idtb_endereco` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bdSiteVendas`.`tb_pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdSiteVendas`.`tb_pagamento` (
  `idtb_pagamento` INT NOT NULL AUTO_INCREMENT,
  `data` DATETIME NOT NULL,
  `valor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtb_pagamento`),
  UNIQUE INDEX `idtb_pagamento_UNIQUE` (`idtb_pagamento` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
