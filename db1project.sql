-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2025 at 04:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db1project`
--

-- --------------------------------------------------------

--
-- Table structure for table `external_agency`
--

CREATE TABLE `external_agency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `external_agency`
--

INSERT INTO `external_agency` (`id`, `name`) VALUES
(1, 'شركة Ware Ltd'),
(2, 'شركة Jimenez Group'),
(3, 'شركة Cox, Chang and Walls');

-- --------------------------------------------------------

--
-- Table structure for table `funding_agency`
--

CREATE TABLE `funding_agency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funding_agency`
--

INSERT INTO `funding_agency` (`id`, `name`, `type`) VALUES
(1, 'جهة Cervantes Inc', 'محلية'),
(2, 'جهة Ortiz, Mejia and Brown', 'دولية'),
(3, 'جهة Lowe, Leblanc and Moran', 'دولية'),
(4, 'جهة Allen, Johnson and Villanueva', 'محلية');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `governorate` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `governorate`, `city`, `district`) VALUES
(1, 'دمشق', 'دمشق', 'ساحة المحافظة'),
(2, 'اللاذقية', 'جبلة', 'Brooks Road'),
(3, 'اللاذقية', 'وادي قنديل', 'Katie Underpass'),
(4, 'حمص', 'تدمر', 'Davenport Key');

-- --------------------------------------------------------

--
-- Table structure for table `ministry`
--

CREATE TABLE `ministry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sector` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ministry`
--

INSERT INTO `ministry` (`id`, `name`, `sector`) VALUES
(1, 'وزارةالاقتصاد', 'اقتصادي'),
(2, 'وزارة الكهرباء', 'خدمي'),
(3, 'وزارة الاتصالات والتقانة', 'خدمي');

-- --------------------------------------------------------

--
-- Table structure for table `phase`
--

CREATE TABLE `phase` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `estimated_budget` varchar(255) NOT NULL,
  `actual_cost` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phase`
--

INSERT INTO `phase` (`id`, `start_date`, `end_date`, `estimated_budget`, `actual_cost`, `project_id`) VALUES
(1, '2024-03-02', '2024-05-14', '1256398096', '914205172', 5),
(2, '2024-01-15', '2024-03-17', '1481263612', '2194688961', 5),
(3, '2025-01-04', '2025-02-11', '1709948770', '474447355', 4),
(4, '2024-01-16', '2024-03-03', '809180467', '989299534', 3),
(5, '2024-12-02', '2025-01-30', '1267211929', '1026692231', 2),
(6, '2024-01-18', '2024-03-19', '958671950', '1074576011', 3),
(7, '2023-12-26', '2024-02-05', '1814567453', '595021794', 1),
(8, '2024-10-12', '2024-12-17', '1504151259', '575717137', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phase_execution`
--

CREATE TABLE `phase_execution` (
  `id` int(11) NOT NULL,
  `period` varchar(50) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `material` text DEFAULT NULL,
  `phase_id` int(11) DEFAULT NULL,
  `external_agency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phase_execution`
--

INSERT INTO `phase_execution` (`id`, `period`, `cost`, `material`, `phase_id`, `external_agency_id`) VALUES
(1, '59', '326162142', 'Consectetur atque et similique.', 8, 3),
(2, '74', '892619685', 'Voluptatibus quasi totam perferendis quaerat excepturi quibusdam perspiciatis.', 6, 1),
(3, '80', '543441478', 'Numquam optio illum perspiciatis molestias illo.', 2, 1),
(4, '82', '695577819', 'Eius libero aliquam molestias natus.', 5, 2),
(5, '31', '671015157', 'Ut delectus perferendis ipsum dolor dicta.', 3, 1),
(6, '59', '284275625', 'Assumenda id esse sequi necessitatibus quasi.', 6, 1),
(7, '88', '558583505', 'Sint assumenda laudantium id. Quam commodi unde.', 3, 1),
(8, '70', '779389603', 'Adipisci quasi repellendus inventore esse tempore.', 2, 1),
(9, '107', '527157206', 'Ullam voluptatum consequatur illo.', 4, 2),
(10, '56', '249805445', 'Dolor fugiat aliquam illum. Unde maiores dolores consequuntur ab tenetur ut.', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `phase_monitoring`
--

CREATE TABLE `phase_monitoring` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `progress_percentage` decimal(5,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `phase_execution_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phase_monitoring`
--

INSERT INTO `phase_monitoring` (`id`, `date`, `progress_percentage`, `note`, `phase_execution_id`) VALUES
(1, '2024-05-01', 25.00, 'بداية العمل في المرحلة', 1),
(2, '2024-05-10', 55.50, 'تنفيذ جزئي للأعمال', 1),
(3, '2024-06-01', 100.00, 'اكتمال تنفيذ المرحلة', 1),
(4, '2024-04-15', 40.25, 'تم تجهيز المواد', 2),
(5, '2024-05-20', 80.00, 'تم إنجاز معظم الأعمال', 2);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `estimated_budget` varchar(255) NOT NULL,
  `actual_cost` varchar(255) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `ministry_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `start_date`, `end_date`, `estimated_budget`, `actual_cost`, `location_id`, `ministry_id`) VALUES
