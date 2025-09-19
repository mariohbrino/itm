-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema art
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `art` ;

-- -----------------------------------------------------
-- Schema art
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `art` DEFAULT CHARACTER SET utf8 ;
USE `art` ;

-- -----------------------------------------------------
-- Table `art`.`artists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art`.`artists` (
  `artist_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `middle_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `born_at` SMALLINT UNSIGNED NULL,
  `dead_at` SMALLINT UNSIGNED NULL,
  `local` TINYINT(1) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT now(),
  `updated_at` TIMESTAMP NOT NULL DEFAULT now(),
  PRIMARY KEY (`artist_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art`.`artworks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art`.`artworks` (
  `artwork_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `year` SMALLINT UNSIGNED NULL,
  `artist_id` INT NOT NULL,
  `country` VARCHAR(120) NOT NULL,
  `period` VARCHAR(120) NOT NULL,
  `style` VARCHAR(120) NOT NULL,
  `filename` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT now(),
  `updated_at` TIMESTAMP NOT NULL DEFAULT now(),
  PRIMARY KEY (`artwork_id`),
  INDEX `fk_artist_id_idx` (`artist_id` ASC) VISIBLE,
  CONSTRAINT `fk_artist_id`
    FOREIGN KEY (`artist_id`)
    REFERENCES `art`.`artists` (`artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art`.`keywords`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art`.`keywords` (
  `keyword_id` INT NOT NULL AUTO_INCREMENT,
  `keyword` VARCHAR(120) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT now(),
  `updated_at` TIMESTAMP NOT NULL DEFAULT now(),
  PRIMARY KEY (`keyword_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art`.`artworks_keywords`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art`.`artworks_keywords` (
  `artwork_id` INT NOT NULL,
  `keyword_id` INT NOT NULL,
  PRIMARY KEY (`artwork_id`, `keyword_id`),
  INDEX `fk_keyword_id_idx` (`keyword_id` ASC) VISIBLE,
  CONSTRAINT `fk_artwork_id`
    FOREIGN KEY (`artwork_id`)
    REFERENCES `art`.`artworks` (`artwork_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_keyword_id`
    FOREIGN KEY (`keyword_id`)
    REFERENCES `art`.`keywords` (`keyword_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
