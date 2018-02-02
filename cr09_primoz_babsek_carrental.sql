-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2018 at 07:09 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_primoz_babsek_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_charge`
--

CREATE TABLE `additional_charge` (
  `addc_id` int(11) NOT NULL,
  `fk_cont_id` int(11) DEFAULT NULL,
  `fk_chec_id` int(11) DEFAULT NULL,
  `add_charge` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additional_charge`
--

INSERT INTO `additional_charge` (`addc_id`, `fk_cont_id`, `fk_chec_id`, `add_charge`, `comments`) VALUES
(1, 1, 1, 325, 'crack in front window'),
(2, 3, 3, 35, 'empty gas');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `fk_insu_id` int(11) DEFAULT NULL,
  `car_type` varchar(55) DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `driven_km_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `fk_insu_id`, `car_type`, `service_date`, `driven_km_total`) VALUES
(1, 678234, 'SUV', '2018-01-15', 32000),
(2, 128234, 'Family Car', '2017-12-18', 67000),
(3, 968234, 'Sports Car', '2017-11-17', 3000),
(4, 148569, 'Family Car', '2017-09-25', 112000),
(5, 123484, 'SUV', '2017-04-05', 75000),
(6, 678234, 'Sports Car', '2017-05-18', 84000),
(7, 678234, 'Family Car', '2017-07-23', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `company_offices`
--

CREATE TABLE `company_offices` (
  `offi_id` int(11) NOT NULL,
  `fk_empl_id` int(11) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_offices`
--

INSERT INTO `company_offices` (`offi_id`, `fk_empl_id`, `location`) VALUES
(5, 3, 'Vienna'),
(6, 2, 'Linz'),
(7, 4, 'Salzburg'),
(8, 6, 'Graz');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `cont_id` int(11) NOT NULL,
  `fk_invo_id` int(11) DEFAULT NULL,
  `fk_empl_id` int(11) DEFAULT NULL,
  `contract_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`cont_id`, `fk_invo_id`, `fk_empl_id`, `contract_date`) VALUES
(1, 1, 3, '2017-12-28'),
(2, 2, 1, '2017-11-02'),
(3, 3, 2, '2016-05-03'),
(4, 4, 2, '2018-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `first_name`, `last_name`, `birth_date`) VALUES
(1, 'peter', 'pan', '1980-03-06'),
(2, 'petra', 'panbic', '1992-09-11'),
(3, 'aljaz', 'kosi', '1980-07-22'),
(4, 'klemen', 'wider', '1950-01-30'),
(5, 'branka', 'kvadrat', '1960-09-04'),
(6, 'ziva', 'trimeter', '1970-05-14'),
(7, 'sara', 'leder', '1990-07-12'),
(8, 'john', 'doe', '1991-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empl_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empl_id`, `first_name`, `last_name`, `join_date`, `age`) VALUES
(1, 'Bozidar', 'Jakopic', '1989-11-25', 56),
(2, 'Viktoria', 'Schneider', '2007-03-28', 42),
(3, 'Krista', 'Jakopic', '2009-08-12', 31),
(4, 'Oliver', 'Kahn', '2001-07-09', 52),
(5, 'Tjasa', 'Matildek', '2013-12-03', 48),
(6, 'Eva', 'Muller', '2015-05-08', 39);

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `insu_id` int(11) NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `insurance_company` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`insu_id`, `type`, `insurance_company`) VALUES
(123484, 'full insurance', 'Generali'),
(128234, 'customer50', 'Generali'),
(148569, 'full insurance', 'Sava'),
(357895, 'customer50', 'Sava'),
(478956, 'full insurance', 'Triglav'),
(678234, 'full insurance', 'Triglav'),
(968234, 'full insurance', 'Triglav');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invo_id` int(11) NOT NULL,
  `fk_rese_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invo_id`, `fk_rese_id`, `price`, `invoice_date`) VALUES
(1, 1, 341, '2017-03-02'),
(2, 3, 1341, '2017-11-01'),
(3, 5, 156, '2016-04-09'),
(4, 6, 750, '2017-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paym_id` int(11) NOT NULL,
  `fk_cont_id` int(11) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `fixed_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paym_id`, `fk_cont_id`, `payment_method`, `fixed_price`) VALUES
