-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ExamenSQL_Alejandro
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ExamenSQL_Alejandro
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ExamenSQL_Alejandro` ;
USE `ExamenSQL_Alejandro` ;

-- -----------------------------------------------------
-- Table `ExamenSQL_Alejandro`.`CLIENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ExamenSQL_Alejandro`.`CLIENTES` (
  `id_cliente` INT(42) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(42) NOT NULL,
  `e-mail` VARCHAR(42) NOT NULL,
  PRIMARY KEY (`id_cliente`));


-- -----------------------------------------------------
-- Table `ExamenSQL_Alejandro`.`LIBROS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ExamenSQL_Alejandro`.`LIBROS` (
  `id_libro` INT(42) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(42) NOT NULL,
  `autor` VARCHAR(42) NOT NULL,
  `anyo` INT(4) NULL DEFAULT NULL,
  `id_cliente` INT(42) NULL DEFAULT NULL,
  `CLIENTES_id_cliente` INT(42) NULL,
  PRIMARY KEY (`id_libro`),
  INDEX `fk_LIBROS_CLIENTES_idx` (`CLIENTES_id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_LIBROS_CLIENTES`
    FOREIGN KEY (`CLIENTES_id_cliente`)
    REFERENCES `ExamenSQL_Alejandro`.`CLIENTES` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
