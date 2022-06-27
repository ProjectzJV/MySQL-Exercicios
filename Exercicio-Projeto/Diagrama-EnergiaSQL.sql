-- MySQL Script generated by MySQL Workbench
-- Mon Jun 27 15:38:39 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema der_db_mercado_limpo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema der_db_mercado_limpo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `der_db_mercado_limpo` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `der_db_mercado_limpo` ;

-- -----------------------------------------------------
-- Table `der_db_mercado_limpo`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_db_mercado_limpo`.`tb_usuario` (
  `id_usuario` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `der_db_mercado_limpo`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_db_mercado_limpo`.`tb_categoria` (
  `id_categoria` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `tipo` VARCHAR(255) NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `der_db_mercado_limpo`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_db_mercado_limpo`.`tb_produto` (
  `id_produto` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NULL,
  `preco` DECIMAL(9,2) NULL,
  `estoque` INT NOT NULL,
  `usuario_id` VARCHAR(255) NOT NULL,
  `categoria_id` VARCHAR(255) NOT NULL,
  `id_categoria` BIGINT NOT NULL,
  `id_usuario` BIGINT NOT NULL,
  PRIMARY KEY (`id_produto`),
  INDEX `fk_tb_categoria_idx` (`id_categoria` ASC) VISIBLE,
  INDEX `fk_tb_usuario1_idx` (`id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_tb_categoria`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `der_db_mercado_limpo`.`tb_categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_usuario1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `der_db_mercado_limpo`.`tb_usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;