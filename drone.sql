-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema drone
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema drone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `drone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `drone` ;

-- -----------------------------------------------------
-- Table `drone`.`drone`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drone`.`drone` ;

CREATE TABLE IF NOT EXISTS `drone`.`drone` (
  `id` INT NOT NULL,
  `brand` VARCHAR(255) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `drone`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drone`.`user` ;

CREATE TABLE IF NOT EXISTS `drone`.`user` (
  `id` INT NOT NULL,
  `fname` VARCHAR(45) NULL DEFAULT NULL,
  `lname` VARCHAR(45) NULL DEFAULT NULL,
  `token` VARCHAR(45) NULL DEFAULT NULL,
  `is_using_drone` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `drone`.`drone_usage`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drone`.`drone_usage` ;

CREATE TABLE IF NOT EXISTS `drone`.`drone_usage` (
  `id` INT NOT NULL,
  `start_time` DATETIME NULL DEFAULT NULL,
  `end_time` DATETIME NULL DEFAULT NULL,
  `drone_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_drone_usage_drone_idx` (`drone_id` ASC) VISIBLE,
  INDEX `fk_drone_usage_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_drone_usage_drone`
    FOREIGN KEY (`drone_id`)
    REFERENCES `drone`.`drone` (`id`),
  CONSTRAINT `fk_drone_usage_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `drone`.`user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `drone`.`picture`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drone`.`picture` ;

CREATE TABLE IF NOT EXISTS `drone`.`picture` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `analysis` TEXT NULL DEFAULT NULL,
  `lat` FLOAT NULL DEFAULT NULL,
  `lon` FLOAT NULL DEFAULT NULL,
  `datetime` DATETIME NULL DEFAULT NULL,
  `drone_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_picture_drone1_idx` (`drone_id` ASC) VISIBLE,
  INDEX `fk_picture_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_picture_drone1`
    FOREIGN KEY (`drone_id`)
    REFERENCES `drone`.`drone` (`id`),
  CONSTRAINT `fk_picture_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `drone`.`user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
