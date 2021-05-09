-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 09:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `AUTOCODE` varchar(30) NOT NULL,
  `APPENDCHAR` varchar(30) NOT NULL,
  `AUTOSTART` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`AUTOCODE`, `APPENDCHAR`, `AUTOSTART`, `AUTOEND`, `AUTOINC`) VALUES
('invoice', 'IN', 1, 40086, 1),
('item', '222017', 1001, 1060, 1),
('OR', 'OR', 1, 70001, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGORYID` int(11) NOT NULL,
  `CATNAME` varchar(30) NOT NULL,
  `CATDESCIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGORYID`, `CATNAME`, `CATDESCIPTION`) VALUES
(4, 'CHARGER TYPE-C', 'CHARGER TYPE-C'),
(7, 'CASING', 'CASING HP'),
(8, 'HEADSET', 'HEADSET HP'),
(9, 'EARPHONE', 'EARPHONE HP'),
(10, 'AKSESORIS CAMERA', 'AKSESORIS CAMERA'),
(11, 'AKSESORIS LAINNYA', 'AKSESORIS LAINNYA'),
(12, 'SCREENGUARD', 'SCREENGUARD'),
(13, 'CHARGER iPHONE', 'KABEL CHARGER iPHONE'),
(14, 'Dummy', 'dummy'),
(15, 'Dummy 1', 'Dummy 1');

-- --------------------------------------------------------

--
-- Table structure for table `tblcommonmaster`
--

CREATE TABLE `tblcommonmaster` (
  `COMMON_ID` int(11) NOT NULL,
  `COMMONCODE` varchar(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL,
  `LISTNAME` varchar(30) NOT NULL,
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcommonmaster`
--

INSERT INTO `tblcommonmaster` (`COMMON_ID`, `COMMONCODE`, `CATEGORY`, `LISTNAME`, `IS_DEFAULT`) VALUES
(1, '1', 'MONTH', 'JANUARY', 'NO'),
(2, '2', 'MONTH', 'FEBRUARY', 'NO'),
(3, '3', 'MONTH', 'MARCH', 'NO'),
(4, '4', 'MONTH', 'APRIL', 'NO'),
(5, '5', 'MONTH', 'MAY', 'NO'),
(6, '6', 'MONTH', 'JUNE', 'NO'),
(7, '7', 'MONTH', 'JULY', 'NO'),
(8, '8', 'MONTH', 'AUGUST', 'NO'),
(9, '9', 'MONTH', 'SEPTEMBER', 'NO'),
(10, '10', 'MONTH', 'OCTOBER', 'NO'),
(11, '11', 'MONTH', 'NOVEMBER', 'NO'),
(12, '12', 'MONTH', 'DECEMBER', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTNO` int(11) NOT NULL,
  `CUSTID` int(11) NOT NULL,
  `CUSTNAME` varchar(50) NOT NULL,
  `CONTACT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `EMPID` int(11) NOT NULL,
  `EMPNAME` varchar(60) NOT NULL,
  `EMPADDRESS` text NOT NULL,
  `EMPCONTACT` varchar(20) NOT NULL,
  `EMPPOSITION` varchar(30) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWRD` text NOT NULL,
  `TYPE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`EMPID`, `EMPNAME`, `EMPADDRESS`, `EMPCONTACT`, `EMPPOSITION`, `USERNAME`, `PASSWRD`, `TYPE`) VALUES
(5, 'Kasir A', 'Surabaya', '03255', 'Cashier', 'kasir1', '8691e4fc53b99da544ce86e22acba62d13352eff', ''),
(6, 'Surip Anwar', 'Surabaya', '00000', 'Administrator', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', ''),
(7, 'Rifqi Irawan', 'Sample Address', '123456789', 'Administrator', 'jsmith', 'd033e22ae348aeb5660fc2140aec35850c4da997', ''),
(8, 'Kasir B', 'Sidoarjo', '0821546786', 'Cashier', 'Kasir B', 'a9ee335cbc0607363027ab7b91f5fe14fc06e6b4', ''),
(9, 'Kasir C', 'Surabaya', '0815689846', 'Cashier', 'kasirc', '46657a496cbc70a73f558c7d15f19c7d3280977b', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblitem`
--

CREATE TABLE `tblitem` (
  `ITEMNO` int(11) NOT NULL,
  `ITEMCODE` varchar(30) NOT NULL,
  `ITEMNAME` varchar(50) NOT NULL,
  `ITEMDESCRIPTION` text NOT NULL,
  `ITEMCATEGORY` varchar(30) NOT NULL,
  `SIZE` varchar(30) NOT NULL,
  `QTY` int(11) NOT NULL,
  `UNITPRICE` double NOT NULL,
  `ONHAND` int(2) NOT NULL,
  `DATEIN` date NOT NULL,
  `MARKUP` double NOT NULL,
  `ENCODEDBY` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `DISPLAY` varchar(5) NOT NULL DEFAULT 'NO',
  `DISPLAYMENU` varchar(2) NOT NULL DEFAULT '0',
  `IMG` mediumblob NOT NULL,
  `BARCODE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblitem`
--

INSERT INTO `tblitem` (`ITEMNO`, `ITEMCODE`, `ITEMNAME`, `ITEMDESCRIPTION`, `ITEMCATEGORY`, `SIZE`, `QTY`, `UNITPRICE`, `ONHAND`, `DATEIN`, `MARKUP`, `ENCODEDBY`, `EMPID`, `DISPLAY`, `DISPLAYMENU`, `IMG`, `BARCODE`) VALUES
(2676, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 0, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2677, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 0, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2678, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 0, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2679, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 0, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2680, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 0, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2681, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2682, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2683, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2684, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2685, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2686, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2687, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2688, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2689, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2690, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2691, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2692, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2693, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2694, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2695, '080520211048', 'Charger iPhone Baseus', 'Charger untuk iPhone', 'CHARGER iPHONE', '1 meter', 1, 100000, 1, '2021-05-08', 110000, 'Janno Palacios', 6, 'NO', '0', '', '1656532121'),
(2696, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 0, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2697, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 0, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2698, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2699, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2700, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2701, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2702, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2703, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2704, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2705, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2706, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2707, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2708, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2709, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2710, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2711, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2712, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2713, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2714, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2715, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2716, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2717, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2718, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2719, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2720, '080520211049', 'Charger Type C Baseus', 'Charger Type C Baseus', 'CHARGER TYPE-C', '1 meter', 1, 90000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '6546543213'),
(2721, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2722, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2723, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2724, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2725, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2726, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2727, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2728, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2729, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2730, '080520211050', 'Tempered Glass iPhone 7', 'Tempered Glass iPhone 7', 'SCREENGUARD', 'Regular', 1, 35000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '165464987613'),
(2731, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2732, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2733, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2734, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2735, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2736, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2737, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2738, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2739, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2740, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2741, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2742, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2743, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2744, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2745, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '56465442312'),
(2746, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2747, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2748, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2749, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2750, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2751, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2752, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2753, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2754, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2755, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2756, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2757, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2758, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2759, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2760, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2761, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2762, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2763, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2764, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2765, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2766, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2767, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2768, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2769, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2770, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2771, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2772, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2773, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2774, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2775, '080520211052', 'Headset Superbass', 'Headset Superbass', 'HEADSET', 'Regular', 1, 20000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', '564989798456'),
(2776, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2777, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2778, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2779, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2780, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2781, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2782, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2783, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2784, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2785, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2786, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2787, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2788, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2789, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2790, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2791, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2792, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2793, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2794, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2795, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2796, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2797, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2798, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2799, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2800, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2801, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2802, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2803, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2804, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2805, '080520211053', 'Earphone Hypercloud', 'Earphone Hypercloud', 'EARPHONE', 'Regular', 1, 50000, 1, '2021-05-08', 80000, 'Janno Palacios', 6, 'NO', '0', '', '56465465'),
(2806, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2807, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2808, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2809, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2810, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2811, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2812, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2813, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2814, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2815, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2816, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2817, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2818, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2819, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2820, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2821, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2822, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2823, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2824, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2825, '080520211054', 'Fisheye 3in1', 'Fisheye 3in1', 'AKSESORIS CAMERA', 'Regular', 1, 50000, 1, '2021-05-08', 100000, 'Janno Palacios', 6, 'NO', '0', '', '45654653161'),
(2826, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2827, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2828, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2829, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2830, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2831, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2832, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2833, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2834, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2835, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2836, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2837, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2838, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2839, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2840, '080520211055', 'Gurita Universal', 'Gurita Universal', 'AKSESORIS LAINNYA', 'Regular', 1, 500, 1, '2021-05-08', 1500, 'Janno Palacios', 6, 'NO', '0', '', '455422131561'),
(2841, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2842, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2843, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2844, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2845, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2846, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2847, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2848, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2849, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2850, '080520211051', 'Casing Oppo F9', 'Casing Oppo F9', 'CASING', 'Regular', 1, 30000, 1, '2021-05-08', 50000, 'Janno Palacios', 6, 'NO', '0', '', ''),
(2851, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2852, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2853, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2854, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2855, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2856, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2857, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2858, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2859, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2860, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', '65465464'),
(2861, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', ''),
(2862, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', ''),
(2863, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', ''),
(2864, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', ''),
(2865, '080520211057', 'Dummyedit', 'Dummy edit', 'Dummy 2', 'Regular', 1, 100000, 1, '2021-05-08', 150000, 'Surip Anwar', 6, 'NO', '0', '', ''),
(2866, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2867, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2868, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2869, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2870, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2871, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2872, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2873, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2874, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2875, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '056487651318'),
(2876, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', ''),
(2877, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', ''),
(2878, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', ''),
(2879, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', ''),
(2880, '090520211059', 'dummy ', 'dumm', 'Dummy', 'Regular', 1, 10000, 1, '2021-05-09', 15000, 'Surip Anwar', 6, 'NO', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaction`
--

CREATE TABLE `tbltransaction` (
  `TRANSID` int(11) NOT NULL,
  `INVOICENO` int(30) NOT NULL,
  `ORNO` int(30) NOT NULL,
  `TRANSDATE` date NOT NULL,
  `TRANSTIME` varchar(30) NOT NULL,
  `AMOUNTSALE` double NOT NULL,
  `DISCOUNT` double NOT NULL,
  `TAX` double NOT NULL,
  `TOTALDUE` double NOT NULL,
  `AMOUNTRECIEVED` double NOT NULL,
  `AMOUNTCHANGE` double NOT NULL,
  `TENDEREDBY` int(11) NOT NULL,
  `CASHIER` varchar(30) NOT NULL,
  `CUSTOMER` varchar(30) NOT NULL,
  `GIVENDISCCOUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaction`
--

INSERT INTO `tbltransaction` (`TRANSID`, `INVOICENO`, `ORNO`, `TRANSDATE`, `TRANSTIME`, `AMOUNTSALE`, `DISCOUNT`, `TAX`, `TOTALDUE`, `AMOUNTRECIEVED`, `AMOUNTCHANGE`, `TENDEREDBY`, `CASHIER`, `CUSTOMER`, `GIVENDISCCOUNT`) VALUES
(17, 40070, 70002, '2021-05-08', '21:16:36', 0, 0, 0, 0, 0, 0, 6, 'Janno Palacios', 'Default', 0),
(18, 40070, 70002, '2021-05-08', '21:16:39', 0, 0, 0, 0, 0, 0, 6, 'Janno Palacios', 'Default', 0),
(19, 40070, 70002, '2021-05-08', '21:16:57', 110000, 0, 0, 110000, 150, 40, 6, 'Janno Palacios', 'Default', 0),
(20, 40073, 70002, '2021-05-08', '23:20:47', 220000, 22000, 26400, 220000, 250, 52, 6, 'Surip Anwar', 'Default', 0),
(21, 40074, 70002, '2021-05-08', '23:21:20', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(22, 40074, 70002, '2021-05-08', '23:21:21', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(23, 40074, 70002, '2021-05-08', '23:21:26', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(24, 40074, 70002, '2021-05-08', '23:21:26', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(25, 40074, 70002, '2021-05-08', '23:21:26', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(26, 40074, 70002, '2021-05-08', '23:21:27', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(27, 40074, 70002, '2021-05-08', '23:21:27', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(28, 40074, 70002, '2021-05-08', '23:21:27', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(29, 40074, 70002, '2021-05-08', '23:21:29', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(30, 40074, 70002, '2021-05-08', '23:21:29', 0, 0, 0, 0, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(31, 40074, 70002, '2021-05-08', '23:21:34', 110000, 0, 0, 110000, 0, 0, 6, 'Surip Anwar', 'Default', 0),
(32, 40085, 70002, '2021-05-09', '13:52:35', 110000, 0, 0, 110000, 150, 40, 6, 'Surip Anwar', 'Default', 0),
(33, 40086, 70002, '2021-05-09', '14:29:33', 200000, 0, 0, 200000, 300, 100, 6, 'Surip Anwar', 'Default', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbltransdetails`
--

CREATE TABLE `tbltransdetails` (
  `TRANSDETAILSID` int(11) NOT NULL,
  `INVOICENO` int(30) NOT NULL,
  `ITEMDESCRIPTION` varchar(50) NOT NULL,
  `ITEMQTY` int(11) NOT NULL,
  `ITEMPRICE` double NOT NULL,
  `ITEMTOTPRICE` double NOT NULL,
  `ITEMCODE` varchar(30) NOT NULL,
  `BARCODE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransdetails`
--

INSERT INTO `tbltransdetails` (`TRANSDETAILSID`, `INVOICENO`, `ITEMDESCRIPTION`, `ITEMQTY`, `ITEMPRICE`, `ITEMTOTPRICE`, `ITEMCODE`, `BARCODE`) VALUES
(15, 40070, 'Charger iPhone Baseus', 1, 110, 110, '080520211048', ''),
(16, 40073, 'Charger iPhone Baseus', 2, 110, 220, '080520211048', ''),
(17, 40074, 'Charger iPhone Baseus', 1, 110, 110, '080520211048', ''),
(18, 40085, 'Charger iPhone Baseus', 1, 110, 110, '080520211048', ''),
(19, 40086, 'Charger Type C Baseus', 2, 100, 200, '080520211049', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`AUTOCODE`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Indexes for table `tblcommonmaster`
--
ALTER TABLE `tblcommonmaster`
  ADD PRIMARY KEY (`COMMON_ID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTNO`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`EMPID`);

--
-- Indexes for table `tblitem`
--
ALTER TABLE `tblitem`
  ADD PRIMARY KEY (`ITEMNO`);

--
-- Indexes for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  ADD PRIMARY KEY (`TRANSID`);

--
-- Indexes for table `tbltransdetails`
--
ALTER TABLE `tbltransdetails`
  ADD PRIMARY KEY (`TRANSDETAILSID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcommonmaster`
--
ALTER TABLE `tblcommonmaster`
  MODIFY `COMMON_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTNO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `EMPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblitem`
--
ALTER TABLE `tblitem`
  MODIFY `ITEMNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2881;

--
-- AUTO_INCREMENT for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  MODIFY `TRANSID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbltransdetails`
--
ALTER TABLE `tbltransdetails`
  MODIFY `TRANSDETAILSID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
