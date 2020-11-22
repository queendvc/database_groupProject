-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema HotelChainDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `HotelChainDB`;
-- -----------------------------------------------------
-- Schema HotelChainDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `HotelChainDB` DEFAULT CHARACTER SET utf8 ;
USE `HotelChainDB` ;

-- -----------------------------------------------------
-- Table `HotelChainDB`.`HOTEL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`HOTEL` (
  `hotelID` INT NOT NULL,
  `hotelAddress` VARCHAR(150) NOT NULL,
  `hotelName` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`hotelID`),
  UNIQUE INDEX `hotelID_UNIQUE` (`hotelID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`HOTELFEATURES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`HOTELFEATURES` (
  `features` VARCHAR(45) NOT NULL,
  `hotelID` INT NOT NULL,
  PRIMARY KEY (`features`, `hotelID`),
  INDEX `fk_HOTEL_FEATURES_HOTEL1_idx` (`hotelID` ASC) VISIBLE)
--   CONSTRAINT `fk_HOTEL_FEATURES_HOTEL1`
--     FOREIGN KEY (`hotelID`)
--     REFERENCES `HotelChainDB`.`HOTEL` (`hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`HOTELPHONENUMBER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`HOTELPHONENUMBER` (
  `phoneNumber` DECIMAL(30) NOT NULL,
  `hotelID` INT NOT NULL,
  PRIMARY KEY (`phoneNumber`, `hotelID`),
  INDEX `fk_HOTEL_PHONE_NUMBER_HOTEL_idx` (`hotelID` ASC) VISIBLE)
--   CONSTRAINT `fk_HOTEL_PHONE_NUMBER_HOTEL`
--     FOREIGN KEY (`hotelID`)
--     REFERENCES `HotelChainDB`.`HOTEL` (`hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`GUEST`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`GUEST` (
  `guestID` INT NOT NULL,
  `ID_type` VARCHAR(100) NOT NULL,
  `ID_number` VARCHAR(100) NOT NULL,
  `address` VARCHAR(150) NULL,
  `guestStatus` VARCHAR(45) NULL,
  `discountCoefficient` FLOAT NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `emailAddress` VARCHAR(200) NULL,
  PRIMARY KEY (`guestID`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `emailAddress_UNIQUE` (`emailAddress` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`SEASON`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`SEASON` (
  `seasonName` VARCHAR(45) NOT NULL,
  `seasonCoefficient` FLOAT NOT NULL,
  `startDate` DATETIME NOT NULL,
  `endDate` DATETIME NOT NULL,
  PRIMARY KEY (`seasonName`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`EMPLOYEE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`EMPLOYEE` (
  `employeeID` INT NOT NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `address` VARCHAR(150) NOT NULL,
  `sex` CHAR(1) NOT NULL,
  `contactNumber` DECIMAL(45) NOT NULL,
  `employeeStatus` VARCHAR(100) NOT NULL,
  `hotelID` INT NOT NULL,
  `payroll` FLOAT NULL,
  `workingHours` INT NULL,
  `workingDays` INT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`employeeID`),
  INDEX `fk_EMPLOYEE_HOTEL1_idx` (`hotelID` ASC) VISIBLE,
  UNIQUE INDEX `employeeID_UNIQUE` (`employeeID` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
--   CONSTRAINT `fk_EMPLOYEE_HOTEL1`
--     FOREIGN KEY (`hotelID`)
--     REFERENCES `HotelChainDB`.`HOTEL` (`hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`GUESTPHONENUMBER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`GUESTPHONENUMBER` (
  `phoneNumber` VARCHAR(45) NOT NULL,
  `guestID` INT NOT NULL,
  PRIMARY KEY (`phoneNumber`, `guestID`),
  INDEX `fk_GUEST_PHONE_NUMBER_GUEST1_idx` (`guestID` ASC) VISIBLE)
--   CONSTRAINT `fk_GUEST_PHONE_NUMBER_GUEST1`
--     FOREIGN KEY (`guestID`)
--     REFERENCES `HotelChainDB`.`GUEST` (`guestID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`ROOMTYPE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`ROOMTYPE` (
  `RTname` VARCHAR(45) NOT NULL,
  `capacity` INT NOT NULL,
  `size` INT NOT NULL,
  `hotelID` INT NOT NULL,
  PRIMARY KEY (`RTname`, `hotelID`),
  INDEX `fk_ROOMTYPE_HOTEL1_idx` (`hotelID` ASC) VISIBLE)
--   CONSTRAINT `fk_ROOMTYPE_HOTEL1`
--     FOREIGN KEY (`hotelID`)
--     REFERENCES `HotelChainDB`.`HOTEL` (`hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`ROOM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`ROOM` (
  `roomNumber` INT NOT NULL,
  `hotelID` INT NOT NULL,
  `floor` INT NOT NULL,
  `cleanDate` DATETIME NOT NULL,
  `RTname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`roomNumber`, `hotelID`),
  INDEX `fk_ROOM_HOTEL1_idx` (`hotelID` ASC) VISIBLE,
  INDEX `fk_ROOM_ROOMTYPE1_idx` (`RTname` ASC) VISIBLE)
--   CONSTRAINT `fk_ROOM_HOTEL1`
--     FOREIGN KEY (`hotelID`)
--     REFERENCES `HotelChainDB`.`HOTEL` (`hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_ROOM_ROOMTYPE1`
--     FOREIGN KEY (`RTname`)
--     REFERENCES `HotelChainDB`.`ROOMTYPE` (`RTname`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`RESERVATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`RESERVATION` (
  `reservationID` INT NOT NULL,
  `hotelID` INT NOT NULL,
  `guestID` INT NOT NULL,
  `checkIn` DATETIME NOT NULL,
  `checkOut` DATETIME NULL,
  `paid` TINYINT NOT NULL,
  `peopleNumber` INT NOT NULL,
  `totalPayment` INT NULL,
  PRIMARY KEY (`reservationID`, `hotelID`, `guestID`),
  INDEX `fk_RESERVATION_HOTEL1_idx` (`hotelID` ASC) VISIBLE,
  INDEX `fk_RESERVATION_GUEST1_idx` (`guestID` ASC) VISIBLE,
  UNIQUE INDEX `reservationID_UNIQUE` (`reservationID` ASC) VISIBLE)
  -- CONSTRAINT `fk_RESERVATION_HOTEL1`
--     FOREIGN KEY (`hotelID`)
--     REFERENCES `HotelChainDB`.`HOTEL` (`hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_RESERVATION_GUEST1`
--     FOREIGN KEY (`guestID`)
--     REFERENCES `HotelChainDB`.`GUEST` (`guestID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`SERVICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`SERVICES` (
  `serviceID` INT NOT NULL,
  `serviceName` VARCHAR(45) NOT NULL,
  `description` VARCHAR(150) NOT NULL,
  `cost` INT NOT NULL,
  PRIMARY KEY (`serviceID`),
  UNIQUE INDEX `serviceID_UNIQUE` (`serviceID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`ROOMTYPEWEEKDAYPRICE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`ROOMTYPEWEEKDAYPRICE` (
  `weekdayPrice` INT NOT NULL,
  `RTname` VARCHAR(45) NOT NULL,
  `hotelID` INT NOT NULL,
  `weekDay` VARCHAR(100) NULL,
  PRIMARY KEY (`weekdayPrice`, `RTname`, `hotelID`),
  INDEX `fk_ROOMTYPEWEEKDAYPRICE_ROOMTYPE1_idx` (`RTname` ASC, `hotelID` ASC) VISIBLE)
  -- CONSTRAINT `fk_ROOMTYPEWEEKDAYPRICE_ROOMTYPE1`
--     FOREIGN KEY (`RTname` , `hotelID`)
--     REFERENCES `HotelChainDB`.`ROOMTYPE` (`RTname` , `hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`ROOMTYPEFEATURES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`ROOMTYPEFEATURES` (
  `features` VARCHAR(45) NOT NULL,
  `RTname` VARCHAR(45) NOT NULL,
  `hotelID` INT NOT NULL,
  PRIMARY KEY (`features`, `RTname`, `hotelID`),
  INDEX `fk_ROOMTYPEFEATURES_ROOMTYPE1_idx` (`RTname` ASC, `hotelID` ASC) VISIBLE)
--   CONSTRAINT `fk_ROOMTYPEFEATURES_ROOMTYPE1`
--     FOREIGN KEY (`RTname` , `hotelID`)
--     REFERENCES `HotelChainDB`.`ROOMTYPE` (`RTname` , `hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`HOTEL_provides_SERVICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`HOTEL_PROVIDES_SERVICES` (
  `serviceID` INT NOT NULL,
  `hotelID` INT NOT NULL,
  PRIMARY KEY (`serviceID`, `hotelID`),
  INDEX `fk_SERVICES_has_HOTEL_HOTEL1_idx` (`hotelID` ASC) VISIBLE,
  INDEX `fk_SERVICES_has_HOTEL_SERVICES1_idx` (`serviceID` ASC) VISIBLE)
  -- CONSTRAINT `fk_SERVICES_has_HOTEL_SERVICES1`
--     FOREIGN KEY (`serviceID`)
--     REFERENCES `HotelChainDB`.`SERVICES` (`serviceID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_SERVICES_has_HOTEL_HOTEL1`
--     FOREIGN KEY (`hotelID`)
--     REFERENCES `HotelChainDB`.`HOTEL` (`hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`ROLES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`ROLES` (
  `roleID` INT NOT NULL,
  PRIMARY KEY (`roleID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`USER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`USER` (
  `userID` INT NOT NULL,
  `roleID` INT NOT NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`userID`, `roleID`),
  INDEX `fk_USER_ROLES1_idx` (`roleID` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `userID_UNIQUE` (`userID` ASC) VISIBLE)
--   CONSTRAINT `fk_USER_ROLES1`
--     FOREIGN KEY (`roleID`)
--     REFERENCES `HotelChainDB`.`ROLES` (`roleID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`ADMIN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`ADMIN` (
  `adminID` INT NOT NULL,
  `roleID` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`adminID`, `roleID`),
  INDEX `fk_ADMIN_ROLES1_idx` (`roleID` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `adminID_UNIQUE` (`adminID` ASC) VISIBLE)
--   CONSTRAINT `fk_ADMIN_ROLES1`
--     FOREIGN KEY (`roleID`)
--     REFERENCES `HotelChainDB`.`ROLES` (`roleID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`DESKCLERK`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`DESKCLERK` (
  `deskclerkID` INT NOT NULL,
  `roleID` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`deskclerkID`, `roleID`),
  INDEX `fk_DESK-CLERK_ROLES1_idx` (`roleID` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `deskclerkID_UNIQUE` (`deskclerkID` ASC) VISIBLE)
--   CONSTRAINT `fk_DESK-CLERK_ROLES1`
--     FOREIGN KEY (`roleID`)
--     REFERENCES `HotelChainDB`.`ROLES` (`roleID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`RESERVATION_has_ROOM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`RESERVATION_HAS_ROOM` (
  `reservationID` INT NOT NULL,
  `hotelID` INT NOT NULL,
  `guestID` INT NOT NULL,
  `roomNumber` INT NOT NULL,
  PRIMARY KEY (`reservationID`, `hotelID`, `guestID`, `roomNumber`),
  INDEX `fk_RESERVATION_has_ROOM1_ROOM2_idx` (`roomNumber` ASC) VISIBLE,
  INDEX `fk_RESERVATION_has_ROOM1_RESERVATION2_idx` (`reservationID` ASC, `hotelID` ASC, `guestID` ASC) VISIBLE)
--   CONSTRAINT `fk_RESERVATION_has_ROOM1_RESERVATION2`
--     FOREIGN KEY (`reservationID` , `hotelID` , `guestID`)
--     REFERENCES `HotelChainDB`.`RESERVATION` (`reservationID` , `hotelID` , `guestID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_RESERVATION_has_ROOM1_ROOM2`
--     FOREIGN KEY (`roomNumber`)
--     REFERENCES `HotelChainDB`.`ROOM` (`roomNumber`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`SEASON_has_HOTEL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`SEASON_HAS_HOTEL` (
  `seasonName` VARCHAR(45) NOT NULL,
  `hotelID` INT NOT NULL,
  PRIMARY KEY (`seasonName`, `hotelID`),
  INDEX `fk_SEASON_has_HOTEL_HOTEL1_idx` (`hotelID` ASC) VISIBLE,
  INDEX `fk_SEASON_has_HOTEL_SEASON1_idx` (`seasonName` ASC) VISIBLE)
--   CONSTRAINT `fk_SEASON_has_HOTEL_SEASON1`
--     FOREIGN KEY (`seasonName`)
--     REFERENCES `HotelChainDB`.`SEASON` (`seasonName`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_SEASON_has_HOTEL_HOTEL1`
--     FOREIGN KEY (`hotelID`)
--     REFERENCES `HotelChainDB`.`HOTEL` (`hotelID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`RESERVATION_has_SERVICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`RESERVATION_HAS_SERVICES` (
  `reservationID` INT NOT NULL,
  `hotelID` INT NOT NULL,
  `guestID` INT NOT NULL,
  `serviceID` INT NOT NULL,
  PRIMARY KEY (`reservationID`, `hotelID`, `guestID`, `serviceID`),
  INDEX `fk_RESERVATION_has_SERVICES_SERVICES1_idx` (`serviceID` ASC) VISIBLE,
  INDEX `fk_RESERVATION_has_SERVICES_RESERVATION1_idx` (`reservationID` ASC, `hotelID` ASC, `guestID` ASC) VISIBLE)
--   CONSTRAINT `fk_RESERVATION_has_SERVICES_RESERVATION1`
--     FOREIGN KEY (`reservationID` , `hotelID` , `guestID`)
--     REFERENCES `HotelChainDB`.`RESERVATION` (`reservationID` , `hotelID` , `guestID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_RESERVATION_has_SERVICES_SERVICES1`
--     FOREIGN KEY (`serviceID`)
--     REFERENCES `HotelChainDB`.`SERVICES` (`serviceID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HotelChainDB`.`RESERVATION_BILL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HotelChainDB`.`RESERVATION_BILL` (
  `billAmount` INT NOT NULL,
  `reservationID` INT NOT NULL,
  `hotelID` INT NOT NULL,
  `guestID` INT NOT NULL,
  PRIMARY KEY (`billAmount`, `reservationID`, `hotelID`, `guestID`),
  INDEX `fk_RESERVATION_BILL_RESERVATION1_idx` (`reservationID` ASC, `hotelID` ASC, `guestID` ASC) VISIBLE)
--   CONSTRAINT `fk_RESERVATION_BILL_RESERVATION1`
--     FOREIGN KEY (`reservationID` , `hotelID` , `guestID`)
--     REFERENCES `HotelChainDB`.`RESERVATION` (`reservationID` , `hotelID` , `guestID`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
