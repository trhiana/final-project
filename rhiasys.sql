-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 12:19 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rhiasys`
--
CREATE DATABASE IF NOT EXISTS `rhiasys` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rhiasys`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BranchId` int(11) NOT NULL,
  `Branch_Name` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BranchId`, `Branch_Name`, `Location`) VALUES
(1, 'Rhiasys Media \"Consulting\"', '402 MM Plaza, Luwum Street, Kampala'),
(2, 'The Stationery Shop', 'Bombo Road, Makerere Kubiiri, Kampala');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientId` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientId`, `EmployeeId`, `Name`, `Phone_Number`, `Address`) VALUES
(1, 423095, 'Uganda Police', '0393707070', 'Gayaza Road, Makerere Kubiiri, Kampala'),
(2, 423093, 'Eva Emporium', '0393717171', 'Luwum Street, Kampala'),
(3, 423091, 'B24', '0393727272', 'Mutundwe, Kampala'),
(4, 423091, 'Metro FM', '0393737373', 'Martin Road, Old Kampala, Kampala'),
(5, 423094, 'Walk - in', ' ', 'n/a'),
(6, 423092, 'Walk - in', ' ', 'n/a'),
(7, 423095, 'Uganda Police', '0393777700', 'Gayaza Road, Makerere Kubiiri, Kampala'),
(8, 423090, 'Walk - in', ' ', 'n/a'),
(9, 423093, 'STV', '0393666777', 'Kampala Boulevard, Kampala Road, Kampala'),
(10, 423090, 'Walk - in', ' ', 'n/a');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeId` int(11) NOT NULL,
  `BranchId` int(11) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MidInit` varchar(25) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Gender` enum('Female','Male','Prefer not to say') DEFAULT NULL,
  `DOB` date NOT NULL,
  `Telephone` varchar(10) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeId`, `BranchId`, `FirstName`, `MidInit`, `LastName`, `Gender`, `DOB`, `Telephone`, `Address`, `Salary`) VALUES
(423090, 1, 'Rowena', 'L', 'Thelma', 'Female', '1980-06-18', '0772000111', 'Rubaga, Kampala', '980000.00'),
(423091, 1, 'Elizabeth', 'N', 'Peternella', 'Female', '1975-07-16', '0772000222', 'Lungujja, Kampala', '1250000.00'),
(423092, 2, 'Richard', 'K', 'Jerome', 'Male', '1973-04-07', '0772000333', 'Matugga, Wakiso', '1250000.00'),
(423093, 1, 'Rhiana', 'L', 'Thelemaque', 'Female', '1997-06-08', '0772000666', 'Seguku, Wakiso', '1150000.00'),
(423094, 2, 'Margaret', 'N', 'Rose', 'Female', '1970-07-16', '0772000444', 'Seguku, Wakiso', '1300000.00'),
(423095, 2, 'Sam', 'N', 'John', 'Male', '1985-07-16', '0772000555', 'Makerere Kubiiri, Kampala', '800000.00');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `EquipmentId` int(11) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `EquipmentName` varchar(50) DEFAULT NULL,
  `Date_of_Last_Service` date NOT NULL,
  `Date_of_Next_Service` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`EquipmentId`, `BranchId`, `EmployeeId`, `EquipmentName`, `Date_of_Last_Service`, `Date_of_Next_Service`) VALUES