(1, 'مشروع synthesize 24/365 eyeballs', '2023-10-19', '2024-05-10', '6625904779', '19697037192', 3, 3),
(2, 'مشروع envisioneer one-to-one portals', '2024-04-24', '2025-04-18', '16124828549', '4387400734', 4, 2),
(3, 'مشروع facilitate e-business experiences', '2023-10-06', '2024-09-23', '16199221520', '20138977513', 3, 2),
(4, 'مشروع generate real-time partnerships', '2024-05-27', '2025-04-03', '18690521150', '12747481936', 3, 2),
(5, 'مشروع envisioneer sticky interfaces', '2023-08-28', '2024-04-10', '15217579334', '19342663719', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_funding`
--

CREATE TABLE `project_funding` (
  `id` int(11) NOT NULL,
  `funding_agency_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_funding`
--

INSERT INTO `project_funding` (`id`, `funding_agency_id`, `project_id`) VALUES
(1, 3, 1),
(2, 4, 1),
(3, 1, 2),
(4, 3, 3),
(5, 4, 3),
(6, 2, 4),
(7, 4, 4),
(8, 3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `external_agency`
--
ALTER TABLE `external_agency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funding_agency`
--
ALTER TABLE `funding_agency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ministry`
--
ALTER TABLE `ministry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project` (`project_id`);

--
-- Indexes for table `phase_execution`
--
ALTER TABLE `phase_execution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phase` (`phase_id`),
  ADD KEY `exteranl_agency` (`external_agency_id`);

--
-- Indexes for table `phase_monitoring`
--
ALTER TABLE `phase_monitoring`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phase_execution` (`phase_execution_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location` (`location_id`),
  ADD KEY `ministry` (`ministry_id`);

--
-- Indexes for table `project_funding`
--
ALTER TABLE `project_funding`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funding_agency` (`funding_agency_id`),
  ADD KEY `pro` (`project_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phase`
--
ALTER TABLE `phase`
  ADD CONSTRAINT `project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phase_execution`
--
ALTER TABLE `phase_execution`
  ADD CONSTRAINT `exteranl_agency` FOREIGN KEY (`external_agency_id`) REFERENCES `external_agency` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phase` FOREIGN KEY (`phase_id`) REFERENCES `phase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phase_monitoring`
--
ALTER TABLE `phase_monitoring`
  ADD CONSTRAINT `phase_execution` FOREIGN KEY (`phase_execution_id`) REFERENCES `phase_execution` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `location` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ministry` FOREIGN KEY (`ministry_id`) REFERENCES `ministry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project_funding`
--
ALTER TABLE `project_funding`
  ADD CONSTRAINT `funding_agency` FOREIGN KEY (`funding_agency_id`) REFERENCES `funding_agency` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pro` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
