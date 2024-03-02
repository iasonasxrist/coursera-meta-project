

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- Schema littleDB


-- Schema littleDB

CREATE SCHEMA IF NOT EXISTS `littleDB` DEFAULT CHARACTER SET utf8 ;
USE `littleDB` ;

-- -----------------------------------------------------
-- Table `littleDB`.`CustomerDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleDB`.`CustomerDetails` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `ContactDetail` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleDB`.`StaffInformation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleDB`.`StaffInformation` (
  `StaffID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Role` VARCHAR(45) NOT NULL,
  `Salary` DECIMAL NOT NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleDB`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleDB`.`Bookings` (
  `BookingID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NOT NULL,
  `StaffID` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `TableNumber` INT NOT NULL,
  PRIMARY KEY (`BookingID`),
  INDEX `customer_fk_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `staff_fk_idx` (`StaffID` ASC) VISIBLE,
  CONSTRAINT `customer_bookings_fk`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `littleDB`.`CustomerDetails` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `staff_bookings_fk`
    FOREIGN KEY (`StaffID`)
    REFERENCES `littleDB`.`StaffInformation` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleDB`.`Menus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleDB`.`Menus` (
  `MenuItemID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Type` VARCHAR(45) NOT NULL,
  `Price` DECIMAL NOT NULL,
  PRIMARY KEY (`MenuItemID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleDB`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleDB`.`Orders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NOT NULL,
  `MenuItemID` INT NOT NULL,
  `StaffID` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `Quantity` INT NOT NULL,
  `TotalCost` DECIMAL NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `customer_fk_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `menu_fk_idx` (`MenuItemID` ASC) VISIBLE,
  INDEX `staff_fk_idx` (`StaffID` ASC) VISIBLE,
  CONSTRAINT `customer_orders_fk`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `littleDB`.`CustomerDetails` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `menu_orders_fk`
    FOREIGN KEY (`MenuItemID`)
    REFERENCES `littleDB`.`Menus` (`MenuItemID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `staff_orders_fk`
    FOREIGN KEY (`StaffID`)
    REFERENCES `littleDB`.`StaffInformation` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littleDB`.`OrderDeliveryStatuses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littleDB`.`OrderDeliveryStatuses` (
  `DeliveryID` INT NOT NULL AUTO_INCREMENT,
  `OrderID` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DeliveryID`),
  INDEX `order_fk_idx` (`OrderID` ASC) VISIBLE,
  CONSTRAINT `order_delivery_fk`
    FOREIGN KEY (`OrderID`)
    REFERENCES `littleDB`.`Orders` (`OrderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