(101, 1, 423091, 'HP Deskjet 7000', '2016-02-04', '2017-02-04'),
(102, 1, 423091, 'Canon IR1020', '2017-01-03', '2017-06-03'),
(103, 1, 423093, 'Acer Aspire E14', '2017-01-03', '2018-01-03'),
(104, 1, 423090, 'HP Desktop', '2016-04-03', '2017-04-03'),
(105, 1, 423091, 'Acer E111', '2015-01-02', '2016-01-02'),
(106, 1, 423091, 'HP Desktop', '2014-02-01', '2015-02-01'),
(107, 1, 423093, 'HP Desktop', '2017-01-03', '2018-01-03'),
(108, 2, 423094, 'Canon MFP4430', '2016-03-03', '2016-09-03'),
(109, 2, 423094, 'Canon IR1020', '2017-01-03', '2017-06-03'),
(110, 2, 423094, 'Epson L850', '2016-02-03', '2016-08-03'),
(111, 2, 423094, 'Epson T50', '2016-03-13', '2016-09-13'),
(112, 2, 423094, 'Acer E111', '2016-01-12', '2017-01-12'),
(113, 2, 423095, 'HP Desktop', '2019-01-12', '2020-01-12'),
(114, 2, 423092, 'HP Desktop', '2018-01-12', '2019-01-12'),
(115, 2, 423095, 'HP Desktop', '2019-01-12', '2020-01-12'),
(116, 2, 423094, 'HP Desktop', '2015-04-01', '2016-04-01'),
(117, 1, 423093, 'Laminator', '2017-04-01', '2018-04-01'),
(118, 2, 423094, 'Laminator', '2017-04-01', '2018-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `BranchId` int(11) NOT NULL,
  `Product_Name` varchar(50) DEFAULT NULL,
  `Quantity_delivered` int(11) DEFAULT NULL,
  `Quantity_available` int(11) DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`BranchId`, `Product_Name`, `Quantity_delivered`, `Quantity_available`, `Price`) VALUES
(2, 'Rotatrim Reams', 45, 34, '18000.00'),
(2, 'A4 Ruled', 15, 14, '500.00'),
(2, 'Laminating Screens', 200, 112, '1000.00'),
(2, 'Pens (Black)', 100, 69, '500.00'),
(2, 'Pens (Blue)', 100, 40, '500.00'),
(2, 'Pens (Red)', 100, 45, '500.00'),
(2, 'Envelopes A4', 150, 105, '500.00'),
(2, 'Envelopes A5', 150, 120, '400.00'),
(2, 'Envelopes A3', 150, 94, '1000.00'),
(2, 'P1 Reams', 35, 12, '12000.00'),
(2, 'Carbon Paper', 250, 200, '500.00'),
(1, 'Laminating screens', 200, 150, '1500.00'),
(1, 'Rotatrim Reams', 45, 32, '18000.00'),
(1, 'Carbon Paper', 50, 24, '500.00');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `BranchId` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `Mgr_start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`BranchId`, `EmployeeId`, `Mgr_start_date`) VALUES
(1, 423091, '2015-01-02'),
(2, 423094, '2016-01-12'),
(1, 423093, '2018-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `BranchId` int(11) NOT NULL,
  `PId` int(11) DEFAULT NULL,
  `SupplierId` int(11) NOT NULL,
  `Service` enum('Consulting','Stationery','Photocopy','Scanning','Printing','Typing','Supplying','Printing and Laminating','Other') DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Payment_to` enum('Supplier','Stationery Shop','Consulting') DEFAULT NULL,
  `Date_of_Payment` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`BranchId`, `PId`, `SupplierId`, `Service`, `Amount`, `Payment_to`, `Date_of_Payment`) VALUES
(1, 2, 100, 'Printing and Laminating', '20000.00', 'Consulting', '2017-03-15'),
(2, 1, 100, 'Printing', '4000.00', 'Stationery Shop', '2019-05-02'),
(2, 4, 100, 'Printing', '100000.00', 'Stationery Shop', '2017-08-09'),
(2, 6, 100, 'Printing and Laminating', '155000.00', 'Stationery Shop', '2018-04-12'),
(1, 3, 100, 'Consulting', '550000.00', 'Consulting', '2016-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierId` int(11) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Quantity_delivered` int(11) DEFAULT NULL,
  `Delivery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierId`, `BranchId`, `Name`, `Phone_Number`, `Address`, `Quantity_delivered`, `Delivery_date`) VALUES
