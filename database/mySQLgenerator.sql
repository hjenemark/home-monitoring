-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`kitchen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`kitchen` (
  `timestamp` DATETIME NOT NULL,
  `temperature` DECIMAL(4) NULL,
  `humidity` DECIMAL(4) NULL,
  `light` DECIMAL(3) NULL,
  PRIMARY KEY (`timestamp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`kitchen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`kitchen` (
  `timestamp` DATETIME NOT NULL,
  `temperature` DECIMAL(4) NULL,
  `humidity` DECIMAL(4) NULL,
  `light` DECIMAL(3) NULL,
  PRIMARY KEY (`timestamp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`bedroom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`bedroom` (
  `timestamp` DATETIME NOT NULL,
  `temperature` DECIMAL(4) NULL,
  `humidity` DECIMAL(4) NULL,
  `light` DECIMAL(3) NULL,
  PRIMARY KEY (`timestamp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`hallway`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`hallway` (
  `timestamp` DATETIME NOT NULL,
  `temperature` DECIMAL(4) NULL,
  `light` DECIMAL(3) NULL,
  PRIMARY KEY (`timestamp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`bathroom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`bathroom` (
  `timestamp` DATETIME NOT NULL,
  `temperature` DECIMAL(4) NULL,
  `humidity` DECIMAL(4) NULL,
  `light` DECIMAL(3) NULL,
  PRIMARY KEY (`timestamp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`livingroom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`livingroom` (
  `timestamp` DATETIME NOT NULL,
  `temperature` DECIMAL(4) NULL,
  `humidity` DECIMAL(4) NULL,
  `light` DECIMAL(3) NULL,
  `moisture` DECIMAL(3) NULL,
  PRIMARY KEY (`timestamp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`laundry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`laundry` (
  `timestamp` DATETIME NOT NULL,
  `vibration` DECIMAL(3) NULL,
  PRIMARY KEY (`timestamp`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
