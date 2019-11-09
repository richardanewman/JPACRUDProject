-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ledgerdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ledgerdb` ;

-- -----------------------------------------------------
-- Schema ledgerdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ledgerdb` DEFAULT CHARACTER SET utf8 ;
USE `ledgerdb` ;

-- -----------------------------------------------------
-- Table `ledger`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ledger` ;

CREATE TABLE IF NOT EXISTS `ledger` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `beginning_balance` DOUBLE NULL,
  `deposits` DOUBLE NULL DEFAULT 0.00,
  `atm_withdrawals` DOUBLE NULL DEFAULT 0.00,
  `electronic_withdrawals` DOUBLE NULL DEFAULT 0.00,
  `ending_balance` DOUBLE NULL,
  `statement_period` VARCHAR(200) NULL,
  `account_number` INT NULL,
  `date` DATE NOT NULL,
  `description` VARCHAR(1000) NOT NULL,
  `amount` DOUBLE NOT NULL,
  `balance` DOUBLE NOT NULL,
  `username` VARCHAR(45) NULL,
  `first_name` VARCHAR(100) NULL,
  `last_name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS ledgeruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'ledgeruser'@'localhost' IDENTIFIED BY 'ledgeruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'ledgeruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `ledger`
-- -----------------------------------------------------
START TRANSACTION;
USE `ledgerdb`;
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (1, 46.34, 4150.21, -1802.83, 2375.00, 18.72, '2019-09-24 to 2019-10-22', 000123456789, '2019-09-24', 'Card purchase 09/23 7-Eleven 39211 Castle Rock CO Card 1234', 46.58, -0.24, 'Rick', 'Richard', 'Newman');

COMMIT;