(100, 1, ' ', ' ', ' ', 0, '0000-00-00'),
(1000, 2, 'ER Wholesale', '0312222000', 'Nasser Road, Kampala', 200, '2016-03-09'),
(1001, 2, 'Guma Stationery Suppliers', '0312333111', 'Nasser Road, Kampala', 450, '2016-03-09'),
(1002, 2, 'Guma Stationery Suppliers', '0312333111', 'Nasser Road, Kampala', 300, '2016-03-09'),
(1003, 1, 'Hospice International Limited', '0312444222', 'Nasser Road, Kampala', 320, '2017-06-09'),
(1004, 2, 'Mwagale Suppliers', '0312555333', 'Nasser Road, Kampala', 150, '2016-03-10'),
(1005, 1, 'Nezikokolima Wholesalers', '0312666444', 'Nasser Road, Kampala', 240, '2016-03-09'),
(1006, 1, 'ER Wholesale', '0312222000', 'Nasser Road, Kampala', 200, '2016-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `workingon`
--

CREATE TABLE `workingon` (
  `PId` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `ClientId` int(11) NOT NULL,
  `Project_Name` varchar(50) DEFAULT NULL,
  `Project_start_date` date NOT NULL,
  `Project_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workingon`
--

INSERT INTO `workingon` (`PId`, `EmployeeId`, `ClientId`, `Project_Name`, `Project_start_date`, `Project_end_date`) VALUES
(1, 423093, 2, 'Employee IDs (Laminated)', '2017-03-10', '2017-03-15'),
(2, 423095, 1, 'Report Case Forms', '2019-05-01', '2019-05-02'),
(3, 423091, 3, 'Loan Application Prep', '2016-04-01', '2016-04-20'),
(4, 423091, 4, 'Employee IDs (Plastic)', '2019-01-05', '2019-01-12'),
(5, 423092, 5, 'National IDs Copy (Plastic)', '2017-08-09', '2017-08-09'),
(6, 423093, 9, 'National IDs Copy (Laminated)', '2018-04-08', '2018-04-12'),
(7, 423092, 6, 'National IDs Copy (Laminated)', '2018-04-08', '2018-04-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BranchId`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientId`),
  ADD KEY `EmployeeId` (`EmployeeId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeId`),
  ADD KEY `BranchId` (`BranchId`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`EquipmentId`),
  ADD KEY `BranchId` (`BranchId`),
  ADD KEY `EmployeeId` (`EmployeeId`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD KEY `BranchId` (`BranchId`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD KEY `BranchId` (`BranchId`),
  ADD KEY `EmployeeId` (`EmployeeId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD KEY `BranchId` (`BranchId`),
  ADD KEY `PId` (`PId`),
  ADD KEY `SupplierId` (`SupplierId`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierId`),
  ADD KEY `BranchId` (`BranchId`);

--
-- Indexes for table `workingon`
--
ALTER TABLE `workingon`
  ADD PRIMARY KEY (`PId`),
  ADD KEY `ClientId` (`ClientId`),
  ADD KEY `EmployeeId` (`EmployeeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423096;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`BranchId`) REFERENCES `branch` (`BranchId`) ON UPDATE CASCADE;

--
-- Constraints for table `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`BranchId`) REFERENCES `branch` (`BranchId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipment_ibfk_2` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`BranchId`) REFERENCES `branch` (`BranchId`) ON UPDATE CASCADE;

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`BranchId`) REFERENCES `branch` (`BranchId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `manager_ibfk_2` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`BranchId`) REFERENCES `branch` (`BranchId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`PId`) REFERENCES `workingon` (`PId`),
  ADD CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`SupplierId`) REFERENCES `suppliers` (`SupplierId`);

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`BranchId`) REFERENCES `branch` (`BranchId`) ON UPDATE CASCADE;

--
-- Constraints for table `workingon`
--
ALTER TABLE `workingon`
  ADD CONSTRAINT `workingon_ibfk_1` FOREIGN KEY (`ClientId`) REFERENCES `clients` (`ClientId`),
  ADD CONSTRAINT `workingon_ibfk_2` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
