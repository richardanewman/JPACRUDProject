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
  `beginning_balance` DOUBLE NULL DEFAULT 0.00,
  `deposits` DOUBLE NULL DEFAULT 0.00,
  `atm_withdrawals` DOUBLE NULL DEFAULT 0.00,
  `electronic_withdrawals` DOUBLE NULL DEFAULT 0.00,
  `ending_balance` DOUBLE NULL DEFAULT 0.00,
  `statement_period` VARCHAR(200) NULL,
  `account_number` VARCHAR(100) NULL,
  `tx_date` VARCHAR(45) NOT NULL,
  `description` VARCHAR(1000) NOT NULL,
  `amount` DOUBLE NOT NULL,
  `balance` DOUBLE NULL DEFAULT 0.00,
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
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (1, 2000.00, 2000.00, 0, 0, 0, '2019-10-01 to 2019-10-31', '000123456789', '2019-10-01', 'Card purchase 10/01 7-Eleven 39211 Castle Rock CO Card 1234', 46.58, 0.0, 'Rick', 'Richard', 'Newman');
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (2, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-02', 'Card purchase 10/02 Chipotle 39211 Denver CO Card 1234', 9.57, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (3, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-03', 'Card purchase 10/03 Target 39211 Denver CO Card 1234', 23.45, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (4, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-04', 'Card purchase 10/04 Verizon 39211 Castle Rock CO Card 1234', 189.32, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (5, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-05', 'Card purchase 10/05 Walmart  39211 Castle Rock CO Card 1234', 5.32, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (6, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-06', 'Card purchase 10/06 Planet Fitnes 39211 Castle Rock CO Card 1234', 21.10, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (7, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-07', 'Card purchase 10/07 Chipotle 39211 Castle Rock CO Card 1234', 9.97, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (8, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-08', 'Card purchase 10/07 Papa Johns 39211 Castle Rock CO Card 1234', 22.99, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (9, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-09', 'Card purchase 10/08 Bob Dobbs 39211 Castle Rock CO Card 1234', 9.99, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (10, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-10', 'Card purchase 10/10 Amazon 39211 Castle Rock CO Card 1234', 22.00, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (11, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-11', 'Card purchase 10/11 Apple 39211 Castle Rock CO Card 1234', 2.99, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (12, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-12', 'Card purchase 10/12 7-Eleven 39211 Castle Rock CO Card 1234', 40.00, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (13, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-13', 'Card purchase 10/13 Chiptole 39211 Castle Rock CO Card 1234', 9.57, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (14, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-14', 'Card purchase 10/14 Chipotle 39211 Castle Rock CO Card 1234', 15.00, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (15, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-15', 'Paypal Credit', -10.00, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (16, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-16', 'Card purchase 10/16 Apple 39211 Castle Rock CO Card 1234', 2.99, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (17, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-17', 'Card purchase 10/17 PetSmart 39211 Castle Rock CO Card 1234', 21.45, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (18, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-18', 'Card purchase 10/18 Storage 39211 Castle Rock CO Card 1234', 55.00, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (19, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-19', 'Card purchase 10/19 Gas Station 39211 Castle Rock CO Card 1234', 40.00, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (20, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-20', 'Card purchase 10/20 Amazon 39211 Castle Rock CO Card 1234', 32.49, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (21, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-21', 'Card purchase 10/21 Chick Fil a 39211 Castle Rock CO Card 1234', 22.87, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (22, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-22', 'Card purchase 10/22 Popeyes 39211 Castle Rock CO Card 1234', 22.99, 0.0, NULL, NULL, NULL);
INSERT INTO `ledger` (`id`, `beginning_balance`, `deposits`, `atm_withdrawals`, `electronic_withdrawals`, `ending_balance`, `statement_period`, `account_number`, `tx_date`, `description`, `amount`, `balance`, `username`, `first_name`, `last_name`) VALUES (23, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, NULL, '2019-10-23', 'Card purchase 10/23 Amazon 39211 Castle Rock CO Card 1234', 10.00, 0.0, NULL, NULL, NULL);

COMMIT;