(1, 3, 'card', 170),
(2, 2, 'cash', 1341),
(3, 1, 'card', 380),
(4, 4, 'cash', 750);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `rese_id` int(11) NOT NULL,
  `fk_cust_id` int(11) DEFAULT NULL,
  `fk_car_id` int(11) DEFAULT NULL,
  `start_location` varchar(55) DEFAULT NULL,
  `end_location` varchar(55) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rese_id`, `fk_cust_id`, `fk_car_id`, `start_location`, `end_location`, `start_date`, `end_date`) VALUES
(1, 3, 2, 'Vienna', 'Linz', '2017-12-28', '2017-12-30'),
(2, 4, 3, 'Linz', 'Salzburg', '2017-12-12', '2017-12-12'),
(3, 5, 4, 'Graz', 'Vienna', '2017-11-02', '2017-11-05'),
(4, 8, 4, 'Graz', 'Linz', '2017-12-12', '2017-12-16'),
(5, 1, 6, 'Vienna', 'Graz', '2016-05-04', '2016-06-01'),
(6, 1, 7, 'Linz', 'Linz', '2018-01-30', '2017-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `return_checklist`
--

CREATE TABLE `return_checklist` (
  `chec_id` int(11) NOT NULL,
  `fk_empl_id` int(11) DEFAULT NULL,
  `fk_offi_id` int(11) DEFAULT NULL,
  `fk_cont_id` int(11) DEFAULT NULL,
  `add_charge_needed` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_checklist`
--

INSERT INTO `return_checklist` (`chec_id`, `fk_empl_id`, `fk_offi_id`, `fk_cont_id`, `add_charge_needed`) VALUES
(1, 2, 6, 1, 'yes'),
(2, 3, 5, 2, 'no'),
(3, 6, 8, 3, 'yes'),
(4, 2, 6, 4, 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_charge`
--
ALTER TABLE `additional_charge`
  ADD PRIMARY KEY (`addc_id`),
  ADD KEY `fk_cont_id` (`fk_cont_id`),
  ADD KEY `fk_chec_id` (`fk_chec_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_insu_id` (`fk_insu_id`);

--
-- Indexes for table `company_offices`
--
ALTER TABLE `company_offices`
  ADD PRIMARY KEY (`offi_id`),
  ADD KEY `fk_empl_id` (`fk_empl_id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`cont_id`),
  ADD KEY `fk_invo_id` (`fk_invo_id`),
  ADD KEY `fk_empl_id` (`fk_empl_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empl_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insu_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invo_id`),
  ADD KEY `fk_rese_id` (`fk_rese_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paym_id`),
  ADD KEY `fk_cont_id` (`fk_cont_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`rese_id`),
  ADD KEY `fk_cust_id` (`fk_cust_id`),
  ADD KEY `fk_car_id` (`fk_car_id`);

--
-- Indexes for table `return_checklist`
--
ALTER TABLE `return_checklist`
  ADD PRIMARY KEY (`chec_id`),
  ADD KEY `fk_empl_id` (`fk_empl_id`),
  ADD KEY `fk_offi_id` (`fk_offi_id`),
  ADD KEY `fk_cont_id` (`fk_cont_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_charge`
--
ALTER TABLE `additional_charge`
  MODIFY `addc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `company_offices`
--
ALTER TABLE `company_offices`
  MODIFY `offi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paym_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `rese_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `return_checklist`
--
ALTER TABLE `return_checklist`
  MODIFY `chec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `additional_charge`
--
ALTER TABLE `additional_charge`
  ADD CONSTRAINT `additional_charge_ibfk_1` FOREIGN KEY (`fk_cont_id`) REFERENCES `contract` (`cont_id`),
  ADD CONSTRAINT `additional_charge_ibfk_2` FOREIGN KEY (`fk_chec_id`) REFERENCES `return_checklist` (`chec_id`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`fk_insu_id`) REFERENCES `insurance` (`insu_id`);

--
-- Constraints for table `company_offices`
--
ALTER TABLE `company_offices`
  ADD CONSTRAINT `company_offices_ibfk_1` FOREIGN KEY (`fk_empl_id`) REFERENCES `employees` (`empl_id`);

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`fk_invo_id`) REFERENCES `invoice` (`invo_id`),
  ADD CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`fk_empl_id`) REFERENCES `employees` (`empl_id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`fk_rese_id`) REFERENCES `reservation` (`rese_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`fk_cont_id`) REFERENCES `contract` (`cont_id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`fk_cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`fk_car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints for table `return_checklist`
--
ALTER TABLE `return_checklist`
  ADD CONSTRAINT `return_checklist_ibfk_1` FOREIGN KEY (`fk_empl_id`) REFERENCES `employees` (`empl_id`),
  ADD CONSTRAINT `return_checklist_ibfk_2` FOREIGN KEY (`fk_offi_id`) REFERENCES `company_offices` (`offi_id`),
  ADD CONSTRAINT `return_checklist_ibfk_3` FOREIGN KEY (`fk_cont_id`) REFERENCES `contract` (`cont_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
