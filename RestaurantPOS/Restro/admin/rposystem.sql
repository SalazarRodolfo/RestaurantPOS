-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 07:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rposystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `rpos_admin`
--

CREATE TABLE `rpos_admin` (
  `admin_id` varchar(200) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_admin`
--

INSERT INTO `rpos_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
('10e0b6dc958adfb5b094d8935a13aeadbe783c25', 'System Admin', 'admin@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_customers`
--

CREATE TABLE `rpos_customers` (
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_phoneno` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_customers`
--

INSERT INTO `rpos_customers` (`customer_id`, `customer_name`, `customer_phoneno`, `customer_email`, `customer_password`, `created_at`) VALUES
('06549ea58afd', 'Ana J. Browne', '4589698780', 'anaj@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 12:39:48.523820'),
('082b256de6f9', 'Ian Troy Estolero', '09188888888', 'cashier@mail.com', '866553e82081b30de43d979f8ab68f46453f2db4', '2023-11-14 10:49:36.532741'),
('1fc1f694985d', 'Jane Doe', '2145896547', 'janed@mail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', '2022-09-03 13:39:13.076592'),
('27e4a5bc74c2', 'Tammy R. Polley', '4589654780', 'tammy@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 12:37:47.049438'),
('29c759d624f9', 'Trina L. Crowder', '5896321002', 'trina@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 13:16:18.927595'),
('35135b319ce3', 'Christine Moore', '7412569698', 'christine@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-04 16:29:45.133297'),
('3859d26cd9a5', 'Louise R. Holloman', '7856321000', 'holloman@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 12:38:12.149280'),
('57b7541814ed', 'Howard W. Anderson', '8745554589', 'howard@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 08:35:10.959590'),
('7c8f2100d552', 'Melody E. Hance', '3210145550', 'melody@mail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', '2022-09-03 13:16:23.996068'),
('7db6e86ccdc6', 'Rodolfo Salazar', '09260965366', 'rodolfo@gmail.com', '980b59b0f149b17085c265882bd58eb4f211bbb5', '2023-11-13 08:47:27.254961'),
('9c7fcc067bda', 'Delbert G. Campbell', '7850001256', 'delbert@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 12:38:56.944364'),
('9f6378b79283', 'William C. Gallup', '7145665870', 'william@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 12:39:26.507932'),
('d0ba61555aee', 'Jamie R. Barnes', '4125556587', 'jamie@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 12:36:59.643216'),
('d7c2db8f6cbf', 'Victor A. Pierson', '1458887896', 'victor@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 12:37:21.568155'),
('e711dcc579d9', 'Julie R. Martin', '3245557896', 'julie@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '2022-09-03 12:38:33.397498'),
('fe6bb69bdd29', 'Brian S. Boucher', '1020302055', 'brians@mail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', '2022-09-03 13:16:29.591980');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_orders`
--

CREATE TABLE `rpos_orders` (
  `order_id` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `prod_id` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `prod_qty` varchar(200) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_orders`
--

INSERT INTO `rpos_orders` (`order_id`, `order_code`, `customer_id`, `customer_name`, `prod_id`, `prod_name`, `prod_price`, `prod_qty`, `order_status`, `created_at`) VALUES
('0f6cb9e5e3', 'CGRB-8029', '7db6e86ccdc6', 'Rodolfo Salazar', 'e769e274a3', 'Frappuccino', '3', '6', 'Paid', '2023-11-14 04:10:18.986524'),
('514ada5047', 'OTEV-8532', '3859d26cd9a5', 'Louise R. Holloman', '0c4b5c0604', 'Spaghetti Bolognese', '15', '1', 'Paid', '2022-09-03 13:13:39.042869'),
('5802625297', 'LKJH-2015', '7db6e86ccdc6', 'Rodolfo Salazar', 'f4ce3927bf', 'Hot Dog', '45', '2', '', '2023-11-15 06:27:44.266935'),
('6466fd5ee5', 'COXP-6018', '7c8f2100d552', 'Melody E. Hance', '31dfcc94cf', 'Buffalo Wings', '11', '2', 'Paid', '2022-09-03 12:17:44.680896'),
('67a3e4033b', 'YLFD-4102', '082b256de6f9', 'Ian Troy Estolero', '06dc36c1be', 'Butterscotch', '165', '1', 'Paid', '2023-11-15 06:26:17.445091'),
('8815e7edfc', 'QOEH-8613', '29c759d624f9', 'Trina L. Crowder', '2b976e49a0', 'Cheeseburger', '3', '3', 'Paid', '2022-09-03 12:02:32.985451'),
('a27f1d87be', 'EJKA-4501', '35135b319ce3', 'Christine Moore', 'ec18c5a4f0', 'Corn Dogs', '4', '2', 'Paid', '2022-09-04 16:31:54.581984'),
('c018e20852', 'PWZF-5268', '082b256de6f9', 'Ian Troy Estolero', 'e769e274a3', 'Frappuccino', '3', '1', 'Paid', '2023-11-14 11:10:00.964401'),
('cb55655c32', 'UQDE-8219', '7db6e86ccdc6', 'Rodolfo Salazar', 'f4ce3927bf', 'Hot Dog', '45', '2', '', '2023-11-15 06:08:21.806171'),
('e9afb101cf', 'NCFQ-6472', '7db6e86ccdc6', 'Rodolfo Salazar', 'e769e274a3', 'Frappuccino', '3', '45', 'Paid', '2023-11-13 08:56:33.858606');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_pass_resets`
--

CREATE TABLE `rpos_pass_resets` (
  `reset_id` int(20) NOT NULL,
  `reset_code` varchar(200) NOT NULL,
  `reset_token` varchar(200) NOT NULL,
  `reset_email` varchar(200) NOT NULL,
  `reset_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_pass_resets`
--

INSERT INTO `rpos_pass_resets` (`reset_id`, `reset_code`, `reset_token`, `reset_email`, `reset_status`, `created_at`) VALUES
(1, '63KU9QDGSO', '4ac4cee0a94e82a2aedc311617aa437e218bdf68', 'sysadmin@icofee.org', 'Pending', '2020-08-17 15:20:14.318643');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_payments`
--

CREATE TABLE `rpos_payments` (
  `pay_id` varchar(200) NOT NULL,
  `pay_code` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `pay_amt` varchar(200) NOT NULL,
  `pay_method` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_payments`
--

INSERT INTO `rpos_payments` (`pay_id`, `pay_code`, `order_code`, `customer_id`, `pay_amt`, `pay_method`, `created_at`) VALUES
('0a84b5', 'ASDQWEZXCF', 'PWZF-5268', '082b256de6f9', '3', 'Cash', '2023-11-14 11:10:00.960806'),
('0bf592', '9UMWLG4BF8', 'EJKA-4501', '35135b319ce3', '8', 'Cash', '2022-09-04 16:31:54.525284'),
('10d783', 'ASDQWEZXCl', 'CGRB-8029', '7db6e86ccdc6', '18', 'Paypal', '2023-11-14 04:10:18.983703'),
('4423d7', 'QWERT0YUZ1', 'JFMB-0731', '35135b319ce3', '11', 'Cash', '2022-09-04 16:37:03.655834'),
('442865', '146XLFSC9V', 'INHG-0875', '9c7fcc067bda', '10', 'Paypal', '2022-09-04 16:35:22.470600'),
('65891b', 'MF2TVJA1PY', 'ZPXD-6951', 'e711dcc579d9', '16', 'Cash', '2022-09-03 13:12:46.959558'),
('75ae21', '1QIKVO69SA', 'IUSP-9453', 'fe6bb69bdd29', '10', 'Cash', '2022-09-03 11:50:40.496625'),
('7e1989', 'KLTF3YZHJP', 'QOEH-8613', '29c759d624f9', '9', 'Cash', '2022-09-03 12:02:32.926529'),
('88657e', 'ASDQWEZXCF', 'NCFQ-6472', '7db6e86ccdc6', '135', 'Cash', '2023-11-13 08:56:33.856266'),
('968488', '5E31DQ2NCG', 'COXP-6018', '7c8f2100d552', '22', 'Cash', '2022-09-03 12:17:44.639979'),
('984539', 'LSBNK1WRFU', 'FNAB-9142', '35135b319ce3', '18', 'Paypal', '2022-09-04 16:32:14.852482'),
('9fcee7', 'AZSUNOKEI7', 'OTEV-8532', '3859d26cd9a5', '15', 'Cash', '2022-09-03 13:13:38.855058'),
('a8bc7c', 'AE8RWLIY3N', 'YLFD-4102', '082b256de6f9', '165', 'Cash', '2023-11-15 06:26:17.440018'),
('bcf698', 'ASDQWEZXCF', 'HOTM-4651', '082b256de6f9', '11', 'Cash', '2023-11-14 11:16:49.212547'),
('c81d2e', 'WERGFCXZSR', 'AEHM-0653', '06549ea58afd', '8', 'Cash', '2022-09-03 13:26:00.331494'),
('e46e29', 'QMCGSNER3T', 'ONSY-2465', '57b7541814ed', '12', 'Cash', '2022-09-03 08:35:50.172062');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_products`
--

CREATE TABLE `rpos_products` (
  `prod_id` varchar(200) NOT NULL,
  `prod_code` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_img` varchar(200) NOT NULL,
  `prod_desc` longtext NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_products`
--

INSERT INTO `rpos_products` (`prod_id`, `prod_code`, `prod_name`, `prod_img`, `prod_desc`, `prod_price`, `created_at`) VALUES
('06dc36c1be', 'FCWU-5762', 'Butterscotch', '', 'Latte Drink', '165', '2023-11-15 05:50:57.425427'),
('0c4b5c0604', 'JRZN-9518', 'Spaghetti ', '', 'Spaghetti consists of spaghetti (long strings of pasta) with an Italian ragÃ¹ (meat sauce) made with minced beef, bacon and tomatoes, served with Parmesan cheese. Spaghetti is one of the most popular pasta dishes eaten outside of Italy.', '600', '2023-11-15 05:36:56.473310'),
('2b976e49a0', 'CEWV-9438', 'Cheeseburger', '', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty. The cheese is usually added to the cooking hamburger patty shortly before serving, which allows the cheese to melt. Cheeseburgers can include variations in structure, ingredients and composition.', '120', '2023-11-15 05:59:07.553202'),
('31dfcc94cf', 'SYQP-3710', 'Buffalo Wings', '', 'A Buffalo wing in American cuisine is an unbreaded chicken wing section that is generally deep-fried and then coated or dipped in a sauce consisting of a vinegar-based cayenne pepper hot sauce and melted butter prior to serving.', '165', '2023-11-15 05:53:55.062149'),
('4e68e0dd49', 'QLKW-0914', 'Caramel Macchiato', '', 'Steamed milk, espresso and caramel; what could be more enticing? This blissful flavor is a favorite of coffee lovers due to its deliciously bold taste of creamy caramel and strong coffee flavor. These', '65', '2023-11-15 05:59:18.914490'),
('a419f2ef1c', 'EPNX-3728', 'Chicken Nugget', '', 'A chicken nugget is a food product consisting of a small piece of deboned chicken meat that is breaded or battered, then deep-fried or baked. Invented in the 1950s, chicken nuggets have become a very popular fast food restaurant item, as well as widely sold frozen for home use', '160', '2023-11-15 06:00:10.362377'),
('cff0cb495a', 'ZOBW-2640', 'Iced Americano', '', 'Many espresso-based drinks use milk, but not the cafÃ© Americano â€“ or simply \'Americano\'. The drink also uses espresso but is infused with hot water instead of milk. The result is a coffee beverage ', '99', '2023-11-15 06:01:05.034780'),
('e2195f8190', 'HKCR-2178', 'Carbonara', '', 'Carbonara is an Italian pasta dish from Rome made with eggs, hard cheese, cured pork, and black pepper. The dish arrived at its modern form, with its current name, in the middle of the 20th century. The cheese is usually Pecorino Romano, Parmigiano-Reggiano, or a combination of the two.', '600', '2023-11-15 06:00:37.116174'),
('e2af35d095', 'IDLC-7819', 'Pepperoni Pizza', '', 'Pepperoni is an American variety of spicy salami made from cured pork and beef seasoned with paprika or other chili pepper. Prior to cooking, pepperoni is characteristically soft, slightly smoky, and bright red. Thinly sliced pepperoni is one of the most popular pizza toppings in American pizzerias.', '210', '2023-11-15 06:01:39.491296'),
('e769e274a3', 'AHRW-3894', 'Frappuccino', '', 'Frappuccino is a line of blended iced coffee drinks sold by Starbucks. It consists of coffee or crÃ¨me base, blended with ice and ingredients such as flavored syrups and usually topped with whipped cream and or spices.', '99', '2023-11-15 06:01:52.274154'),
('e9abb54535', 'QEJM-2704', 'Bagong Pagkain', 'repos.jpg', 'Bagong masarap na pagkain', '66.00', '2023-11-15 06:29:21.296062'),
('ec18c5a4f0', 'PQFV-7049', 'Corn Dogs', '', 'A corn dog is a sausage on a stick that has been coated in a thick layer of cornmeal batter and deep fried. It originated in the United States and is commonly found in American cuisine', '45', '2023-11-15 06:02:03.213876'),
('f4ce3927bf', 'EAHD-1980', 'Hot Dog', '', 'A hot dog is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener or a frankfurter. The names of these sausages also commonly refer to their assembled dish.', '45', '2023-11-15 06:02:17.047859');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_staff`
--

CREATE TABLE `rpos_staff` (
  `staff_id` int(20) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `staff_email` varchar(200) NOT NULL,
  `staff_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_staff`
--

INSERT INTO `rpos_staff` (`staff_id`, `staff_name`, `staff_number`, `staff_email`, `staff_password`, `created_at`) VALUES
(2, 'Cashier Trevor', 'QEUY-9042', 'cashier@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', '2022-09-04 16:11:30.581882');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rpos_admin`
--
ALTER TABLE `rpos_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `rpos_customers`
--
ALTER TABLE `rpos_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `CustomerOrder` (`customer_id`),
  ADD KEY `ProductOrder` (`prod_id`);

--
-- Indexes for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `rpos_payments`
--
ALTER TABLE `rpos_payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `order` (`order_code`);

--
-- Indexes for table `rpos_products`
--
ALTER TABLE `rpos_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  MODIFY `reset_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD CONSTRAINT `CustomerOrder` FOREIGN KEY (`customer_id`) REFERENCES `rpos_customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOrder` FOREIGN KEY (`prod_id`) REFERENCES `rpos_products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
