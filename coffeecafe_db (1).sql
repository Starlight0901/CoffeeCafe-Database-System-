-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2022 at 09:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeecafe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cash_payment`
--

CREATE TABLE `cash_payment` (
  `Invoice_No` varchar(5) NOT NULL,
  `Cash_Recipt_No` varchar(5) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Customer_ID` varchar(10) DEFAULT NULL,
  `Delivery_Staff_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cash_payment`
--

INSERT INTO `cash_payment` (`Invoice_No`, `Cash_Recipt_No`, `Price`, `Customer_ID`, `Delivery_Staff_ID`) VALUES
('00004', 'CR001', 4, 'C000007', 'D00002'),
('00005', 'CR002', 4, 'C000003', 'D00001'),
('00006', 'CR003', 4, 'C000004', 'D00002'),
('00007', 'CR004', 4, 'C000005', 'D00003'),
('00008', 'CR005', 4, 'C000006', 'D00003');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` varchar(10) NOT NULL,
  `Customer_Name` varchar(30) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Delivery_Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Customer_Name`, `Email`, `Delivery_Address`) VALUES
('C000001', 'Steve', 'steverogers@gmail.com', 'No 08, Silva Road, Colombo 8'),
('C000002', 'Natasha', 'natasharomannoff@gmail.com', '3/1A, Kinsey Road, Colombo 04'),
('C000003', 'Bruse', 'brusebanner.bb@gmail.com', 'No.218, Hulfsdrop street, Colombo'),
('C000004', 'Clint', 'clintbarton197@gmail.com', 'No.546, D.B. Perera Mawatha, Colombo 10'),
('C000005', 'Tony', 'tonystark.ts123@gmail.com', 'No. 10, Park Avenue, Negombo'),
('C000006', 'Thor', 'thorodinson@gmail.com', 'No. 12, New Asgard Road, Negombo'),
('C000007', 'Henry Jayden', 'henryjayden123@gmail.com', 'No 10, Lily Street, Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `customer_contacts`
--

CREATE TABLE `customer_contacts` (
  `Customer_ID` varchar(10) NOT NULL,
  `Contact_No` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_contacts`
--

INSERT INTO `customer_contacts` (`Customer_ID`, `Contact_No`) VALUES
('C000001', '0113459876'),
('C000001', '0765242045'),
('C000002', '0115467835'),
('C000003', '0775642365'),
('C000004', '0312256745'),
('C000005', '0765642176'),
('C000006', '0762754341'),
('C000007', '0714234764');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_staff`
--

CREATE TABLE `delivery_staff` (
  `Staff_ID` varchar(10) NOT NULL,
  `Driver_Licence_No` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_staff`
--

INSERT INTO `delivery_staff` (`Staff_ID`, `Driver_Licence_No`) VALUES
('D00001', 'B345976'),
('D00002', 'B568734'),
('D00003', 'B459812'),
('D00004', 'B895684');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `Divi_ID` varchar(10) NOT NULL,
  `Division_Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`Divi_ID`, `Division_Name`) VALUES
('D001', 'Culinery'),
('D002', 'Financial'),
('D003', 'Customer Service'),
('D004', 'Management'),
('D005', 'Supplier');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Identification_Code` varchar(10) NOT NULL,
  `Item_Category` varchar(25) DEFAULT NULL,
  `Item_Name` varchar(30) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Identification_Code`, `Item_Category`, `Item_Name`, `Price`, `Description`) VALUES
('IC00001', 'Cakes', 'Butter Cake', 4.45, 'Soft, sweet, rich, homemade butter cake '),
('IC00002', 'Cakes', 'Chocolate Geto', 4.34, 'Chocolate topping geto cake'),
('IC00003', 'Cakes', 'Chocoalte Lava Cake', 2.5, 'Chocolate cake filled with chocolate syrup filling'),
('ICB0001', 'Cold Beverages', 'Chocolate Milkshake', 3.45, 'Chocolate flavoured Milkshake'),
('ICB0002', 'Cold Beverages', 'Ice Milo', 1.45, 'Iced Milo Drink'),
('ICB0003', 'Cold Beverages', 'Strawberry Milkshake', 2.45, 'Strawberry flavored milk shake'),
('ICB0004', 'Cold Beverages', 'Mango Juice', 2.55, 'Fresh mango juice'),
('ICB0005', 'Cold Beverages', 'Watermellon Juice', 3.55, 'Fresh watermellon juice'),
('ID00001', 'Desserts', 'Caramel Pudding', 0.55, 'Caramel topping pudding'),
('ID00002', 'Desserts', 'Ice Cream', 0.5, 'Chocolate, strawberry, vanilla, butterscotch flavours'),
('ID00003', 'Desserts', 'Cupcakes', 0.2, 'Chocolate, fruit cupcakes'),
('IHB0001', 'Hot Beverages', 'Cappuccino', 4.25, 'Dark coffee Espresso with milk and foam'),
('IHB0002', 'Hot Beverages', 'Hot Chocolate', 1.45, 'Hot chocolate milk with cadbury chocolate powder'),
('IHB0003', 'Hot Beverages', 'Latte', 3.65, 'Dark coffee'),
('IHB0004', 'Hot Beverages', 'Nescafe', 0.45, 'Nestle coffee with milk'),
('IHB0005', 'Hot Beverages', 'Nestea', 0.45, 'tea with milk'),
('IO00001', 'Others', 'American Pancakes', 3.5, 'Maple syrup and fruits topping'),
('IO00002', 'Others', 'Waffles', 2.5, 'Chocolate, strawberry, fruit or spicy chicken toppings.'),
('IO00003', 'Others', 'Doughnuts', 0.6, 'Chocolate, Strawberry flavor, Blueberry flavor or spicy garlic flavor toppings'),
('IS00001', 'Snacks', 'Rolls', 1.55, 'Chicken filling'),
('IS00002', 'Snacks', 'Patis', 0.45, 'Tuna Filling'),
('IS00003', 'Snacks', 'Pastry', 0.8, 'Fish and chicken filling'),
('IS00004', 'Snacks', 'Egg Roll', 1.15, 'Fish and boiled egg half filling');

-- --------------------------------------------------------

--
-- Table structure for table `managers_and_supervisors`
--

CREATE TABLE `managers_and_supervisors` (
  `Staff_ID` varchar(10) NOT NULL,
  `Exp_Level` varchar(50) DEFAULT NULL,
  `Exp_Level_Flag` tinyint(1) DEFAULT NULL,
  `Edu_Qualifications` varchar(50) DEFAULT NULL,
  `Edu_Qualifications_Flag` tinyint(1) DEFAULT NULL,
  `Divi_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `managers_and_supervisors`
--

INSERT INTO `managers_and_supervisors` (`Staff_ID`, `Exp_Level`, `Exp_Level_Flag`, `Edu_Qualifications`, `Edu_Qualifications_Flag`, `Divi_ID`) VALUES
('M00001', '2 yrs', 1, ' bachelors degree', 0, 'D003'),
('M00002', '2 yrs', 1, ' Diploma', 0, 'D003'),
('M00003', '2 yrs', 1, ' Diploma', 0, 'D003'),
('S00001', '4 yrs', 0, ' bachelors degree', 1, 'D003'),
('S00002', '3 yrs', 0, ' bachelors degree', 1, 'D003');

-- --------------------------------------------------------

--
-- Table structure for table `online_payments`
--

CREATE TABLE `online_payments` (
  `Invoice_No` varchar(5) NOT NULL,
  `E_Recipt_No` varchar(5) NOT NULL,
  `Customer_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_payments`
--

INSERT INTO `online_payments` (`Invoice_No`, `E_Recipt_No`, `Customer_ID`) VALUES
('00001', 'E0001', 'C000007'),
('00002', 'E0003', 'C000001'),
('00003', 'E0004', 'C000002');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_No` varchar(10) NOT NULL,
  `Order_Price` float NOT NULL,
  `Delivery_DateTime` datetime DEFAULT NULL,
  `Delivery_Staff_ID` varchar(10) DEFAULT NULL,
  `Steward_Staff_ID` varchar(10) DEFAULT NULL,
  `Customer_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_No`, `Order_Price`, `Delivery_DateTime`, `Delivery_Staff_ID`, `Steward_Staff_ID`, `Customer_ID`) VALUES
('O00001', 1.6, '2022-11-15 09:30:30', 'D00001', 'ST0001', 'C000007'),
('O00002', 1.35, '2022-11-17 10:30:30', 'D00002', 'ST0002', 'C000007'),
('O00003', 4.45, '2022-12-20 08:30:30', 'D00003', 'ST0003', 'C000001'),
('O00004', 5.65, '2022-12-21 18:30:30', 'D00004', 'ST0004', 'C000002'),
('O00005', 2.5, '2022-12-21 20:30:30', 'D00001', 'ST0001', 'C000003'),
('O00006', 3.95, '2022-12-22 09:30:30', 'D00002', 'ST0002', 'C000004'),
('O00007', 1.45, '2022-12-22 18:30:30', 'D00003', 'ST0003', 'C000005'),
('O00008', 1.45, '2022-12-23 20:30:30', 'D00003', 'ST0004', 'C000006');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `Order_No` varchar(10) NOT NULL,
  `Identification_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`Order_No`, `Identification_Code`) VALUES
('O00001', 'IO00003'),
('O00001', 'IS00001'),
('O00001', 'IS00002'),
('O00002', 'ID00002'),
('O00002', 'IS00003'),
('O00003', 'ID00001'),
('O00003', 'IHB0001'),
('O00003', 'IO00002'),
('O00004', 'ICB0004'),
('O00004', 'IO00002'),
('O00004', 'IO00003'),
('O00005', 'IC00003'),
('O00006', 'IC00003'),
('O00006', 'IHB0001'),
('O00007', 'IHB0001'),
('O00008', 'IHB0001');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` varchar(10) NOT NULL,
  `Fname` varchar(30) DEFAULT NULL,
  `Initials` varchar(10) DEFAULT NULL,
  `Surname` varchar(30) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `NIC` varchar(12) DEFAULT NULL,
  `Designation` varchar(100) DEFAULT NULL,
  `Super_Staff_ID` varchar(10) DEFAULT NULL,
  `Divi_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Fname`, `Initials`, `Surname`, `DoB`, `NIC`, `Designation`, `Super_Staff_ID`, `Divi_ID`) VALUES
