-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`admin` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `admin_id` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `zipcode` INT NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `membership` VARCHAR(45) NOT NULL,
  `birthday` DATETIME NOT NULL,
  `credit_card_number` INT NOT NULL,
  `credit_card_exp` VARCHAR(45) NOT NULL,
  `credit_card_cvs` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Brand`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Brand` (
  `brand_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`brand_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`item` (
  `item_id` INT NOT NULL,
  `item_name` VARCHAR(45) NOT NULL,
  `market_value` DECIMAL(9) NOT NULL,
  `material` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `condition` VARCHAR(45) NOT NULL,
  `retail_price` VARCHAR(45) NOT NULL,
  `release_date` DATETIME NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `Brand_brand_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`item_id`, `item_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Order` (
  `order_id` INT NOT NULL,
  `Buyer_Username` VARCHAR(45) NULL,
  `Seller_Username` VARCHAR(45) NULL,
  `warehouse_location` VARCHAR(45) NOT NULL,
  `sale_price` DECIMAL(9) NOT NULL,
  `order_date` DATETIME NOT NULL,
  UNIQUE INDEX `Buyer_Username_UNIQUE` (`Buyer_Username` ASC) VISIBLE,
  UNIQUE INDEX `Seller_Username_UNIQUE` (`Seller_Username` ASC) VISIBLE,
  PRIMARY KEY (`order_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`portfolio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`portfolio` (
  `portfolio_id` INT NOT NULL,
  `date_created` VARCHAR(45) NULL,
  PRIMARY KEY (`portfolio_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
