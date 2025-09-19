-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8 ;
USE `movies` ;

-- -----------------------------------------------------
-- Table `movies`.`studio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`studio` ;

CREATE TABLE IF NOT EXISTS `movies`.`studio` (
  `studio_id` INT NOT NULL AUTO_INCREMENT,
  `studio_name` VARCHAR(45) NULL,
  `create_at` TIMESTAMP NULL DEFAULT now(),
  `updated_at` TIMESTAMP NULL DEFAULT now(),
  PRIMARY KEY (`studio_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`movies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`movies` ;

CREATE TABLE IF NOT EXISTS `movies`.`movies` (
  `movie_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `studio_id` INT NULL,
  `rating` CHAR(3) NULL,
  `released_at` YEAR NULL,
  `created_at` TIMESTAMP NULL DEFAULT now(),
  `updated_at` TIMESTAMP NULL DEFAULT now(),
  PRIMARY KEY (`movie_id`),
  INDEX `fk_movie_studio_idx` (`studio_id` ASC) VISIBLE,
  CONSTRAINT `fk_movie_studio`
    FOREIGN KEY (`studio_id`)
    REFERENCES `movies`.`studio` (`studio_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`actors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`actors` ;

CREATE TABLE IF NOT EXISTS `movies`.`actors` (
  `actor_id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `created_at` TIMESTAMP NULL DEFAULT now(),
  `updated_at` TIMESTAMP NULL DEFAULT now(),
  PRIMARY KEY (`actor_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`genre` ;

CREATE TABLE IF NOT EXISTS `movies`.`genre` (
  `genre_id` INT NOT NULL AUTO_INCREMENT,
  `genre` VARCHAR(45) NULL,
  `created_at` TIMESTAMP NULL DEFAULT now(),
  `updated_at` TIMESTAMP NULL DEFAULT now(),
  PRIMARY KEY (`genre_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`features`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`features` ;

CREATE TABLE IF NOT EXISTS `movies`.`features` (
  `feature_id` INT NOT NULL AUTO_INCREMENT,
  `feature` VARCHAR(45) NULL,
  `created_at` TIMESTAMP NULL DEFAULT now(),
  `updated_at` TIMESTAMP NULL DEFAULT now(),
  PRIMARY KEY (`feature_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`movie_genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`movie_genre` ;

CREATE TABLE IF NOT EXISTS `movies`.`movie_genre` (
  `movie_id` INT NOT NULL,
  `genre_id` INT NOT NULL,
  PRIMARY KEY (`movie_id`, `genre_id`),
  INDEX `fk_movie_genre_genre_idx` (`genre_id` ASC) VISIBLE,
  CONSTRAINT `fk_movie_genre_genre`
    FOREIGN KEY (`genre_id`)
    REFERENCES `movies`.`genre` (`genre_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_genre_movie`
    FOREIGN KEY (`movie_id`)
    REFERENCES `movies`.`movies` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`movie_features`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`movie_features` ;

CREATE TABLE IF NOT EXISTS `movies`.`movie_features` (
  `movie_id` INT NOT NULL,
  `feature_id` INT NOT NULL,
  PRIMARY KEY (`movie_id`, `feature_id`),
  INDEX `fk_movie_features_features_idx` (`feature_id` ASC) VISIBLE,
  CONSTRAINT `fk_movie_features_movie`
    FOREIGN KEY (`movie_id`)
    REFERENCES `movies`.`movies` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_features_features`
    FOREIGN KEY (`feature_id`)
    REFERENCES `movies`.`features` (`feature_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`media_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`media_type` ;

CREATE TABLE IF NOT EXISTS `movies`.`media_type` (
  `media_id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  `created_at` TIMESTAMP NULL DEFAULT now(),
  `updated_at` TIMESTAMP NULL DEFAULT now(),
  PRIMARY KEY (`media_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`movie_media_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`movie_media_type` ;

CREATE TABLE IF NOT EXISTS `movies`.`movie_media_type` (
  `movie_id` INT NOT NULL,
  `media_id` INT NOT NULL,
  `price` DECIMAL(11,2) NULL,
  PRIMARY KEY (`movie_id`, `media_id`),
  INDEX `fk_movie_type_media_idx` (`media_id` ASC) VISIBLE,
  CONSTRAINT `fk_movie_type_movie`
    FOREIGN KEY (`movie_id`)
    REFERENCES `movies`.`movies` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_type_media`
    FOREIGN KEY (`media_id`)
    REFERENCES `movies`.`media_type` (`media_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movies`.`movie_cast`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`movie_cast` ;

CREATE TABLE IF NOT EXISTS `movies`.`movie_cast` (
  `movie_id` INT NOT NULL,
  `actor_id` INT NOT NULL,
  PRIMARY KEY (`movie_id`, `actor_id`),
  INDEX `fk_movie_cast_actors_idx` (`actor_id` ASC) VISIBLE,
  CONSTRAINT `fk_movie_cast_movie`
    FOREIGN KEY (`movie_id`)
    REFERENCES `movies`.`movies` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_cast_actors`
    FOREIGN KEY (`actor_id`)
    REFERENCES `movies`.`actors` (`actor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