('D00001', 'John', 'G. H', 'Anderson', '1990-04-15', '199037561298', 'Delivery Staff', 'S00002', 'D003'),
('D00002', 'Drax', 'P. H', 'Holland', '1995-03-15', '199532361298', 'Delivery Staff', 'S00002', 'D003'),
('D00003', 'Gamora', 'T. N', 'Quill', '1990-08-12', '199038765298', 'Delivery Staff', 'S00002', 'D003'),
('D00004', 'Bob', 'A. N', 'Woest', '1991-09-12', '199138905298', 'Delivery Staff', 'S00001', 'D003'),
('M00001', 'Mark', 'O', 'Neil', '1996-06-22', '199662945298', 'Manager', 'S00001', 'D003'),
('M00002', 'Dobby', 'B', 'Tonx', '1989-04-08', '198951725298', 'Manager', 'S00001', 'D003'),
('M00003', 'Harry', 'H', 'Black', '1998-06-22', '199844444298', 'Manager', 'S00001', 'D003'),
('S00001', 'James', 'Y', 'West', '1994-03-03', '199433333298', 'Supervisor', 'S00001', 'D003'),
('S00002', 'Mark', 'O', 'Potter', '1993-06-22', '19933456798', 'Supervisor', 'S00001', 'D003'),
('ST0001', 'Tom', 'P. P', 'Holland', '1996-10-12', '199645237645', 'Steward', 'S00001', 'D003'),
('ST0002', 'Zendaya', 'M. J', 'Coleman', '1996-09-01', '199656323894', 'Steward', 'S00001', 'D003'),
('ST0003', 'Jacob', 'J. B', 'Leeds', '1995-05-24', '199534734587', 'Steward', 'S00001', 'D003'),
('ST0004', 'Peter', 'C. P', 'Quill', '1990-08-30', '199056349856', 'Steward', 'S00001', 'D003');

-- --------------------------------------------------------

--
-- Table structure for table `staff_contacts`
--

CREATE TABLE `staff_contacts` (
  `Staff_ID` varchar(10) NOT NULL,
  `Contact_No` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_contacts`
--

INSERT INTO `staff_contacts` (`Staff_ID`, `Contact_No`) VALUES
('D00001', '0718764298'),
('D00002', '0716734298'),
('D00003', '0710984298'),
('D00004', '0713494298'),
('M00001', '0715674298'),
('M00002', '0711484298'),
('M00003', '0718974298'),
('S00001', '0712654298'),
('S00002', '0717564298'),
('ST0001', '0712984298'),
('ST0002', '0712244298'),
('ST0003', '0718724298'),
('ST0004', '0711454298');

-- --------------------------------------------------------

--
-- Table structure for table `stewards`
--

CREATE TABLE `stewards` (
  `Staff_ID` varchar(10) NOT NULL,
  `Tech_Qualifications` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stewards`
--

INSERT INTO `stewards` (`Staff_ID`, `Tech_Qualifications`) VALUES
('ST0001', 'Basic IT knowledge'),
('ST0002', 'Data analysis and data entry skills'),
('ST0003', 'Data analysis and data entry skills'),
('ST0004', 'Data analysis and data entry skills');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cash_payment`
--
ALTER TABLE `cash_payment`
  ADD PRIMARY KEY (`Invoice_No`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Delivery_Staff_ID` (`Delivery_Staff_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD PRIMARY KEY (`Customer_ID`,`Contact_No`);

--
-- Indexes for table `delivery_staff`
--
ALTER TABLE `delivery_staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`Divi_ID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Identification_Code`);

--
-- Indexes for table `managers_and_supervisors`
--
ALTER TABLE `managers_and_supervisors`
  ADD PRIMARY KEY (`Staff_ID`),
  ADD KEY `Divi_ID` (`Divi_ID`);

--
-- Indexes for table `online_payments`
--
ALTER TABLE `online_payments`
  ADD PRIMARY KEY (`Invoice_No`),
  ADD UNIQUE KEY `E_Recipt_No` (`E_Recipt_No`),
  ADD UNIQUE KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_No`),
  ADD KEY `Delivery_Staff_ID` (`Delivery_Staff_ID`),
  ADD KEY `Steward_Staff_ID` (`Steward_Staff_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`Order_No`,`Identification_Code`),
  ADD KEY `Identification_Code` (`Identification_Code`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`),
  ADD KEY `Super_Staff_ID` (`Super_Staff_ID`),
  ADD KEY `Divi_ID` (`Divi_ID`);

--
-- Indexes for table `staff_contacts`
--
ALTER TABLE `staff_contacts`
  ADD PRIMARY KEY (`Staff_ID`,`Contact_No`);

--
-- Indexes for table `stewards`
--
ALTER TABLE `stewards`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cash_payment`
--
ALTER TABLE `cash_payment`
  ADD CONSTRAINT `cash_payment_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `cash_payment_ibfk_2` FOREIGN KEY (`Delivery_Staff_ID`) REFERENCES `delivery_staff` (`Staff_ID`);

--
-- Constraints for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD CONSTRAINT `customer_contacts_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `delivery_staff`
--
ALTER TABLE `delivery_staff`
  ADD CONSTRAINT `delivery_staff_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`);

--
-- Constraints for table `managers_and_supervisors`
--
ALTER TABLE `managers_and_supervisors`
  ADD CONSTRAINT `managers_and_supervisors_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`),
  ADD CONSTRAINT `managers_and_supervisors_ibfk_2` FOREIGN KEY (`Divi_ID`) REFERENCES `division` (`Divi_ID`);

--
-- Constraints for table `online_payments`
--
ALTER TABLE `online_payments`
  ADD CONSTRAINT `online_payments_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Delivery_Staff_ID`) REFERENCES `delivery_staff` (`Staff_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Steward_Staff_ID`) REFERENCES `stewards` (`Staff_ID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`Order_No`) REFERENCES `orders` (`Order_No`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`Identification_Code`) REFERENCES `item` (`Identification_Code`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`Super_Staff_ID`) REFERENCES `staff` (`Staff_ID`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`Divi_ID`) REFERENCES `division` (`Divi_ID`);

--
-- Constraints for table `staff_contacts`
--
ALTER TABLE `staff_contacts`
  ADD CONSTRAINT `staff_contacts_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`);

--
-- Constraints for table `stewards`
--
ALTER TABLE `stewards`
  ADD CONSTRAINT `stewards_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
