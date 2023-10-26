-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.11.160
-- Generation Time: Oct 26, 2023 at 10:18 PM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suitecrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `abcd_appointments`
--

CREATE TABLE `abcd_appointments` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abcd_appointments_audit`
--

CREATE TABLE `abcd_appointments_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abcd_appointments_cstm`
--

CREATE TABLE `abcd_appointments_cstm` (
  `id_c` char(36) COLLATE utf8mb4_general_ci NOT NULL,
  `aut_c` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '{id}',
  `link_c` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'https://www.aut.ac.nz/'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `industry` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `annual_revenue` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_fax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_office` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_alternate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ownership` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employees` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ticker_symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sic_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bug_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `case_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `opportunity_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `acltype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aclaccess` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('1026a28e-c377-7610-ca1a-643d42963687', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Documents', 'module', 90, 0),
('10473511-7921-dbd6-22f1-643d429a330e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('11bfb468-984e-e90f-f4c7-643d4236199d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Tasks', 'module', 90, 0),
('1240b421-871b-f9a0-8139-643d42b06743', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Documents', 'module', 90, 0),
('12a235ee-1633-f953-b38c-643d42067f0b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('12f223e0-d48a-a5e7-c1fc-643d42715d96', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('13bddec6-14e9-215b-5602-643d42567829', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('14041a40-73be-558b-5ad7-643d42a2271c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Documents', 'module', 90, 0),
('1579a9cb-de4a-9bb8-06c4-643d427efd03', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('164c3a2d-6c19-27a8-7999-643d42aa2def', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Documents', 'module', 90, 0),
('16e177a7-a814-a0d1-005c-643d42231a75', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('177876eb-d5bf-837a-6304-643d427563ed', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('17e63bbb-f163-f186-509d-643d428a2ba2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Calls', 'module', 89, 0),
('18754228-6a6f-13d0-3b49-643d42c860d4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('18c5695a-26b3-660a-475b-643d42ad6079', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Documents', 'module', 90, 0),
('18dbd534-b071-8b59-048c-643d4266af9f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('19e340de-d34d-3a8f-b112-643d421a16c0', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('1a27b250-4c97-441c-68fd-643d42a9c18c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('1adbe49e-3ecf-53f2-6744-643d42534dac', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Documents', 'module', 90, 0),
('1ae3df3c-6bf8-20e2-3c5a-6510df241d2c', '2023-09-25 01:18:21', '2023-09-25 01:18:21', '1', '1', 'access', 'DDC_DC', 'module', 89, 0),
('1b79268a-cae2-bcfe-2bc5-643d4265434a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('1bd2d367-0bab-c438-b482-643d42fb2a2b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('1c12ef83-cb08-55cf-2f79-643d42ba9596', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('1cc78c59-3337-188f-73bf-643d420723f3', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Calls', 'module', 90, 0),
('1cd38f60-f082-cc95-ca19-643d42905cc4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('1ce1b0d4-5886-d6de-96b1-643d42c82330', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('1d4c764d-cab6-faab-ff0f-643d42bfa922', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('1d894902-fbaf-6b78-f9df-643d42972ef4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('1db5ca27-9945-5c8b-9a72-643d42497250', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('1db8ecfe-edc2-7a98-df44-6510dfba6c50', '2023-09-25 01:18:21', '2023-09-25 01:18:21', '1', '1', 'view', 'DDC_DC', 'module', 90, 0),
('1ec10ac1-86bd-324b-305a-6510df2ec0e5', '2023-09-25 01:18:21', '2023-09-25 01:18:21', '1', '1', 'list', 'DDC_DC', 'module', 90, 0),
('1ec1941b-161d-56d7-77ea-643d42a19f13', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('1eccb202-b30a-4e79-017b-643d426cb521', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('1eda117f-7c86-9865-0174-643d42d37055', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('1f86c2d4-d860-e677-0008-643d42ad518a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Calls', 'module', 90, 0),
('1fa85b6f-5b7c-c297-13de-6510df77d501', '2023-09-25 01:18:21', '2023-09-25 01:18:21', '1', '1', 'edit', 'DDC_DC', 'module', 90, 0),
('1fbd4d64-a8d8-82d3-b452-643d42dd9c0b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('20058d18-0722-5d89-e929-643d4237b2f3', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2070b68e-bfcf-b556-124b-643d423944ea', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('20a4085b-0454-3d7c-7f40-6510dfedeadc', '2023-09-25 01:18:21', '2023-09-25 01:18:21', '1', '1', 'delete', 'DDC_DC', 'module', 90, 0),
('20f617ea-a2f9-90db-a0b5-643d423c35ba', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('212122ef-0e29-3dd2-b76e-643d42cbe552', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Spots', 'module', 89, 0),
('217458b9-18b5-ff25-ae6a-6510df56eb67', '2023-09-25 01:18:21', '2023-09-25 01:18:21', '1', '1', 'import', 'DDC_DC', 'module', 90, 0),
('21a5b584-c1b8-d7d9-6e34-643d42922a53', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('21d63e61-1382-185b-25fb-643d42f0ca1f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('21ea3fa1-4b51-7038-b219-643d42bba8ac', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('229dc731-75b1-feca-2b36-643d42faafdf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('229e009c-8006-0ad5-c607-643d42d4bd80', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'SurveyQuestionResponses', 'module', 90, 0),
('22a1e411-e21a-aafd-66ea-643d42211553', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('22ad461b-4082-6bb5-5a7f-643d421d4154', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Calls', 'module', 90, 0),
('23994b8f-3339-d8af-d2d2-6510df4f7184', '2023-09-25 01:18:21', '2023-09-25 01:18:21', '1', '1', 'export', 'DDC_DC', 'module', 90, 0),
('23b30fde-2c5f-8bf0-6e40-643d42e2877d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Tasks', 'module', 89, 0),
('23bd3518-afc4-2601-fa4d-643d42b23485', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('244af2e2-b415-5f7a-446d-643d421bd972', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('247a2b2d-95f9-313f-76f2-643d42c6439d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('248fae63-c3ec-6015-7f61-6510dffcb800', '2023-09-25 01:18:21', '2023-09-25 01:18:21', '1', '1', 'massupdate', 'DDC_DC', 'module', 90, 0),
('24a67cf2-d1cb-21f8-34d9-643d42b3ac7a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('25344b6e-7108-f8dd-147b-643d429ad28d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('255dafc5-a740-0c0f-3110-643d42bef1cf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Spots', 'module', 90, 0),
('25eb71f1-29e2-2ade-750f-643d4265fd32', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('26211d4e-a2ea-ee1c-c703-643d42aa6127', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Calls', 'module', 90, 0),
('26744b14-5ab9-55c5-8ec1-643d4220330b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('26f00a26-ce74-70ac-26d4-643d4294b861', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('275dcbaf-2cb1-556e-79c3-645032ccc2c6', '2023-05-01 21:41:34', '2023-05-01 21:41:34', '1', '1', 'view', 'abcd_Appointments', 'module', 90, 0),
('27c8e436-475b-e1e9-23a0-643d423fb989', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('27f59658-b650-9952-69e2-643d428bf721', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('27f5de46-8606-f6da-d572-643d42e0fa95', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Spots', 'module', 90, 0),
('28cc7a99-835f-0b83-c3d5-643d4250f93e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('291e15bd-7a32-c880-b4e0-643d42d8352f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Calls', 'module', 90, 0),
('29ec0d43-0049-56ff-8f01-643d423be8ac', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('2a4697b0-3240-c8b3-d01f-643d422579a5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('2a4fa106-22a0-f631-4457-643d42edddb3', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2a92fe21-ed84-31a6-5a40-6450328f0189', '2023-05-01 21:41:34', '2023-05-01 21:41:34', '1', '1', 'list', 'abcd_Appointments', 'module', 90, 0),
('2bfb8518-cbbc-9041-9631-643d4239b918', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Calls', 'module', 90, 0),
('2c4b127e-2f51-c772-ad22-643d42ef55c0', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Spots', 'module', 90, 0),
('2d16dc83-148f-391d-57db-643d42abc978', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2d377155-c266-053c-a780-643d4274ced1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Cases', 'module', 89, 0),
('2d9df5e2-e704-40ac-c128-643d42dfe310', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('2df703c3-1886-2132-38ac-643d422be3d1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('2e369573-2121-645b-4df4-645032b3b802', '2023-05-01 21:41:34', '2023-05-01 21:41:34', '1', '1', 'edit', 'abcd_Appointments', 'module', 90, 0),
('2f21b9f4-7435-5b57-13a8-643d42fd83c5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Spots', 'module', 90, 0),
('2f2d8ff1-7cd2-5461-af33-643d429e8fff', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('2fa91af7-b30a-d169-fec4-643d4282bf57', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('3187c201-78f2-7b00-4933-643d42602bae', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Spots', 'module', 90, 0),
('318d1271-d76a-ef16-0032-64503264116c', '2023-05-01 21:41:34', '2023-05-01 21:41:34', '1', '1', 'delete', 'abcd_Appointments', 'module', 90, 0),
('31d70ba4-73cc-d1fc-fa03-643d42089bf1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Cases', 'module', 90, 0),
('3239e82a-43c7-1766-3678-643d420149d6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'SurveyQuestions', 'module', 89, 0),
('3291ce61-6dc2-3656-9dfb-643d4238a8db', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('33073288-9d55-465e-563e-643d4201fa21', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('344cb9c9-3795-af93-a8ac-643d42e77f59', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Spots', 'module', 90, 0),
('351cea52-4aed-2655-5a7b-643d427df0f1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'SurveyQuestions', 'module', 90, 0),
('3545bccb-a488-e2c9-4ed2-643d42c97663', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Cases', 'module', 90, 0),
('358a3d09-f62c-dd9b-621f-643d424b9a8d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('35bb1871-691f-03cd-b52d-645032f3a082', '2023-05-01 21:41:34', '2023-05-01 21:41:34', '1', '1', 'import', 'abcd_Appointments', 'module', 90, 0),
('36564b0d-448c-0dd1-ccd5-643d425fda93', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('36c908f4-f007-ce88-e682-643d42a5ea6b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'SurveyQuestions', 'module', 90, 0),
('37651cfe-e03f-d055-9ee2-643d42c9e2d5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('37d7bc9d-b39d-1a27-0ba5-643d42dd2488', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('3831706e-e3dd-525a-6bfc-643d426ab45b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('38ba949d-3ee7-4c05-2f9f-643d42f5e185', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('391d09e0-b0bc-e223-0063-643d42bf6bb6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'SurveyQuestions', 'module', 90, 0),
('397323a3-751e-025e-d468-645032b314bc', '2023-05-01 21:41:34', '2023-05-01 21:41:34', '1', '1', 'export', 'abcd_Appointments', 'module', 90, 0),
('39b5dcf6-a7f5-5d8b-7dab-643d42fa8cd2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('39cdb5f5-55f8-537c-2680-643d427824b7', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Cases', 'module', 90, 0),
('3abd6f75-729c-219e-7c5d-643d42a08b49', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('3ac3a1be-2795-c189-c071-643d42aead5b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Project', 'module', 89, 0),
('3ae27b9b-17cd-2231-db91-643d424574cf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('3b08e877-2142-7f6c-967d-643d424bd213', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'SurveyQuestions', 'module', 90, 0),
('3b22fd65-0d32-52f6-9244-643d4230c3ea', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('3c016078-ae1a-977d-3d33-643d425bff08', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('3c602b17-cd3f-c64f-57ce-645032225655', '2023-05-01 21:41:34', '2023-05-01 21:41:34', '1', '1', 'massupdate', 'abcd_Appointments', 'module', 90, 0),
('3d18525f-9c6e-3ba6-2300-643d42c12f39', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('3d1d9db1-ea6d-05d7-9935-643d42faf5e8', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('3d1ec346-7607-c7f2-8540-643d42b48164', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'SurveyQuestions', 'module', 90, 0),
('3d842321-1f42-32a6-91ae-643d42b7cbbe', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('3db93a00-845c-f69d-8af7-643d4278deec', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('3e011d04-6712-7956-24d6-643d42004acf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Project', 'module', 90, 0),
('3e6bbfd0-867b-4be1-5893-643d42925bde', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('3f67e7fe-c30b-f9bd-f63b-643d42dae256', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'SurveyQuestions', 'module', 90, 0),
('3fb6b234-b3fc-d865-8b0d-643d42afa345', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('3fc6fc1d-bb6c-424b-a1bc-643d427c0cc5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('40035ade-8ab4-d576-99fd-643d42e880db', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Cases', 'module', 90, 0),
('4026aa1a-1037-4bef-0383-643d424e9de6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('40898c12-09e1-b1a3-789f-643d42fe52e6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('4198b3ca-2d16-d156-aba5-643d425caf7a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('41c69dd7-31cf-1152-f982-643d42ddf714', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Project', 'module', 90, 0),
('421302f3-fca1-e169-ecee-643d425570f9', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'SurveyQuestions', 'module', 90, 0),
('422cc733-699e-8767-48c0-643d428de70d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('4247a7e7-ff7c-b050-20ca-643d427e9fcf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('425c02ff-4ebc-4aca-32d7-643d42342056', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('43026e67-ccdb-f06a-01a4-643d42d2b66a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('43090cfb-7ecb-a027-0ab8-643d422089ed', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'SurveyQuestionResponses', 'module', 90, 0),
('431b3918-798f-652a-cceb-643d422e67ae', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'SurveyResponses', 'module', 89, 0),
('43840c58-7109-c4dc-624e-643d429dd4c9', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('447ee460-89cc-d8cb-3fe6-643d42c74ca4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('4484d3ac-de10-0bd1-27ef-643d42805644', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('44b52419-0530-b7e2-553e-643d42a731f6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('44c76d2c-a1d2-6b22-c935-643d42a57af6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('44c788a1-622c-6c6c-22d6-643d42f7a561', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Project', 'module', 90, 0),
('4525f0f3-fadd-0d80-971a-645032f47b39', '2023-05-01 21:41:34', '2023-05-01 21:41:34', '1', '1', 'access', 'abcd_Appointments', 'module', 89, 0),
('45bfd43b-0e31-f47c-fc67-643d42cda15f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('4660e3e3-ce3c-3343-589d-643d42ac340e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'SurveyResponses', 'module', 90, 0),
('4696b7e8-2f0e-d4e1-e2fc-643d42d907c5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('46a502c7-947c-aa28-4377-643d42239093', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('46bcd1d4-03b2-2f8a-7d2c-643d420d1a13', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Cases', 'module', 90, 0),
('4730f695-dc77-a1df-3e93-643d42c38325', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('479b5deb-6c04-228c-1130-643d425465a8', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('4827e228-c210-aae8-1dad-643d4203cbe8', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('48de9d1b-7318-2bab-caab-643d4237ce9b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('4913190c-54d7-3be4-37c8-643d423d7161', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'SurveyResponses', 'module', 90, 0),
('493ca86f-e4f5-d481-492d-643d42fdb4b2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('4a1c4d83-eb57-7fad-6d9d-643d429fb639', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('4a917b3c-07ff-b956-b808-643d42d91434', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Cases', 'module', 90, 0),
('4b64ebf1-3f5e-6064-2bab-643d42e2fb23', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('4b89f203-e0e2-e569-dd3c-643d42d22970', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('4c56983b-5dbf-a07a-80cc-643d42405d23', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('4d6477ae-078e-a18c-684d-643d420aa107', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('4db74728-ad00-37a6-4a1c-643d42db2d40', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('4e3c2f1c-4341-cab4-2fdd-643d42b3e9a2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'SurveyResponses', 'module', 90, 0),
('4ea429a3-82ff-87dc-e081-643d42ac92c1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('4f356e24-0bdb-814f-e8a1-643d42fcc5fa', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('4fb2ed6d-b030-97cd-5688-643d42f47b36', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('50262b93-bc6d-6811-c326-643d423e7b56', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'ExternalOAuthConnection', 'module', 89, 0),
('50cb9146-1ee2-e9d2-3f22-643d42e057ee', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('513320a1-6731-d5dd-fb32-643d42a90d27', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('52fece2c-5b02-f9a3-cbe6-643d428fbd72', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('5301a4d6-64d3-183d-69c6-643d427e10c4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('534a269b-da64-9c46-6dbc-643d42133245', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'ExternalOAuthConnection', 'module', 90, 0),
('54f6c960-d4f7-0053-fab9-643d4238e5c6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('55961af2-5f21-9d83-7af2-643d42520528', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'ExternalOAuthConnection', 'module', 90, 0),
('56dd3d65-e7dd-680d-d40e-643d424b2f20', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('57581f24-ab95-43da-f130-643d420ee578', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'ExternalOAuthConnection', 'module', 90, 0),
('57690809-b91c-6cd2-5ca7-643d42effc68', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('587e63d5-1ad4-6c4c-896b-643d428a3ba1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('58bf8f7f-2142-dedd-17b7-643d42e52dec', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('5921ccf2-de62-adc2-df21-643d42583bcb', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('5983d8b0-9b7b-9a13-24fd-643d42b163f2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'ExternalOAuthConnection', 'module', 90, 0),
('5b21dd04-33bf-65a4-2eac-643d4202e641', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('5b5d5aa7-2f8f-e503-b97e-643d42361b6c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('5b90a6bd-e8cc-5201-6a90-643d4287774a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'ExternalOAuthConnection', 'module', 90, 0),
('5baf86df-d03b-7342-2bfd-643d424c0a39', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('5c228bcb-35c4-b558-4a80-643d428197c9', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Project', 'module', 90, 0),
('5da9d4dc-2def-cc56-a8f4-643d42593f0b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('5ddc5fb8-9db0-78df-2077-643d42f3b2b2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('5e2003a6-cb62-64c2-b317-643d42284b57', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'ExternalOAuthConnection', 'module', 90, 0),
('5e4500bb-12be-3e3c-29cd-643d42b49034', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('5e97d573-c027-e5be-3dc9-643d42d4f61e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'SurveyResponses', 'module', 90, 0),
('5f1f04da-595b-b172-938d-643d42df6264', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Emails', 'module', 89, 0),
('5fe49b27-4936-5de6-37ac-643d42638148', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('60203409-538b-7451-c953-643d4239ee5f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('6071aa09-dc75-c4a7-4434-643d4281592e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Project', 'module', 90, 0),
('60d7a73d-9ae7-91dc-af03-643d4211000b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'ExternalOAuthConnection', 'module', 90, 0),
('6175078d-9193-95a7-d99a-643d42f6389c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('62ad92fd-05d8-edd6-5e14-643d42e04c48', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('62e13871-8662-ef63-3dab-643d42504c0e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('632a05c5-e1e6-120f-2a29-643d4279bdf6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'SurveyResponses', 'module', 90, 0),
('643f2be8-7e80-985b-62e4-643d4230b986', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Emails', 'module', 90, 0),
('64579707-1f93-e8af-2488-643d421c3f2d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('64fd8b6e-18db-5c97-76c6-643d42d12487', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('65ff257d-6f6b-ae90-493b-643d42698a1f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Project', 'module', 90, 0),
('6623f8f0-2a39-a245-388d-643d42cd36d3', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('66a68a8d-39c7-347c-8e79-643d42a1a49d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('66f0a33f-72f1-795e-b2e2-643d420e996f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'SurveyResponses', 'module', 90, 0),
('67763625-2266-0e06-ab21-643d42e41619', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('685d7fb3-86bb-8492-bc28-643d42e7e44e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Emails', 'module', 90, 0),
('691196f2-b7d6-3954-1ec4-643d42de275d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('6980b3c9-af0a-4f9c-866b-643d4245c615', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('69a21c13-2952-08dc-3320-643d42583953', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('69d6f52f-c3b9-6135-7a75-643d422750af', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('6b162634-c3f4-7db3-2fe0-643d4228315d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'SurveyResponses', 'module', 90, 0),
('6bc1f78d-8e4b-8209-512a-643d4283840f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Emails', 'module', 90, 0),
('6bf6266d-6d73-495c-16e9-643d42b9f3a6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('6c9cb84b-265f-3af8-8b0c-643d4251a053', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('6d480f1f-8b53-ff4e-0f6f-643d4284cd12', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'SurveyQuestionResponses', 'module', 90, 0),
('6d8c1eb5-77bf-1078-0ded-643d4250cc3a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'InboundEmail', 'module', 89, 0),
('6edcc876-f1e9-192d-0644-643d42cc82ce', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('6f4b56ee-6b9a-6582-d189-643d42b55275', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Emails', 'module', 90, 0),
('70575131-f443-c2fa-a007-643d42340c2d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'InboundEmail', 'module', 90, 0),
('710066d0-0a5e-ae44-66fc-643d4222947a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Contacts', 'module', 89, 0),
('715a6247-bc68-8fba-6357-643d426b4ceb', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'SurveyQuestionOptions', 'module', 89, 0),
('7217f0d1-d5a1-a60c-5564-643d42512e78', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('72c4cf67-9fe1-9e28-9659-643d42314c14', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Emails', 'module', 90, 0),
('72d2a522-d27e-0bd0-f35b-643d42fe0f84', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'InboundEmail', 'module', 90, 0),
('74edadfb-1620-027c-b1f6-643d4291adc5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'SurveyQuestionOptions', 'module', 90, 0),
('7529b778-fb51-a9da-2a67-643d42dcd95a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('759687e0-f6fd-1e1e-5d5b-643d42f74861', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'InboundEmail', 'module', 90, 0),
('75ca38c5-ebff-3350-2c4b-643d42a56fab', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Emails', 'module', 90, 0),
('75fca19e-4560-c8b7-ff1a-643d420f0a01', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Contacts', 'module', 90, 0),
('77eb2e8e-b277-713a-4001-643d42491c76', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'SurveyQuestionOptions', 'module', 90, 0),
('786564bf-023c-e94f-5761-643d42bef5cb', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('789db405-0dfc-c174-f39b-643d4251e398', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'InboundEmail', 'module', 90, 0),
('790236bf-94d9-3487-09d0-643d424cd228', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('7934d5e3-2238-1a2d-678f-643d426a7f5a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Contacts', 'module', 90, 0),
('7ac669c2-4a94-5bab-f66f-643d425b0704', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'SurveyQuestionOptions', 'module', 90, 0),
('7b4ccd67-fe8c-84aa-03de-643d42f343fb', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('7c28b765-428e-0555-1af3-643d42460699', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('7c59d71b-187b-8b54-1f6e-643d42eaaf3f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('7c5b41ea-5f22-3a09-faf0-643d42adbc2b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'InboundEmail', 'module', 90, 0),
('7df38b1f-41d1-7cda-3e51-643d420c4708', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'SurveyQuestionOptions', 'module', 90, 0),
('7e02fff5-0859-2893-6a2f-643d42c32f9e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('7e180749-bc8c-2725-c58e-643d42617e82', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('7e8f7007-468e-1287-7b73-643d42d28237', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Prospects', 'module', 89, 0),
('7eba62e8-0a9c-b0b4-d153-643d4237747a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('7ec6bccd-e8d5-93fc-de53-643d42026916', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('7eca18ba-036f-045c-aa09-643d4290642d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'InboundEmail', 'module', 90, 0),
('806483d0-8c3c-e4b9-d286-643d42a87ca9', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('80b6e875-c54d-2a46-a066-643d42a2f842', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'SurveyQuestionOptions', 'module', 90, 0),
('80dd1457-331f-b814-dddc-643d4227054e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Prospects', 'module', 90, 0),
('80e18296-980d-1c93-fef8-643d426d43ec', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Contacts', 'module', 90, 0),
('81745005-8785-0ac3-6fcb-643d4246c161', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'InboundEmail', 'module', 90, 0),
('819ddc78-3198-e380-e4da-643d428660c5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('827fa663-54c1-d0b9-ab91-643d424b6552', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Prospects', 'module', 90, 0),
('82b34683-b1d4-f717-7e29-643d429edb24', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Contacts', 'module', 90, 0),
('82bd69ae-e5e1-bf8e-5afa-643d429b5706', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('83ae0141-5498-6568-3638-643d426070a0', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'SurveyQuestionOptions', 'module', 90, 0),
('83f30a44-72d1-4d2d-12ea-643d42374789', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('843db447-fb52-52aa-19be-643d42a5ec94', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('84828d5f-fbd4-75e6-1158-643d42167dfd', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('85e814a5-d173-40aa-fa8a-643d42943a96', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'SurveyQuestionOptions', 'module', 90, 0),
('86030232-554b-3912-ff6d-643d429e6db0', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Tasks', 'module', 90, 0),
('86102df3-4147-288f-1c90-643d425d33a1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('8610deb7-0f6c-975b-995c-643d42bc906e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'ExternalOAuthProvider', 'module', 89, 0),
('86626c0c-6745-8b1f-eb9b-643d4270e1e5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('87d87562-5212-c676-c24d-643d42484f9c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('87e4343b-106e-c1af-7744-643d426f55cc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Prospects', 'module', 90, 0),
('8871bbfa-fb5c-f7a2-bb8f-643d42cad534', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('887b72db-5b23-adb8-8474-643d420c887b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'ExternalOAuthProvider', 'module', 90, 0),
('89585879-e425-deba-87a0-643d42461146', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('898f00c6-9cfa-713e-e364-643d427d05ec', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('8a5aeba8-50b8-75f8-9b41-643d42d044df', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('8aeb9362-4be9-112d-3319-643d425a76c4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('8b003b5c-f841-a280-a25d-643d42886ffc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Prospects', 'module', 90, 0),
('8b063eae-50bb-0a84-9c06-643d4219c6f3', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'ExternalOAuthProvider', 'module', 90, 0),
('8b6a5436-1e65-d670-4d71-643d42066012', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('8cbb4b2c-f9aa-6206-0eb1-643d4220bc92', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('8d549135-b8b5-8a0a-5e5c-643d427ec496', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'ExternalOAuthProvider', 'module', 90, 0),
('8d66fe63-7330-c0ed-e13a-643d42583d6a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('8d78ea83-ccff-f139-7cc8-643d42c348c5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('8db31284-a16e-771b-e44a-643d42d92b62', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('8e2c97df-2e10-0415-7663-643d42f152ec', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('8e2fc654-f1dd-c2a6-9b7b-643d4238d82b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('8ff01bc2-19a5-801a-f2cd-643d42c340b8', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'ExternalOAuthProvider', 'module', 90, 0),
('909673a2-b7ff-26ff-5ea5-643d423a691c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('90d70a18-7930-6538-3fbc-643d42c545f5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('90f61bb7-831c-59ff-6ec7-643d42e01c3c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('9110b114-8c32-345f-676b-643d421b3409', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('91147876-d8b7-1217-59b0-643d42723378', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('92902c7c-b4af-90c8-727c-643d42206517', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'ExternalOAuthProvider', 'module', 90, 0),
('92e15dac-7c4f-3915-bc02-643d424ce18d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('933adaa4-d11c-985b-13a9-643d4200be00', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('93cba4cf-a547-3319-305b-643d424f4562', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Bugs', 'module', 89, 0),
('944f8ed7-cf99-be1f-33d9-643d42b4466f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('9451aa4a-5aab-336a-d588-643d429e1cc4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('952d9ece-41fa-b482-0749-643d429a2845', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('955df3c5-db1c-efc7-0a3b-643d4257d925', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('9627d44d-b177-e8db-c36c-643d42bb584c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'ExternalOAuthProvider', 'module', 90, 0),
('964021bb-4fc3-5eca-b076-643d42d7f62f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('96d3c5dc-c323-34b0-76b5-643d4241b113', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('971331fb-5d2b-0bcb-d8e6-643d423f2620', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('97390838-1340-e12b-b0ec-643d42ea9fcf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('9793a630-1d3f-0f93-a0e6-643d42c21aae', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('97e985a8-e38b-b9c4-a848-643d4234983e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'ExternalOAuthProvider', 'module', 90, 0),
('984e24b6-a4e3-5369-5d87-643d4258a04a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('9857df44-554e-ebdb-01bf-643d4249e2d0', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Bugs', 'module', 90, 0),
('9892fc40-3e4c-b365-26b3-643d422e7a06', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'EAPM', 'module', 89, 0),
('9902b5f2-5b63-c442-42d7-643d42b5b77a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('99cf6ba1-5646-f424-fb63-643d42a30ac0', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('99ddafa8-9321-0e64-b46d-643d421c50aa', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('9a06e864-baa3-cc51-fd51-643d422c5610', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('9ac140d0-d270-1200-e964-643d42edaf79', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('9adcaf60-7829-73cb-c0ec-643d42c8a446', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('9b7bcef8-5273-f72c-375f-643d422e3f7f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Bugs', 'module', 90, 0),
('9bd85a2d-8dda-eac4-8996-643d4278a173', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('9c2c3603-e4f2-6f36-4f94-643d42967850', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('9c4c0fa4-1eb6-3376-0133-643d428bf21c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'SurveyQuestionResponses', 'module', 90, 0),
('9ca206fe-a55f-5356-acd0-643d42f77212', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('9caf10c5-f7e9-e47c-0069-643d42f09040', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'EAPM', 'module', 90, 0),
('9d32b466-e9da-c17d-4b7f-643d42977d34', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('9d5129d9-81e6-f6b5-cf0e-643d423b347c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('9e693c0d-071d-c105-3e26-643d429919bc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('9e8c8d77-450a-1896-ce31-643d42df5682', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('9ec1bbe9-8908-3a32-64e0-643d42016853', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('9eff166d-74f8-6506-b888-643d424eb40d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('9fb8b1fc-6e8b-ce3e-b408-643d425995be', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Surveys', 'module', 89, 0),
('a0355c13-ad06-1ad1-773a-643d4266a498', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('a0445ad2-d73b-7df1-acd4-643d423db58d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'EAPM', 'module', 90, 0),
('a1290757-56b3-252c-a722-643d42be8603', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('a1934fbd-d512-c91c-a908-643d42a03610', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('a1d4213a-db48-0d82-475f-643d42227af7', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('a28f3535-a6b1-3bb8-6dac-643d4295ac92', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Surveys', 'module', 90, 0),
('a2de6a4a-cb4d-692a-d0f4-643d42cdc625', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('a2ff80e3-649c-5647-90f0-643d42a3a174', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('a384ebfd-f798-c305-2eeb-643d426219fc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'FP_events', 'module', 89, 0),
('a420101f-a651-cbd9-32ff-643d42707891', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Bugs', 'module', 90, 0),
('a56ed735-7b43-f738-6f28-643d42708fcc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('a5b90652-428b-98dc-8fbd-643d42217932', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Tasks', 'module', 90, 0),
('a5d71559-5ef5-2513-8bea-643d424b3e1c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Surveys', 'module', 90, 0),
('a606e345-c0f2-262e-c335-643d422adfa1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('a61fea35-60aa-14d9-6125-643d42442c8a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'FP_events', 'module', 90, 0),
('a645e477-20d8-4a94-b19b-643d42e400be', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Bugs', 'module', 90, 0),
('a7eec1e1-8bb0-5ee3-2b16-643d4268b042', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('a7f7162c-33e3-0b66-8937-643d42c5d2dc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('a80219a7-04d9-0770-c566-643d42fb4f25', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Surveys', 'module', 90, 0),
('a83a21b7-d419-b6ce-328b-643d42007b1a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('a8a27bd3-2c66-7e50-01b5-643d424e3274', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'FP_events', 'module', 90, 0),
('a97bf2b3-2fd0-4c36-322b-643d42c74e60', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('aa6f3c60-a80d-7d27-b7ce-643d42f6c680', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Surveys', 'module', 90, 0),
('ab15d5db-f931-aa5d-86e7-643d425ff462', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('abfd3021-01ef-ce0b-4651-643d42a23fb1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('aca6bba4-da7e-4ee0-6d5c-643d42429b0d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Surveys', 'module', 90, 0),
('ad965725-4082-a705-3e72-643d42c1651c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'EAPM', 'module', 90, 0),
('adb35373-f666-2910-3564-643d42c2f959', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('aea8f222-4ddd-ce12-7094-643d42640dcf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('aefd8727-d3a4-eb12-1a77-643d422403b5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Surveys', 'module', 90, 0),
('b0400a95-28b5-65a1-c17a-643d42a702ef', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('b0621c54-ef5f-a8c4-083b-643d42adce5f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'EAPM', 'module', 90, 0),
('b0653f3d-944e-9630-0256-643d424223c6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'FP_events', 'module', 90, 0),
('b10f7000-7dfa-5794-e3a5-643d42a6cff5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('b26aa161-75e7-bbfa-eebb-643d425821a6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Surveys', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('b313e01d-06a7-5419-82d0-643d42d66fd0', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('b3303191-95a1-ab43-b3b4-643d42ca3eca', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'FP_events', 'module', 90, 0),
('b336ef1c-9877-ff1b-1f21-643d42537cfd', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('b34f61c9-3610-a3b2-b4ea-643d42a5320d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Alerts', 'module', 89, 0),
('b3cba99d-bdc5-b1aa-f2ae-643d42da459d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('b3f9fdb1-4f7e-8677-5c0f-643d422b78e2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('b5440a3c-120e-44cf-52d2-643d425bf629', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Meetings', 'module', 89, 0),
('b5f4016f-a91b-b857-1710-643d42f986a1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('b62e6401-da2a-742b-3522-643d4296caee', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('b678aaa3-1564-f495-9cee-643d42a96dc3', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('b6c26ca5-d988-f9bb-472b-643d42e1070a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Alerts', 'module', 90, 0),
('b6eaebb9-8851-f1b6-da6a-643d4256b64f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('b8713796-fc6f-aca1-78e6-643d42b2998a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('b878f74e-b575-aed7-a18d-643d424a9cc2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('b8bac30b-3e25-7eb7-1671-643d42f09a8e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Meetings', 'module', 90, 0),
('b939ff6d-476f-401b-6e5b-643d42d131a4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Alerts', 'module', 90, 0),
('b96f4d15-6e2e-53e0-a0ba-643d42dcdfd9', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('b9bb5349-42cc-5f3c-85a2-643d426d4bea', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Leads', 'module', 89, 0),
('b9ca88b7-bdef-9a0b-cbb6-643d42fdd951', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('bace0c27-f773-f3fc-4041-643d42753d4d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('bb2f25a7-4a02-2c7f-51d4-643d420cf04b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Meetings', 'module', 90, 0),
('bbf93427-6f9c-3267-0889-643d42a2b83e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('bd333d73-94fc-a74c-ff83-643d422bf2f9', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('bd59270a-482b-a7c5-381e-643d425dac8d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('bde704f5-761a-4a07-80d6-643d425c7bb1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('be37d83f-5fd1-4e2a-eab4-643d4232e6d6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('be50eb6d-eac1-fd6a-c799-643d42e18b8c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('c023cc03-aa31-a558-12e2-643d42892ec5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('c0b7a82f-61b7-a942-0e58-643d4272b826', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('c0ccaf4e-8792-11ad-1bec-643d42234848', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('c12f12ed-d0de-833b-28dc-643d424439cc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('c15cf080-6f3d-ff62-93e5-643d42c56c38', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Alerts', 'module', 90, 0),
('c18500a0-1ee8-6e8a-c264-643d420f8646', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('c2b0daf4-73fa-f8ad-4af0-643d42d1b294', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('c384f6b9-e02e-515d-e52b-643d4205628f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Meetings', 'module', 90, 0),
('c3f7a76b-2759-c86a-501f-643d427cdb35', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('c431bd33-ceba-1993-c1bf-643d429e5f26', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('c46d0004-f93c-4f96-4767-643d42389c29', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('c472b375-d3dd-cfbc-5bdf-643d42669ee1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Alerts', 'module', 90, 0),
('c5476205-a9a0-1cab-a970-643d42c1273b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('c5bc5513-c14e-4816-44b1-643d424385ff', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Meetings', 'module', 90, 0),
('c67df9e8-6f18-5711-1d40-643d4264eb9f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('c6d70e4f-6c16-f30f-9de2-643d424967bb', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Documents', 'module', 89, 0),
('c741fa9d-1480-0d4d-6a49-643d42b4a7ee', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('c7aac132-5fa8-b933-9991-643d4252c967', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('c7abc2fc-bfdf-edba-b560-643d42bfb7c8', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('c7b1cd44-3c15-4121-e0d4-643d427323bc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('c98c0e55-84ac-c618-0731-643d42e94df7', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('caaa88b4-f60e-3043-ca86-643d42b0c89f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('cb09c525-d32d-3945-e993-643d4245d55f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('cc7d16f2-498c-3b33-d1ec-643d42f07ddf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('cd2deea0-a81e-c476-6ec5-643d42ba3ec4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('cd64ad84-2065-c303-dc5a-643d42ddbd6c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('cdd515e9-cb60-0719-a8d5-643d42e87eb4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('cefc0924-8147-24d4-76c5-643d42d653bc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('cf3b6446-b35f-7467-5fc1-643d42fdeea1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('cf525505-651c-f24e-aab4-643d4248f835', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Notes', 'module', 89, 0),
('cfc7767b-a8e2-316d-0760-643d424c79f4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('d0846199-52f1-6cbe-bc3f-643d4256389b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('d10fe2ac-5ccd-2258-a2aa-643d42683373', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('d1465356-0e13-13f3-de0d-643d42152692', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('d1ffde19-2af0-31a7-fd2f-643d42bc80e7', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('d27e17e7-c4fd-e1e1-c731-643d42acf69e', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Accounts', 'module', 89, 0),
('d398d6c5-1fd5-2558-ea8b-643d42febc88', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('d3a55c75-a104-b81d-5a88-643d42e06903', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('d3cd96e4-a704-4034-23e1-643d421d60bb', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Notes', 'module', 90, 0),
('d44144be-3e5f-2a04-bb28-643d42689410', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Leads', 'module', 90, 0),
('d469a1b7-64df-3932-b39e-643d42e1fa2a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('d51877e2-2e18-6b33-2020-643d425d5564', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('d6a22a53-6b00-a901-df6f-643d42fecebc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Notes', 'module', 90, 0),
('d6b8f4d9-6121-3625-daaa-643d426a67f6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('d6dab8c7-545e-1d33-66cc-643d426aeb6a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Accounts', 'module', 90, 0),
('d72f4973-eed4-7f4e-80f2-643d42ff956a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('d755af60-05ad-df72-0632-643d424558b5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('d7d96093-4137-5e83-fd6a-643d424a69dd', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('d8d127e8-a1de-0e2b-042a-643d421dc0ea', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Notes', 'module', 90, 0),
('d9002e2e-0263-3690-41b3-643d422ff549', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Leads', 'module', 90, 0),
('d921d2fb-21cb-4380-3393-643d42fc41c5', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('d95bed9b-5d0c-6e28-ae45-643d42d85777', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Accounts', 'module', 90, 0),
('da18b789-91aa-9f9b-f322-643d429904c2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('da4875a8-f407-544b-3c59-643d4283c76d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('daeca790-468f-f029-e2ba-643d42da298c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('db0d092f-0637-f8fd-b368-643d42c324dc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Users', 'module', 89, 0),
('db3216f4-7d45-8fb1-5111-643d4224801f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Notes', 'module', 90, 0),
('db37e215-e77f-321e-1cd2-643d4237fb46', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Leads', 'module', 90, 0),
('dc4d9338-5ba9-70a2-ac3c-643d42aeaa81', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('dc80e445-ec22-10ef-ec3b-643d42e97f9f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('dd753bae-e776-5f20-4b59-643d4231dead', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('dd797512-f07f-81a9-d6fb-643d424037ec', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Notes', 'module', 90, 0),
('ddf6ebf3-11c4-81a8-d684-643d42b9419a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('de4fcba1-80d4-ee51-1653-643d425cccf4', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Users', 'module', 90, 0),
('de511817-38e2-24d4-bfa1-643d42c47da1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Leads', 'module', 90, 0),
('df0a3935-100e-98c6-66ff-643d42f41dfe', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('df8c42c9-3aee-be58-671d-643d4235d873', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Notes', 'module', 90, 0),
('dfe88f27-1c49-c87e-054e-643d42b1b613', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('e02607b5-4d26-a9e1-c3a4-643d427ff59b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('e02940f3-b381-ea69-6e0f-643d422bf806', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('e0409fe7-39fe-95a2-95da-643d427af92b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('e07c503b-33a5-caea-2b02-643d42e59b60', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Leads', 'module', 90, 0),
('e0c6637d-bb3e-90fd-496a-643d4266b0fa', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Users', 'module', 90, 0),
('e0e7fe08-9777-6c9d-f88d-643d42eeaacf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('e1d2a11c-d5f5-b89b-7766-643d42b1e357', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('e2086b2a-0739-56bf-2bc9-643d42735c6b', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Accounts', 'module', 90, 0),
('e228742e-3e7c-edac-67b7-643d429f32a2', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('e265fb27-af1e-5c34-e2ef-643d427d374f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('e2d41451-104f-2cf8-6834-643d427497fc', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Leads', 'module', 90, 0),
('e2fea466-52ff-d091-ddb5-643d42d87664', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('e329fb7d-8b0c-7bd7-3117-643d4251fc0f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Users', 'module', 90, 0),
('e44d9c42-640b-d797-a732-643d4221a1df', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('e4b24459-904b-473e-1a7b-643d42ef3f79', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('e520d25a-ce04-95e3-241f-643d42024060', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Users', 'module', 90, 0),
('e53b714c-4d2e-148d-a656-643d426aff5d', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('e53dba22-acb2-83d5-627a-643d42c9beaf', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Accounts', 'module', 90, 0),
('e60d1c08-d1f6-f37e-4480-643d42b5b139', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('e73a1d78-f2d2-b10f-d3a0-643d4212e62f', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('e753ee24-0735-4589-fca9-643d42b464ac', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Users', 'module', 90, 0),
('e7cc1213-b0f7-69e2-9a40-643d42b66258', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('e9fb1012-98aa-39da-3324-643d4274f8c3', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('eac4d778-9a2a-8856-d0e9-643d4296833a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Users', 'module', 90, 0),
('eb06342d-8d37-f51b-226c-643d42a6dbc1', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'SurveyQuestionResponses', 'module', 89, 0),
('ec922d29-37aa-1f72-34cf-643d428f5ce6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('ecbcae7e-d0d4-c118-f2bc-643d42535c13', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('ee91f36a-81c3-4773-8372-643d428e2c6c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'view', 'SurveyQuestionResponses', 'module', 90, 0),
('ef87a9f5-cd80-ff7d-bb7f-643d426ea488', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('f0c63d21-a684-10f7-60cd-643d42c4af38', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'list', 'SurveyQuestionResponses', 'module', 90, 0),
('f244c6ac-f7a0-1bed-f693-643d4235765c', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('f3742d29-de7f-5e90-96ff-643d42a5e883', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'edit', 'SurveyQuestionResponses', 'module', 90, 0),
('f8340ab6-7d56-066f-3c28-643d42bb965a', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('fcad046b-5555-2362-e977-643d42eb75bb', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '', 'import', 'Tasks', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acl_roles`
--

INSERT INTO `acl_roles` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES
('5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2023-08-21 23:53:27', '2023-08-28 21:34:11', '1', '1', 'OHS', NULL, 0),
('96611c3f-0542-6304-6faa-64ed18d1687c', '2023-08-28 21:59:13', '2023-08-28 22:17:53', '1', '1', 'Support Staff', 'Receptionists and other Administrative staff', 1),
('a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2023-08-22 00:06:33', '2023-08-22 00:18:40', '1', '1', 'DA', 'Dental Assistant/Radiology Staff', 0),
('b131edd2-c2c8-679e-d576-64ed1ce97274', '2023-08-28 22:15:56', '2023-08-28 22:15:56', '1', '1', 'Support Staff', 'Reception', 0),
('e3ea0d73-3f88-817a-1805-64e3fd0a979f', '2023-08-22 00:14:34', '2023-08-22 00:17:34', '1', '1', 'OHS', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `action_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_override` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acl_roles_actions`
--

INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('10092e6d-2bba-0322-ef8b-64ed19f1d959', '96611c3f-0542-6304-6faa-64ed18d1687c', '86626c0c-6745-8b1f-eb9b-643d4270e1e5', 0, '2023-08-28 22:17:53', 1),
('1015c8fb-e5c3-9bff-dbf6-64e3fc33902e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a645e477-20d8-4a94-b19b-643d42e400be', -99, '2023-09-25 01:47:07', 0),
('102338cc-42d0-4dc2-05b6-64ed1c2c11eb', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6bc1f78d-8e4b-8209-512a-643d4283840f', -99, '2023-08-28 22:17:09', 0),
('10239b10-6a24-0a0e-5fd9-64e3fc1fd45f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3831706e-e3dd-525a-6bfc-643d426ab45b', -98, '2023-09-25 01:47:07', 0),
('104a0965-ee9d-a775-7bca-64e3fadbae99', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '96d3c5dc-c323-34b0-76b5-643d4241b113', 90, '2023-09-25 01:52:49', 0),
('106b1bfc-a7e1-e981-cb7a-64e3fa5e8f0e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '57581f24-ab95-43da-f130-643d420ee578', -99, '2023-09-25 01:52:49', 0),
('109b2bc1-980b-38f0-573d-64ed19a30767', '96611c3f-0542-6304-6faa-64ed18d1687c', '7eba62e8-0a9c-b0b4-d153-643d4237747a', 0, '2023-08-28 22:17:53', 1),
('10a014fd-4102-349f-3c0a-64e3fc1fa096', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a420101f-a651-cbd9-32ff-643d42707891', -99, '2023-09-25 01:47:07', 0),
('10ad85ec-2a64-d0f4-ebf2-64e3fc3cba46', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4247a7e7-ff7c-b050-20ca-643d427e9fcf', -99, '2023-09-25 01:47:07', 0),
('10e77cba-7d35-d30c-95f8-64e3fa056817', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5e2003a6-cb62-64c2-b317-643d42284b57', -99, '2023-09-25 01:52:49', 0),
('10ec1bee-4d53-b001-c554-64ed1c75f931', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '75ca38c5-ebff-3350-2c4b-643d42a56fab', -99, '2023-08-28 22:17:09', 0),
('110fda55-4ba6-0485-e726-64ed19d61183', '96611c3f-0542-6304-6faa-64ed18d1687c', '8cbb4b2c-f9aa-6206-0eb1-643d4220bc92', 0, '2023-08-28 22:17:53', 1),
('11467717-2806-89ec-7c17-64e3fcb48da3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9b7bcef8-5273-f72c-375f-643d422e3f7f', -99, '2023-09-25 01:47:07', 0),
('114d5c93-1c50-576d-ca4b-64e3fcfd4683', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4026aa1a-1037-4bef-0383-643d424e9de6', -99, '2023-09-25 01:47:07', 0),
('117292c6-eafc-ff6e-9c88-64e3fa070cf9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5b90a6bd-e8cc-5201-6a90-643d4287774a', -99, '2023-09-25 01:52:49', 0),
('11757af6-4e8e-c4ea-1814-64ed1cd5f726', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '72c4cf67-9fe1-9e28-9659-643d42314c14', -99, '2023-08-28 22:17:09', 0),
('11a4d980-4beb-97ed-d315-64ed1999250f', '96611c3f-0542-6304-6faa-64ed18d1687c', '7c28b765-428e-0555-1af3-643d42460699', 0, '2023-08-28 22:17:53', 1),
('11d41256-e8c5-cf2d-b049-64e3fc1ecb88', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a83a21b7-d419-b6ce-328b-643d42007b1a', -99, '2023-09-25 01:47:07', 0),
('11daef43-bdc8-ef8a-8e7e-64e3fca2e52c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '46a502c7-947c-aa28-4377-643d42239093', -99, '2023-09-25 01:47:07', 0),
('11e83a6a-cf48-6fcb-a576-64e3fa1b0be6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '55961af2-5f21-9d83-7af2-643d42520528', -99, '2023-09-25 01:52:49', 0),
('11f3473d-01b7-920a-deb6-64ed1cbb2aac', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '685d7fb3-86bb-8492-bc28-643d42e7e44e', -99, '2023-08-28 22:17:09', 0),
('1242aca4-46f2-defd-c7ca-64ed19095499', '96611c3f-0542-6304-6faa-64ed18d1687c', '2fa91af7-b30a-d169-fec4-643d4282bf57', 0, '2023-08-28 22:17:53', 1),
('12739a32-34e6-881e-3303-64e3fcbd1925', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9857df44-554e-ebdb-01bf-643d4249e2d0', -99, '2023-09-25 01:47:07', 0),
('127ad507-20d8-38cf-a95e-64ed1cf0968d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '790236bf-94d9-3487-09d0-643d424cd228', -99, '2023-08-28 22:17:09', 0),
('12b14b21-8ce6-5d60-3c96-64e3fa6a3efa', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '60d7a73d-9ae7-91dc-af03-643d4211000b', -99, '2023-09-25 01:52:49', 0),
('12d3fb7e-bcb6-ca94-263b-64ed197709a6', '96611c3f-0542-6304-6faa-64ed18d1687c', '3c016078-ae1a-977d-3d33-643d425bff08', 0, '2023-08-28 22:17:53', 1),
('12d88ae4-30e8-56d3-94e1-64e3fcc202da', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '17e63bbb-f163-f186-509d-643d428a2ba2', -98, '2023-09-25 01:47:07', 0),
('12f40943-5c84-235f-1e2f-64e3fc23c453', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '447ee460-89cc-d8cb-3fe6-643d42c74ca4', -99, '2023-09-25 01:47:07', 0),
('131fa6d7-7bad-7916-8dff-64ed1c7fdb66', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '643f2be8-7e80-985b-62e4-643d4230b986', -99, '2023-08-28 22:17:09', 0),
('1333e1b1-4979-cc1c-33f1-64e3fac0df32', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '534a269b-da64-9c46-6dbc-643d42133245', -99, '2023-09-25 01:52:49', 0),
('13616bba-6c36-31dc-f77a-64e3fc895355', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '26211d4e-a2ea-ee1c-c703-643d42aa6127', -99, '2023-09-25 01:47:07', 0),
('136bd0a7-d094-70d0-377e-64ed196df40d', '96611c3f-0542-6304-6faa-64ed18d1687c', '39b5dcf6-a7f5-5d8b-7dab-643d42fa8cd2', 0, '2023-08-28 22:17:53', 1),
('13c02f9a-4965-02d0-0dc5-64ed1c9304ba', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a384ebfd-f798-c305-2eeb-643d426219fc', -98, '2023-08-28 22:17:09', 0),
('13d58d7b-9cd4-c203-98e6-64e3fa4281a5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8610deb7-0f6c-975b-995c-643d42bc906e', -98, '2023-09-25 01:52:49', 0),
('13d90ee2-27a3-908e-c0c3-64ed19e57abc', '96611c3f-0542-6304-6faa-64ed18d1687c', '4198b3ca-2d16-d156-aba5-643d425caf7a', 0, '2023-08-28 22:17:53', 1),
('13de7ad5-1474-e685-06ac-64e3fca997ec', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '22ad461b-4082-6bb5-5a7f-643d421d4154', -99, '2023-09-25 01:47:07', 0),
('13fe6aed-3407-6e57-0d1a-64e3fccd49d0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3db93a00-845c-f69d-8af7-643d4278deec', -99, '2023-09-25 01:47:07', 0),
('144b97f4-369e-2a53-40e6-64ed1c923d96', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'adb35373-f666-2910-3564-643d42c2f959', -99, '2023-08-28 22:17:09', 0),
('145fa8de-8436-282b-132a-64e3fa0e9519', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8ff01bc2-19a5-801a-f2cd-643d42c340b8', -99, '2023-09-25 01:52:49', 0),
('1468b462-9594-d68b-46e9-64ed1932d17b', '96611c3f-0542-6304-6faa-64ed18d1687c', '3e6bbfd0-867b-4be1-5893-643d42925bde', 0, '2023-08-28 22:17:53', 1),
('146f2b71-2017-b48d-aa8b-64e3fc0ddedb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2bfb8518-cbbc-9041-9631-643d4239b918', -99, '2023-09-25 01:47:07', 0),
('1493b162-7ff1-aae9-10c1-64e3fcdbbd31', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '48de9d1b-7318-2bab-caab-643d4237ce9b', -99, '2023-09-25 01:47:07', 0),
('14c732ed-0fa7-bb1f-5bcc-64ed1cbb7eb1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'ab15d5db-f931-aa5d-86e7-643d425ff462', -99, '2023-08-28 22:17:09', 0),
('14dd7cdb-1824-6391-31bf-64e3fa8275d5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8d549135-b8b5-8a0a-5e5c-643d427ec496', -99, '2023-09-25 01:52:49', 0),
('14e4c359-7002-ee73-256c-64e3fc68b302', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '291e15bd-7a32-c880-b4e0-643d42d8352f', -99, '2023-09-25 01:47:07', 0),
('14e52826-f6ac-a011-fdc8-64ed19e50fdf', '96611c3f-0542-6304-6faa-64ed18d1687c', '36564b0d-448c-0dd1-ccd5-643d425fda93', 0, '2023-08-28 22:17:53', 1),
('150576c1-1ac4-615b-8302-64e3fc81277e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3b22fd65-0d32-52f6-9244-643d4230c3ea', -99, '2023-09-25 01:47:07', 0),
('15430d89-3e3d-c316-3ad4-64ed1cc3d9fd', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9892fc40-3e4c-b365-26b3-643d422e7a06', -98, '2023-08-28 22:17:09', 0),
('1558111b-8fca-cbe1-bdc0-64ed1cfd8f4a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b3303191-95a1-ab43-b3b4-643d42ca3eca', -99, '2023-08-28 22:17:09', 0),
('15653191-8545-65b0-fccb-64e3fa91f1cd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9627d44d-b177-e8db-c36c-643d42bb584c', -99, '2023-09-25 01:52:49', 0),
('1576300a-c586-cd11-7cc3-64ed198a59b8', '96611c3f-0542-6304-6faa-64ed18d1687c', '4484d3ac-de10-0bd1-27ef-643d42805644', 0, '2023-08-28 22:17:53', 1),
('158f9cd5-06a9-18bc-33b1-64e3fc6a60c3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '23b30fde-2c5f-8bf0-6e40-643d42e2877d', -98, '2023-09-25 01:47:07', 0),
('15910418-11e8-a079-476a-64ed19bbd393', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e0409fe7-39fe-95a2-95da-643d427af92b', 0, '2023-08-28 22:17:53', 1),
('15cdd3c5-c4a4-f262-2090-64ed1cb04381', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b0653f3d-944e-9630-0256-643d424223c6', -99, '2023-08-28 22:17:09', 0),
('15e33b0a-23fd-d968-55e8-64e3fabe71f4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '92902c7c-b4af-90c8-727c-643d42206517', -99, '2023-09-25 01:52:49', 0),
('15ed940f-dac0-d1e0-1a63-64ed19efa8f5', '96611c3f-0542-6304-6faa-64ed18d1687c', '33073288-9d55-465e-563e-643d4201fa21', 0, '2023-08-28 22:17:53', 1),
('160e0d63-dd3e-fbaa-d1df-64e3fcb7678a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e02607b5-4d26-a9e1-c3a4-643d427ff59b', -99, '2023-09-25 01:47:07', 0),
('164500a6-f098-843f-1ed5-64e3fc117ed8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd27e17e7-c4fd-e1e1-c731-643d42acf69e', -98, '2023-09-25 01:47:07', 0),
('165b6041-1080-7ebb-7e4b-64e3fcdda648', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1f86c2d4-d860-e677-0008-643d42ad518a', -99, '2023-09-25 01:47:07', 0),
('166bc852-2287-3e3a-45e2-64e3fa22706b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8b063eae-50bb-0a84-9c06-643d4219c6f3', -99, '2023-09-25 01:52:49', 0),
('16705beb-0f9d-16c9-0103-64ed1c9fe7d6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a8a27bd3-2c66-7e50-01b5-643d424e3274', -99, '2023-08-28 22:17:09', 0),
('168089e7-b304-2760-1d5f-64ed19d09f10', '96611c3f-0542-6304-6faa-64ed18d1687c', '58bf8f7f-2142-dedd-17b7-643d42e52dec', 0, '2023-08-28 22:17:53', 1),
('16954923-0538-7767-169d-64e3fc59f0c2', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c18500a0-1ee8-6e8a-c264-643d420f8646', -99, '2023-09-25 01:47:07', 0),
('16e8cade-ea07-d13b-5cab-64e3fa59dd70', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '97e985a8-e38b-b9c4-a848-643d4234983e', -99, '2023-09-25 01:52:49', 0),
('16ed15f0-4ca4-b392-d387-64e3fc2ebb8e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2f2d8ff1-7cd2-5461-af33-643d429e8fff', -99, '2023-09-25 01:47:07', 0),
('16ee643e-2c39-1ad7-a6e8-64ed1c1a815d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b5f4016f-a91b-b857-1710-643d42f986a1', -99, '2023-08-28 22:17:09', 0),
('16f88094-2477-88d4-2b6c-64ed1917a635', '96611c3f-0542-6304-6faa-64ed18d1687c', '62e13871-8662-ef63-3dab-643d42504c0e', 0, '2023-08-28 22:17:53', 1),
('173fb639-89e0-4dfe-d382-64e3fc66f086', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '11bfb468-984e-e90f-f4c7-643d4236199d', -99, '2023-09-25 01:47:07', 0),
('1775d017-2021-cb86-d8b5-64ed1cb4fc00', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a61fea35-60aa-14d9-6125-643d42442c8a', -99, '2023-08-28 22:17:09', 0),
('178f54e0-7c7c-826d-bcf8-64e3fc90e609', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1cc78c59-3337-188f-73bf-643d420723f3', -99, '2023-09-25 01:47:07', 0),
('17b3fe49-385b-8abd-df12-64e3fa5ce1e7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '887b72db-5b23-adb8-8474-643d420c887b', -99, '2023-09-25 01:52:49', 0),
('17c57d22-0d5b-f7a3-5d04-64ed19eccb6a', '96611c3f-0542-6304-6faa-64ed18d1687c', '5fe49b27-4936-5de6-37ac-643d42638148', 0, '2023-08-28 22:17:53', 1),
('17cf39a8-0a60-0c1f-01e6-64e3fc81d382', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'fcad046b-5555-2362-e977-643d42eb75bb', -99, '2023-09-25 01:47:07', 0),
('17f40bb3-b125-5184-5317-64ed1cc11740', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '50262b93-bc6d-6811-c326-643d423e7b56', -98, '2023-08-28 22:17:09', 0),
('17f80d8a-4069-ce6d-e9a0-64e3fceba049', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6175078d-9193-95a7-d99a-643d42f6389c', -98, '2023-09-25 01:47:07', 0),
('180d0c81-89b6-eb38-7c01-64e3fa725ad7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b9ca88b7-bdef-9a0b-cbb6-643d42fdd951', -98, '2023-09-25 01:52:49', 0),
('1864c5a1-08e9-41ef-b7e3-64ed19bb6d44', '96611c3f-0542-6304-6faa-64ed18d1687c', '69d6f52f-c3b9-6135-7a75-643d422750af', 0, '2023-08-28 22:17:53', 1),
('18c2cf83-3ed6-eebd-5a12-64ed1cc71165', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5983d8b0-9b7b-9a13-24fd-643d42b163f2', -99, '2023-08-28 22:17:09', 0),
('18d4741f-6399-3b2c-a62e-64ed19f5b47f', '96611c3f-0542-6304-6faa-64ed18d1687c', '6623f8f0-2a39-a245-388d-643d42cd36d3', 0, '2023-08-28 22:17:53', 1),
('18e06eb1-0736-ec3b-7706-64e3fcbb976b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6bf6266d-6d73-495c-16e9-643d42b9f3a6', -99, '2023-09-25 01:47:07', 0),
('19520a2e-f8fe-b1dc-ce07-64e3fcae3d65', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a5b90652-428b-98dc-8fbd-643d42217932', -99, '2023-09-25 01:47:07', 0),
('195e7bcc-39b1-1df4-91be-64ed19e95a9c', '96611c3f-0542-6304-6faa-64ed18d1687c', '5da9d4dc-2def-cc56-a8f4-643d42593f0b', 0, '2023-08-28 22:17:53', 1),
('19605915-714a-6918-5495-64ed1cfb274e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '57581f24-ab95-43da-f130-643d420ee578', -99, '2023-08-28 22:17:09', 0),
('19cd2519-9b39-711e-ec57-64e3fa8cbf09', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6d8c1eb5-77bf-1078-0ded-643d4250cc3a', -98, '2023-09-25 01:52:49', 0),
('19ceee3d-32ed-9e1c-531b-64ed1cc10a92', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5e2003a6-cb62-64c2-b317-643d42284b57', -99, '2023-08-28 22:17:09', 0),
('19da9667-60ee-70ed-a9e3-64ed19dc5cdd', '96611c3f-0542-6304-6faa-64ed18d1687c', '6c9cb84b-265f-3af8-8b0c-643d4251a053', 0, '2023-08-28 22:17:53', 1),
('19eb1104-f2d4-f071-7c5f-64e3fc2e2abb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '13bddec6-14e9-215b-5602-643d42567829', -99, '2023-09-25 01:47:07', 0),
('1a50ad72-a576-2bab-f580-64e3fc770bb3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6980b3c9-af0a-4f9c-866b-643d4245c615', -99, '2023-09-25 01:47:07', 0),
('1a5fa6f5-b414-785f-b249-64ed1cffb904', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5b90a6bd-e8cc-5201-6a90-643d4287774a', -99, '2023-08-28 22:17:09', 0),
('1a650116-6304-3d39-9015-64ed19a3f6c9', '96611c3f-0542-6304-6faa-64ed18d1687c', '5baf86df-d03b-7342-2bfd-643d424c0a39', 0, '2023-08-28 22:17:53', 1),
('1a80015e-40b3-6b67-57a9-64e3fc2d9ddb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '86030232-554b-3912-ff6d-643d429e6db0', -99, '2023-09-25 01:47:07', 0),
('1a9b08e2-8177-3874-1f1f-64e3fc676822', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '421302f3-fca1-e169-ecee-643d425570f9', -99, '2023-09-25 01:47:07', 0),
('1ab36871-2ff1-d9cd-2505-64e3fa22267f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '789db405-0dfc-c174-f39b-643d4251e398', -99, '2023-09-25 01:52:49', 0),
('1acf1d84-0729-dacd-ad33-64ed1cfb3143', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '55961af2-5f21-9d83-7af2-643d42520528', -99, '2023-08-28 22:17:09', 0),
('1ada2d7e-253e-1dc6-4609-64e3fc66e89c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7217f0d1-d5a1-a60c-5564-643d42512e78', -99, '2023-09-25 01:47:07', 0),
('1ae1219b-e91e-329d-dbfb-64ed197622cf', '96611c3f-0542-6304-6faa-64ed18d1687c', '92e15dac-7c4f-3915-bc02-643d424ce18d', 0, '2023-08-28 22:17:53', 1),
('1af5c41f-eca8-1586-dc59-64e3fc385283', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b313e01d-06a7-5419-82d0-643d42d66fd0', -98, '2023-09-25 01:47:07', 0),
('1b5ee929-85a4-0a77-fb63-64ed1cf37075', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '60d7a73d-9ae7-91dc-af03-643d4211000b', -99, '2023-08-28 22:17:09', 0),
('1b70b18f-af0a-712e-89b4-64ed19ada670', '96611c3f-0542-6304-6faa-64ed18d1687c', '9ac140d0-d270-1200-e964-643d42edaf79', 0, '2023-08-28 22:17:53', 1),
('1b7ce180-61a0-7b06-57b7-64e3fca41e3e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6edcc876-f1e9-192d-0644-643d42cc82ce', -99, '2023-09-25 01:47:07', 0),
('1b879cb0-b846-7399-dbf1-64e3fa71938e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '759687e0-f6fd-1e1e-5d5b-643d42f74861', -99, '2023-09-25 01:52:49', 0),
('1b9844a8-64c3-7ff9-5563-64e3fc1accf2', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c0b7a82f-61b7-a942-0e58-643d4272b826', -99, '2023-09-25 01:47:07', 0),
('1bd68cae-e562-39da-3e87-64ed1c109023', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '534a269b-da64-9c46-6dbc-643d42133245', -99, '2023-08-28 22:17:09', 0),
('1be7a319-6fb8-8feb-5869-64ed198aba2e', '96611c3f-0542-6304-6faa-64ed18d1687c', '9902b5f2-5b63-c442-42d7-643d42b5b77a', 0, '2023-08-28 22:17:53', 1),
('1c000482-8311-44c8-3179-64e3fcd552c5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3d1ec346-7607-c7f2-8540-643d42b48164', -99, '2023-09-25 01:47:07', 0),
('1c1ee837-1ebd-35ce-b86b-64e3fc43b036', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '66a68a8d-39c7-347c-8e79-643d42a1a49d', -99, '2023-09-25 01:47:07', 0),
('1c38cc4d-2d5d-39c5-0628-64e3fca562de', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'bd333d73-94fc-a74c-ff83-643d422bf2f9', -99, '2023-09-25 01:47:07', 0),
('1c63cd48-6b5d-0830-683e-64ed1cf4a4c0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8610deb7-0f6c-975b-995c-643d42bc906e', -98, '2023-08-28 22:17:09', 0),
('1c7afe39-a85f-0234-f2a8-64e3fa3e6d2e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7eca18ba-036f-045c-aa09-643d4290642d', -99, '2023-09-25 01:52:49', 0),
('1c9e0279-3d21-afe9-44ce-64e3fc7fb354', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c7abc2fc-bfdf-edba-b560-643d42bfb7c8', -99, '2023-09-25 01:47:07', 0),
('1ca91524-3b97-62a3-f92d-64e3fc2e07f4', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7529b778-fb51-a9da-2a67-643d42dcd95a', -99, '2023-09-25 01:47:07', 0),
('1cb72c27-1bb0-b37c-ee4c-64ed1940ef3a', '96611c3f-0542-6304-6faa-64ed18d1687c', '9eff166d-74f8-6506-b888-643d424eb40d', 0, '2023-08-28 22:17:53', 1),
('1cdc1fbe-744b-c8bf-a26d-64ed1c54b38e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8ff01bc2-19a5-801a-f2cd-643d42c340b8', -99, '2023-08-28 22:17:09', 0),
('1d2c69ab-bafc-5556-7794-64e3fc814390', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c431bd33-ceba-1993-c1bf-643d429e5f26', -99, '2023-09-25 01:47:07', 0),
('1d3e05a2-7960-d610-7940-64e3fa1e25ca', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7c5b41ea-5f22-3a09-faf0-643d42adbc2b', -99, '2023-09-25 01:52:49', 0),
('1d5289dd-8e07-2dcd-4d86-64e3fc05cbbb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '64579707-1f93-e8af-2488-643d421c3f2d', -99, '2023-09-25 01:47:07', 0),
('1d588b27-84ca-831d-7b61-64ed199d3ecc', '96611c3f-0542-6304-6faa-64ed18d1687c', '9ca206fe-a55f-5356-acd0-643d42f77212', 0, '2023-08-28 22:17:53', 1),
('1d656b9f-a01e-ec4c-2659-64ed1ce3048c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8d549135-b8b5-8a0a-5e5c-643d427ec496', -99, '2023-08-28 22:17:09', 0),
('1dca7a02-2f03-f09c-c76a-64e3fc49b764', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b96f4d15-6e2e-53e0-a0ba-643d42dcdfd9', -99, '2023-09-25 01:47:07', 0),
('1dd56d02-f0fe-edcb-b965-64ed19aac49b', '96611c3f-0542-6304-6faa-64ed18d1687c', '971331fb-5d2b-0bcb-d8e6-643d423f2620', 0, '2023-08-28 22:17:53', 1),
('1de1798b-d296-40aa-dc27-64e3fc0d3a9b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'dc80e445-ec22-10ef-ec3b-643d42e97f9f', -98, '2023-09-25 01:47:07', 0),
('1e08ce03-7320-a2d7-0dc3-64ed1c4ce462', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9627d44d-b177-e8db-c36c-643d42bb584c', -99, '2023-08-28 22:17:09', 0),
('1e527b20-a230-df9b-cef6-64e3fcf8137d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'cb09c525-d32d-3945-e993-643d4245d55f', -99, '2023-09-25 01:47:07', 0),
('1e68137f-82fe-9344-9d87-64e3fa75ea07', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '72d2a522-d27e-0bd0-f35b-643d42fe0f84', -99, '2023-09-25 01:52:49', 0),
('1e693504-fff8-b26f-1518-64ed19e7846a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a1d4213a-db48-0d82-475f-643d42227af7', 0, '2023-08-28 22:17:53', 1),
('1e770831-e4e1-2a7c-07df-64e3fc468510', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e73a1d78-f2d2-b10f-d3a0-643d4212e62f', -99, '2023-09-25 01:47:07', 0),
('1e920e2d-0ad0-28ed-267f-64ed1c144d90', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '92902c7c-b4af-90c8-727c-643d42206517', -99, '2023-08-28 22:17:09', 0),
('1e960b95-6a75-3f1d-c2e3-64ed1c03058d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a97bf2b3-2fd0-4c36-322b-643d42c74e60', -99, '2023-08-28 22:17:09', 0),
('1ec3bacc-138c-fa20-60e3-64e3fc4cb461', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b62e6401-da2a-742b-3522-643d4296caee', -99, '2023-09-25 01:47:07', 0),
('1edc6d99-456d-445e-6df8-64ed19b7e1c0', '96611c3f-0542-6304-6faa-64ed18d1687c', '955df3c5-db1c-efc7-0a3b-643d4257d925', 0, '2023-08-28 22:17:53', 1),
('1f00c10b-0e4d-eabe-7a95-64e3fce4671f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e4b24459-904b-473e-1a7b-643d42ef3f79', -99, '2023-09-25 01:47:07', 0),
('1f44c826-599e-bd97-d780-64e3fa603468', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '81745005-8785-0ac3-6fcb-643d4246c161', -99, '2023-09-25 01:52:49', 0),
('1f4b65ff-3718-bc06-51c0-64ed1c256fab', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8b063eae-50bb-0a84-9c06-643d4219c6f3', -99, '2023-08-28 22:17:09', 0),
('1f4ca101-e7e0-f8b5-c16b-64e3fc46cdf7', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8a5aeba8-50b8-75f8-9b41-643d42d044df', -98, '2023-09-25 01:47:07', 0),
('1f68012c-b7a7-c9f2-9d88-64e3fc668790', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'df0a3935-100e-98c6-66ff-643d42f41dfe', -99, '2023-09-25 01:47:07', 0),
('1f772012-9f03-c987-fa92-64e3fcc188c7', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'ec922d29-37aa-1f72-34cf-643d428f5ce6', -99, '2023-09-25 01:47:07', 0),
('1f7fc81c-a998-4005-55a4-64ed196b45d4', '96611c3f-0542-6304-6faa-64ed18d1687c', '3ac3a1be-2795-c189-c071-643d42aead5b', 0, '2023-08-28 22:17:53', 1),
('1fb8137d-065b-c7cf-464b-64ed1cfaebe0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '97e985a8-e38b-b9c4-a848-643d4234983e', -99, '2023-08-28 22:17:09', 0),
('2001867b-bdae-ff89-f2dc-64e3fc7b9209', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e9fb1012-98aa-39da-3324-643d4274f8c3', -99, '2023-09-25 01:47:07', 0),
('20125923-3661-7431-837e-64ed19f59df0', '96611c3f-0542-6304-6faa-64ed18d1687c', '5c228bcb-35c4-b558-4a80-643d428197c9', 0, '2023-08-28 22:17:53', 1),
('2044955f-9ceb-176f-e68b-64ed1c6978a5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '887b72db-5b23-adb8-8474-643d420c887b', -99, '2023-08-28 22:17:09', 0),
('20653849-7e68-ae6b-5c0f-64e3fa2822d5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '70575131-f443-c2fa-a007-643d42340c2d', -99, '2023-09-25 01:52:49', 0),
('206d4584-db0f-6cb8-dcd8-64e3fc6ed5d4', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '964021bb-4fc3-5eca-b076-643d42d7f62f', -99, '2023-09-25 01:47:07', 0),
('20856450-6708-88fd-a699-64ed19884391', '96611c3f-0542-6304-6faa-64ed18d1687c', '44c788a1-622c-6c6c-22d6-643d42f7a561', 0, '2023-08-28 22:17:53', 1),
('20c51a32-24ac-7a01-d4f4-64ed1c53e3c6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6d8c1eb5-77bf-1078-0ded-643d4250cc3a', -98, '2023-08-28 22:17:09', 0),
('20f711e5-dfda-367e-cd73-64e3fc1ec9e7', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9451aa4a-5aab-336a-d588-643d429e1cc4', -99, '2023-09-25 01:47:07', 0),
('211a4623-edeb-70dc-917e-64ed1974a078', '96611c3f-0542-6304-6faa-64ed18d1687c', '65ff257d-6f6b-ae90-493b-643d42698a1f', 0, '2023-08-28 22:17:53', 1),
('21383d32-a694-a1fa-ffda-64e3fa439132', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7b4ccd67-fe8c-84aa-03de-643d42f343fb', -98, '2023-09-25 01:52:49', 0),
('215087df-015c-320d-54e6-64ed1c17264e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '789db405-0dfc-c174-f39b-643d4251e398', -99, '2023-08-28 22:17:09', 0),
('21592a08-85bb-ff6e-aa5b-64e3fc61167a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e265fb27-af1e-5c34-e2ef-643d427d374f', -99, '2023-09-25 01:47:07', 0),
('2172bfc6-2ca0-fe21-55bb-64e3fcb39298', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9adcaf60-7829-73cb-c0ec-643d42c8a446', -99, '2023-09-25 01:47:07', 0),
('2191773b-3cc0-a011-2acb-64ed19c332fe', '96611c3f-0542-6304-6faa-64ed18d1687c', '6071aa09-dc75-c4a7-4434-643d4281592e', 0, '2023-08-28 22:17:53', 1),
('21d2591d-f57a-5847-899a-64ed1c326b73', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '759687e0-f6fd-1e1e-5d5b-643d42f74861', -99, '2023-08-28 22:17:09', 0),
('21e1a4a8-0b2c-6163-3b34-64e3fcf4f43d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'ef87a9f5-cd80-ff7d-bb7f-643d426ea488', -99, '2023-09-25 01:47:07', 0),
('21fc3522-3201-ceb3-c091-64e3fcca0126', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '984e24b6-a4e3-5369-5d87-643d4258a04a', -99, '2023-09-25 01:47:07', 0),
('22118a2b-2373-e7d1-ab47-64e3faeec771', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '87d87562-5212-c676-c24d-643d42484f9c', -99, '2023-09-25 01:52:49', 0),
('224d01f5-5cfa-6433-8b1a-64e3fa52748d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c67df9e8-6f18-5711-1d40-643d4264eb9f', -99, '2023-09-25 01:52:49', 0),
('225a782c-1ac8-2d14-db6d-64ed19e3e581', '96611c3f-0542-6304-6faa-64ed18d1687c', '41c69dd7-31cf-1152-f982-643d42ddf714', 0, '2023-08-28 22:17:53', 1),
('225c2878-b62f-6562-26e8-64ed1ca16697', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7eca18ba-036f-045c-aa09-643d4290642d', -99, '2023-08-28 22:17:09', 0),
('2274d8f2-92f8-a8c1-f7c7-64e3fc2f199d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9110b114-8c32-345f-676b-643d421b3409', -99, '2023-09-25 01:47:07', 0),
('227f294b-27f4-e552-6ddf-64e3fc8a905f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e02940f3-b381-ea69-6e0f-643d422bf806', -99, '2023-09-25 01:47:07', 0),
('22c8c14d-814e-6050-8235-64e3fa4e3141', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '82bd69ae-e5e1-bf8e-5afa-643d429b5706', -99, '2023-09-25 01:52:49', 0),
('230307c2-f1b8-5b76-7bd6-64ed1cca0700', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7c5b41ea-5f22-3a09-faf0-643d42adbc2b', -99, '2023-08-28 22:17:09', 0),
('23033340-0a54-af91-6f69-64ed192cf7ca', '96611c3f-0542-6304-6faa-64ed18d1687c', '691196f2-b7d6-3954-1ec4-643d42de275d', 0, '2023-08-28 22:17:53', 1),
('2309b79e-50cc-e28f-e818-64e3fccbf5af', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9d5129d9-81e6-f6b5-cf0e-643d423b347c', -99, '2023-09-25 01:47:07', 0),
('234719c9-9802-963a-60e6-64e3fcfdf3b8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b3f9fdb1-4f7e-8677-5c0f-643d422b78e2', -98, '2023-09-25 01:47:07', 0),
('236d54f0-11bc-d37d-dcd5-64ed1cf16b3a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '72d2a522-d27e-0bd0-f35b-643d42fe0f84', -99, '2023-08-28 22:17:09', 0),
('236e33a5-50a5-a31e-8733-64ed197819e1', '96611c3f-0542-6304-6faa-64ed18d1687c', '3e011d04-6712-7956-24d6-643d42004acf', 0, '2023-08-28 22:17:53', 1),
('23745f7a-803c-9bab-75e2-64e3fc6ebf76', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8db31284-a16e-771b-e44a-643d42d92b62', -99, '2023-09-25 01:47:07', 0),
('23a9d3c6-d6ba-085d-d763-64e3fc713dcd', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'bd59270a-482b-a7c5-381e-643d425dac8d', -99, '2023-09-25 01:47:07', 0),
('23b40712-ab78-090e-8596-64e3facccb33', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8d66fe63-7330-c0ed-e13a-643d42583d6a', -99, '2023-09-25 01:52:49', 0),
('23f9cc76-7bdc-f115-5a5f-64ed196b62d4', '96611c3f-0542-6304-6faa-64ed18d1687c', '1c12ef83-cb08-55cf-2f79-643d42ba9596', 0, '2023-08-28 22:17:53', 1),
('23f9d3d1-9ece-1c3f-33f6-64ed1cd73c69', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '81745005-8785-0ac3-6fcb-643d4246c161', -99, '2023-08-28 22:17:09', 0),
('243401c8-9034-b97b-54d9-64e3fcf7aacc', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'bace0c27-f773-f3fc-4041-643d42753d4d', -99, '2023-09-25 01:47:07', 0),
('24749223-1161-8a32-1d87-64ed19c45e73', '96611c3f-0542-6304-6faa-64ed18d1687c', '25eb71f1-29e2-2ade-750f-643d4265fd32', 0, '2023-08-28 22:17:53', 1),
('2475378c-3a72-8ed3-d778-64ed1c1e325c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '70575131-f443-c2fa-a007-643d42340c2d', -99, '2023-08-28 22:17:09', 0),
('24bb3303-38d6-4935-9ceb-64e3fad011ed', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8aeb9362-4be9-112d-3319-643d425a76c4', -99, '2023-09-25 01:52:49', 0),
('24ce0bd8-2ffc-6b87-90ea-64ed19823239', '96611c3f-0542-6304-6faa-64ed18d1687c', 'dd753bae-e776-5f20-4b59-643d4231dead', 0, '2023-08-28 22:17:53', 1),
('24fceb77-918c-c408-f496-64ed19ff0d87', '96611c3f-0542-6304-6faa-64ed18d1687c', '23bd3518-afc4-2601-fa4d-643d42b23485', 0, '2023-08-28 22:17:53', 1),
('2503338a-11a7-d959-b462-64ed1c8394c0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7b4ccd67-fe8c-84aa-03de-643d42f343fb', -98, '2023-08-28 22:17:09', 0),
('2547a664-3482-0d49-d5a1-64e3fcc57de0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c2b0daf4-73fa-f8ad-4af0-643d42d1b294', -99, '2023-09-25 01:47:07', 0),
('25a70527-acb7-c483-b81b-64ed1c9ee244', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '87d87562-5212-c676-c24d-643d42484f9c', -99, '2023-08-28 22:17:09', 0),
('25c1ff3a-580f-7052-4597-64e3fa661087', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '806483d0-8c3c-e4b9-d286-643d42a87ca9', -99, '2023-09-25 01:52:49', 0),
('25cfd73b-ccd4-b57a-094a-64e3fc22b408', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c023cc03-aa31-a558-12e2-643d42892ec5', -99, '2023-09-25 01:47:07', 0),
('25f76051-8855-8ba9-4588-64ed1919756c', '96611c3f-0542-6304-6faa-64ed18d1687c', '2a4697b0-3240-c8b3-d01f-643d422579a5', 0, '2023-08-28 22:17:53', 1),
('262fe5f0-e355-56a4-36de-64ed1cb9b084', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '82bd69ae-e5e1-bf8e-5afa-643d429b5706', -99, '2023-08-28 22:17:09', 0),
('2634cbb7-416a-5f2d-d1d6-64e3fc3c8783', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b878f74e-b575-aed7-a18d-643d424a9cc2', -99, '2023-09-25 01:47:07', 0),
('26616953-3eb6-38ca-487d-64ed19e826c1', '96611c3f-0542-6304-6faa-64ed18d1687c', '27f59658-b650-9952-69e2-643d428bf721', 0, '2023-08-28 22:17:53', 1),
('266707d0-05aa-af24-e703-64ed1c17442a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a606e345-c0f2-262e-c335-643d422adfa1', -99, '2023-08-28 22:17:09', 0),
('26763485-5eb8-cab7-4258-64e3fa3d6b14', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '909673a2-b7ff-26ff-5ea5-643d423a691c', -99, '2023-09-25 01:52:49', 0),
('2698cbf1-f2e5-958c-01f4-64e3fc65ad1e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c5476205-a9a0-1cab-a970-643d42c1273b', -99, '2023-09-25 01:47:07', 0),
('26a26ae1-3de9-7f42-0b7d-64ed1ce26f03', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8d66fe63-7330-c0ed-e13a-643d42583d6a', -99, '2023-08-28 22:17:09', 0),
('26f604b0-5e0f-a680-4b99-64e3fceeb0f4', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'dc4d9338-5ba9-70a2-ac3c-643d42aeaa81', -99, '2023-09-25 01:47:07', 0),
('26f6a1fd-ea71-f721-8b86-64ed19479053', '96611c3f-0542-6304-6faa-64ed18d1687c', '21a5b584-c1b8-d7d9-6e34-643d42922a53', 0, '2023-08-28 22:17:53', 1),
('27200d1e-3b52-172d-22e4-64e3fc47f198', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'massupdate', -99, '2023-09-25 01:47:07', 0),
('27229f22-b1cb-5e74-fc3d-64e3fc37725c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b678aaa3-1564-f495-9cee-643d42a96dc3', -99, '2023-09-25 01:47:07', 0),
('275a99a2-a2c4-9e57-9780-64ed1cd6de04', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8aeb9362-4be9-112d-3319-643d425a76c4', -99, '2023-08-28 22:17:09', 0),
('278a65dd-9627-f292-02ef-64e3fa782d3a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7e02fff5-0859-2893-6a2f-643d42c32f9e', -99, '2023-09-25 01:52:49', 0),
('2793b38e-e579-24e2-0724-64ed19541aa6', '96611c3f-0542-6304-6faa-64ed18d1687c', '2d9df5e2-e704-40ac-c128-643d42dfe310', 0, '2023-08-28 22:17:53', 1),
('2798c88f-4902-bb88-c790-64e3fc8d97b6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '16e177a7-a814-a0d1-005c-643d42231a75', -98, '2023-09-25 01:47:07', 0),
('27ece7e4-57e7-5e7e-826f-64ed1c820466', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '806483d0-8c3c-e4b9-d286-643d42a87ca9', -99, '2023-08-28 22:17:09', 0),
('28020d68-1dfd-ef41-a8e8-64e3fc130845', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '351cea52-4aed-2655-5a7b-643d427df0f1', -99, '2023-09-25 01:47:07', 0),
('28230d5a-717d-218b-c3ca-64ed19106bbb', '96611c3f-0542-6304-6faa-64ed18d1687c', '1ec1941b-161d-56d7-77ea-643d42a19f13', 0, '2023-08-28 22:17:53', 1),
('2862df39-1086-ade2-8012-64e3fc5edf2e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1eccb202-b30a-4e79-017b-643d426cb521', -99, '2023-09-25 01:47:07', 0),
('287db027-f686-6d9c-36b1-64e3fab3d791', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '425c02ff-4ebc-4aca-32d7-643d42342056', -98, '2023-09-25 01:52:49', 0),
('28873732-7342-f56c-f84a-64ed1ccc43bb', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '909673a2-b7ff-26ff-5ea5-643d423a691c', -99, '2023-08-28 22:17:09', 0),
('289fba34-33a1-b0b7-4ef0-64ed192a06ff', '96611c3f-0542-6304-6faa-64ed18d1687c', '3291ce61-6dc2-3656-9dfb-643d4238a8db', 0, '2023-08-28 22:17:53', 1),
('2902f5d6-6cc9-7bed-5ecc-64e3fcac50df', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1d4c764d-cab6-faab-ff0f-643d42bfa922', -99, '2023-09-25 01:47:07', 0),
('291686c7-c3dd-8b08-f678-64ed1c68871b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7e02fff5-0859-2893-6a2f-643d42c32f9e', -99, '2023-08-28 22:17:09', 0),
('2930ffce-bc67-e946-5854-64ed19f89c2c', '96611c3f-0542-6304-6faa-64ed18d1687c', '3fc6fc1d-bb6c-424b-a1bc-643d427c0cc5', 0, '2023-08-28 22:17:53', 1),
('297f421b-73b2-0d23-9a22-64e3fcdd68be', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '229dc731-75b1-feca-2b36-643d42faafdf', -99, '2023-09-25 01:47:07', 0),
('298f2120-84a7-88e2-672b-64ed1cc662ec', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '425c02ff-4ebc-4aca-32d7-643d42342056', -98, '2023-08-28 22:17:09', 0),
('29c612bd-cbe5-b9b5-01ea-64ed19a90a16', '96611c3f-0542-6304-6faa-64ed18d1687c', '3d842321-1f42-32a6-91ae-643d42b7cbbe', 0, '2023-08-28 22:17:53', 1),
('2a10e3d7-b7a0-d634-b0ff-64e3fca12487', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2070b68e-bfcf-b556-124b-643d423944ea', -99, '2023-09-25 01:47:07', 0),
('2a19b01f-d936-057f-5906-64e3fa8dafcb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4b89f203-e0e2-e569-dd3c-643d42d22970', -99, '2023-09-25 01:52:49', 0),
('2a1f5b07-cadf-5dce-35b3-64ed1cdb8936', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4b89f203-e0e2-e569-dd3c-643d42d22970', -99, '2023-08-28 22:17:09', 0),
('2a43b3d4-fbb8-b16d-12e1-64ed194dbdd0', '96611c3f-0542-6304-6faa-64ed18d1687c', '4696b7e8-2f0e-d4e1-e2fc-643d42d907c5', 0, '2023-08-28 22:17:53', 1),
('2a967c93-775d-1f70-51fe-64ed1c34e930', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '493ca86f-e4f5-d481-492d-643d42fdb4b2', -99, '2023-08-28 22:17:09', 0),
('2aac6a18-cf3d-4d16-b2f2-64e3fc5b54fa', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1b79268a-cae2-bcfe-2bc5-643d4265434a', -99, '2023-09-25 01:47:07', 0),
('2ad1d479-8e93-e022-04e9-64ed19a05a98', '96611c3f-0542-6304-6faa-64ed18d1687c', '43026e67-ccdb-f06a-01a4-643d42d2b66a', 0, '2023-08-28 22:17:53', 1),
('2b21cab4-99e9-2d8c-b372-64ed1caf31c7', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '50cb9146-1ee2-e9d2-3f22-643d42e057ee', -99, '2023-08-28 22:17:09', 0),
('2b27e4a3-03c6-3ca4-4b2e-64e3fa4412cc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '493ca86f-e4f5-d481-492d-643d42fdb4b2', -99, '2023-09-25 01:52:49', 0),
('2b4aefd0-3aa1-22f7-8da4-64ed1971341d', '96611c3f-0542-6304-6faa-64ed18d1687c', '3ae27b9b-17cd-2231-db91-643d424574cf', 0, '2023-08-28 22:17:53', 1),
('2b9e087f-9c5b-74db-a9da-64ed1c4d0e50', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4ea429a3-82ff-87dc-e081-643d42ac92c1', -99, '2023-08-28 22:17:09', 0),
('2bdb96e7-d8b3-4640-0956-64ed19ee9c74', '96611c3f-0542-6304-6faa-64ed18d1687c', '4a1c4d83-eb57-7fad-6d9d-643d429fb639', 0, '2023-08-28 22:17:53', 1),
('2c251978-3838-e5b1-bf3b-64ed1c57ee8d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4730f695-dc77-a1df-3e93-643d42c38325', -99, '2023-08-28 22:17:09', 0),
('2c57708a-ed96-7985-6ee7-64ed1910857d', '96611c3f-0542-6304-6faa-64ed18d1687c', '37d7bc9d-b39d-1a27-0ba5-643d42dd2488', 0, '2023-08-28 22:17:53', 1),
('2ccece88-7828-bfbf-e1e9-64ed1c5517e1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5301a4d6-64d3-183d-69c6-643d427e10c4', -99, '2023-08-28 22:17:09', 0),
('2d1f1203-022d-5658-5bfc-64ed19debb99', '96611c3f-0542-6304-6faa-64ed18d1687c', '587e63d5-1ad4-6c4c-896b-643d428a3ba1', 0, '2023-08-28 22:17:53', 1),
('2d203faf-f622-11cc-136a-64e3fcc20ae4', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '24a67cf2-d1cb-21f8-34d9-643d42b3ac7a', -99, '2023-09-25 01:47:07', 0),
('2d3bb61f-40ca-9622-5683-64ed1c63f6b8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '44c76d2c-a1d2-6b22-c935-643d42a57af6', -99, '2023-08-28 22:17:09', 0),
('2d3dc096-0257-c3ee-ef74-64e3fa945699', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '50cb9146-1ee2-e9d2-3f22-643d42e057ee', -99, '2023-09-25 01:52:49', 0),
('2da883a4-ef41-64ac-eea4-64ed19e03fb0', '96611c3f-0542-6304-6faa-64ed18d1687c', '62ad92fd-05d8-edd6-5e14-643d42e04c48', 0, '2023-08-28 22:17:53', 1),
('2de9024c-21a8-4345-e57d-64e3fa4d6b08', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4ea429a3-82ff-87dc-e081-643d42ac92c1', -99, '2023-09-25 01:52:49', 0),
('2dff2703-3d10-5544-893a-64e3fc2b481d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '19e340de-d34d-3a8f-b112-643d421a16c0', -99, '2023-09-25 01:47:07', 0),
('2e0aa8c3-f755-9a1b-7fc9-64ed1c7dc238', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8e2c97df-2e10-0415-7663-643d42f152ec', -98, '2023-08-28 22:17:09', 0),
('2e248855-21f1-aa91-16e5-64ed19a6596b', '96611c3f-0542-6304-6faa-64ed18d1687c', '60203409-538b-7451-c953-643d4239ee5f', 0, '2023-08-28 22:17:53', 1),
('2e7a01e9-479f-14c5-3651-64ed191cf9d5', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd51877e2-2e18-6b33-2020-643d425d5564', 0, '2023-08-28 22:17:53', 1),
('2e7ef76c-4753-ec40-36dd-64ed1c6d2ca4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9793a630-1d3f-0f93-a0e6-643d42c21aae', -99, '2023-08-28 22:17:09', 0),
('2e8eb74b-b9de-7f11-8b43-64e3fcbba819', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2d377155-c266-053c-a780-643d4274ced1', -98, '2023-09-25 01:47:07', 0),
('2ea3eaee-f39c-cd11-d041-64e3fa989491', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4730f695-dc77-a1df-3e93-643d42c38325', -99, '2023-09-25 01:52:49', 0),
('2eba53e4-8c3c-2d72-9548-64ed19c00ce6', '96611c3f-0542-6304-6faa-64ed18d1687c', '67763625-2266-0e06-ab21-643d42e41619', 0, '2023-08-28 22:17:53', 1),
('2ec00db4-b1a6-795c-e60c-64e3faec72b5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c3f7a76b-2759-c86a-501f-643d427cdb35', -99, '2023-09-25 01:52:49', 0),
('2f155b97-3f59-d1c8-317f-64ed1c897270', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '952d9ece-41fa-b482-0749-643d429a2845', -99, '2023-08-28 22:17:09', 0),
('2f2d79e7-179b-2abb-0bfe-64ed1914b5b9', '96611c3f-0542-6304-6faa-64ed18d1687c', '64fd8b6e-18db-5c97-76c6-643d42d12487', 0, '2023-08-28 22:17:53', 1),
('2f94677e-3de6-45b2-63d8-64e3fc4eb575', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '40035ade-8ab4-d576-99fd-643d42e880db', -99, '2023-09-25 01:47:07', 0),
('2fa25b17-89ee-4521-c42e-64ed1c01f706', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9bd85a2d-8dda-eac4-8996-643d4278a173', -99, '2023-08-28 22:17:09', 0),
('2fafa177-d817-f92a-f03a-64e3fa482e26', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5301a4d6-64d3-183d-69c6-643d427e10c4', -99, '2023-09-25 01:52:49', 0),
('2fbaf978-57b1-b9c2-4193-64ed19bc30ff', '96611c3f-0542-6304-6faa-64ed18d1687c', '5ddc5fb8-9db0-78df-2077-643d42f3b2b2', 0, '2023-08-28 22:17:53', 1),
('30199880-d8d9-c27a-83db-64ed1c1697b1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '99cf6ba1-5646-f424-fb63-643d42a30ac0', -99, '2023-08-28 22:17:09', 0),
('301c03be-6452-72bc-64a2-64e3fc273a5c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e53dba22-acb2-83d5-627a-643d42c9beaf', -99, '2023-09-25 01:47:07', 0),
('30372688-d7a8-7ba7-a81e-64ed194a9a1f', '96611c3f-0542-6304-6faa-64ed18d1687c', '69a21c13-2952-08dc-3320-643d42583953', 0, '2023-08-28 22:17:53', 1),
('305f0de6-930c-9274-9064-64e3fafeeae4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '44c76d2c-a1d2-6b22-c935-643d42a57af6', -99, '2023-09-25 01:52:49', 0),
('30b969a7-a428-21b6-6f81-64e3fc4abe7f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '39cdb5f5-55f8-537c-2680-643d427824b7', -99, '2023-09-25 01:47:07', 0),
('30bc98f2-04b6-26d8-4863-64ed1c7142e5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '933adaa4-d11c-985b-13a9-643d4200be00', -99, '2023-08-28 22:17:09', 0),
('30c966d8-cbf6-360e-5ab2-64ed190de553', '96611c3f-0542-6304-6faa-64ed18d1687c', '5b5d5aa7-2f8f-e503-b97e-643d42361b6c', 0, '2023-08-28 22:17:53', 1),
('3138ae5e-ce7c-1705-e713-64ed1cb97bfc', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9e693c0d-071d-c105-3e26-643d429919bc', -99, '2023-08-28 22:17:09', 0),
('313ea090-ef7c-8f5b-7443-64ed19764a3a', '96611c3f-0542-6304-6faa-64ed18d1687c', '18754228-6a6f-13d0-3b49-643d42c860d4', 0, '2023-08-28 22:17:53', 1),
('313f785a-64fe-20dc-abfd-64e3fa9fcb0e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8e2c97df-2e10-0415-7663-643d42f152ec', 89, '2023-09-25 01:52:49', 0),
('31a3981f-aa93-b18b-45d2-64e3fcc2a223', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4a917b3c-07ff-b956-b808-643d42d91434', -99, '2023-09-25 01:47:07', 0),
('31a40c64-f7da-d0d2-eea2-64e3fc50a3b3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '431b3918-798f-652a-cceb-643d422e67ae', -98, '2023-09-25 01:47:07', 0),
('31c40ace-bff0-d9d9-4593-64ed1cba08a1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '90f61bb7-831c-59ff-6ec7-643d42e01c3c', -99, '2023-08-28 22:17:09', 0),
('31cfcbb3-3b9b-0d12-c713-64e3fa2f3b36', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9793a630-1d3f-0f93-a0e6-643d42c21aae', 90, '2023-09-25 01:52:49', 0),
('31d05be1-8e53-9e70-9b58-64ed1996d200', '96611c3f-0542-6304-6faa-64ed18d1687c', '25344b6e-7108-f8dd-147b-643d429ad28d', 0, '2023-08-28 22:17:53', 1),
('3239d7d5-4997-c66e-e4ef-64ed1cdf29b8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b8713796-fc6f-aca1-78e6-643d42b2998a', -98, '2023-08-28 22:17:09', 0),
('324087e2-a48b-3540-e0a7-64e3fa78f449', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '952d9ece-41fa-b482-0749-643d429a2845', 90, '2023-09-25 01:52:49', 0),
('326fb58e-9cc9-c430-b4ea-64ed1992649b', '96611c3f-0542-6304-6faa-64ed18d1687c', '21ea3fa1-4b51-7038-b219-643d42bba8ac', 0, '2023-08-28 22:17:53', 1),
('32c34a32-7bbd-3d32-4a95-64ed1cb3ede3', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd10fe2ac-5ccd-2258-a2aa-643d42683373', -99, '2023-08-28 22:17:09', 0),
('32c86339-5257-dc0f-840f-64e3faa1707b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9bd85a2d-8dda-eac4-8996-643d4278a173', 90, '2023-09-25 01:52:49', 0),
('33019301-311d-4348-6ec1-64ed196889bd', '96611c3f-0542-6304-6faa-64ed18d1687c', '2a4fa106-22a0-f631-4457-643d42edddb3', 0, '2023-08-28 22:17:53', 1),
('33405507-2817-8451-3223-64e3fa26bdfc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '99cf6ba1-5646-f424-fb63-643d42a30ac0', 90, '2023-09-25 01:52:49', 0),
('334704c9-aacc-da11-5713-64ed1cb7824e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b0621c54-ef5f-a8c4-083b-643d42adce5f', -99, '2023-08-28 22:17:09', 0),
('3366669e-9c3a-f4b0-b5e4-64ed1c50dad0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'cdd515e9-cb60-0719-a8d5-643d42e87eb4', -99, '2023-08-28 22:17:09', 0),
('339c8f5b-d4e5-bf30-242b-64ed199674bd', '96611c3f-0542-6304-6faa-64ed18d1687c', '27c8e436-475b-e1e9-23a0-643d423fb989', 0, '2023-08-28 22:17:53', 1),
('33bedd36-b632-73e3-eb0e-64e3fc68ef2c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '46bcd1d4-03b2-2f8a-7d2c-643d420d1a13', -99, '2023-09-25 01:47:07', 0),
('33d08287-19df-8db1-b3d1-64e3fa869816', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '933adaa4-d11c-985b-13a9-643d4200be00', -99, '2023-09-25 01:52:49', 0),
('33f6923d-b642-6044-a31f-64ed1c6b453c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd72f4973-eed4-7f4e-80f2-643d42ff956a', -99, '2023-08-28 22:17:09', 0),
('3402fc55-83eb-832a-ebe1-64ed1971e0c6', '96611c3f-0542-6304-6faa-64ed18d1687c', '20058d18-0722-5d89-e929-643d4237b2f3', 0, '2023-08-28 22:17:53', 1),
('344009eb-15ef-7f07-395c-64e3fa7163dd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9e693c0d-071d-c105-3e26-643d429919bc', -99, '2023-09-25 01:52:49', 0),
('348e1a91-ca02-64ac-bbba-64ed19be4bde', '96611c3f-0542-6304-6faa-64ed18d1687c', '2d16dc83-148f-391d-57db-643d42abc978', 0, '2023-08-28 22:17:53', 1),
('3490f4ed-5c46-b510-766f-64ed1c846322', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd3a55c75-a104-b81d-5a88-643d42e06903', -99, '2023-08-28 22:17:09', 0),
('34b00c94-e347-66bb-1b54-64e3fc9fad2c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3545bccb-a488-e2c9-4ed2-643d42c97663', -99, '2023-09-25 01:47:07', 0),
('34ca6d9a-cc5a-7996-cf0a-64e3fa7fd471', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '90f61bb7-831c-59ff-6ec7-643d42e01c3c', 90, '2023-09-25 01:52:49', 0),
('34f566d3-01a3-3e09-6131-64ed1c40cc94', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'caaa88b4-f60e-3043-ca86-643d42b0c89f', -99, '2023-08-28 22:17:09', 0),
('35076d83-857d-ffa8-0884-64ed1971c2bf', '96611c3f-0542-6304-6faa-64ed18d1687c', '1db5ca27-9945-5c8b-9a72-643d42497250', 0, '2023-08-28 22:17:53', 1),
('3546c4e4-edff-6b7d-32e1-64e3fafefb45', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b8713796-fc6f-aca1-78e6-643d42b2998a', -98, '2023-09-25 01:52:49', 0),
('355a0e59-78d4-8a46-8e9e-64e3fa18212b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'cc7d16f2-498c-3b33-d1ec-643d42f07ddf', -99, '2023-09-25 01:52:49', 0),
('355e80d5-b038-cf8a-cdd9-64e3fc010955', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4db74728-ad00-37a6-4a1c-643d42db2d40', -99, '2023-09-25 01:47:07', 0),
('357f6757-1970-0ebe-f926-64ed1cfcad80', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'da4875a8-f407-544b-3c59-643d4283c76d', -99, '2023-08-28 22:17:09', 0),
('3590c55f-b79f-6a32-00a3-64ed190a4c42', '96611c3f-0542-6304-6faa-64ed18d1687c', '9e8c8d77-450a-1896-ce31-643d42df5682', 0, '2023-08-28 22:17:53', 1),
('35bc0ef1-f103-a46f-1efa-64ed19dcf00f', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e228742e-3e7c-edac-67b7-643d429f32a2', 0, '2023-08-28 22:17:53', 1),
('35ef5cbf-1175-8f6e-baac-64e3fab4cd65', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd10fe2ac-5ccd-2258-a2aa-643d42683373', -99, '2023-09-25 01:52:49', 0),
('35fb6526-2992-bab2-683d-64ed1cc1a5ac', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c741fa9d-1480-0d4d-6a49-643d42b4a7ee', -99, '2023-08-28 22:17:09', 0),
('360dc2ff-944d-e77a-cef2-64ed1956ffc2', '96611c3f-0542-6304-6faa-64ed18d1687c', 'aea8f222-4ddd-ce12-7094-643d42640dcf', 0, '2023-08-28 22:17:53', 1),
('367fa59c-4386-89c6-bad0-64e3fa3de92c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'cdd515e9-cb60-0719-a8d5-643d42e87eb4', -99, '2023-09-25 01:52:49', 0),
('3686cf3a-ede1-ad3d-3dca-64ed1cf965ba', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '177876eb-d5bf-837a-6304-643d427563ed', -98, '2023-08-28 22:17:09', 0),
('368af04b-a3ee-2876-35e2-64e3fcd2b0da', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '31d70ba4-73cc-d1fc-fa03-643d42089bf1', -99, '2023-09-25 01:47:07', 0),
('3696da9d-26c9-bf65-c7cc-64ed1922ac8e', '96611c3f-0542-6304-6faa-64ed18d1687c', 'abfd3021-01ef-ce0b-4651-643d42a23fb1', 0, '2023-08-28 22:17:53', 1),
('36fcae20-9fd0-221c-63f5-64ed1c5c1b7b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1fbd4d64-a8d8-82d3-b452-643d42dd9c0b', -99, '2023-08-28 22:17:09', 0),
('370d6333-dfcc-3157-7146-64e3fc994175', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4c56983b-5dbf-a07a-80cc-643d42405d23', -98, '2023-09-25 01:47:07', 0),
('371af882-314b-7540-6c0f-64ed195029b4', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b3cba99d-bdc5-b1aa-f2ae-643d42da459d', 0, '2023-08-28 22:17:53', 1),
('3720d2e0-8d63-c849-cf92-64e3fa27f3bc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd72f4973-eed4-7f4e-80f2-643d42ff956a', -99, '2023-09-25 01:52:49', 0),
('37660582-ab85-f7f8-33dd-64e3fc50d57e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e2086b2a-0739-56bf-2bc9-643d42735c6b', -99, '2023-09-25 01:47:07', 0),
('3786257c-444a-58e9-a715-64ed1c6a0284', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1d894902-fbaf-6b78-f9df-643d42972ef4', -99, '2023-08-28 22:17:09', 0),
('37cab87b-ca68-7ba1-534e-64e3fa5c6a31', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd3a55c75-a104-b81d-5a88-643d42e06903', -99, '2023-09-25 01:52:49', 0),
('37e19931-cca2-7611-1a46-64e3fcd157dd', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '54f6c960-d4f7-0053-fab9-643d4238e5c6', -99, '2023-09-25 01:47:07', 0),
('37e31a35-49b4-83e0-1ec3-64ed193ba62b', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b10f7000-7dfa-5794-e3a5-643d42a6cff5', 0, '2023-08-28 22:17:53', 1),
('37fdcc3d-72f5-1558-7c07-64ed1c5ee70a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '244af2e2-b415-5f7a-446d-643d421bd972', -99, '2023-08-28 22:17:09', 0),
('383a019a-eb5f-5057-a78e-64e3fae40676', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'caaa88b4-f60e-3043-ca86-643d42b0c89f', -99, '2023-09-25 01:52:49', 0),
('386b690f-660a-1636-342c-64e3fc49761c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '52fece2c-5b02-f9a3-cbe6-643d428fbd72', -99, '2023-09-25 01:47:07', 0),
('386f6ee4-e13a-5f51-30e2-64ed19e9da22', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a7eec1e1-8bb0-5ee3-2b16-643d4268b042', 0, '2023-08-28 22:17:53', 1),
('38cac312-e359-aa4b-d9fa-64ed1c65e7fb', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '21d63e61-1382-185b-25fb-643d42f0ca1f', -99, '2023-08-28 22:17:09', 0),
('38d3ac78-aac7-8270-93ef-64e3face4c55', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'da4875a8-f407-544b-3c59-643d4283c76d', -99, '2023-09-25 01:52:49', 0),
('38e35b4d-bbae-2ec5-26b2-64e3fc53bb67', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5921ccf2-de62-adc2-df21-643d42583bcb', -99, '2023-09-25 01:47:07', 0),
('38e9b828-d043-48c4-798e-64ed19dfd5ad', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b6eaebb9-8851-f1b6-da6a-643d4256b64f', 0, '2023-08-28 22:17:53', 1),
('39484ecd-907e-e44b-12af-64ed1c858979', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1bd2d367-0bab-c438-b482-643d42fb2a2b', -99, '2023-08-28 22:17:09', 0),
('39675c96-65da-8605-7e55-64e3fa45b3d7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c741fa9d-1480-0d4d-6a49-643d42b4a7ee', -99, '2023-09-25 01:52:49', 0),
('397256a6-2212-fe18-ae97-64ed1907da58', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a2ff80e3-649c-5647-90f0-643d42a3a174', 0, '2023-08-28 22:17:53', 1),
('39a94bbe-87da-07a3-0714-64e3fcd262ab', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '56dd3d65-e7dd-680d-d40e-643d424b2f20', -99, '2023-09-25 01:47:07', 0),
('39d5be9a-1635-7af3-bf1d-64ed1c7f5a8c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '26f00a26-ce74-70ac-26d4-643d4294b861', -99, '2023-08-28 22:17:09', 0),
('39d8832d-5e31-2a32-02f0-64e3fa209210', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '177876eb-d5bf-837a-6304-643d427563ed', -98, '2023-09-25 01:52:49', 0),
('39ef9b5f-1060-6d30-20e4-64ed198deb65', '96611c3f-0542-6304-6faa-64ed18d1687c', '212122ef-0e29-3dd2-b76e-643d42cbe552', 0, '2023-08-28 22:17:53', 1),
('3a0e000f-710b-cf43-e2a8-64e3fce9f8ac', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '513320a1-6731-d5dd-fb32-643d42a90d27', -99, '2023-09-25 01:47:07', 0),
('3a4302eb-4f3b-393c-aad9-64e3fc5c5fe5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5e97d573-c027-e5be-3dc9-643d42d4f61e', -99, '2023-09-25 01:47:07', 0),
('3a60fc81-3581-7e0f-dab6-64e3fa1975fb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1fbd4d64-a8d8-82d3-b452-643d42dd9c0b', -99, '2023-09-25 01:52:49', 0),
('3a74cb5f-1440-cfe6-bd38-64ed1c4b11dc', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1a27b250-4c97-441c-68fd-643d42a9c18c', -99, '2023-08-28 22:17:09', 0),
('3a858f51-3b27-8802-4a5c-64ed1909cd52', '96611c3f-0542-6304-6faa-64ed18d1687c', '2f21b9f4-7435-5b57-13a8-643d42fd83c5', 0, '2023-08-28 22:17:53', 1),
('3a969732-6085-22a7-6aab-64e3fc0dc682', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5b21dd04-33bf-65a4-2eac-643d4202e641', -99, '2023-09-25 01:47:07', 0),
('3ab005a5-17dd-f7e7-bb3b-64ed19e2dfcc', '96611c3f-0542-6304-6faa-64ed18d1687c', 'da18b789-91aa-9f9b-f322-643d429904c2', 0, '2023-08-28 22:17:53', 1),
('3adcfe7d-aa10-1329-e7f5-64ed1c00bea0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b9bb5349-42cc-5f3c-85a2-643d426d4bea', -98, '2023-08-28 22:17:09', 0),
('3b0d392c-3a43-a85b-ee29-64e3fc72cfd2', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4f356e24-0bdb-814f-e8a1-643d42fcc5fa', -99, '2023-09-25 01:47:07', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('3b6e8a49-7c16-4392-4920-64ed1c22f53b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'de511817-38e2-24d4-bfa1-643d42c47da1', -99, '2023-08-28 22:17:09', 0),
('3b94d44c-8928-57a2-2ef6-6510e7be96ae', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1ae3df3c-6bf8-20e2-3c5a-6510df241d2c', 89, '2023-09-25 01:52:49', 0),
('3b979ce9-0d2f-736f-5905-64e3fc97d535', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c6d70e4f-6c16-f30f-9de2-643d424967bb', -98, '2023-09-25 01:47:07', 0),
('3bb5784d-1082-d36f-1583-64ed1922d828', '96611c3f-0542-6304-6faa-64ed18d1687c', '2c4b127e-2f51-c772-ad22-643d42ef55c0', 0, '2023-08-28 22:17:53', 1),
('3bd2b61b-0457-38d8-7baa-64e3fa1802dc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1d894902-fbaf-6b78-f9df-643d42972ef4', -99, '2023-09-25 01:52:49', 0),
('3be44c7d-65f9-5613-047c-64ed1c9ba84d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'db37e215-e77f-321e-1cd2-643d4237fb46', -99, '2023-08-28 22:17:09', 0),
('3c0d7d7d-bf6f-1483-8508-64e3fca8e9c8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '164c3a2d-6c19-27a8-7999-643d42aa2def', -99, '2023-09-25 01:47:07', 0),
('3c11a48b-e5ad-c4af-9953-6510e7974764', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '20a4085b-0454-3d7c-7f40-6510dfedeadc', -99, '2023-09-25 01:52:49', 0),
('3c28e217-74cf-4d47-d7eb-64ed196e7ddb', '96611c3f-0542-6304-6faa-64ed18d1687c', '344cb9c9-3795-af93-a8ac-643d42e77f59', 0, '2023-08-28 22:17:53', 1),
('3c97d92e-d3d4-b9ec-75d7-64e3fc250031', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '14041a40-73be-558b-5ad7-643d42a2271c', -99, '2023-09-25 01:47:07', 0),
('3c9bf8bb-fc42-650e-7787-6510e7a333f0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1fa85b6f-5b7c-c297-13de-6510df77d501', -99, '2023-09-25 01:52:49', 0),
('3c9c5646-64d9-fca6-69de-64e3faeba106', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '244af2e2-b415-5f7a-446d-643d421bd972', -99, '2023-09-25 01:52:49', 0),
('3cb41cf4-76e1-7ef6-5e84-64ed1c48e527', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e2d41451-104f-2cf8-6834-643d427497fc', -99, '2023-08-28 22:17:09', 0),
('3cb558f5-063c-99b3-2069-64ed19d49cea', '96611c3f-0542-6304-6faa-64ed18d1687c', '3187c201-78f2-7b00-4933-643d42602bae', 0, '2023-08-28 22:17:53', 1),
('3d0e5283-a63a-92e7-1399-64e3fc91d03d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1adbe49e-3ecf-53f2-6744-643d42534dac', -99, '2023-09-25 01:47:07', 0),
('3d189f15-0acf-328c-638f-6510e7917636', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '23994b8f-3339-d8af-d2d2-6510df4f7184', -99, '2023-09-25 01:52:49', 0),
('3d20e10a-78bd-5add-511e-64e3fa35d189', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '21d63e61-1382-185b-25fb-643d42f0ca1f', -99, '2023-09-25 01:52:49', 0),
('3d36470f-0aa5-3331-92ad-64ed1c26d784', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e07c503b-33a5-caea-2b02-643d42e59b60', -99, '2023-08-28 22:17:09', 0),
('3d5507d1-3b69-8b3c-9e8a-64ed1968dbe9', '96611c3f-0542-6304-6faa-64ed18d1687c', '27f5de46-8606-f6da-d572-643d42e0fa95', 0, '2023-08-28 22:17:53', 1),
('3d981abc-c2fc-805e-4c39-64e3fc084db4', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '18c5695a-26b3-660a-475b-643d42ad6079', -99, '2023-09-25 01:47:07', 0),
('3da130d2-0d4a-0fe6-bd23-6510e7a85614', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '217458b9-18b5-ff25-ae6a-6510df56eb67', -99, '2023-09-25 01:52:49', 0),
('3dd20fc5-8a77-1c5c-cb43-64ed1c084cc9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'ad965725-4082-a705-3e72-643d42c1651c', -99, '2023-08-28 22:17:09', 0),
('3dda33d0-cf68-43d9-84de-64ed1cb8c7a8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd9002e2e-0263-3690-41b3-643d422ff549', -99, '2023-08-28 22:17:09', 0),
('3ddefbfc-e077-7bd7-f312-64ed1976c448', '96611c3f-0542-6304-6faa-64ed18d1687c', '37651cfe-e03f-d055-9ee2-643d42c9e2d5', 0, '2023-08-28 22:17:53', 1),
('3e0eed8c-125d-5eba-ee5c-64e3fcfbac76', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1240b421-871b-f9a0-8139-643d42b06743', -99, '2023-09-25 01:47:07', 0),
('3e1e8665-ce7d-8800-8d09-6510e7119f8b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1ec10ac1-86bd-324b-305a-6510df2ec0e5', -99, '2023-09-25 01:52:49', 0),
('3e570f26-683b-0bda-4737-64e3fa09954a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c98c0e55-84ac-c618-0731-643d42e94df7', -99, '2023-09-25 01:52:49', 0),
('3e7ebf31-8b28-3853-84db-64ed1945d8dc', '96611c3f-0542-6304-6faa-64ed18d1687c', '255dafc5-a740-0c0f-3110-643d42bef1cf', 0, '2023-08-28 22:17:53', 1),
('3e86ed06-e13e-8ef0-9ebb-64ed1c52e0cb', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e53b714c-4d2e-148d-a656-643d426aff5d', -99, '2023-08-28 22:17:09', 0),
('3eb72264-88d2-98fc-e973-64e3fa876905', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1bd2d367-0bab-c438-b482-643d42fb2a2b', -99, '2023-09-25 01:52:49', 0),
('3ed70401-afa0-364f-7132-64e3fcc514c9', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1cd38f60-f082-cc95-ca19-643d42905cc4', -99, '2023-09-25 01:47:07', 0),
('3ef186b9-9247-fe66-24ac-64ed1c27b761', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd44144be-3e5f-2a04-bb28-643d42689410', -99, '2023-08-28 22:17:09', 0),
('3ef30cbd-f992-1e08-e8fd-64ed199d6317', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd1ffde19-2af0-31a7-fd2f-643d42bc80e7', 0, '2023-08-28 22:17:53', 1),
('3ef941d0-4674-ecdd-e5d8-6510e70763b1', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '248fae63-c3ec-6015-7f61-6510dffcb800', -99, '2023-09-25 01:52:49', 0),
('3f042a58-3ffe-ffff-29b8-64ed19479158', '96611c3f-0542-6304-6faa-64ed18d1687c', '715a6247-bc68-8fba-6357-643d426b4ceb', 0, '2023-08-28 22:17:53', 1),
('3f5ac4f4-fa27-a08d-2561-64e3fa4e3676', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '26f00a26-ce74-70ac-26d4-643d4294b861', -99, '2023-09-25 01:52:49', 0),
('3f783944-71df-b14d-1de3-64e3fc3c1dc3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1026a28e-c377-7610-ca1a-643d42963687', -99, '2023-09-25 01:47:07', 0),
('3f8279ec-abd2-7dbe-3bd2-6510e7c7071f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1db8ecfe-edc2-7a98-df44-6510dfba6c50', 90, '2023-09-25 01:52:49', 0),
('3f9a9bf0-f730-28cc-4941-64ed1c7e28c4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2df703c3-1886-2132-38ac-643d422be3d1', -98, '2023-08-28 22:17:09', 0),
('3fa6659d-0099-46d6-5d35-64ed1994b937', '96611c3f-0542-6304-6faa-64ed18d1687c', '7df38b1f-41d1-7cda-3e51-643d420c4708', 0, '2023-08-28 22:17:53', 1),
('3fcb1e30-17b7-b9fb-726d-64e3fa93aeef', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1a27b250-4c97-441c-68fd-643d42a9c18c', -99, '2023-09-25 01:52:49', 0),
('3ff559d8-c9e4-c3c1-3743-64e3fccedaa3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9892fc40-3e4c-b365-26b3-643d422e7a06', -98, '2023-09-25 01:47:07', 0),
('4003b8db-0c38-ce1c-3d1d-64ed1c18a0c0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c46d0004-f93c-4f96-4767-643d42389c29', -99, '2023-08-28 22:17:09', 0),
('40060b72-60ab-8a4d-6d6b-64e3fc1d7575', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd95bed9b-5d0c-6e28-ae45-643d42d85777', -99, '2023-09-25 01:47:07', 0),
('402fdd03-be88-13c0-9444-64ed19bb9f3a', '96611c3f-0542-6304-6faa-64ed18d1687c', '7ac669c2-4a94-5bab-f66f-643d425b0704', 0, '2023-08-28 22:17:53', 1),
('406fe731-92b2-48ed-1b7c-64e3fafafabf', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b9bb5349-42cc-5f3c-85a2-643d426d4bea', -98, '2023-09-25 01:52:49', 0),
('407eed81-ea5e-f646-e49f-64e3fc0132d4', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a97bf2b3-2fd0-4c36-322b-643d42c74e60', -99, '2023-09-25 01:47:07', 0),
('40adedcb-642d-8890-4798-64ed196e2a82', '96611c3f-0542-6304-6faa-64ed18d1687c', '83ae0141-5498-6568-3638-643d426070a0', 0, '2023-08-28 22:17:53', 1),
('40af08d8-ae06-07f1-4247-64ed1cf9158e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a1290757-56b3-252c-a722-643d42be8603', -99, '2023-08-28 22:17:09', 0),
('40efca45-b78d-8c22-982d-64e3fac82fec', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'de511817-38e2-24d4-bfa1-643d42c47da1', -99, '2023-09-25 01:52:49', 0),
('40f5aceb-cc67-f0f8-b6d5-64e3fc369932', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a606e345-c0f2-262e-c335-643d422adfa1', -99, '2023-09-25 01:47:07', 0),
('4143683a-104f-5737-48e4-64ed19abf510', '96611c3f-0542-6304-6faa-64ed18d1687c', '80b6e875-c54d-2a46-a066-643d42a2f842', 0, '2023-08-28 22:17:53', 1),
('41559704-16f2-becd-16cb-64ed1c51654b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '12f223e0-d48a-a5e7-c1fc-643d42715d96', -99, '2023-08-28 22:17:09', 0),
('417d653c-7c6e-da6d-58c4-64e3fa2c7cae', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'db37e215-e77f-321e-1cd2-643d4237fb46', -99, '2023-09-25 01:52:49', 0),
('4180b4eb-d95c-f0aa-ac99-64e3fca8d594', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b0621c54-ef5f-a8c4-083b-643d42adce5f', -99, '2023-09-25 01:47:07', 0),
('41b3ce78-3550-b915-74f9-64ed19fd5539', '96611c3f-0542-6304-6faa-64ed18d1687c', '77eb2e8e-b277-713a-4001-643d42491c76', 0, '2023-08-28 22:17:53', 1),
('41f63dfd-3920-5108-23e0-64e3fcd074a0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'ad965725-4082-a705-3e72-643d42c1651c', -99, '2023-09-25 01:47:07', 0),
('420838a5-3a81-33a1-5f2d-64ed1c330541', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'f8340ab6-7d56-066f-3c28-643d42bb965a', -99, '2023-08-28 22:17:09', 0),
('42170beb-a6b6-fb0d-d597-64e3fcc41f85', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4e3c2f1c-4341-cab4-2fdd-643d42b3e9a2', -99, '2023-09-25 01:47:07', 0),
('42182baf-6499-bae6-a90a-64e3fa1dbb31', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e2d41451-104f-2cf8-6834-643d427497fc', -99, '2023-09-25 01:52:49', 0),
('4242a664-afb9-32ee-d6e1-64ed199d2ac7', '96611c3f-0542-6304-6faa-64ed18d1687c', '85e814a5-d173-40aa-fa8a-643d42943a96', 0, '2023-08-28 22:17:53', 1),
('4298e65a-9eec-f1cb-c26a-64e3fcac4549', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a0445ad2-d73b-7df1-acd4-643d423db58d', -99, '2023-09-25 01:47:07', 0),
('42bb5973-61bc-7002-148f-64e3fab487e8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e07c503b-33a5-caea-2b02-643d42e59b60', -99, '2023-09-25 01:52:49', 0),
('42d9d629-3592-e565-e7a1-64ed1c22d505', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7e180749-bc8c-2725-c58e-643d42617e82', -99, '2023-08-28 22:17:09', 0),
('42e42f7d-fb7d-71be-ac6c-64ed19a726c2', '96611c3f-0542-6304-6faa-64ed18d1687c', '74edadfb-1620-027c-b1f6-643d4291adc5', 0, '2023-08-28 22:17:53', 1),
('43222442-e44b-2467-b1f9-64e3fc734275', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b336ef1c-9877-ff1b-1f21-643d42537cfd', -99, '2023-09-25 01:47:07', 0),
('43439c3b-3251-b398-1cae-64e3fad87db6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd9002e2e-0263-3690-41b3-643d422ff549', -99, '2023-09-25 01:52:49', 0),
('4374fc49-9685-9406-f911-64ed193a69a2', '96611c3f-0542-6304-6faa-64ed18d1687c', 'eb06342d-8d37-f51b-226c-643d42a6dbc1', 0, '2023-08-28 22:17:53', 1),
('4375ee46-28cf-1c8b-97eb-64ed1c2d7e10', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1579a9cb-de4a-9bb8-06c4-643d427efd03', -99, '2023-08-28 22:17:09', 0),
('439f549b-171d-bbf7-1a80-64e3fc917eb8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9caf10c5-f7e9-e47c-0069-643d42f09040', -99, '2023-09-25 01:47:07', 0),
('43c0a404-7c17-6649-3012-64e3fa29757c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e53b714c-4d2e-148d-a656-643d426aff5d', -99, '2023-09-25 01:52:49', 0),
('43eb68b1-e89e-9eea-c587-64ed19026e6e', '96611c3f-0542-6304-6faa-64ed18d1687c', '229e009c-8006-0ad5-c607-643d42d4bd80', 0, '2023-08-28 22:17:53', 1),
('43f82665-d62c-f06e-8480-64ed1c30b81d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5e4500bb-12be-3e3c-29cd-643d42b49034', -99, '2023-08-28 22:17:09', 0),
('444a0db7-998b-9458-b880-64e3fac445ef', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd44144be-3e5f-2a04-bb28-643d42689410', -99, '2023-09-25 01:52:49', 0),
('4476398e-cbfa-a373-e94d-64ed196aba4a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'f3742d29-de7f-5e90-96ff-643d42a5e883', 0, '2023-08-28 22:17:53', 1),
('44894e9f-361e-b2d9-79a2-6510e61a87a3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1ae3df3c-6bf8-20e2-3c5a-6510df241d2c', 89, '2023-09-25 01:47:07', 0),
('44a8d8e0-c662-079c-bf1b-64ed1c59d59e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3d1d9db1-ea6d-05d7-9935-643d42faf5e8', -98, '2023-08-28 22:17:09', 0),
('44cc050a-4e34-fbed-a1ea-64e3fa906e69', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2df703c3-1886-2132-38ac-643d422be3d1', -98, '2023-09-25 01:52:49', 0),
('44f32d3d-a785-c054-20d7-64ed197a4906', '96611c3f-0542-6304-6faa-64ed18d1687c', '6d480f1f-8b53-ff4e-0f6f-643d4284cd12', 0, '2023-08-28 22:17:53', 1),
('452d6d72-1b2a-e1bd-a9df-6510e6639be6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '20a4085b-0454-3d7c-7f40-6510dfedeadc', -99, '2023-09-25 01:47:07', 0),
('454e7988-35f6-4d9f-02c7-64e3fcefc97b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '90d70a18-7930-6538-3fbc-643d42c545f5', -98, '2023-09-25 01:47:07', 0),
('45510c98-a15f-ef6c-acc3-64ed1c1b79b8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4827e228-c210-aae8-1dad-643d4203cbe8', -99, '2023-08-28 22:17:09', 0),
('455e3507-60cb-d9ea-49ba-64e3fa5cb72e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c46d0004-f93c-4f96-4767-643d42389c29', -99, '2023-09-25 01:52:49', 0),
('457b7bf7-cbcf-eb09-3df4-64ed19ec70a8', '96611c3f-0542-6304-6faa-64ed18d1687c', '43090cfb-7ecb-a027-0ab8-643d422089ed', 0, '2023-08-28 22:17:53', 1),
('45bbd6ab-fe02-6ec2-ac60-64ed1cb76dad', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '45bfd43b-0e31-f47c-fc67-643d42cda15f', -99, '2023-08-28 22:17:09', 0),
('45c8890f-0a3f-f938-ab94-64e3fa95c946', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a1290757-56b3-252c-a722-643d42be8603', -99, '2023-09-25 01:52:49', 0),
('45d8879b-a444-4d05-e02c-64e3fc9b74c5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a0355c13-ad06-1ad1-773a-643d4266a498', -99, '2023-09-25 01:47:07', 0),
('45dc0680-4120-c6df-a0fb-64e3fa1264b7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c0ccaf4e-8792-11ad-1bec-643d42234848', -99, '2023-09-25 01:52:49', 0),
('45e68018-f94e-0ddf-4b91-6510e61f2675', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1fa85b6f-5b7c-c297-13de-6510df77d501', -99, '2023-09-25 01:47:07', 0),
('45f8c5dd-95f2-1445-9494-64ed1921cf5d', '96611c3f-0542-6304-6faa-64ed18d1687c', 'f0c63d21-a684-10f7-60cd-643d42c4af38', 0, '2023-08-28 22:17:53', 1),
('46510ed2-df3d-6c47-6186-64e3faa4c2ab', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '12f223e0-d48a-a5e7-c1fc-643d42715d96', -99, '2023-09-25 01:52:49', 0),
('4660ab22-b91a-94f2-7dfd-64ed1ca423ee', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4d6477ae-078e-a18c-684d-643d420aa107', -99, '2023-08-28 22:17:09', 0),
('4673c7e2-4ba6-1ace-639c-64e3fca5e2ec', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9d32b466-e9da-c17d-4b7f-643d42977d34', -99, '2023-09-25 01:47:07', 0),
('46792861-8033-28d1-8952-6510e687af2a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '23994b8f-3339-d8af-d2d2-6510df4f7184', -99, '2023-09-25 01:47:07', 0),
('4681d2a0-3c96-8f00-ec12-64ed1971e819', '96611c3f-0542-6304-6faa-64ed18d1687c', '9c4c0fa4-1eb6-3376-0133-643d428bf21c', 0, '2023-08-28 22:17:53', 1),
('468f05bf-c9e7-8d31-2d10-64ed1c772889', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a0445ad2-d73b-7df1-acd4-643d423db58d', -99, '2023-08-28 22:17:09', 0),
('46cdd590-54b9-7a98-de08-64e3fa3de98b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'f8340ab6-7d56-066f-3c28-643d42bb965a', -99, '2023-09-25 01:52:49', 0),
('46cf4751-5d91-7f42-5fd2-64ed1c1ab1e0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4b64ebf1-3f5e-6064-2bab-643d42e2fb23', -99, '2023-08-28 22:17:09', 0),
('46d70d1b-d4d4-d1dd-e6a8-64ed19eb6d6e', '96611c3f-0542-6304-6faa-64ed18d1687c', '710066d0-0a5e-ae44-66fc-643d4222947a', 89, '2023-08-28 22:17:53', 1),
('46f0c5a0-c866-ac31-24a6-64e3fc726d68', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a56ed735-7b43-f738-6f28-643d42708fcc', -99, '2023-09-25 01:47:07', 0),
('46f6f90c-0b94-1c35-732d-6510e6215a64', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '217458b9-18b5-ff25-ae6a-6510df56eb67', -99, '2023-09-25 01:47:07', 0),
('471efd0c-0847-fa43-a252-64ed195b6c5b', '96611c3f-0542-6304-6faa-64ed18d1687c', 'ee91f36a-81c3-4773-8372-643d428e2c6c', 0, '2023-08-28 22:17:53', 1),
('4777166b-5f0b-1664-d57b-64ed1cf54b97', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '43840c58-7109-c4dc-624e-643d429dd4c9', -99, '2023-08-28 22:17:09', 0),
('4779fef1-9e3c-391e-5eb6-64e3fc782990', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a2de6a4a-cb4d-692a-d0f4-643d42cdc625', -99, '2023-09-25 01:47:07', 0),
('4781c97e-737c-bca9-358c-6510e66c4293', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1ec10ac1-86bd-324b-305a-6510df2ec0e5', -99, '2023-09-25 01:47:07', 0),
('4795e5b2-3724-ff0b-311e-64e3fac0fc29', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7e180749-bc8c-2725-c58e-643d42617e82', -99, '2023-09-25 01:52:49', 0),
('47c09cb5-bf57-3456-c2ad-64ed19784593', '96611c3f-0542-6304-6faa-64ed18d1687c', '3239e82a-43c7-1766-3678-643d420149d6', 0, '2023-08-28 22:17:53', 1),
('48168b8c-227e-95c0-ce8f-64e3fc83143f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9a06e864-baa3-cc51-fd51-643d422c5610', -99, '2023-09-25 01:47:07', 0),
('481dcb10-4386-6d24-9bfe-6510e61e4e1f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '248fae63-c3ec-6015-7f61-6510dffcb800', -99, '2023-09-25 01:47:07', 0),
('48387400-be39-820f-e41e-64e3fabd7de0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1579a9cb-de4a-9bb8-06c4-643d427efd03', -99, '2023-09-25 01:52:49', 0),
('483d04ae-37a7-f993-f492-64e3fcf270cd', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e7cc1213-b0f7-69e2-9a40-643d42b66258', -99, '2023-09-25 01:47:07', 0),
('4846563e-733f-0c94-8723-64ed1c4f3c09', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4fb2ed6d-b030-97cd-5688-643d42f47b36', -99, '2023-08-28 22:17:09', 0),
('4863ea19-8c83-7011-6d63-64ed19e57660', '96611c3f-0542-6304-6faa-64ed18d1687c', '3b08e877-2142-7f6c-967d-643d424bd213', 0, '2023-08-28 22:17:53', 1),
('48949480-f7cc-fd70-8c29-64e3fcb76f39', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a7f7162c-33e3-0b66-8937-643d42c5d2dc', -99, '2023-09-25 01:47:07', 0),
('489b683e-1598-9e2d-3962-6510e6106137', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1db8ecfe-edc2-7a98-df44-6510dfba6c50', 90, '2023-09-25 01:47:07', 0),
('48a249d6-50da-d61b-de6e-64e3fafd96bd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5e4500bb-12be-3e3c-29cd-643d42b49034', -99, '2023-09-25 01:52:49', 0),
('48c3b213-ccdd-4a09-53db-64ed1cf81289', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '40898c12-09e1-b1a3-789f-643d42fe52e6', -99, '2023-08-28 22:17:09', 0),
('48c7552b-5caf-97a8-863d-64ed19f941c1', '96611c3f-0542-6304-6faa-64ed18d1687c', '391d09e0-b0bc-e223-0063-643d42bf6bb6', 0, '2023-08-28 22:17:53', 1),
('491d2b42-1ac4-364c-e086-64e3fc0d9010', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '96d3c5dc-c323-34b0-76b5-643d4241b113', -99, '2023-09-25 01:47:07', 0),
('49323323-0000-9e48-cb7b-64e3fa81bb5a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3d1d9db1-ea6d-05d7-9935-643d42faf5e8', -98, '2023-09-25 01:52:49', 0),
('4969dd10-ffb3-3edf-73cd-64ed1945e30e', '96611c3f-0542-6304-6faa-64ed18d1687c', '3f67e7fe-c30b-f9bd-f63b-643d42dae256', 0, '2023-08-28 22:17:53', 1),
('496c53c9-4110-5d54-fd3d-64ed1c51fd00', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '18dbd534-b071-8b59-048c-643d4266af9f', -98, '2023-08-28 22:17:09', 0),
('499a9145-8b21-d3e2-fd56-64e3fc4fd54c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b9ca88b7-bdef-9a0b-cbb6-643d42fdd951', -98, '2023-09-25 01:47:07', 0),
('49ae822c-ad31-6642-9792-64e3fa0af897', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4827e228-c210-aae8-1dad-643d4203cbe8', -99, '2023-09-25 01:52:49', 0),
('49f500e2-c849-4361-a84f-64ed19aea91f', '96611c3f-0542-6304-6faa-64ed18d1687c', '3d1ec346-7607-c7f2-8540-643d42b48164', 0, '2023-08-28 22:17:53', 1),
('4a0253ff-004c-714e-6b8d-64ed1c7985f7', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '22a1e411-e21a-aafd-66ea-643d42211553', -99, '2023-08-28 22:17:09', 0),
('4a2414a8-9e11-aa80-4393-64e3fcdc6368', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c67df9e8-6f18-5711-1d40-643d4264eb9f', -99, '2023-09-25 01:47:07', 0),
('4a44c385-99e0-2af6-1722-64e3fa5e8fc7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '45bfd43b-0e31-f47c-fc67-643d42cda15f', -99, '2023-09-25 01:52:49', 0),
('4a6bc927-c949-315b-8129-64ed1c280d87', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '20f617ea-a2f9-90db-a0b5-643d423c35ba', -99, '2023-08-28 22:17:09', 0),
('4a700c6e-3b36-9cfb-6465-64ed19c5278f', '96611c3f-0542-6304-6faa-64ed18d1687c', '36c908f4-f007-ce88-e682-643d42a5ea6b', 0, '2023-08-28 22:17:53', 1),
('4ab03d69-2c31-cfa5-2287-64e3faea7b1a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4d6477ae-078e-a18c-684d-643d420aa107', -99, '2023-09-25 01:52:49', 0),
('4ac76731-4a18-e8c3-984a-64e3fc0e83c5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c3f7a76b-2759-c86a-501f-643d427cdb35', -99, '2023-09-25 01:47:07', 0),
('4b010dbd-3c1f-2977-66e3-64e3fc15e8c5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '66f0a33f-72f1-795e-b2e2-643d420e996f', -99, '2023-09-25 01:47:07', 0),
('4b193155-f901-3a33-a2e8-64ed19ab3a2f', '96611c3f-0542-6304-6faa-64ed18d1687c', '421302f3-fca1-e169-ecee-643d425570f9', 0, '2023-08-28 22:17:53', 1),
('4b3a2101-443d-1cb8-d915-64e3fafda5a6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4b64ebf1-3f5e-6064-2bab-643d42e2fb23', -99, '2023-09-25 01:52:49', 0),
('4b40e3fe-01fc-fdef-cec9-64ed1c0dc097', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '26744b14-5ab9-55c5-8ec1-643d4220330b', -99, '2023-08-28 22:17:09', 0),
('4b4fad9a-f4a0-33bf-8a76-64e3fcd23224', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'cc7d16f2-498c-3b33-d1ec-643d42f07ddf', -99, '2023-09-25 01:47:07', 0),
('4bb792c2-dff7-f0ad-f649-64ed1c1130fc', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '247a2b2d-95f9-313f-76f2-643d42c6439d', -99, '2023-08-28 22:17:09', 0),
('4bbc74b1-50ec-6912-ed19-64e3fa561be5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '43840c58-7109-c4dc-624e-643d429dd4c9', -99, '2023-09-25 01:52:49', 0),
('4bc75990-d756-b508-5599-64e3fcb1fd8b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c98c0e55-84ac-c618-0731-643d42e94df7', -99, '2023-09-25 01:47:07', 0),
('4c3b5386-6ee0-586c-0123-64ed19d4f741', '96611c3f-0542-6304-6faa-64ed18d1687c', '351cea52-4aed-2655-5a7b-643d427df0f1', 0, '2023-08-28 22:17:53', 1),
('4c40ed02-0fac-2291-c254-64ed1c7a43c0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1eda117f-7c86-9865-0174-643d42d37055', -99, '2023-08-28 22:17:09', 0),
('4c483051-0e7b-20e1-8b64-64ed197f8089', '96611c3f-0542-6304-6faa-64ed18d1687c', 'access', 0, '2023-08-28 22:17:53', 1),
('4c501afe-a5d1-0f47-aae6-64e3fc873398', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c0ccaf4e-8792-11ad-1bec-643d42234848', -99, '2023-09-25 01:47:07', 0),
('4cb019dc-4f19-6fb9-5f35-64ed19312833', '96611c3f-0542-6304-6faa-64ed18d1687c', '431b3918-798f-652a-cceb-643d422e67ae', 0, '2023-08-28 22:17:53', 1),
('4cb5ae71-6dc1-7f0b-c6a5-64e3fae0ece1', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4fb2ed6d-b030-97cd-5688-643d42f47b36', -99, '2023-09-25 01:52:49', 0),
('4cbd00b5-efd5-88cf-51f2-64ed1c9ba841', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '28cc7a99-835f-0b83-c3d5-643d4250f93e', -99, '2023-08-28 22:17:09', 0),
('4cc67e32-5f20-5bb2-4427-64e3fc97d39f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'cf3b6446-b35f-7467-5fc1-643d42fdeea1', -99, '2023-09-25 01:47:07', 0),
('4d4006bc-fe65-78a7-c172-64e3fae38f51', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '40898c12-09e1-b1a3-789f-643d42fe52e6', -99, '2023-09-25 01:52:49', 0),
('4d48c5bb-44b5-3c4a-4291-64ed1cb97844', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1ce1b0d4-5886-d6de-96b1-643d42c82330', -99, '2023-08-28 22:17:09', 0),
('4d511edb-6c2c-3420-2584-64e3fc29adad', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'bde704f5-761a-4a07-80d6-643d425c7bb1', -99, '2023-09-25 01:47:07', 0),
('4d779ad5-5a7c-1192-bc0d-64ed192d318c', '96611c3f-0542-6304-6faa-64ed18d1687c', '5e97d573-c027-e5be-3dc9-643d42d4f61e', 0, '2023-08-28 22:17:53', 1),
('4dbc8f25-49ff-53a0-5c9e-64e3fa59628f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '18dbd534-b071-8b59-048c-643d4266af9f', -98, '2023-09-25 01:52:49', 0),
('4dc70b03-bbef-6b36-7858-64e3fc68292c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5f1f04da-595b-b172-938d-643d42df6264', -98, '2023-09-25 01:47:07', 0),
('4de9268a-3057-86a0-01f7-64ed1c941271', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'cd64ad84-2065-c303-dc5a-643d42ddbd6c', -98, '2023-08-28 22:17:09', 0),
('4e01cdfc-3e6b-156a-b3f4-64ed19401da8', '96611c3f-0542-6304-6faa-64ed18d1687c', '4e3c2f1c-4341-cab4-2fdd-643d42b3e9a2', 0, '2023-08-28 22:17:53', 1),
('4e51528d-e75b-3055-3f36-64e3fc35f82f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6f4b56ee-6b9a-6582-d189-643d42b55275', -99, '2023-09-25 01:47:07', 0),
('4e6605cf-077d-f90c-94fc-64e3fa19826c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'cf3b6446-b35f-7467-5fc1-643d42fdeea1', -99, '2023-09-25 01:52:49', 0),
('4e83f223-b62c-00d3-bf03-64ed199ea8ad', '96611c3f-0542-6304-6faa-64ed18d1687c', '66f0a33f-72f1-795e-b2e2-643d420e996f', 0, '2023-08-28 22:17:53', 1),
('4e8d51d7-e5af-824d-f64c-64ed1c6bbdb4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd921d2fb-21cb-4380-3393-643d42fc41c5', -99, '2023-08-28 22:17:09', 0),
('4eced17a-c26f-15bb-58fb-64e3fad0bf5d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '22a1e411-e21a-aafd-66ea-643d42211553', -99, '2023-09-25 01:52:49', 0),
('4f056618-041f-e52b-339a-64e3fcad17ee', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6bc1f78d-8e4b-8209-512a-643d4283840f', -99, '2023-09-25 01:47:07', 0),
('4f0f4788-99de-8bdc-3f93-64ed193f0356', '96611c3f-0542-6304-6faa-64ed18d1687c', '632a05c5-e1e6-120f-2a29-643d4279bdf6', 0, '2023-08-28 22:17:53', 1),
('4f1c7826-d356-1ccd-df06-64ed1c51dd3f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd6b8f4d9-6121-3625-daaa-643d426a67f6', -99, '2023-08-28 22:17:09', 0),
('4f76a457-7c98-a303-4787-64e3fad735d2', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '20f617ea-a2f9-90db-a0b5-643d423c35ba', -99, '2023-09-25 01:52:49', 0),
('4f8cb610-a642-6c47-8412-64ed1920ddac', '96611c3f-0542-6304-6faa-64ed18d1687c', '4913190c-54d7-3be4-37c8-643d423d7161', 0, '2023-08-28 22:17:53', 1),
('4f8d8dec-d662-17a9-4c0e-64ed1c6e792f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e2fea466-52ff-d091-ddb5-643d42d87664', -99, '2023-08-28 22:17:09', 0),
('4f8f1bfc-db25-0441-ab04-64ed197de268', '96611c3f-0542-6304-6faa-64ed18d1687c', 'delete', 0, '2023-08-28 22:17:53', 1),
('4f96cd79-70a1-cbe6-b37d-64e3fcec2c7a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '75ca38c5-ebff-3350-2c4b-643d42a56fab', -99, '2023-09-25 01:47:07', 0),
('4fbc0b95-baea-8142-1c9d-64ed191ae524', '96611c3f-0542-6304-6faa-64ed18d1687c', '7ec6bccd-e8d5-93fc-de53-643d42026916', 90, '2023-08-28 22:17:53', 1),
('50089486-bad9-63a0-fe8d-64e3fac905d0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '26744b14-5ab9-55c5-8ec1-643d4220330b', -99, '2023-09-25 01:52:49', 0),
('501e8cfc-6caa-9ace-a4bd-64ed19c980b8', '96611c3f-0542-6304-6faa-64ed18d1687c', '6b162634-c3f4-7db3-2fe0-643d4228315d', 0, '2023-08-28 22:17:53', 1),
('5029deea-4529-2e60-a5e3-64ed198a62f2', '96611c3f-0542-6304-6faa-64ed18d1687c', 'edit', 0, '2023-08-28 22:17:53', 1),
('5031c13e-d03b-8b46-620c-64e3fcec1b51', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '72c4cf67-9fe1-9e28-9659-643d42314c14', -99, '2023-09-25 01:47:07', 0),
('504116a6-d3ae-1552-6458-64ed1c274e7e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'dfe88f27-1c49-c87e-054e-643d42b1b613', -99, '2023-08-28 22:17:09', 0),
('50867fef-a7d7-c23d-6278-64e3fa203534', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '247a2b2d-95f9-313f-76f2-643d42c6439d', -99, '2023-09-25 01:52:49', 0),
('50916f00-cc67-783f-0810-64ed1938f444', '96611c3f-0542-6304-6faa-64ed18d1687c', '4660e3e3-ce3c-3343-589d-643d42ac340e', 0, '2023-08-28 22:17:53', 1),
('509702a8-3fc8-9db8-ea69-64e3fcdf9877', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '685d7fb3-86bb-8492-bc28-643d42e7e44e', -99, '2023-09-25 01:47:07', 0),
('50a606e5-98d5-7986-ce99-64ed1caa4ee0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b336ef1c-9877-ff1b-1f21-643d42537cfd', -99, '2023-08-28 22:17:09', 0),
('50a65583-1342-9a0c-38b4-64ed19905789', '96611c3f-0542-6304-6faa-64ed18d1687c', 'export', 0, '2023-08-28 22:17:53', 1),
('50cd9063-9a0d-d9a1-d568-64ed1c23cbcb', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd398d6c5-1fd5-2558-ea8b-643d42febc88', -99, '2023-08-28 22:17:09', 0),
('5124af13-f2f4-d9f2-cc27-64ed1990ef2b', '96611c3f-0542-6304-6faa-64ed18d1687c', '9fb8b1fc-6e8b-ce3e-b408-643d425995be', 0, '2023-08-28 22:17:53', 1),
('51250dff-c3ee-5910-0378-64e3fcad66bd', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd6dab8c7-545e-1d33-66cc-643d426aeb6a', -99, '2023-09-25 01:47:07', 0),
('513a91a8-b2fd-a960-4b2d-64e3fc526d59', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '790236bf-94d9-3487-09d0-643d424cd228', -99, '2023-09-25 01:47:07', 0),
('51449611-27d2-fc4a-3dfc-64ed1992d7be', '96611c3f-0542-6304-6faa-64ed18d1687c', 'import', 0, '2023-08-28 22:17:53', 1),
('5153ec02-bb59-ac6a-b2d8-64e3fabee3c1', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1eda117f-7c86-9865-0174-643d42d37055', -99, '2023-09-25 01:52:49', 0),
('516da430-ae80-14a0-d090-64ed1cc6572d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e60d1c08-d1f6-f37e-4480-643d42b5b139', -99, '2023-08-28 22:17:09', 0),
('5197dcf8-d58c-42db-0cfb-64ed19a14869', '96611c3f-0542-6304-6faa-64ed18d1687c', 'aa6f3c60-a80d-7d27-b7ce-643d42f6c680', 0, '2023-08-28 22:17:53', 1),
('51c336a4-abef-87e7-1ef1-64e3fcfa707b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '643f2be8-7e80-985b-62e4-643d4230b986', -99, '2023-09-25 01:47:07', 0),
('51d7d425-6a82-0dfc-31ff-64ed1973f685', '96611c3f-0542-6304-6faa-64ed18d1687c', 'list', 0, '2023-08-28 22:17:53', 1),
('51f45b4e-af64-2c53-49a6-64e3fa6e1b7b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '28cc7a99-835f-0b83-c3d5-643d4250f93e', -99, '2023-09-25 01:52:49', 0),
('52114c73-72e7-6b37-82fd-64ed1c4de243', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd0846199-52f1-6cbe-bc3f-643d4256389b', -99, '2023-08-28 22:17:09', 0),
('52212f74-6612-c742-afe6-64ed19dfa92a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a80219a7-04d9-0770-c566-643d42fb4f25', 0, '2023-08-28 22:17:53', 1),
('523f754b-039e-07dc-4a7c-64e3fc26e96b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a384ebfd-f798-c305-2eeb-643d426219fc', -98, '2023-09-25 01:47:07', 0),
('526416d9-3fcc-66fa-fcb1-64e3fa3c92b1', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1ce1b0d4-5886-d6de-96b1-643d42c82330', -99, '2023-09-25 01:52:49', 0),
('5272079c-b290-a540-f26f-64e3fca2f8a5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '632a05c5-e1e6-120f-2a29-643d4279bdf6', -99, '2023-09-25 01:47:07', 0),
('52748230-ef26-2017-f05c-64ed1cabcab6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8871bbfa-fb5c-f7a2-bb8f-643d42cad534', -98, '2023-08-28 22:17:09', 0),
('527d03b9-6931-7a29-4b65-64ed19b00860', '96611c3f-0542-6304-6faa-64ed18d1687c', 'massupdate', 0, '2023-08-28 22:17:53', 1),
('52c3ac81-932a-bb82-6097-64ed19525a20', '96611c3f-0542-6304-6faa-64ed18d1687c', 'aefd8727-d3a4-eb12-1a77-643d422403b5', 0, '2023-08-28 22:17:53', 1),
('52f58180-bf03-4370-735f-64e3fa13f16c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'cd64ad84-2065-c303-dc5a-643d42ddbd6c', -98, '2023-09-25 01:52:49', 0),
('530e6286-8886-2cee-73e6-64ed19f70905', '96611c3f-0542-6304-6faa-64ed18d1687c', 'view', 0, '2023-08-28 22:17:53', 1),
('533dabd7-e56f-8e1e-368c-64ed1cc1444b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '944f8ed7-cf99-be1f-33d9-643d42b4466f', -99, '2023-08-28 22:17:09', 0),
('53462712-d1c0-efe7-5add-64e3fcdd871f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'adb35373-f666-2910-3564-643d42c2f959', -99, '2023-09-25 01:47:07', 0),
('53535390-7841-1f63-d79f-64ed19300d40', '96611c3f-0542-6304-6faa-64ed18d1687c', 'aca6bba4-da7e-4ee0-6d5c-643d42429b0d', 0, '2023-08-28 22:17:53', 1),
('536b59bd-41a6-54b8-f8f5-64e3fa93e5d9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd921d2fb-21cb-4380-3393-643d42fc41c5', -99, '2023-09-25 01:52:49', 0),
('53cf2359-5563-97ca-b1fd-64e3fc1f2a58', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'ab15d5db-f931-aa5d-86e7-643d425ff462', -99, '2023-09-25 01:47:07', 0),
('53de1568-f29c-7ef4-35c3-64ed1c6604de', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '91147876-d8b7-1217-59b0-643d42723378', -99, '2023-08-28 22:17:09', 0),
('53ef5e6a-8c0b-e191-2821-64ed19e5e32e', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a5d71559-5ef5-2513-8bea-643d424b3e1c', 0, '2023-08-28 22:17:53', 1),
('53fad068-44ff-57b3-8ebe-64e3fa5fe076', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd6b8f4d9-6121-3625-daaa-643d426a67f6', -99, '2023-09-25 01:52:49', 0),
('54242ac5-a2f8-841e-0c72-64ed19ef8ead', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd27e17e7-c4fd-e1e1-c731-643d42acf69e', 0, '2023-08-28 22:17:53', 1),
('54390684-ace0-02e5-b0f5-64e3fc288190', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b3303191-95a1-ab43-b3b4-643d42ca3eca', -99, '2023-09-25 01:47:07', 0),
('5442fc7e-0b96-b45c-8b3b-64ed1c54cc13', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '99ddafa8-9321-0e64-b46d-643d421c50aa', -99, '2023-08-28 22:17:09', 0),
('546ea6b3-d383-bdf2-785b-64ed1965814a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b26aa161-75e7-bbfa-eebb-643d425821a6', 0, '2023-08-28 22:17:53', 1),
('5478910d-f278-16e6-38a0-64e3fabcb5c7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e2fea466-52ff-d091-ddb5-643d42d87664', -99, '2023-09-25 01:52:49', 0),
('548da400-9fe7-3920-456e-64ed199271ef', '96611c3f-0542-6304-6faa-64ed18d1687c', 'df0a3935-100e-98c6-66ff-643d42f41dfe', 0, '2023-08-28 22:17:53', 1),
('54ebb0a9-1457-6bfd-290a-64ed1cca9f50', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '97390838-1340-e12b-b0ec-643d42ea9fcf', -99, '2023-08-28 22:17:09', 0),
('54fbbc7e-0bef-a0c9-1969-64ed19e80d80', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a28f3535-a6b1-3bb8-6dac-643d4295ac92', 0, '2023-08-28 22:17:53', 1),
('5507ea3f-5685-8005-b7f9-64e3faf40b6c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'dfe88f27-1c49-c87e-054e-643d42b1b613', -99, '2023-09-25 01:52:49', 0),
('55178b13-19f4-aee1-e2a7-64ed1944bbfb', '96611c3f-0542-6304-6faa-64ed18d1687c', 'dc4d9338-5ba9-70a2-ac3c-643d42aeaa81', 0, '2023-08-28 22:17:53', 1),
('5539b8c7-03f5-9fb3-b575-64e3fc838b64', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b0653f3d-944e-9630-0256-643d424223c6', -99, '2023-09-25 01:47:07', 0),
('5568e24b-be5a-c95e-cad0-64ed1c09cc9e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8e2fc654-f1dd-c2a6-9b7b-643d4238d82b', -99, '2023-08-28 22:17:09', 0),
('5579e443-90ab-0799-9a17-64ed197f7dd7', '96611c3f-0542-6304-6faa-64ed18d1687c', '7e8f7007-468e-1287-7b73-643d42d28237', 0, '2023-08-28 22:17:53', 1),
('55894d7c-6edc-2dda-5a99-64e3faa29ac8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd398d6c5-1fd5-2558-ea8b-643d42febc88', -99, '2023-09-25 01:52:49', 0),
('5592ee44-43ac-b312-04ec-64ed19622cfd', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e53dba22-acb2-83d5-627a-643d42c9beaf', 0, '2023-08-28 22:17:53', 1),
('55c4302d-19e4-19fa-4a01-64e3fc1f181e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a8a27bd3-2c66-7e50-01b5-643d424e3274', -99, '2023-09-25 01:47:07', 0),
('55f2c29b-0692-71fb-79b7-64ed1c71fe1d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9c2c3603-e4f2-6f36-4f94-643d42967850', -99, '2023-08-28 22:17:09', 0),
('560aed0b-4058-60ed-5696-64ed1906ae97', '96611c3f-0542-6304-6faa-64ed18d1687c', '86102df3-4147-288f-1c90-643d425d33a1', 0, '2023-08-28 22:17:53', 1),
('56173389-b373-e91a-301f-64e3fa3dee3d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e60d1c08-d1f6-f37e-4480-643d42b5b139', -99, '2023-09-25 01:52:49', 0),
('561f61c4-777a-46df-fae9-64ed196652a9', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e2086b2a-0739-56bf-2bc9-643d42735c6b', 0, '2023-08-28 22:17:53', 1),
('563923d2-f941-b12e-9f5e-64e3fc01a726', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b5f4016f-a91b-b857-1710-643d42f986a1', -99, '2023-09-25 01:47:07', 0),
('563c09b7-0242-44d6-e48c-64e3faf14b03', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'bde704f5-761a-4a07-80d6-643d425c7bb1', -99, '2023-09-25 01:52:49', 0),
('5668fb6d-68ca-851c-1c20-64ed1c5beeaa', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8b6a5436-1e65-d670-4d71-643d42066012', -99, '2023-08-28 22:17:09', 0),
('567f9f5f-1e0e-1f76-82a4-64ed19b471bb', '96611c3f-0542-6304-6faa-64ed18d1687c', '843db447-fb52-52aa-19be-643d42a5ec94', 0, '2023-08-28 22:17:53', 1),
('56b81d54-8ac7-cfc6-7275-64e3fa50f9bb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd0846199-52f1-6cbe-bc3f-643d4256389b', -99, '2023-09-25 01:52:49', 0),
('56be0848-ccfa-62e9-5d12-64ed19a23170', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd95bed9b-5d0c-6e28-ae45-643d42d85777', 0, '2023-08-28 22:17:53', 1),
('56c3fb1a-15ca-d126-c963-64e3fc75d7e3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a61fea35-60aa-14d9-6125-643d42442c8a', -99, '2023-09-25 01:47:07', 0),
('56fd081d-c91d-4999-0544-64ed1ccb48fa', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b5440a3c-120e-44cf-52d2-643d425bf629', 89, '2023-08-28 22:17:09', 0),
('5712e80a-b34c-1cc2-7e3b-64ed19557f51', '96611c3f-0542-6304-6faa-64ed18d1687c', '8b003b5c-f841-a280-a25d-643d42886ffc', 0, '2023-08-28 22:17:53', 1),
('572a0272-e6d4-8e92-47b3-64ed19f43b8a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e7cc1213-b0f7-69e2-9a40-643d42b66258', 0, '2023-08-28 22:17:53', 1),
('573ad442-08e9-0309-017c-64e3fca9f62c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '50262b93-bc6d-6811-c326-643d423e7b56', -98, '2023-09-25 01:47:07', 0),
('57423880-9645-e1d1-ac0b-64e3fabc63eb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8871bbfa-fb5c-f7a2-bb8f-643d42cad534', -98, '2023-09-25 01:52:49', 0),
('576e0b40-cf4c-2cd8-e8c6-64ed198c5bad', '96611c3f-0542-6304-6faa-64ed18d1687c', '7c59d71b-187b-8b54-1f6e-643d42eaaf3f', 90, '2023-08-28 22:17:53', 1),
('57765d63-2799-4cd9-7cc5-64ed1c0edeae', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c12f12ed-d0de-833b-28dc-643d424439cc', 90, '2023-08-28 22:17:09', 0),
('57871a9d-35b5-ff7e-634e-64ed190e7296', '96611c3f-0542-6304-6faa-64ed18d1687c', '87e4343b-106e-c1af-7744-643d426f55cc', 0, '2023-08-28 22:17:53', 1),
('579e0b13-4975-45cf-8896-64ed1c393dc5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9caf10c5-f7e9-e47c-0069-643d42f09040', -99, '2023-08-28 22:17:09', 0),
('57b42da7-590b-3949-5b84-64ed19164155', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd6dab8c7-545e-1d33-66cc-643d426aeb6a', 0, '2023-08-28 22:17:53', 1),
('57c362fc-455d-ad33-1b07-64e3fc9acc3c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5983d8b0-9b7b-9a13-24fd-643d42b163f2', -99, '2023-09-25 01:47:07', 0),
('57e8a389-0fc1-a427-9ff5-64e3fa70284d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '944f8ed7-cf99-be1f-33d9-643d42b4466f', -99, '2023-09-25 01:52:49', 0),
('580beae2-15cd-a789-e2cd-64ed1c8b8fe3', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'be37d83f-5fd1-4e2a-eab4-643d4232e6d6', 90, '2023-08-28 22:17:09', 0),
('583b06a7-be8c-1441-6251-64e3fc1c0361', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '57581f24-ab95-43da-f130-643d420ee578', -99, '2023-09-25 01:47:07', 0),
('583bb584-bedf-31fe-6fd4-64ed1943bffc', '96611c3f-0542-6304-6faa-64ed18d1687c', '827fa663-54c1-d0b9-ab91-643d424b6552', 0, '2023-08-28 22:17:53', 1),
('5852b962-6a77-c470-6b0a-64e3fa8d2ad5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '91147876-d8b7-1217-59b0-643d42723378', -99, '2023-09-25 01:52:49', 0),
('585bb981-917e-76d5-e309-64ed194fde7e', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b34f61c9-3610-a3b2-b4ea-643d42a5320d', 0, '2023-08-28 22:17:53', 1),
('5876b526-5eee-41fe-12f9-64ed1c8f02a5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c5bc5513-c14e-4816-44b1-643d424385ff', -99, '2023-08-28 22:17:09', 0),
('58c365d2-42f7-f81b-3087-64e3fce63004', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5e2003a6-cb62-64c2-b317-643d42284b57', -99, '2023-09-25 01:47:07', 0),
('58e2305d-52af-ca28-1950-64e3fabbd57a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '99ddafa8-9321-0e64-b46d-643d421c50aa', -99, '2023-09-25 01:52:49', 0),
('58e931db-b3bf-dd1f-d185-64ed19b5697a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'be50eb6d-eac1-fd6a-c799-643d42e18b8c', 0, '2023-08-28 22:17:53', 1),
('58ff4622-5d06-cea4-a6e9-64ed1cb86c61', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c384f6b9-e02e-515d-e52b-643d4205628f', -99, '2023-08-28 22:17:09', 0),
('5939c626-191d-2eef-d57e-64e3fc06eb3b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5b90a6bd-e8cc-5201-6a90-643d4287774a', -99, '2023-09-25 01:47:07', 0),
('594f1494-6763-6eff-0343-64ed19a9cb4a', '96611c3f-0542-6304-6faa-64ed18d1687c', '8d78ea83-ccff-f139-7cc8-643d42c348c5', 0, '2023-08-28 22:17:53', 1),
('595fb44d-a6f4-0deb-6147-64e3fab217b1', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '97390838-1340-e12b-b0ec-643d42ea9fcf', -99, '2023-09-25 01:52:49', 0),
('59689080-7eb1-2821-436a-64ed192aa54e', '96611c3f-0542-6304-6faa-64ed18d1687c', 'bbf93427-6f9c-3267-0889-643d42a2b83e', 0, '2023-08-28 22:17:53', 1),
('59839c8d-ce8e-63ab-7cc8-64ed1c498a79', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'bb2f25a7-4a02-2c7f-51d4-643d420cf04b', -99, '2023-08-28 22:17:09', 0),
('59cabf6b-6022-cf2d-eb22-64e3fc74104f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '55961af2-5f21-9d83-7af2-643d42520528', -99, '2023-09-25 01:47:07', 0),
('59f1a4e6-8742-0f34-7d97-64ed194a9bf2', '96611c3f-0542-6304-6faa-64ed18d1687c', '80dd1457-331f-b814-dddc-643d4227054e', 0, '2023-08-28 22:17:53', 1),
('59f5a434-f147-1918-a955-64ed19ff5b4d', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c472b375-d3dd-cfbc-5bdf-643d42669ee1', 0, '2023-08-28 22:17:53', 1),
('5a40776b-6cd0-c63c-18e3-64e3fc71ebc2', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '60d7a73d-9ae7-91dc-af03-643d4211000b', -99, '2023-09-25 01:47:07', 0),
('5a580dfc-533c-eae5-2a5c-64ed1c1d67ed', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c7b1cd44-3c15-4121-e0d4-643d427323bc', -99, '2023-08-28 22:17:09', 0),
('5a5b1b64-fee1-9b7a-22d5-64ed19f1d52b', '96611c3f-0542-6304-6faa-64ed18d1687c', '3831706e-e3dd-525a-6bfc-643d426ab45b', 0, '2023-08-28 22:17:53', 1),
('5a6de62b-244f-b67e-9796-64ed19ac35a4', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c15cf080-6f3d-ff62-93e5-643d42c56c38', 0, '2023-08-28 22:17:53', 1),
('5acb42f1-e194-3800-1b1d-64e3fc033579', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '534a269b-da64-9c46-6dbc-643d42133245', -99, '2023-09-25 01:47:07', 0),
('5adde471-5c89-4c34-4b1b-64e3fa9a1aee', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8e2fc654-f1dd-c2a6-9b7b-643d4238d82b', -99, '2023-09-25 01:52:49', 0),
('5ae481a0-dd52-01f4-f3e8-64ed19497b90', '96611c3f-0542-6304-6faa-64ed18d1687c', '4247a7e7-ff7c-b050-20ca-643d427e9fcf', 0, '2023-08-28 22:17:53', 1),
('5af3a284-9dd8-58c2-14f5-64ed1cc1c9e9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b8bac30b-3e25-7eb7-1671-643d42f09a8e', 90, '2023-08-28 22:17:09', 0),
('5afb1896-1d96-0130-fd66-64ed19023baf', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b939ff6d-476f-401b-6e5b-643d42d131a4', 0, '2023-08-28 22:17:53', 1),
('5b0f006f-688c-04e8-04cb-64e3fc19b729', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4913190c-54d7-3be4-37c8-643d423d7161', -99, '2023-09-25 01:47:07', 0),
('5b412f53-3309-215c-3198-64e3fc343d84', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8610deb7-0f6c-975b-995c-643d42bc906e', -98, '2023-09-25 01:47:07', 0),
('5b61cd73-d41e-d056-bd63-64ed19241702', '96611c3f-0542-6304-6faa-64ed18d1687c', '4026aa1a-1037-4bef-0383-643d424e9de6', 0, '2023-08-28 22:17:53', 1),
('5b7080a9-c67f-8928-cb4d-64ed1ca4ac65', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'cf525505-651c-f24e-aab4-643d4248f835', 89, '2023-08-28 22:17:09', 0),
('5b757021-d86c-0989-d0e9-64ed19c7a25e', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c7aac132-5fa8-b933-9991-643d4252c967', 0, '2023-08-28 22:17:53', 1),
('5b78cfb2-74a7-4229-cce8-64e3fa9b6fab', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9c2c3603-e4f2-6f36-4f94-643d42967850', -99, '2023-09-25 01:52:49', 0),
('5bcbd118-5370-fe4b-b340-64e3fc9422bb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8ff01bc2-19a5-801a-f2cd-643d42c340b8', -99, '2023-09-25 01:47:07', 0),
('5bf0f9af-5be5-8a7e-58da-64ed19e6756e', '96611c3f-0542-6304-6faa-64ed18d1687c', '46a502c7-947c-aa28-4377-643d42239093', 0, '2023-08-28 22:17:53', 1),
('5bfafd62-7a59-47c7-8e98-64ed1c27ae4f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'db3216f4-7d45-8fb1-5111-643d4224801f', 90, '2023-08-28 22:17:09', 0),
('5c038339-0a48-b2df-9a2c-64ed19cc92a8', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b6c26ca5-d988-f9bb-472b-643d42e1070a', 0, '2023-08-28 22:17:53', 1),
('5c04bb2e-2a71-9af0-2e28-64e3faaa75bf', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8b6a5436-1e65-d670-4d71-643d42066012', -99, '2023-09-25 01:52:49', 0),
('5c3f0259-51f4-76d0-7ddf-64e3fc720dc6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b34f61c9-3610-a3b2-b4ea-643d42a5320d', -98, '2023-09-25 01:47:07', 0),
('5c4263fa-6e51-0647-44d2-64e3fcaacad8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8d549135-b8b5-8a0a-5e5c-643d427ec496', -99, '2023-09-25 01:47:07', 0),
('5c6810f2-336f-a648-759d-64ed19d121af', '96611c3f-0542-6304-6faa-64ed18d1687c', '447ee460-89cc-d8cb-3fe6-643d42c74ca4', 0, '2023-08-28 22:17:53', 1),
('5c9c58b2-3027-84c4-718d-64ed1caab40e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd8d127e8-a1de-0e2b-042a-643d421dc0ea', 90, '2023-08-28 22:17:09', 0),
('5ca155fa-7dbe-babf-3b70-64ed19aa42d3', '96611c3f-0542-6304-6faa-64ed18d1687c', '4525f0f3-fadd-0d80-971a-645032f47b39', 0, '2023-08-28 22:17:53', 1),
('5ca6350e-dd0c-0647-d08d-64e3fa3261f5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b5440a3c-120e-44cf-52d2-643d425bf629', 89, '2023-09-25 01:52:49', 0),
('5ccb8cbd-36d6-f1a0-bd98-64e3fc3b0826', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9627d44d-b177-e8db-c36c-643d42bb584c', -99, '2023-09-25 01:47:07', 0),
('5d074cdb-eff3-fb60-c4af-64ed1cf7b11d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'df8c42c9-3aee-be58-671d-643d4235d873', -99, '2023-08-28 22:17:09', 0),
('5d432291-dfb4-99c3-11fa-64e3fcf1f972', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '92902c7c-b4af-90c8-727c-643d42206517', -99, '2023-09-25 01:47:07', 0),
('5d5007b4-60f6-04ce-5ea4-64ed1923212c', '96611c3f-0542-6304-6faa-64ed18d1687c', '318d1271-d76a-ef16-0032-64503264116c', 0, '2023-08-28 22:17:53', 1),
('5d540260-b980-4dd2-0937-64e3fae0e2e9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c12f12ed-d0de-833b-28dc-643d424439cc', 90, '2023-09-25 01:52:49', 0),
('5dcb33cb-7a09-695b-5abe-64e3fceb53b1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8b063eae-50bb-0a84-9c06-643d4219c6f3', -99, '2023-09-25 01:47:07', 0),
('5dd37903-0606-e92a-adde-64ed1cd9e41b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'dd797512-f07f-81a9-d6fb-643d424037ec', -99, '2023-08-28 22:17:09', 0),
('5dde0202-8893-24c1-9dac-64ed19448a47', '96611c3f-0542-6304-6faa-64ed18d1687c', '2e369573-2121-645b-4df4-645032b3b802', 0, '2023-08-28 22:17:53', 1),
('5de32fe4-9347-feb6-c850-64e3fa635d1f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'be37d83f-5fd1-4e2a-eab4-643d4232e6d6', 90, '2023-09-25 01:52:49', 0),
('5e48cd6f-689a-aafd-1b7f-64e3fc50cac8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '97e985a8-e38b-b9c4-a848-643d4234983e', -99, '2023-09-25 01:47:07', 0),
('5e592b08-cf18-c091-14d6-64ed1c1cf4de', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd6a22a53-6b00-a901-df6f-643d42fecebc', -99, '2023-08-28 22:17:09', 0),
('5e60a1cd-90ba-3ada-f507-64e3fae0f73a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c5bc5513-c14e-4816-44b1-643d424385ff', 90, '2023-09-25 01:52:49', 0),
('5ebc0b96-45bf-e87b-d7a1-64e3fafb095b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5f1f04da-595b-b172-938d-643d42df6264', 89, '2023-09-25 01:52:49', 0),
('5ef12983-c187-029f-9ac5-64e3fa302013', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c384f6b9-e02e-515d-e52b-643d4205628f', 90, '2023-09-25 01:52:49', 0),
('5efd6a78-18a1-2ee2-aa77-64ed1c198a6a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e1d2a11c-d5f5-b89b-7766-643d42b1e357', -99, '2023-08-28 22:17:09', 0),
('5f1050c7-310f-8958-38c1-64e3fcdb0f12', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '887b72db-5b23-adb8-8474-643d420c887b', -99, '2023-09-25 01:47:07', 0),
('5f9360ac-a8fc-ebe7-aba2-64ed1c50f424', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd3cd96e4-a704-4034-23e1-643d421d60bb', 90, '2023-08-28 22:17:09', 0),
('5f9a5926-e50c-8ea3-ecdc-64e3fc730b5d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6d8c1eb5-77bf-1078-0ded-643d4250cc3a', -98, '2023-09-25 01:47:07', 0),
('5f9dfb15-60f3-d563-d61c-64e3fa76b908', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'bb2f25a7-4a02-2c7f-51d4-643d420cf04b', -99, '2023-09-25 01:52:49', 0),
('60072e95-4ed6-fa3d-7f38-64ed1c2f24ef', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '358a3d09-f62c-dd9b-621f-643d424b9a8d', -98, '2023-08-28 22:17:09', 0),
('60105317-36de-2203-e472-64e3fc74eb38', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '789db405-0dfc-c174-f39b-643d4251e398', -99, '2023-09-25 01:47:07', 0),
('60165644-55a6-de58-b8d2-64e3fafce0bc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c7b1cd44-3c15-4121-e0d4-643d427323bc', -99, '2023-09-25 01:52:49', 0),
('60307827-8520-a5be-995a-64ed19f42117', '96611c3f-0542-6304-6faa-64ed18d1687c', '397323a3-751e-025e-d468-645032b314bc', 0, '2023-08-28 22:17:53', 1),
('60880a10-5d9c-1526-889d-64ed193ab6df', '96611c3f-0542-6304-6faa-64ed18d1687c', '82b34683-b1d4-f717-7e29-643d429edb24', 0, '2023-08-28 22:17:53', 1),
('609ad8e3-9505-f194-38c4-64e3fc929f8c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '759687e0-f6fd-1e1e-5d5b-643d42f74861', -99, '2023-09-25 01:47:07', 0),
('60a676ff-aa07-197f-a393-64e3fa359589', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b8bac30b-3e25-7eb7-1671-643d42f09a8e', 90, '2023-09-25 01:52:49', 0),
('60b06869-6ec5-cecd-fdab-64ed1c1e1612', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3fb6b234-b3fc-d865-8b0d-643d42afa345', -99, '2023-08-28 22:17:09', 0),
('60c279a9-0797-6419-b901-64ed19ba8a85', '96611c3f-0542-6304-6faa-64ed18d1687c', '3db93a00-845c-f69d-8af7-643d4278deec', 0, '2023-08-28 22:17:53', 1),
('6111aa8f-3d5a-60da-0e46-64e3fc341d1b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7eca18ba-036f-045c-aa09-643d4290642d', -99, '2023-09-25 01:47:07', 0),
('6121d99d-756f-2892-3775-64ed1c709f61', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3d18525f-9c6e-3ba6-2300-643d42c12f39', -99, '2023-08-28 22:17:09', 0),
('612efcde-36c3-1c3e-1c4d-64e3fa48c39b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'cf525505-651c-f24e-aab4-643d4248f835', 89, '2023-09-25 01:52:49', 0),
('6138f151-12f5-8eed-8b93-64ed19d41b36', '96611c3f-0542-6304-6faa-64ed18d1687c', '48de9d1b-7318-2bab-caab-643d4237ce9b', 0, '2023-08-28 22:17:53', 1),
('619aada4-3335-e015-8698-64e3fccdbe37', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7c5b41ea-5f22-3a09-faf0-643d42adbc2b', -99, '2023-09-25 01:47:07', 0),
('61a1037f-c9d9-839d-b616-64ed1c752eb1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '90d70a18-7930-6538-3fbc-643d42c545f5', -98, '2023-08-28 22:17:09', 0),
('61b1b0c2-f97a-868f-f895-64ed1ccdb966', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '44b52419-0530-b7e2-553e-643d42a731f6', -99, '2023-08-28 22:17:09', 0),
('61c81527-1f6d-c16c-703f-64ed1916c40f', '96611c3f-0542-6304-6faa-64ed18d1687c', '3b22fd65-0d32-52f6-9244-643d4230c3ea', 0, '2023-08-28 22:17:53', 1),
('61d3a5eb-0e50-443e-6ddc-64e3faa3bf3d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'db3216f4-7d45-8fb1-5111-643d4224801f', 90, '2023-09-25 01:52:49', 0),
('621261c8-bc99-dda0-c6e7-64e3fc8d8428', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '72d2a522-d27e-0bd0-f35b-643d42fe0f84', -99, '2023-09-25 01:47:07', 0),
('621cc3b7-ecb6-5579-1a61-64ed1980304b', '96611c3f-0542-6304-6faa-64ed18d1687c', '35bb1871-691f-03cd-b52d-645032f3a082', 0, '2023-08-28 22:17:53', 1),
('62283529-1b9c-6307-de81-64ed1c119e31', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '422cc733-699e-8767-48c0-643d428de70d', -99, '2023-08-28 22:17:09', 0),
('623e3d0e-faaf-3493-c4e1-64ed19c45aed', '96611c3f-0542-6304-6faa-64ed18d1687c', '23b30fde-2c5f-8bf0-6e40-643d42e2877d', 0, '2023-08-28 22:17:53', 1);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('625c2d5c-a170-17f1-4bd0-64e3fa066827', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd8d127e8-a1de-0e2b-042a-643d421dc0ea', 90, '2023-09-25 01:52:49', 0),
('629a86e5-91e6-2e4a-5727-64e3fc3fbdf0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '81745005-8785-0ac3-6fcb-643d4246c161', -99, '2023-09-25 01:47:07', 0),
('62c82a27-3033-778f-0f80-64ed19b5c228', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e02607b5-4d26-a9e1-c3a4-643d427ff59b', 0, '2023-08-28 22:17:53', 1),
('62e80e20-bd32-09b8-e5bb-64e3fc8a4be3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6b162634-c3f4-7db3-2fe0-643d4228315d', -99, '2023-09-25 01:47:07', 0),
('62ee205e-0035-ad1d-ea78-64ed191795b4', '96611c3f-0542-6304-6faa-64ed18d1687c', '2a92fe21-ed84-31a6-5a40-6450328f0189', 0, '2023-08-28 22:17:53', 1),
('62ef7145-74eb-3a38-abc9-64ed1c7359c9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3abd6f75-729c-219e-7c5d-643d42a08b49', -99, '2023-08-28 22:17:09', 0),
('62fed2c7-a818-3536-98b3-64e3fa25e0b5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'df8c42c9-3aee-be58-671d-643d4235d873', 90, '2023-09-25 01:52:49', 0),
('63186e1a-c032-6e0f-8f11-64e3fcc8b116', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '70575131-f443-c2fa-a007-643d42340c2d', -99, '2023-09-25 01:47:07', 0),
('6344cde9-86dd-5eab-6e56-64ed19aee820', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c18500a0-1ee8-6e8a-c264-643d420f8646', 0, '2023-08-28 22:17:53', 1),
('6379e96e-a8c6-5984-252e-64ed1c88b728', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '479b5deb-6c04-228c-1130-643d425465a8', -99, '2023-08-28 22:17:09', 0),
('638a2199-369f-1c2b-4f14-64e3fa94a00c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'dd797512-f07f-81a9-d6fb-643d424037ec', 90, '2023-09-25 01:52:49', 0),
('63b9dedf-1e70-72d0-1568-64e3fc7ea4b2', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7b4ccd67-fe8c-84aa-03de-643d42f343fb', -98, '2023-09-25 01:47:07', 0),
('63bb944c-e32e-36d6-8559-64ed1968a98a', '96611c3f-0542-6304-6faa-64ed18d1687c', '3c602b17-cd3f-c64f-57ce-645032225655', 0, '2023-08-28 22:17:53', 1),
('63cd6986-4bc9-f31a-3ffa-64ed1964aa9c', '96611c3f-0542-6304-6faa-64ed18d1687c', '11bfb468-984e-e90f-f4c7-643d4236199d', 0, '2023-08-28 22:17:53', 1),
('63f5a4cd-7566-fb18-7e03-64ed1c1f2682', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '38ba949d-3ee7-4c05-2f9f-643d42f5e185', -99, '2023-08-28 22:17:09', 0),
('63ffe957-ca54-a9d5-81e9-64e3fa186c50', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd6a22a53-6b00-a901-df6f-643d42fecebc', -99, '2023-09-25 01:52:49', 0),
('643f91ca-97ad-7ca8-27a8-64ed19ff5887', '96611c3f-0542-6304-6faa-64ed18d1687c', '275dcbaf-2cb1-556e-79c3-645032ccc2c6', 0, '2023-08-28 22:17:53', 1),
('645d89b3-c1cd-67d0-8e2e-64e3fc669360', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '87d87562-5212-c676-c24d-643d42484f9c', -99, '2023-09-25 01:47:07', 0),
('6476bae1-e9d7-76f9-c538-64ed19e732a1', '96611c3f-0542-6304-6faa-64ed18d1687c', 'fcad046b-5555-2362-e977-643d42eb75bb', 0, '2023-08-28 22:17:53', 1),
('6486e07c-726d-37f6-15e5-64ed1cd8babc', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'f244c6ac-f7a0-1bed-f693-643d4235765c', -98, '2023-08-28 22:17:09', 0),
('648931e6-0c06-2e20-e26a-64e3fa997348', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e1d2a11c-d5f5-b89b-7766-643d42b1e357', -99, '2023-09-25 01:52:49', 0),
('64d5724b-191a-aa4b-4bce-64ed1958deea', '96611c3f-0542-6304-6faa-64ed18d1687c', '93cba4cf-a547-3319-305b-643d424f4562', 0, '2023-08-28 22:17:53', 1),
('64f5d025-06ec-e48a-cb1c-64ed1ce9999e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '898f00c6-9cfa-713e-e364-643d427d05ec', -99, '2023-08-28 22:17:09', 0),
('64f9906c-a2fc-2058-1e3d-64ed190bf9a8', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a5b90652-428b-98dc-8fbd-643d42217932', 0, '2023-08-28 22:17:53', 1),
('656b429f-e707-3cab-3eb9-64ed192d5e6f', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a1934fbd-d512-c91c-a908-643d42a03610', 0, '2023-08-28 22:17:53', 1),
('657f7507-5855-0850-5631-64ed1c6ab6da', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '57690809-b91c-6cd2-5ca7-643d42effc68', -99, '2023-08-28 22:17:09', 0),
('65850201-15ac-edc6-a582-64ed19f59ab4', '96611c3f-0542-6304-6faa-64ed18d1687c', '13bddec6-14e9-215b-5602-643d42567829', 0, '2023-08-28 22:17:53', 1),
('65ce6c9e-0df8-9cc4-9808-64ed19ba938d', '96611c3f-0542-6304-6faa-64ed18d1687c', '9ec1bbe9-8908-3a32-64e0-643d42016853', 0, '2023-08-28 22:17:53', 1),
('65e89c20-4d9a-ee58-ae9a-64e3fae87e0c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd3cd96e4-a704-4034-23e1-643d421d60bb', 90, '2023-09-25 01:52:49', 0),
('65f2bb14-8f16-d41b-7659-64e3fcfa52c0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '82bd69ae-e5e1-bf8e-5afa-643d429b5706', -99, '2023-09-25 01:47:07', 0),
('65f7335b-352e-d4e6-1ca6-64ed1c090f3b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '10473511-7921-dbd6-22f1-643d429a330e', -99, '2023-08-28 22:17:09', 0),
('662b3f5c-27eb-38f8-ff73-64ed19a39d06', '96611c3f-0542-6304-6faa-64ed18d1687c', '86030232-554b-3912-ff6d-643d429e6db0', 0, '2023-08-28 22:17:53', 1),
('66773885-b669-5e18-01e8-64e3fae133e5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '358a3d09-f62c-dd9b-621f-643d424b9a8d', -98, '2023-09-25 01:52:49', 0),
('667ce597-7aed-fc2d-93ca-64e3fc2e5352', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8d66fe63-7330-c0ed-e13a-643d42583d6a', -99, '2023-09-25 01:47:07', 0),
('667f85d0-b111-9526-ae5f-64ed1c4daf64', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'cefc0924-8147-24d4-76c5-643d42d653bc', -99, '2023-08-28 22:17:09', 0),
('669604c5-c1e1-394e-addb-64e3fad0aff1', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6f4b56ee-6b9a-6582-d189-643d42b55275', -99, '2023-09-25 01:52:49', 0),
('66979b83-92e0-f828-f391-64ed1995e164', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a645e477-20d8-4a94-b19b-643d42e400be', 0, '2023-08-28 22:17:53', 1),
('66b786c3-6911-6571-8697-64ed19055dad', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b313e01d-06a7-5419-82d0-643d42d66fd0', 0, '2023-08-28 22:17:53', 1),
('66ea474a-43e6-c4e8-dc57-64ed1cb25bb5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '29ec0d43-0049-56ff-8f01-643d423be8ac', -99, '2023-08-28 22:17:09', 0),
('66f43685-37d6-5127-90bf-64e3fc558846', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8aeb9362-4be9-112d-3319-643d425a76c4', -99, '2023-09-25 01:47:07', 0),
('66fb2f45-a8e6-d0a0-facd-64e3fabd734a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3fb6b234-b3fc-d865-8b0d-643d42afa345', -99, '2023-09-25 01:52:49', 0),
('67139c6a-b57a-9f0c-a894-64ed19404e8d', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a420101f-a651-cbd9-32ff-643d42707891', 0, '2023-08-28 22:17:53', 1),
('675ac70b-04ab-fe89-379a-64ed19110219', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c0b7a82f-61b7-a942-0e58-643d4272b826', 0, '2023-08-28 22:17:53', 1),
('6773c939-f783-5b38-b8bd-64ed1c382134', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '12a235ee-1633-f953-b38c-643d42067f0b', -99, '2023-08-28 22:17:09', 0),
('677ca325-8d9d-56b2-84b4-64e3fcae4b63', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '806483d0-8c3c-e4b9-d286-643d42a87ca9', -99, '2023-09-25 01:47:07', 0),
('67820b5a-a49f-db9c-4811-64e3fcf5395e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'be50eb6d-eac1-fd6a-c799-643d42e18b8c', -99, '2023-09-25 01:47:07', 0),
('6789e39d-76f7-267c-b15b-64e3fa2a9fbb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3d18525f-9c6e-3ba6-2300-643d42c12f39', -99, '2023-09-25 01:52:49', 0),
('679da836-b5c2-ba81-f24a-64ed19b1956a', '96611c3f-0542-6304-6faa-64ed18d1687c', '9b7bcef8-5273-f72c-375f-643d422e3f7f', 0, '2023-08-28 22:17:53', 1),
('67c374fe-d41a-b27c-c4c2-64ed1986471b', '96611c3f-0542-6304-6faa-64ed18d1687c', 'bd333d73-94fc-a74c-ff83-643d422bf2f9', 0, '2023-08-28 22:17:53', 1),
('67f401c3-c98d-0df7-0506-64e3fc25d2c5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '909673a2-b7ff-26ff-5ea5-643d423a691c', -99, '2023-09-25 01:47:07', 0),
('68005a53-eca0-c66b-b21e-64e3fa7f6169', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '44b52419-0530-b7e2-553e-643d42a731f6', -99, '2023-09-25 01:52:49', 0),
('681391c9-9d37-bcb5-f580-64ed1938951d', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a83a21b7-d419-b6ce-328b-643d42007b1a', 0, '2023-08-28 22:17:53', 1),
('6816aef8-cf4d-b895-106e-64ed1cda5afe', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b0400a95-28b5-65a1-c17a-643d42a702ef', -99, '2023-08-28 22:17:09', 0),
('684c35bb-8761-ff92-2228-64ed197a1883', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c7abc2fc-bfdf-edba-b560-643d42bfb7c8', 0, '2023-08-28 22:17:53', 1),
('687cd43c-b5d5-c587-719b-64e3fc2713d3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7e02fff5-0859-2893-6a2f-643d42c32f9e', -99, '2023-09-25 01:47:07', 0),
('689d087c-8f5d-9473-de28-64ed1960bde4', '96611c3f-0542-6304-6faa-64ed18d1687c', '9857df44-554e-ebdb-01bf-643d4249e2d0', 0, '2023-08-28 22:17:53', 1),
('689fcf83-4247-70db-84eb-64ed1cd3f476', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'cfc7767b-a8e2-316d-0760-643d424c79f4', -98, '2023-08-28 22:17:09', 0),
('68c72c88-f0de-e4e1-ae47-64e3fa7c7b30', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '422cc733-699e-8767-48c0-643d428de70d', -99, '2023-09-25 01:52:49', 0),
('68cae2f2-3f5c-f45d-3b41-64ed19c9a48a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c431bd33-ceba-1993-c1bf-643d429e5f26', 0, '2023-08-28 22:17:53', 1),
('68f9f68e-2c53-5901-d962-64e3fce56586', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '425c02ff-4ebc-4aca-32d7-643d42342056', -98, '2023-09-25 01:47:07', 0),
('69157cec-8192-a332-f620-64ed190fed7d', '96611c3f-0542-6304-6faa-64ed18d1687c', '17e63bbb-f163-f186-509d-643d428a2ba2', 0, '2023-08-28 22:17:53', 1),
('69231196-70c3-27f1-9021-64ed1c1898e4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'da18b789-91aa-9f9b-f322-643d429904c2', -99, '2023-08-28 22:17:09', 0),
('6951a36a-bb6c-8d3f-6147-64e3fa66fcde', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3abd6f75-729c-219e-7c5d-643d42a08b49', -99, '2023-09-25 01:52:49', 0),
('69605970-35c0-27a1-239c-64ed19303929', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b96f4d15-6e2e-53e0-a0ba-643d42dcdfd9', 0, '2023-08-28 22:17:53', 1),
('698b05e1-220c-0dad-837d-64e3fc24a227', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4b89f203-e0e2-e569-dd3c-643d42d22970', -99, '2023-09-25 01:47:07', 0),
('699ef18e-f27e-ee88-b847-64ed191f2676', '96611c3f-0542-6304-6faa-64ed18d1687c', '26211d4e-a2ea-ee1c-c703-643d42aa6127', 0, '2023-08-28 22:17:53', 1),
('69b371c4-295c-8a61-fd92-64ed1cccea3f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd755af60-05ad-df72-0632-643d424558b5', -99, '2023-08-28 22:17:09', 0),
('69bc82af-5296-4694-9997-64e3fa7cdf7d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '479b5deb-6c04-228c-1130-643d425465a8', -99, '2023-09-25 01:52:49', 0),
('69d654c4-67d0-542c-2dee-64ed191e7561', '96611c3f-0542-6304-6faa-64ed18d1687c', 'cb09c525-d32d-3945-e993-643d4245d55f', 0, '2023-08-28 22:17:53', 1),
('6a002388-cd5b-3bb9-5127-64e3fc2fc9e3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '493ca86f-e4f5-d481-492d-643d42fdb4b2', -99, '2023-09-25 01:47:07', 0),
('6a14323d-639b-069c-f910-64ed19086f6a', '96611c3f-0542-6304-6faa-64ed18d1687c', '22ad461b-4082-6bb5-5a7f-643d421d4154', 0, '2023-08-28 22:17:53', 1),
('6a44ab51-2dad-4c7b-522c-64e3fa02e7f3', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '38ba949d-3ee7-4c05-2f9f-643d42f5e185', -99, '2023-09-25 01:52:49', 0),
('6a48d7f4-8a62-5251-a95b-64ed1c30d3cc', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e0409fe7-39fe-95a2-95da-643d427af92b', -99, '2023-08-28 22:17:09', 0),
('6a7315b3-6a0a-139a-0490-64ed19846d37', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b62e6401-da2a-742b-3522-643d4296caee', 0, '2023-08-28 22:17:53', 1),
('6aa60768-d851-9eb8-e10e-64ed19c57ccb', '96611c3f-0542-6304-6faa-64ed18d1687c', '80e18296-980d-1c93-fef8-643d426d43ec', 0, '2023-08-28 22:17:53', 1),
('6abd2cd2-1223-e03d-5ac9-64ed190d6e61', '96611c3f-0542-6304-6faa-64ed18d1687c', '2bfb8518-cbbc-9041-9631-643d4239b918', 0, '2023-08-28 22:17:53', 1),
('6ac1cee6-f079-cd91-fcbb-64e3fa9ca5a9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'f244c6ac-f7a0-1bed-f693-643d4235765c', -98, '2023-09-25 01:52:49', 0),
('6ac694b1-70b2-922b-42b1-64ed1c15227f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'dd753bae-e776-5f20-4b59-643d4231dead', -99, '2023-08-28 22:17:09', 0),
('6ac89afc-9d4a-80d1-a5c6-64e3fc24419e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '50cb9146-1ee2-e9d2-3f22-643d42e057ee', -99, '2023-09-25 01:47:07', 0),
('6add4a54-5f2f-ce70-0e74-64ed198920cc', '96611c3f-0542-6304-6faa-64ed18d1687c', '8a5aeba8-50b8-75f8-9b41-643d42d044df', 0, '2023-08-28 22:17:53', 1),
('6b483689-766b-e7d2-91df-64ed194ce2a7', '96611c3f-0542-6304-6faa-64ed18d1687c', '291e15bd-7a32-c880-b4e0-643d42d8352f', 0, '2023-08-28 22:17:53', 1),
('6b4f17c6-0490-1821-d178-64ed1ce6c546', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd51877e2-2e18-6b33-2020-643d425d5564', -99, '2023-08-28 22:17:09', 0),
('6b50e542-c21f-ae41-e131-64e3faa6eed9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '898f00c6-9cfa-713e-e364-643d427d05ec', -99, '2023-09-25 01:52:49', 0),
('6b52b4c8-1d29-4d39-b192-64e3fc4c8b6e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4ea429a3-82ff-87dc-e081-643d42ac92c1', -99, '2023-09-25 01:47:07', 0),
('6bc819eb-2749-1b75-35c1-64e3fa4ce858', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '57690809-b91c-6cd2-5ca7-643d42effc68', -99, '2023-09-25 01:52:49', 0),
('6bca2f02-39ad-9c8c-1d6c-64e3fc05fb34', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4730f695-dc77-a1df-3e93-643d42c38325', -99, '2023-09-25 01:47:07', 0),
('6bcc226c-f805-da81-632d-64ed1c60e47b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e228742e-3e7c-edac-67b7-643d429f32a2', -99, '2023-08-28 22:17:09', 0),
('6bd7015a-5ab2-64d9-0eb3-64e3fca6e4b9', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4660e3e3-ce3c-3343-589d-643d42ac340e', -99, '2023-09-25 01:47:07', 0),
('6bdf0ecd-a9b8-ca1e-1dbc-64ed1cdb77c1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a0355c13-ad06-1ad1-773a-643d4266a498', -99, '2023-08-28 22:17:09', 0),
('6be977ad-e1e5-482c-0771-64ed197a2c32', '96611c3f-0542-6304-6faa-64ed18d1687c', '1f86c2d4-d860-e677-0008-643d42ad518a', 0, '2023-08-28 22:17:53', 1),
('6c44386a-ea78-10ad-2b9b-64ed191b5ffb', '96611c3f-0542-6304-6faa-64ed18d1687c', '964021bb-4fc3-5eca-b076-643d42d7f62f', 0, '2023-08-28 22:17:53', 1),
('6c526416-1687-00a5-e9bd-64e3fc91d500', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5301a4d6-64d3-183d-69c6-643d427e10c4', -99, '2023-09-25 01:47:07', 0),
('6c558dc7-5dca-14d3-eaee-64ed1c522484', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd1ffde19-2af0-31a7-fd2f-643d42bc80e7', -99, '2023-08-28 22:17:09', 0),
('6c57ebb4-e5b6-b90a-6bab-64e3fa814280', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '10473511-7921-dbd6-22f1-643d429a330e', -99, '2023-09-25 01:52:49', 0),
('6c8b8598-c85c-f5ea-e10a-64ed19545cfc', '96611c3f-0542-6304-6faa-64ed18d1687c', '2f2d8ff1-7cd2-5461-af33-643d429e8fff', 0, '2023-08-28 22:17:53', 1),
('6ccf79e0-9901-37e9-f946-64e3fae615f3', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'cefc0924-8147-24d4-76c5-643d42d653bc', -99, '2023-09-25 01:52:49', 0),
('6ccf9161-2f93-2b58-2d30-64e3fc64183c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '44c76d2c-a1d2-6b22-c935-643d42a57af6', -99, '2023-09-25 01:47:07', 0),
('6cf2d1f5-74b2-f6b0-c461-64ed19dac69d', '96611c3f-0542-6304-6faa-64ed18d1687c', '9451aa4a-5aab-336a-d588-643d429e1cc4', 0, '2023-08-28 22:17:53', 1),
('6cf81f10-289c-1ea5-b0a7-64ed1caeb3bf', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '710066d0-0a5e-ae44-66fc-643d4222947a', 89, '2023-08-28 22:17:09', 0),
('6d0a5f46-9857-dead-43f9-64ed19014421', '96611c3f-0542-6304-6faa-64ed18d1687c', '1cc78c59-3337-188f-73bf-643d420723f3', 0, '2023-08-28 22:17:53', 1),
('6d57e93a-6066-b0cb-45cc-64e3fa2294d7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '29ec0d43-0049-56ff-8f01-643d423be8ac', -99, '2023-09-25 01:52:49', 0),
('6d58bcdc-07c0-629d-abe8-64e3fcc430b7', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8e2c97df-2e10-0415-7663-643d42f152ec', -98, '2023-09-25 01:47:07', 0),
('6d81a8e6-d05b-aa43-891b-64ed1c556859', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7ec6bccd-e8d5-93fc-de53-643d42026916', 75, '2023-08-28 22:17:09', 0),
('6d8367a9-4343-40c3-afdf-64ed19376ede', '96611c3f-0542-6304-6faa-64ed18d1687c', '9adcaf60-7829-73cb-c0ec-643d42c8a446', 0, '2023-08-28 22:17:53', 1),
('6d976c6e-8432-4f96-690c-64ed1987706c', '96611c3f-0542-6304-6faa-64ed18d1687c', '6175078d-9193-95a7-d99a-643d42f6389c', 0, '2023-08-28 22:17:53', 1),
('6dcf99e4-210f-9e21-105f-64e3fcb77a88', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9793a630-1d3f-0f93-a0e6-643d42c21aae', -99, '2023-09-25 01:47:07', 0),
('6dfb0339-765a-060d-c3fc-64e3fa565812', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '12a235ee-1633-f953-b38c-643d42067f0b', -99, '2023-09-25 01:52:49', 0),
('6dfc31d9-88e7-41a4-31fc-64ed19f81bb9', '96611c3f-0542-6304-6faa-64ed18d1687c', '984e24b6-a4e3-5369-5d87-643d4258a04a', 0, '2023-08-28 22:17:53', 1),
('6dfe70d5-24b3-be29-d20a-64ed1c2b80b7', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7c59d71b-187b-8b54-1f6e-643d42eaaf3f', 75, '2023-08-28 22:17:09', 0),
('6e36420f-f794-9802-2bfb-64ed19f1eabc', '96611c3f-0542-6304-6faa-64ed18d1687c', '6bf6266d-6d73-495c-16e9-643d42b9f3a6', 0, '2023-08-28 22:17:53', 1),
('6e5eee8d-5151-69c7-f02b-64e3fcc3803f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '952d9ece-41fa-b482-0749-643d429a2845', -99, '2023-09-25 01:47:07', 0),
('6e8376f8-b9af-358f-84bb-64e3fa3445cb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b0400a95-28b5-65a1-c17a-643d42a702ef', -99, '2023-09-25 01:52:49', 0),
('6e8aec85-9b81-04b0-a266-64ed1963d332', '96611c3f-0542-6304-6faa-64ed18d1687c', '9110b114-8c32-345f-676b-643d421b3409', 0, '2023-08-28 22:17:53', 1),
('6e8eec76-e2e1-e8c7-8bb8-64ed1c4c4f48', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '82b34683-b1d4-f717-7e29-643d429edb24', 90, '2023-08-28 22:17:09', 0),
('6e99a740-d70e-7e8c-22e2-64ed1936401e', '96611c3f-0542-6304-6faa-64ed18d1687c', '6980b3c9-af0a-4f9c-866b-643d4245c615', 0, '2023-08-28 22:17:53', 1),
('6ecf7ee8-af50-4e61-455c-64e3fca5a905', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9bd85a2d-8dda-eac4-8996-643d4278a173', -99, '2023-09-25 01:47:07', 0),
('6f25b093-3b0b-9fef-efb8-64ed1982a4bc', '96611c3f-0542-6304-6faa-64ed18d1687c', '9d5129d9-81e6-f6b5-cf0e-643d423b347c', 0, '2023-08-28 22:17:53', 1),
('6f270a99-8487-6aeb-44a8-64e3fad2984e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6bc1f78d-8e4b-8209-512a-643d4283840f', -99, '2023-09-25 01:52:49', 0),
('6f2b05b7-0c0b-6838-e480-64ed1c0a697b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '80e18296-980d-1c93-fef8-643d426d43ec', 90, '2023-08-28 22:17:09', 0),
('6f409cbd-ddb1-8e89-a9a2-64ed198ad7bf', '96611c3f-0542-6304-6faa-64ed18d1687c', '7217f0d1-d5a1-a60c-5564-643d42512e78', 0, '2023-08-28 22:17:53', 1),
('6f5995a9-9435-217d-47ef-64e3fcbbabc0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '99cf6ba1-5646-f424-fb63-643d42a30ac0', -99, '2023-09-25 01:47:07', 0),
('6f95fd9b-bbdd-2dd9-eedf-64ed1cc4870d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7934d5e3-2238-1a2d-678f-643d426a7f5a', 80, '2023-08-28 22:17:09', 0),
('6fa3e3bf-3a4b-375e-ff35-64e3fa38398a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'cfc7767b-a8e2-316d-0760-643d424c79f4', 89, '2023-09-25 01:52:49', 0),
('6fa6392a-ea79-86a0-7ea7-64ed1927d6b1', '96611c3f-0542-6304-6faa-64ed18d1687c', '6edcc876-f1e9-192d-0644-643d42cc82ce', 0, '2023-08-28 22:17:53', 1),
('6fac5883-906d-eb3e-c104-64ed19097096', '96611c3f-0542-6304-6faa-64ed18d1687c', '8db31284-a16e-771b-e44a-643d42d92b62', 0, '2023-08-28 22:17:53', 1),
('6ff531d3-944c-35b7-b45f-64e3fcdc30b6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '933adaa4-d11c-985b-13a9-643d4200be00', -99, '2023-09-25 01:47:07', 0),
('701e7574-3369-38e5-4fbf-64ed1c86779b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '84828d5f-fbd4-75e6-1158-643d42167dfd', 90, '2023-08-28 22:17:09', 0),
('702bc9ce-a79c-f855-3d55-64e3face038e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'da18b789-91aa-9f9b-f322-643d429904c2', 90, '2023-09-25 01:52:49', 0),
('70380945-49a3-33cf-2e0f-64ed19710147', '96611c3f-0542-6304-6faa-64ed18d1687c', '66a68a8d-39c7-347c-8e79-643d42a1a49d', 0, '2023-08-28 22:17:53', 1),
('705a0b1c-5a75-8979-e861-64e3fcd72c8a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'bbf93427-6f9c-3267-0889-643d42a2b83e', -99, '2023-09-25 01:47:07', 0),
('707f7479-5112-fe1f-4f15-64e3fc30390e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9e693c0d-071d-c105-3e26-643d429919bc', -99, '2023-09-25 01:47:07', 0),
('709bb74f-5ceb-da62-a951-64ed1ca2a7be', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '75fca19e-4560-c8b7-ff1a-643d420f0a01', 80, '2023-08-28 22:17:09', 0),
('70a83f87-5e6f-5eba-4574-64ed19c993b8', '96611c3f-0542-6304-6faa-64ed18d1687c', '7529b778-fb51-a9da-2a67-643d42dcd95a', 0, '2023-08-28 22:17:53', 1),
('70a9c991-1155-0db7-cd28-64e3faad05ca', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd755af60-05ad-df72-0632-643d424558b5', 90, '2023-09-25 01:52:49', 0),
('711aeb16-4127-38f0-d4eb-64e3fc9c3eed', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '90f61bb7-831c-59ff-6ec7-643d42e01c3c', -99, '2023-09-25 01:47:07', 0),
('712c0d83-37c8-f244-07b6-64ed1c91f652', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'cd2deea0-a81e-c476-6ec5-643d42ba3ec4', -98, '2023-08-28 22:17:09', 0),
('7133e70c-deac-3685-0c26-64e3fa551cdd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e0409fe7-39fe-95a2-95da-643d427af92b', 90, '2023-09-25 01:52:49', 0),
('7171b730-1154-c096-c46e-64ed192909c7', '96611c3f-0542-6304-6faa-64ed18d1687c', '64579707-1f93-e8af-2488-643d421c3f2d', 0, '2023-08-28 22:17:53', 1),
('717f524f-0cc1-ce12-3071-64e3fc08fe08', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b8713796-fc6f-aca1-78e6-643d42b2998a', -98, '2023-09-25 01:47:07', 0),
('71a83af2-e153-bc94-1172-64ed1c5be6c9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'daeca790-468f-f029-e2ba-643d42da298c', -99, '2023-08-28 22:17:09', 0),
('71b13743-cf0f-d6ee-08e2-64e3fa69ab77', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'dd753bae-e776-5f20-4b59-643d4231dead', 90, '2023-09-25 01:52:49', 0),
('71f16c47-3b59-dee2-0b91-64ed199064d5', '96611c3f-0542-6304-6faa-64ed18d1687c', 'dc80e445-ec22-10ef-ec3b-643d42e97f9f', 0, '2023-08-28 22:17:53', 1),
('7221793f-b6de-0b11-c86b-64e3fc356d45', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd10fe2ac-5ccd-2258-a2aa-643d42683373', -99, '2023-09-25 01:47:07', 0),
('723941fb-15ab-a63f-ded9-64e3fa467605', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd51877e2-2e18-6b33-2020-643d425d5564', -99, '2023-09-25 01:52:49', 0),
('7276627a-4593-9ffc-c3de-64ed1c4632bd', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd7d96093-4137-5e83-fd6a-643d424a69dd', -99, '2023-08-28 22:17:09', 0),
('727a5693-6a7f-3055-b495-64ed193ddc72', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e73a1d78-f2d2-b10f-d3a0-643d4212e62f', 0, '2023-08-28 22:17:53', 1),
('72856789-e3a4-7c3f-83ac-64e3fc590ba0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'cdd515e9-cb60-0719-a8d5-643d42e87eb4', -99, '2023-09-25 01:47:07', 0),
('72dcf0d2-e7a2-0827-2ca7-64e3fa90fdbc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e228742e-3e7c-edac-67b7-643d429f32a2', -99, '2023-09-25 01:52:49', 0),
('7316a837-b4ef-af94-5b59-64ed19887ddd', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e4b24459-904b-473e-1a7b-643d42ef3f79', 0, '2023-08-28 22:17:53', 1),
('73190ebf-0658-8e59-52bf-64ed1c0aab5c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e0e7fe08-9777-6c9d-f88d-643d42eeaacf', -99, '2023-08-28 22:17:09', 0),
('732c1a23-f9dc-24e8-1e12-64e3fc485b95', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd72f4973-eed4-7f4e-80f2-643d42ff956a', -99, '2023-09-25 01:47:07', 0),
('73653255-fdd5-f624-5639-64e3fa4fb450', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd1ffde19-2af0-31a7-fd2f-643d42bc80e7', 90, '2023-09-25 01:52:49', 0),
('737b31e1-9576-1e92-9572-64ed19cd9697', '96611c3f-0542-6304-6faa-64ed18d1687c', 'ec922d29-37aa-1f72-34cf-643d428f5ce6', 0, '2023-08-28 22:17:53', 1),
('739a458e-33c0-0e9f-e39e-64e3fcfe9508', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd3a55c75-a104-b81d-5a88-643d42e06903', -99, '2023-09-25 01:47:07', 0),
('73a1e2d1-a90f-c695-f8e3-64ed1c374275', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'ddf6ebf3-11c4-81a8-d684-643d42b9419a', -99, '2023-08-28 22:17:09', 0),
('73a501d9-fa62-03e1-53dc-64ed1c40b4b4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9d32b466-e9da-c17d-4b7f-643d42977d34', -99, '2023-08-28 22:17:09', 0),
('73e27c20-5036-9786-19d5-64e3fa5564cd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '710066d0-0a5e-ae44-66fc-643d4222947a', 89, '2023-09-25 01:52:49', 0),
('74050977-3bc8-1557-5849-64ed1956fec1', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e9fb1012-98aa-39da-3324-643d4274f8c3', 0, '2023-08-28 22:17:53', 1),
('7422f1a1-6eca-22e8-8be6-64e3fcb639d3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'caaa88b4-f60e-3043-ca86-643d42b0c89f', -99, '2023-09-25 01:47:07', 0),
('7450d519-b017-0609-51fc-64ed1caabbf5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd469a1b7-64df-3932-b39e-643d42e1fa2a', -99, '2023-08-28 22:17:09', 0),
('746b4f7d-9d94-1aea-cd3d-64e3fa721a9c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7ec6bccd-e8d5-93fc-de53-643d42026916', 90, '2023-09-25 01:52:49', 0),
('747ab9a9-4d09-9f9a-3df7-64ed19ce004a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e265fb27-af1e-5c34-e2ef-643d427d374f', 0, '2023-08-28 22:17:53', 1),
('74c8bcf0-8502-5829-e4ba-64e3fc3f6086', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'da4875a8-f407-544b-3c59-643d4283c76d', -99, '2023-09-25 01:47:07', 0),
('74fbffb9-519f-cce6-2bf1-64ed1c4856a8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e44d9c42-640b-d797-a732-643d4221a1df', -99, '2023-08-28 22:17:09', 0),
('7504357c-fd37-a81e-c3a0-64ed19f3cc88', '96611c3f-0542-6304-6faa-64ed18d1687c', 'ef87a9f5-cd80-ff7d-bb7f-643d426ea488', 0, '2023-08-28 22:17:53', 1),
('75460327-124c-1fae-099a-64ed19f78ebf', '96611c3f-0542-6304-6faa-64ed18d1687c', '7934d5e3-2238-1a2d-678f-643d426a7f5a', 80, '2023-08-28 22:17:53', 1),
('755f96d4-33c4-8111-b47c-64e3fa4729b3', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7c59d71b-187b-8b54-1f6e-643d42eaaf3f', 90, '2023-09-25 01:52:49', 0),
('757cd25b-20ac-881f-7905-64ed19f9a8f1', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e02940f3-b381-ea69-6e0f-643d422bf806', 0, '2023-08-28 22:17:53', 1),
('75899121-1d0e-e7a2-4bb5-64ed1c0dee40', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd1465356-0e13-13f3-de0d-643d42152692', -99, '2023-08-28 22:17:09', 0),
('75a607de-85f9-07a0-9f5e-64e3fc80bb5f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9fb8b1fc-6e8b-ce3e-b408-643d425995be', -98, '2023-09-25 01:47:07', 0),
('75ce1d58-b2f5-60bb-a13b-64e3fc0f1f2a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c741fa9d-1480-0d4d-6a49-643d42b4a7ee', -99, '2023-09-25 01:47:07', 0),
('75f5c49a-509a-186d-c583-64e3fa804e76', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '82b34683-b1d4-f717-7e29-643d429edb24', 90, '2023-09-25 01:52:49', 0),
('76056577-8b05-7694-ab20-64ed190b1a96', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b3f9fdb1-4f7e-8677-5c0f-643d422b78e2', 0, '2023-08-28 22:17:53', 1),
('76343d76-715d-367b-c8f0-64ed1c8b3b43', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '786564bf-023c-e94f-5761-643d42bef5cb', -98, '2023-08-28 22:17:09', 0),
('7654e7fd-51bd-b35e-65b0-64e3fcf95f66', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '177876eb-d5bf-837a-6304-643d427563ed', -98, '2023-09-25 01:47:07', 0),
('768c030d-f7ea-5bb8-9271-64e3fa2baed3', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '75ca38c5-ebff-3350-2c4b-643d42a56fab', -99, '2023-09-25 01:52:49', 0),
('76971948-a621-b46b-6541-64e3fa7a9d0d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '80e18296-980d-1c93-fef8-643d426d43ec', 90, '2023-09-25 01:52:49', 0),
('76a6f550-6e8d-d30f-8361-64ed194bc437', '96611c3f-0542-6304-6faa-64ed18d1687c', 'bd59270a-482b-a7c5-381e-643d425dac8d', 0, '2023-08-28 22:17:53', 1),
('76cc3c54-ed64-d092-8333-64ed1c73cbc6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '83f30a44-72d1-4d2d-12ea-643d42374789', -99, '2023-08-28 22:17:09', 0),
('76d1d7c5-04bd-a467-2073-64e3fc33bdc0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1fbd4d64-a8d8-82d3-b452-643d42dd9c0b', -99, '2023-09-25 01:47:07', 0),
('77281096-75ff-7ef1-a546-64e3fadd5b38', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7934d5e3-2238-1a2d-678f-643d426a7f5a', 90, '2023-09-25 01:52:49', 0),
('77304d69-98b4-3b34-202d-64ed19477cbb', '96611c3f-0542-6304-6faa-64ed18d1687c', 'bace0c27-f773-f3fc-4041-643d42753d4d', 0, '2023-08-28 22:17:53', 1),
('775c3936-17a7-ea54-d49f-64e3fc27ac0d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1d894902-fbaf-6b78-f9df-643d42972ef4', -99, '2023-09-25 01:47:07', 0),
('779228bd-9258-a164-bec0-64e3fa3f5272', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '84828d5f-fbd4-75e6-1158-643d42167dfd', 90, '2023-09-25 01:52:49', 0),
('77a4e48e-9fe1-e847-6b50-64ed1c5d7a3e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '819ddc78-3198-e380-e4da-643d428660c5', -99, '2023-08-28 22:17:09', 0),
('77a823aa-c1ec-7db6-ded9-64ed19273ee3', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c2b0daf4-73fa-f8ad-4af0-643d42d1b294', 0, '2023-08-28 22:17:53', 1),
('77f7eeec-4d34-8636-45dd-64e3fc5fe920', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '244af2e2-b415-5f7a-446d-643d421bd972', -99, '2023-09-25 01:47:07', 0),
('781a54c6-9d62-6480-2046-64e3faae41eb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '75fca19e-4560-c8b7-ff1a-643d420f0a01', 90, '2023-09-25 01:52:49', 0),
('784afafc-7fb0-306c-6d1d-64ed192676d4', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c023cc03-aa31-a558-12e2-643d42892ec5', 0, '2023-08-28 22:17:53', 1),
('785d7370-1e35-e9d7-8256-64e3fcd7d183', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '21d63e61-1382-185b-25fb-643d42f0ca1f', -99, '2023-09-25 01:47:07', 0),
('78984a54-ca85-5c77-6ec3-64e3fa648e00', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'cd2deea0-a81e-c476-6ec5-643d42ba3ec4', -98, '2023-09-25 01:52:49', 0),
('78eb43e2-4620-12a3-185c-64e3fcf8a8a1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1bd2d367-0bab-c438-b482-643d42fb2a2b', -99, '2023-09-25 01:47:07', 0),
('790afca6-b6e2-bbb3-34e4-64ed1c68323b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '89585879-e425-deba-87a0-643d42461146', -99, '2023-08-28 22:17:09', 0),
('7929b149-9d4f-bf8c-e124-64e3fa609402', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'daeca790-468f-f029-e2ba-643d42da298c', -99, '2023-09-25 01:52:49', 0),
('795099fd-a8fb-7b01-5aab-64ed19fc5336', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b878f74e-b575-aed7-a18d-643d424a9cc2', 0, '2023-08-28 22:17:53', 1),
('7963890b-0dff-dabc-473e-64e3fc299cdf', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '26f00a26-ce74-70ac-26d4-643d4294b861', -99, '2023-09-25 01:47:07', 0),
('79919007-243b-9175-842e-64e3fae557f6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd7d96093-4137-5e83-fd6a-643d424a69dd', -99, '2023-09-25 01:52:49', 0),
('79e015d4-2518-5026-4c53-64ed1c071346', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '86626c0c-6745-8b1f-eb9b-643d4270e1e5', -99, '2023-08-28 22:17:09', 0),
('79e0e1a2-c39f-aabd-2051-64ed197aa736', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c5476205-a9a0-1cab-a970-643d42c1273b', 0, '2023-08-28 22:17:53', 1),
('7a22480a-df2b-b41f-3709-64e3faaa7d3a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e0e7fe08-9777-6c9d-f88d-643d42eeaacf', -99, '2023-09-25 01:52:49', 0),
('7a2a09ac-ded1-bbf8-ce15-64e3fce2bd86', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1a27b250-4c97-441c-68fd-643d42a9c18c', -99, '2023-09-25 01:47:07', 0),
('7a500f0e-309b-dc47-5d22-64e3fcdf2fa0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c472b375-d3dd-cfbc-5bdf-643d42669ee1', -99, '2023-09-25 01:47:07', 0),
('7a53085d-9795-0a66-2741-64ed19e79dee', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b678aaa3-1564-f495-9cee-643d42a96dc3', 0, '2023-08-28 22:17:53', 1),
('7a8f7c79-7f21-0e9e-2d16-64e3fc35baf0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b9bb5349-42cc-5f3c-85a2-643d426d4bea', -98, '2023-09-25 01:47:07', 0),
('7a932c80-55d0-b472-1c15-64e3fa32c386', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'ddf6ebf3-11c4-81a8-d684-643d42b9419a', -99, '2023-09-25 01:52:49', 0),
('7adb5a32-ef50-27db-7b9d-64ed196b9f6f', '96611c3f-0542-6304-6faa-64ed18d1687c', '16e177a7-a814-a0d1-005c-643d42231a75', 0, '2023-08-28 22:17:53', 1),
('7b11993c-4a87-b461-1c18-64ed1c14e50e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7eba62e8-0a9c-b0b4-d153-643d4237747a', -99, '2023-08-28 22:17:09', 0),
('7b22783d-fec0-9ecf-0929-64e3fad32263', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd469a1b7-64df-3932-b39e-643d42e1fa2a', -99, '2023-09-25 01:52:49', 0),
('7b3683ff-5de7-326d-ffc6-64e3fc6236c3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'de511817-38e2-24d4-bfa1-643d42c47da1', -99, '2023-09-25 01:47:07', 0),
('7b407611-50aa-5f6c-db19-64ed1909121f', '96611c3f-0542-6304-6faa-64ed18d1687c', '1eccb202-b30a-4e79-017b-643d426cb521', 0, '2023-08-28 22:17:53', 1),
('7bb3b5e6-32d8-f82b-fb06-64e3fc898338', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'db37e215-e77f-321e-1cd2-643d4237fb46', -99, '2023-09-25 01:47:07', 0),
('7bbf6b6d-b1ce-b98f-adc0-64e3faef5eef', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e44d9c42-640b-d797-a732-643d4221a1df', -99, '2023-09-25 01:52:49', 0),
('7bd211d1-e25b-eded-74f0-64ed19ded814', '96611c3f-0542-6304-6faa-64ed18d1687c', '1d4c764d-cab6-faab-ff0f-643d42bfa922', 0, '2023-08-28 22:17:53', 1),
('7c236303-1737-c8ff-a651-64ed1c4b4a2b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8cbb4b2c-f9aa-6206-0eb1-643d4220bc92', -99, '2023-08-28 22:17:09', 0),
('7c3e1589-d2ac-e367-6f5b-64e3fc6d1177', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e2d41451-104f-2cf8-6834-643d427497fc', -99, '2023-09-25 01:47:07', 0),
('7c4e9165-66b1-7db3-7493-64e3fa9c0cc7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd1465356-0e13-13f3-de0d-643d42152692', -99, '2023-09-25 01:52:49', 0),
('7c700780-1e02-3e31-67c0-64e3fcfbde91', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '36c908f4-f007-ce88-e682-643d42a5ea6b', -99, '2023-09-25 01:47:07', 0),
('7c9e5195-1692-92c7-bb60-64ed19f9d0d3', '96611c3f-0542-6304-6faa-64ed18d1687c', '229dc731-75b1-feca-2b36-643d42faafdf', 0, '2023-08-28 22:17:53', 1),
('7cd2668c-b994-b333-3db0-64ed1ce8b05f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7c28b765-428e-0555-1af3-643d42460699', -99, '2023-08-28 22:17:09', 0),
('7cd973c7-f5c7-5607-66ee-64e3fcd41ec0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e07c503b-33a5-caea-2b02-643d42e59b60', -99, '2023-09-25 01:47:07', 0),
('7ce344ef-b230-8b54-4c06-64e3fa0198f4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '786564bf-023c-e94f-5761-643d42bef5cb', -98, '2023-09-25 01:52:49', 0),
('7cf00089-2868-a357-bf50-64e3fa693c76', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a7f7162c-33e3-0b66-8937-643d42c5d2dc', -99, '2023-09-25 01:52:49', 0),
('7d2bfbb3-6d2c-c4c7-835d-64ed19049fa8', '96611c3f-0542-6304-6faa-64ed18d1687c', '2070b68e-bfcf-b556-124b-643d423944ea', 0, '2023-08-28 22:17:53', 1),
('7d3f125a-3dd2-452d-20f1-64e3fc3084c0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd9002e2e-0263-3690-41b3-643d422ff549', -99, '2023-09-25 01:47:07', 0),
('7d480025-dafe-f3bb-a64c-64e3faf0e2ba', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '83f30a44-72d1-4d2d-12ea-643d42374789', -99, '2023-09-25 01:52:49', 0),
('7dceac60-e892-1d9f-7b84-64ed19266898', '96611c3f-0542-6304-6faa-64ed18d1687c', '1b79268a-cae2-bcfe-2bc5-643d4265434a', 0, '2023-08-28 22:17:53', 1),
('7dd0016e-888f-dc25-d6e3-64ed1c27156a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a56ed735-7b43-f738-6f28-643d42708fcc', -99, '2023-08-28 22:17:09', 0),
('7dd1ff8f-0568-97b2-59ac-64e3fa9904c9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '819ddc78-3198-e380-e4da-643d428660c5', -99, '2023-09-25 01:52:49', 0),
('7dd50fa9-741a-5c6e-8280-64ed19c57673', '96611c3f-0542-6304-6faa-64ed18d1687c', '84828d5f-fbd4-75e6-1158-643d42167dfd', 90, '2023-08-28 22:17:53', 1),
('7ddfc05e-fa6e-2941-0f47-64e3fcedf14d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e53b714c-4d2e-148d-a656-643d426aff5d', -99, '2023-09-25 01:47:07', 0),
('7deb72b8-170b-81ad-f69b-64ed1c5efb04', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2fa91af7-b30a-d169-fec4-643d4282bf57', -98, '2023-08-28 22:17:09', 0),
('7e3b5d6d-3a24-0d7f-12ce-64ed19929662', '96611c3f-0542-6304-6faa-64ed18d1687c', '24a67cf2-d1cb-21f8-34d9-643d42b3ac7a', 0, '2023-08-28 22:17:53', 1),
('7e3f0a10-b775-0e60-a9ef-64e3fc87918b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'aa6f3c60-a80d-7d27-b7ce-643d42f6c680', -99, '2023-09-25 01:47:07', 0),
('7e457b36-b7d9-2067-a25f-64e3fcf0e2b6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd44144be-3e5f-2a04-bb28-643d42689410', -99, '2023-09-25 01:47:07', 0),
('7e488f92-6d0f-a87b-30a1-64e3fa30bd8e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '89585879-e425-deba-87a0-643d42461146', -99, '2023-09-25 01:52:49', 0),
('7ec6b0e7-6aa7-b21e-e59c-64ed193ea473', '96611c3f-0542-6304-6faa-64ed18d1687c', '19e340de-d34d-3a8f-b112-643d421a16c0', 0, '2023-08-28 22:17:53', 1),
('7ecd3c59-5549-ae9b-85a0-64e3fc562b3a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2df703c3-1886-2132-38ac-643d422be3d1', -98, '2023-09-25 01:47:07', 0),
('7ed1e5c7-53b9-25f2-d350-64e3fad011d2', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '86626c0c-6745-8b1f-eb9b-643d4270e1e5', -99, '2023-09-25 01:52:49', 0),
('7f0b7b48-d34e-ce65-8902-64ed1cbd3188', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3c016078-ae1a-977d-3d33-643d425bff08', -99, '2023-08-28 22:17:09', 0),
('7f3f7d6f-0c82-7226-4dfd-64ed19ad1703', '96611c3f-0542-6304-6faa-64ed18d1687c', '2d377155-c266-053c-a780-643d4274ced1', 0, '2023-08-28 22:17:53', 1),
('7f4f7b16-13a7-7255-92c6-64e3fa53bb78', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7eba62e8-0a9c-b0b4-d153-643d4237747a', -99, '2023-09-25 01:52:49', 0),
('7f6b6d82-e7d6-be28-eb38-64e3fc19dbf1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c46d0004-f93c-4f96-4767-643d42389c29', -99, '2023-09-25 01:47:07', 0),
('7fa01475-77ce-c2c6-9713-64ed1cbeb341', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '39b5dcf6-a7f5-5d8b-7dab-643d42fa8cd2', -99, '2023-08-28 22:17:09', 0),
('7fc881cb-ebac-5c05-d897-64ed19f6b498', '96611c3f-0542-6304-6faa-64ed18d1687c', '40035ade-8ab4-d576-99fd-643d42e880db', 0, '2023-08-28 22:17:53', 1),
('7fd816a5-17a4-b091-dc36-64e3fa560086', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8cbb4b2c-f9aa-6206-0eb1-643d4220bc92', -99, '2023-09-25 01:52:49', 0),
('7ff94f06-2b11-66c7-21fe-64e3fca9a2c0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a1290757-56b3-252c-a722-643d42be8603', -99, '2023-09-25 01:47:07', 0),
('803ffce1-330a-0720-b680-64ed1970c0a8', '96611c3f-0542-6304-6faa-64ed18d1687c', '39cdb5f5-55f8-537c-2680-643d427824b7', 0, '2023-08-28 22:17:53', 1),
('8055754d-0009-9e5c-ff54-64e3fa483fcf', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7c28b765-428e-0555-1af3-643d42460699', -99, '2023-09-25 01:52:49', 0),
('806a1409-7ed3-cf51-92a7-64e3fcb2ea94', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '12f223e0-d48a-a5e7-c1fc-643d42715d96', -99, '2023-09-25 01:47:07', 0),
('80adaac5-71cf-28ed-cb11-64ed1c6fa38c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4198b3ca-2d16-d156-aba5-643d425caf7a', -99, '2023-08-28 22:17:09', 0),
('80c95963-d625-86f5-c623-64ed19a2db96', '96611c3f-0542-6304-6faa-64ed18d1687c', '4a917b3c-07ff-b956-b808-643d42d91434', 0, '2023-08-28 22:17:53', 1),
('80d80cb1-d2d4-9b1f-8a62-64e3fc6b99de', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c15cf080-6f3d-ff62-93e5-643d42c56c38', -99, '2023-09-25 01:47:07', 0),
('810d3297-2228-33bb-32ec-64e3fc99a7ea', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'f8340ab6-7d56-066f-3c28-643d42bb965a', -99, '2023-09-25 01:47:07', 0),
('8123dc9e-e051-b28b-003b-64e3fa99ff17', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2fa91af7-b30a-d169-fec4-643d4282bf57', -98, '2023-09-25 01:52:49', 0),
('8140bc02-77b9-7b25-6256-64ed19f35a67', '96611c3f-0542-6304-6faa-64ed18d1687c', '46bcd1d4-03b2-2f8a-7d2c-643d420d1a13', 0, '2023-08-28 22:17:53', 1),
('8170f8af-102e-8888-688b-64e3fc1872f7', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7e180749-bc8c-2725-c58e-643d42617e82', -99, '2023-09-25 01:47:07', 0),
('819c1f34-dc8b-fb12-8607-64ed1c840d98', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3e6bbfd0-867b-4be1-5893-643d42925bde', -99, '2023-08-28 22:17:09', 0),
('81bf9597-6ecf-0ed8-7acf-64e3fa5c8733', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3c016078-ae1a-977d-3d33-643d425bff08', -99, '2023-09-25 01:52:49', 0),
('81cb12a9-a249-1b12-9436-64ed19e69805', '96611c3f-0542-6304-6faa-64ed18d1687c', '3545bccb-a488-e2c9-4ed2-643d42c97663', 0, '2023-08-28 22:17:53', 1),
('81fbf701-45bc-d301-41a6-64e3fc25d8e6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1579a9cb-de4a-9bb8-06c4-643d427efd03', -99, '2023-09-25 01:47:07', 0),
('8229e682-0458-61ba-2a47-64e3faa40c8c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '39b5dcf6-a7f5-5d8b-7dab-643d42fa8cd2', -99, '2023-09-25 01:52:49', 0),
('826e5ba4-f651-601e-b084-64ed193a1557', '96611c3f-0542-6304-6faa-64ed18d1687c', '4db74728-ad00-37a6-4a1c-643d42db2d40', 0, '2023-08-28 22:17:53', 1),
('82717e8d-3591-3cd9-b99d-64e3fcf7bb29', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5e4500bb-12be-3e3c-29cd-643d42b49034', -99, '2023-09-25 01:47:07', 0),
('82b51a15-faf4-36c3-9a50-64e3fac96090', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4198b3ca-2d16-d156-aba5-643d425caf7a', -99, '2023-09-25 01:52:49', 0),
('82c36b6c-c89e-bb64-fd83-64ed1c983b8a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '36564b0d-448c-0dd1-ccd5-643d425fda93', -99, '2023-08-28 22:17:09', 0),
('82fbee87-4189-5f6a-7769-64e3fc511a08', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3d1d9db1-ea6d-05d7-9935-643d42faf5e8', -98, '2023-09-25 01:47:07', 0),
('82fcc108-654e-9f67-4216-64ed196db129', '96611c3f-0542-6304-6faa-64ed18d1687c', '31d70ba4-73cc-d1fc-fa03-643d42089bf1', 0, '2023-08-28 22:17:53', 1),
('832f95e8-beb5-181e-4a8c-64e3fae89ab4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3e6bbfd0-867b-4be1-5893-643d42925bde', -99, '2023-09-25 01:52:49', 0),
('8371c452-b42e-3c46-02e9-64e3fc5eb9c5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4827e228-c210-aae8-1dad-643d4203cbe8', -99, '2023-09-25 01:47:07', 0),
('837226a9-de98-145a-a172-64ed19a39f80', '96611c3f-0542-6304-6faa-64ed18d1687c', '4c56983b-5dbf-a07a-80cc-643d42405d23', 0, '2023-08-28 22:17:53', 1),
('83830abe-8474-4f29-50a0-64e3fa31d6ca', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '72c4cf67-9fe1-9e28-9659-643d42314c14', -99, '2023-09-25 01:52:49', 0),
('83919252-fb3d-02e5-2f06-64ed1c016f13', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4484d3ac-de10-0bd1-27ef-643d42805644', -99, '2023-08-28 22:17:09', 0),
('83c09c88-8094-b117-d9bf-64e3fa3729e6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '36564b0d-448c-0dd1-ccd5-643d425fda93', -99, '2023-09-25 01:52:49', 0),
('83fc44af-da3f-6299-d856-64ed199c5e87', '96611c3f-0542-6304-6faa-64ed18d1687c', '54f6c960-d4f7-0053-fab9-643d4238e5c6', 0, '2023-08-28 22:17:53', 1),
('84142109-685e-cbbc-d971-64e3fcf3db38', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '45bfd43b-0e31-f47c-fc67-643d42cda15f', -99, '2023-09-25 01:47:07', 0),
('8424c87e-f601-862c-0cac-64e3fa58c71f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4484d3ac-de10-0bd1-27ef-643d42805644', -99, '2023-09-25 01:52:49', 0),
('845dbb80-d98e-5e4c-d8b0-64ed1c482252', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '33073288-9d55-465e-563e-643d4201fa21', -99, '2023-08-28 22:17:09', 0),
('84735cdb-acdf-0b62-f044-64ed198abdb4', '96611c3f-0542-6304-6faa-64ed18d1687c', '52fece2c-5b02-f9a3-cbe6-643d428fbd72', 0, '2023-08-28 22:17:53', 1),
('84ad997b-a236-ea45-1584-64e3fa8f9f1e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '33073288-9d55-465e-563e-643d4201fa21', -99, '2023-09-25 01:52:49', 0),
('84db5bac-da1b-023d-0c05-64e3fc025eed', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4d6477ae-078e-a18c-684d-643d420aa107', -99, '2023-09-25 01:47:07', 0),
('84fcb4ee-6fdf-bc14-a359-64ed1975f2a4', '96611c3f-0542-6304-6faa-64ed18d1687c', '5921ccf2-de62-adc2-df21-643d42583bcb', 0, '2023-08-28 22:17:53', 1),
('852b5f2f-0a16-c6b2-659f-64e3fa01a19d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '58bf8f7f-2142-dedd-17b7-643d42e52dec', -98, '2023-09-25 01:52:49', 0),
('854901ed-3e6b-2434-61a0-64ed19632821', '96611c3f-0542-6304-6faa-64ed18d1687c', '75fca19e-4560-c8b7-ff1a-643d420f0a01', 80, '2023-08-28 22:17:53', 1),
('8558862e-1671-f024-b4f5-64e3fc33319a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4b64ebf1-3f5e-6064-2bab-643d42e2fb23', -99, '2023-09-25 01:47:07', 0),
('8599403d-add2-fb4c-52da-64ed19f7008f', '96611c3f-0542-6304-6faa-64ed18d1687c', '56dd3d65-e7dd-680d-d40e-643d424b2f20', 0, '2023-08-28 22:17:53', 1),
('859a0bc9-4ef1-9f34-aff4-64e3fc11bca1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a80219a7-04d9-0770-c566-643d42fb4f25', -99, '2023-09-25 01:47:07', 0),
('85a90c59-ba39-890e-6024-64ed1cd22f61', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a2de6a4a-cb4d-692a-d0f4-643d42cdc625', -99, '2023-08-28 22:17:09', 0),
('85b973c5-417c-0015-fdfb-64e3fa423637', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '62e13871-8662-ef63-3dab-643d42504c0e', -99, '2023-09-25 01:52:49', 0),
('85e2b963-7dae-5495-8b7d-64e3fc0cb483', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '43840c58-7109-c4dc-624e-643d429dd4c9', -99, '2023-09-25 01:47:07', 0),
('85fc890b-4cff-ec6a-86c8-64ed19a5c780', '96611c3f-0542-6304-6faa-64ed18d1687c', '513320a1-6731-d5dd-fb32-643d42a90d27', 0, '2023-08-28 22:17:53', 1),
('861b1876-7577-9cc7-72cf-64ed1c5476d6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '58bf8f7f-2142-dedd-17b7-643d42e52dec', -98, '2023-08-28 22:17:09', 0),
('865d96a8-f5bd-e0f7-4366-64e3fabf4091', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5fe49b27-4936-5de6-37ac-643d42638148', -99, '2023-09-25 01:52:49', 0),
('865e7446-2131-03e7-e36d-64e3fcf83b40', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4fb2ed6d-b030-97cd-5688-643d42f47b36', -99, '2023-09-25 01:47:07', 0),
('8686d11d-b267-2ab1-c117-64ed1921d393', '96611c3f-0542-6304-6faa-64ed18d1687c', '5b21dd04-33bf-65a4-2eac-643d4202e641', 0, '2023-08-28 22:17:53', 1),
('86e5e3cb-f8b0-4130-f7f4-64e3fac98709', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '69d6f52f-c3b9-6135-7a75-643d422750af', -99, '2023-09-25 01:52:49', 0),
('86ea0b4f-c844-0d5c-9696-64e3fcdbd93a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '40898c12-09e1-b1a3-789f-643d42fe52e6', -99, '2023-09-25 01:47:07', 0),
('86fc5ed5-28cf-6d98-a87f-64ed1939abed', '96611c3f-0542-6304-6faa-64ed18d1687c', '4f356e24-0bdb-814f-e8a1-643d42fcc5fa', 0, '2023-08-28 22:17:53', 1),
('875d9a28-508c-5c15-cc49-64e3fabb383b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6623f8f0-2a39-a245-388d-643d42cd36d3', -99, '2023-09-25 01:52:49', 0),
('87600d7d-1bf7-e35e-1a2b-64e3fca253ff', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '18dbd534-b071-8b59-048c-643d4266af9f', -98, '2023-09-25 01:47:07', 0),
('8785fe06-22e7-8c3a-b0d9-64ed1903028f', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c6d70e4f-6c16-f30f-9de2-643d424967bb', 0, '2023-08-28 22:17:53', 1),
('87be441c-a17f-f10e-fa2a-64ed1c9abdca', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '62e13871-8662-ef63-3dab-643d42504c0e', -99, '2023-08-28 22:17:09', 0),
('87e51caa-ea8c-cd13-5b35-64e3fa4b380a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5da9d4dc-2def-cc56-a8f4-643d42593f0b', -99, '2023-09-25 01:52:49', 0),
('87ea966d-29fc-b723-7fbc-64e3fce16852', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '22a1e411-e21a-aafd-66ea-643d42211553', -99, '2023-09-25 01:47:07', 0),
('8803f401-57ad-e3c9-52d2-64ed19c447da', '96611c3f-0542-6304-6faa-64ed18d1687c', '164c3a2d-6c19-27a8-7999-643d42aa2def', 0, '2023-08-28 22:17:53', 1),
('885ce69b-7933-1d11-4f7c-64e3fa29b267', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6c9cb84b-265f-3af8-8b0c-643d4251a053', -99, '2023-09-25 01:52:49', 0),
('888508cb-787b-1355-3f30-64e3fceeb8fa', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '20f617ea-a2f9-90db-a0b5-643d423c35ba', -99, '2023-09-25 01:47:07', 0),
('888d3431-e79b-dd7c-2e29-64ed193c347a', '96611c3f-0542-6304-6faa-64ed18d1687c', '14041a40-73be-558b-5ad7-643d42a2271c', 0, '2023-08-28 22:17:53', 1),
('88d80e09-c2b1-ff87-520a-64ed1c63307a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5fe49b27-4936-5de6-37ac-643d42638148', -99, '2023-08-28 22:17:09', 0),
('88e73df2-1a1b-2a69-cbca-64e3fa4ecfac', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5baf86df-d03b-7342-2bfd-643d424c0a39', -99, '2023-09-25 01:52:49', 0),
('88e91453-abae-c656-4d66-64e3fcb30266', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '26744b14-5ab9-55c5-8ec1-643d4220330b', -99, '2023-09-25 01:47:07', 0),
('890b3fdf-e32f-4b1e-7159-64ed195cc62c', '96611c3f-0542-6304-6faa-64ed18d1687c', '1adbe49e-3ecf-53f2-6744-643d42534dac', 0, '2023-08-28 22:17:53', 1),
('896400ad-dba1-6dff-e646-64e3fc4784fc', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b939ff6d-476f-401b-6e5b-643d42d131a4', -99, '2023-09-25 01:47:07', 0),
('8986a2ed-5f7b-ec08-2175-64ed1c26a832', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '69d6f52f-c3b9-6135-7a75-643d422750af', -99, '2023-08-28 22:17:09', 0),
('8988cf7c-1c92-ef7b-8deb-64e3fae637f1', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '92e15dac-7c4f-3915-bc02-643d424ce18d', -98, '2023-09-25 01:52:49', 0),
('89934b50-2c04-09df-0aa3-64ed19ae35e1', '96611c3f-0542-6304-6faa-64ed18d1687c', '18c5695a-26b3-660a-475b-643d42ad6079', 0, '2023-08-28 22:17:53', 1),
('89ebdf6a-2419-ab2d-eb9c-64e3fc35ce29', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '247a2b2d-95f9-313f-76f2-643d42c6439d', -99, '2023-09-25 01:47:07', 0),
('89ed9ca8-68c1-f073-fdd3-64e3fa98fe9a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9ac140d0-d270-1200-e964-643d42edaf79', -99, '2023-09-25 01:52:49', 0),
('8a0ab27e-1e4c-acbd-3729-64ed19711c88', '96611c3f-0542-6304-6faa-64ed18d1687c', '1240b421-871b-f9a0-8139-643d42b06743', 0, '2023-08-28 22:17:53', 1),
('8a5e67f3-3fbb-e5dc-55a1-64ed1c72c026', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6623f8f0-2a39-a245-388d-643d42cd36d3', -99, '2023-08-28 22:17:09', 0),
('8a755f54-a3cf-10fe-a8ec-64e3fa8bc5dc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9902b5f2-5b63-c442-42d7-643d42b5b77a', -99, '2023-09-25 01:52:49', 0),
('8a8b9967-1b62-c643-c31b-64e3fc02219e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1eda117f-7c86-9865-0174-643d42d37055', -99, '2023-09-25 01:47:07', 0),
('8a940db0-0929-a37d-f007-64ed19d5d627', '96611c3f-0542-6304-6faa-64ed18d1687c', '1cd38f60-f082-cc95-ca19-643d42905cc4', 0, '2023-08-28 22:17:53', 1),
('8b15f966-0222-e79a-398d-64ed197ed87d', '96611c3f-0542-6304-6faa-64ed18d1687c', '1026a28e-c377-7610-ca1a-643d42963687', 0, '2023-08-28 22:17:53', 1),
('8b205da3-e9ae-cf42-bc3e-64e3fafd1716', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9eff166d-74f8-6506-b888-643d424eb40d', -99, '2023-09-25 01:52:49', 0),
('8b627ca0-5460-ef4e-7a33-64ed1c7f8406', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5da9d4dc-2def-cc56-a8f4-643d42593f0b', -99, '2023-08-28 22:17:09', 0),
('8b6d1667-14c0-a07d-a6bb-64e3fc4cb899', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '28cc7a99-835f-0b83-c3d5-643d4250f93e', -99, '2023-09-25 01:47:07', 0),
('8ba8db2a-f6dc-9319-ea7c-64e3fa507cea', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9ca206fe-a55f-5356-acd0-643d42f77212', -99, '2023-09-25 01:52:49', 0),
('8bba8eca-b233-c9b1-4dbd-64ed19a861c5', '96611c3f-0542-6304-6faa-64ed18d1687c', '9892fc40-3e4c-b365-26b3-643d422e7a06', 0, '2023-08-28 22:17:53', 1),
('8c26dd85-9ecc-6849-bb82-64e3fa0f0e01', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '971331fb-5d2b-0bcb-d8e6-643d423f2620', -99, '2023-09-25 01:52:49', 0),
('8c6173a3-7208-b49a-d498-64ed1902ff0a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a97bf2b3-2fd0-4c36-322b-643d42c74e60', 0, '2023-08-28 22:17:53', 1),
('8c6d69b6-4f1a-40dd-fda5-64e3fc19783b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1ce1b0d4-5886-d6de-96b1-643d42c82330', -99, '2023-09-25 01:47:07', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('8c7ae665-02f2-c93a-f219-64ed1cbdc10c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6c9cb84b-265f-3af8-8b0c-643d4251a053', -99, '2023-08-28 22:17:09', 0),
('8cb4733c-29b3-1177-f7b7-64e3fa1d63b8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a1d4213a-db48-0d82-475f-643d42227af7', -99, '2023-09-25 01:52:49', 0),
('8cf3f0ac-8766-f936-bd3d-64ed1976e185', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a606e345-c0f2-262e-c335-643d422adfa1', 0, '2023-08-28 22:17:53', 1),
('8d2bd542-e2e5-5c8d-b8ea-64e3fa96bd44', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '955df3c5-db1c-efc7-0a3b-643d4257d925', -99, '2023-09-25 01:52:49', 0),
('8d3d0ce3-0f53-3fde-febd-64e3fa4efa8e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '685d7fb3-86bb-8492-bc28-643d42e7e44e', -99, '2023-09-25 01:52:49', 0),
('8d4e6e61-1e18-9026-c50b-64e3fc9cef65', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'cd64ad84-2065-c303-dc5a-643d42ddbd6c', -98, '2023-09-25 01:47:07', 0),
('8d60b285-5dd3-6f7c-68b7-64ed1c329eae', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5baf86df-d03b-7342-2bfd-643d424c0a39', -99, '2023-08-28 22:17:09', 0),
('8d8fb2f9-e7ef-fcb5-6d91-64ed19659ad5', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b0621c54-ef5f-a8c4-083b-643d42adce5f', 0, '2023-08-28 22:17:53', 1),
('8db670c8-5aa9-1ed4-1a80-64e3faa9b992', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3ac3a1be-2795-c189-c071-643d42aead5b', -98, '2023-09-25 01:52:49', 0),
('8dc002cb-30b5-d5a9-d2fa-64ed191c3a75', '96611c3f-0542-6304-6faa-64ed18d1687c', 'cd2deea0-a81e-c476-6ec5-643d42ba3ec4', 0, '2023-08-28 22:17:53', 1),
('8dddd098-fc58-4218-3d72-64e3fc3a6c45', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd921d2fb-21cb-4380-3393-643d42fc41c5', -99, '2023-09-25 01:47:07', 0),
('8df95993-110d-c208-aa62-64ed19d8469b', '96611c3f-0542-6304-6faa-64ed18d1687c', 'ad965725-4082-a705-3e72-643d42c1651c', 0, '2023-08-28 22:17:53', 1),
('8e2c7e77-7dfd-2d05-cdf8-64e3fa3a99f8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5c228bcb-35c4-b558-4a80-643d428197c9', -99, '2023-09-25 01:52:49', 0),
('8e430266-21c6-72b7-4f4d-64e3fc54d78a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'aefd8727-d3a4-eb12-1a77-643d422403b5', -99, '2023-09-25 01:47:07', 0),
('8e5b2e17-cd0c-c932-445d-64ed1c234039', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '92e15dac-7c4f-3915-bc02-643d424ce18d', -98, '2023-08-28 22:17:09', 0),
('8e89d313-71d5-a5aa-c04c-64ed19174fff', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a0445ad2-d73b-7df1-acd4-643d423db58d', 0, '2023-08-28 22:17:53', 1),
('8e961e17-c4e4-2a58-0d2e-64ed1cf2a30f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'access', -98, '2023-08-28 22:17:09', 0),
('8e9c0391-e948-2869-caaf-64e3fca57095', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd6b8f4d9-6121-3625-daaa-643d426a67f6', -99, '2023-09-25 01:47:07', 0),
('8ef67dfb-57eb-0ec9-750b-64ed1c88d549', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9ac140d0-d270-1200-e964-643d42edaf79', -99, '2023-08-28 22:17:09', 0),
('8f0472ae-16c1-3d0a-cf79-64ed19184896', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b336ef1c-9877-ff1b-1f21-643d42537cfd', 0, '2023-08-28 22:17:53', 1),
('8f0a87be-bb25-d7a4-e068-64e3fc00b3a3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e2fea466-52ff-d091-ddb5-643d42d87664', -99, '2023-09-25 01:47:07', 0),
('8f3ff93a-06c2-7e33-757f-64e3fa3aae40', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '44c788a1-622c-6c6c-22d6-643d42f7a561', -99, '2023-09-25 01:52:49', 0),
('8f947d16-bd77-ab9e-93bf-64ed192cb192', '96611c3f-0542-6304-6faa-64ed18d1687c', '9caf10c5-f7e9-e47c-0069-643d42f09040', 0, '2023-08-28 22:17:53', 1),
('8f94ee1f-daf0-4a99-38ee-64e3fcb0114c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'dfe88f27-1c49-c87e-054e-643d42b1b613', -99, '2023-09-25 01:47:07', 0),
('8fcadb64-de14-0dd5-f39d-64ed1cb41b00', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9902b5f2-5b63-c442-42d7-643d42b5b77a', -99, '2023-08-28 22:17:09', 0),
('8fe8eda0-b22f-50c3-922f-64e3fa5087b8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '65ff257d-6f6b-ae90-493b-643d42698a1f', -99, '2023-09-25 01:52:49', 0),
('900ad1c6-519c-fea5-2615-64e3fc8118fb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd398d6c5-1fd5-2558-ea8b-643d42febc88', -99, '2023-09-25 01:47:07', 0),
('900b1392-a887-0780-9925-64ed19e0885e', '96611c3f-0542-6304-6faa-64ed18d1687c', '90d70a18-7930-6538-3fbc-643d42c545f5', 0, '2023-08-28 22:17:53', 1),
('90944c02-e263-ebfe-66e0-64e3fc46bc07', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e60d1c08-d1f6-f37e-4480-643d42b5b139', -99, '2023-09-25 01:47:07', 0),
('90953ea7-93f4-34c5-6247-64ed194e41e3', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a0355c13-ad06-1ad1-773a-643d4266a498', 0, '2023-08-28 22:17:53', 1),
('90a4b19f-afcb-6a88-87df-64ed1c22cd70', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9eff166d-74f8-6506-b888-643d424eb40d', -99, '2023-08-28 22:17:09', 0),
('90b76f15-321a-94d5-ffbe-64e3fa04748b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6071aa09-dc75-c4a7-4434-643d4281592e', -99, '2023-09-25 01:52:49', 0),
('910cd6f4-605c-8aba-1b34-64ed19e2d70b', '96611c3f-0542-6304-6faa-64ed18d1687c', '9d32b466-e9da-c17d-4b7f-643d42977d34', 0, '2023-08-28 22:17:53', 1),
('91127505-7096-e855-9cfb-64e3fc0ee635', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd0846199-52f1-6cbe-bc3f-643d4256389b', -99, '2023-09-25 01:47:07', 0),
('91420568-c48b-0c60-fee4-64e3fc3a1107', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c7aac132-5fa8-b933-9991-643d4252c967', -99, '2023-09-25 01:47:07', 0),
('9145f278-a690-76b0-3d7a-64ed1c6f36e6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'delete', -99, '2023-08-28 22:17:09', 0),
('91520b70-3828-0978-c130-64e3fa9410ed', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '41c69dd7-31cf-1152-f982-643d42ddf714', -99, '2023-09-25 01:52:49', 0),
('9195463b-65f6-49ec-927a-64ed1973fa66', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a56ed735-7b43-f738-6f28-643d42708fcc', 0, '2023-08-28 22:17:53', 1),
('91a0c11e-e1a0-bd16-7563-64e3fc41dbbe', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8871bbfa-fb5c-f7a2-bb8f-643d42cad534', -98, '2023-09-25 01:47:07', 0),
('91bd4cf5-d665-41a0-abe1-64e3faff5a80', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '691196f2-b7d6-3954-1ec4-643d42de275d', -99, '2023-09-25 01:52:49', 0),
('91e345cf-da7c-e97f-70cb-64ed1c0b68e9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9ca206fe-a55f-5356-acd0-643d42f77212', -99, '2023-08-28 22:17:09', 0),
('91eae639-0fef-95b9-e829-64ed1c82e709', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'edit', -99, '2023-08-28 22:17:09', 0),
('92172632-14fc-cb06-6f2f-64e3fc7825c3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '944f8ed7-cf99-be1f-33d9-643d42b4466f', -99, '2023-09-25 01:47:07', 0),
('92240ee1-9dce-c7ee-31f2-64ed1c556e43', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9a06e864-baa3-cc51-fd51-643d422c5610', -99, '2023-08-28 22:17:09', 0),
('9244c312-7207-da01-490b-64e3faee90bf', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3e011d04-6712-7956-24d6-643d42004acf', -99, '2023-09-25 01:52:49', 0),
('927c42ef-020b-4c89-5ab6-64ed1ce75517', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'export', -99, '2023-08-28 22:17:09', 0),
('92988c6a-d86d-57b1-aedb-64ed1c4e7369', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '971331fb-5d2b-0bcb-d8e6-643d423f2620', -99, '2023-08-28 22:17:09', 0),
('92a807c9-6fa8-fcaa-0ba3-64e3fc30da9d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '91147876-d8b7-1217-59b0-643d42723378', -99, '2023-09-25 01:47:07', 0),
('92af11b1-d403-4f48-f700-64ed19d027f3', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a2de6a4a-cb4d-692a-d0f4-643d42cdc625', 0, '2023-08-28 22:17:53', 1),
('92c2e650-6b06-6d15-6ffd-64e3fa3d3098', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1c12ef83-cb08-55cf-2f79-643d42ba9596', -98, '2023-09-25 01:52:49', 0),
('9300077d-107e-63ea-4741-64ed1ceca825', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1cd38f60-f082-cc95-ca19-643d42905cc4', -99, '2023-08-28 22:17:09', 0),
('93259649-bdb7-27a8-6d4e-64ed1c287643', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'import', -99, '2023-08-28 22:17:09', 0),
('93379537-1801-9c87-8f61-64ed19319efd', '96611c3f-0542-6304-6faa-64ed18d1687c', '9a06e864-baa3-cc51-fd51-643d422c5610', 0, '2023-08-28 22:17:53', 1),
('933dc7f9-a099-43a7-c007-64e3fc7ee521', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '99ddafa8-9321-0e64-b46d-643d421c50aa', -99, '2023-09-25 01:47:07', 0),
('93535dca-76fb-038a-0ea2-64e3fae96fcb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '25eb71f1-29e2-2ade-750f-643d4265fd32', -99, '2023-09-25 01:52:49', 0),
('9374078d-f52f-ca4e-e425-64e3facb24aa', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '790236bf-94d9-3487-09d0-643d424cd228', -99, '2023-09-25 01:52:49', 0),
('938bbaf8-9117-0505-66eb-64ed1c59baf3', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a1d4213a-db48-0d82-475f-643d42227af7', -99, '2023-08-28 22:17:09', 0),
('93bc53e1-aa62-38d2-a27f-64ed1c678f7c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'list', -99, '2023-08-28 22:17:09', 0),
('93c8808e-1eed-e025-64b5-64e3facf5b99', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '23bd3518-afc4-2601-fa4d-643d42b23485', -99, '2023-09-25 01:52:49', 0),
('93e60a4e-34cb-812d-7a14-64e3fc830c78', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '97390838-1340-e12b-b0ec-643d42ea9fcf', -99, '2023-09-25 01:47:07', 0),
('9459cc8d-0e4a-af25-b346-64e3fab04e2e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2a4697b0-3240-c8b3-d01f-643d422579a5', -99, '2023-09-25 01:52:49', 0),
('9463fb4e-acd1-ec7f-db9d-64ed19735b3e', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a7f7162c-33e3-0b66-8937-643d42c5d2dc', 0, '2023-08-28 22:17:53', 1),
('946696cf-e4f1-d7a1-fed6-64ed1ccd8b20', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'massupdate', -99, '2023-08-28 22:17:09', 0),
('94709426-05cf-7d1f-d1c6-64e3fcb88bf5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8e2fc654-f1dd-c2a6-9b7b-643d4238d82b', -99, '2023-09-25 01:47:07', 0),
('94ae760a-6d9d-d835-abac-64ed1ca57050', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '955df3c5-db1c-efc7-0a3b-643d4257d925', -99, '2023-08-28 22:17:09', 0),
('94ca4c11-d288-7019-ff70-64e3fa2ae480', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '27f59658-b650-9952-69e2-643d428bf721', -99, '2023-09-25 01:52:49', 0),
('94da3b10-1644-b9cb-c36c-64ed1c2ae616', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'view', -99, '2023-08-28 22:17:09', 0),
('94fc3181-a460-9e51-525a-64ed19a29701', '96611c3f-0542-6304-6faa-64ed18d1687c', '96d3c5dc-c323-34b0-76b5-643d4241b113', 0, '2023-08-28 22:17:53', 1),
('953b0df8-5bb5-06ac-3119-64ed19e79e8c', '96611c3f-0542-6304-6faa-64ed18d1687c', 'daeca790-468f-f029-e2ba-643d42da298c', 0, '2023-08-28 22:17:53', 1),
('95446df4-d213-1c60-db38-64ed1c7cfe14', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3ac3a1be-2795-c189-c071-643d42aead5b', -98, '2023-08-28 22:17:09', 0),
('9552d80f-11c3-86b4-7022-64e3fab1cd2b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '21a5b584-c1b8-d7d9-6e34-643d42922a53', -99, '2023-09-25 01:52:49', 0),
('956c02ed-98b2-7fce-0759-64e3fc3267f0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9c2c3603-e4f2-6f36-4f94-643d42967850', -99, '2023-09-25 01:47:07', 0),
('9591cde0-d23c-81af-7bd6-64ed19eaf8f5', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b9ca88b7-bdef-9a0b-cbb6-643d42fdd951', 0, '2023-08-28 22:17:53', 1),
('95a50b53-fde4-c337-f6a1-64e3fcaff03d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'aca6bba4-da7e-4ee0-6d5c-643d42429b0d', -99, '2023-09-25 01:47:07', 0),
('95c1163b-6b2a-a91c-eef7-64ed1cb98a25', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5c228bcb-35c4-b558-4a80-643d428197c9', -99, '2023-08-28 22:17:09', 0),
('95d430d1-0b8c-7211-a76b-64e3fce1f70c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8b6a5436-1e65-d670-4d71-643d42066012', -99, '2023-09-25 01:47:07', 0),
('95fae49a-690e-f167-6a5e-64e3fa4dddd8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2d9df5e2-e704-40ac-c128-643d42dfe310', -99, '2023-09-25 01:52:49', 0),
('9601ad92-745e-5e15-b108-64ed1954472d', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c67df9e8-6f18-5711-1d40-643d4264eb9f', 0, '2023-08-28 22:17:53', 1),
('965ce16b-14e0-cf77-89a1-64e3fc248cac', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b5440a3c-120e-44cf-52d2-643d425bf629', 89, '2023-09-25 01:47:07', 0),
('965e08be-cda4-1dbe-fa24-64ed1c98ebfb', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '44c788a1-622c-6c6c-22d6-643d42f7a561', -99, '2023-08-28 22:17:09', 0),
('968c0cf8-3610-7d0e-f6b9-64e3fa5504b2', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1ec1941b-161d-56d7-77ea-643d42a19f13', -99, '2023-09-25 01:52:49', 0),
('96918028-97e9-94be-6929-64ed195a2395', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c3f7a76b-2759-c86a-501f-643d427cdb35', 0, '2023-08-28 22:17:53', 1),
('96d3ec95-12b1-ff8b-68e8-64ed1c6aaf88', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '65ff257d-6f6b-ae90-493b-643d42698a1f', -99, '2023-08-28 22:17:09', 0),
('96dba0c9-762d-b575-aa93-64e3fc28c680', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c12f12ed-d0de-833b-28dc-643d424439cc', 90, '2023-09-25 01:47:07', 0),
('96efd9d2-216f-bb65-4c06-64e3faa58a5c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3291ce61-6dc2-3656-9dfb-643d4238a8db', -98, '2023-09-25 01:52:49', 0),
('972e8b52-c74e-855d-b073-64ed191774c6', '96611c3f-0542-6304-6faa-64ed18d1687c', 'cc7d16f2-498c-3b33-d1ec-643d42f07ddf', 0, '2023-08-28 22:17:53', 1),
('97634bac-6923-48a4-6bfe-64e3fc29befe', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'be37d83f-5fd1-4e2a-eab4-643d4232e6d6', 90, '2023-09-25 01:47:07', 0),
('97685338-09b9-bfbd-8be4-64ed1c320f2c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6071aa09-dc75-c4a7-4434-643d4281592e', -99, '2023-08-28 22:17:09', 0),
('9778aaa7-de07-de1e-18e4-64e3fa629f07', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3fc6fc1d-bb6c-424b-a1bc-643d427c0cc5', -99, '2023-09-25 01:52:49', 0),
('9797c051-7f17-f3fd-c08c-64ed19c64183', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c98c0e55-84ac-c618-0731-643d42e94df7', 0, '2023-08-28 22:17:53', 1),
('97e0c78d-04f4-1db1-fdb6-64e3fcc8e97b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c5bc5513-c14e-4816-44b1-643d424385ff', -99, '2023-09-25 01:47:07', 0),
('97e33850-e330-5570-b79f-64ed1c1088a7', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '41c69dd7-31cf-1152-f982-643d42ddf714', -99, '2023-08-28 22:17:09', 0),
('97f04c31-4aa7-31c5-5c5d-64e3fac12f8f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3d842321-1f42-32a6-91ae-643d42b7cbbe', -99, '2023-09-25 01:52:49', 0),
('98649577-d31b-298b-4d73-64ed19fe1a1b', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c0ccaf4e-8792-11ad-1bec-643d42234848', 0, '2023-08-28 22:17:53', 1),
('986a7c4d-4104-bd36-a0be-64e3fcb08647', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c384f6b9-e02e-515d-e52b-643d4205628f', -99, '2023-09-25 01:47:07', 0),
('986f1363-8081-fcf0-3c4d-64ed1c86435b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '691196f2-b7d6-3954-1ec4-643d42de275d', -99, '2023-08-28 22:17:09', 0),
('987e4d21-bb73-e0a8-8705-64e3faefe779', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4696b7e8-2f0e-d4e1-e2fc-643d42d907c5', -99, '2023-09-25 01:52:49', 0),
('98e193ed-14c3-2153-9cae-64ed19e465da', '96611c3f-0542-6304-6faa-64ed18d1687c', 'cf3b6446-b35f-7467-5fc1-643d42fdeea1', 0, '2023-08-28 22:17:53', 1),
('98e70155-56a3-048e-dd31-64e3fcfa52e0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'bb2f25a7-4a02-2c7f-51d4-643d420cf04b', -99, '2023-09-25 01:47:07', 0),
('98ecf79c-79ed-c47e-4f37-64ed1cc9403b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3e011d04-6712-7956-24d6-643d42004acf', -99, '2023-08-28 22:17:09', 0),
('98f5b1d4-20dd-f8ad-98cc-64e3fa1a2bb0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '43026e67-ccdb-f06a-01a4-643d42d2b66a', -99, '2023-09-25 01:52:49', 0),
('996b4202-afa2-5826-f278-64ed1984d42a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'bde704f5-761a-4a07-80d6-643d425c7bb1', 0, '2023-08-28 22:17:53', 1),
('997528a4-1b95-5b87-2207-64ed1c5d0a04', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1c12ef83-cb08-55cf-2f79-643d42ba9596', -98, '2023-08-28 22:17:09', 0),
('9980302f-f861-a51d-dd05-64e3fa436583', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3ae27b9b-17cd-2231-db91-643d424574cf', -99, '2023-09-25 01:52:49', 0),
('99aec15c-be86-70dc-fd4d-64e3fc0a3956', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'c7b1cd44-3c15-4121-e0d4-643d427323bc', -99, '2023-09-25 01:47:07', 0),
('99ea7454-4804-d574-6916-64ed193cec1c', '96611c3f-0542-6304-6faa-64ed18d1687c', '5f1f04da-595b-b172-938d-643d42df6264', 0, '2023-08-28 22:17:53', 1),
('9a1bc43f-73ed-3fca-26d0-64e3fabce871', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4a1c4d83-eb57-7fad-6d9d-643d429fb639', -99, '2023-09-25 01:52:49', 0),
('9a1f14ea-b4e5-f032-0b0e-64ed1c23144a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '25eb71f1-29e2-2ade-750f-643d4265fd32', -99, '2023-08-28 22:17:09', 0),
('9a6cc46a-d225-08ed-3f4a-64e3fc8b30e3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b8bac30b-3e25-7eb7-1671-643d42f09a8e', 90, '2023-09-25 01:47:07', 0),
('9a72d7a5-9c8b-61bd-90cc-64ed19f06938', '96611c3f-0542-6304-6faa-64ed18d1687c', '6f4b56ee-6b9a-6582-d189-643d42b55275', 0, '2023-08-28 22:17:53', 1),
('9a86a887-6734-e0d4-2539-64e3fa7c61f6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '37d7bc9d-b39d-1a27-0ba5-643d42dd2488', -99, '2023-09-25 01:52:49', 0),
('9a980649-be3f-bc38-5d6f-64e3fc21bf32', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b6c26ca5-d988-f9bb-472b-643d42e1070a', -99, '2023-09-25 01:47:07', 0),
('9ab803cc-b8c8-b744-3dbf-64ed1c8d1cd7', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a7f7162c-33e3-0b66-8937-643d42c5d2dc', -99, '2023-08-28 22:17:09', 0),
('9ac03f57-9162-f791-a768-64ed1c6a520a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '23bd3518-afc4-2601-fa4d-643d42b23485', -99, '2023-08-28 22:17:09', 0),
('9ad5806e-4913-5c2d-cbad-64e3fc9ca487', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'cf525505-651c-f24e-aab4-643d4248f835', 89, '2023-09-25 01:47:07', 0),
('9af01b2e-82b8-2f7a-05d3-64ed19a7fe87', '96611c3f-0542-6304-6faa-64ed18d1687c', '6bc1f78d-8e4b-8209-512a-643d4283840f', 0, '2023-08-28 22:17:53', 1),
('9b5e269a-dca2-edff-ad00-64e3fc61148e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'db3216f4-7d45-8fb1-5111-643d4224801f', 90, '2023-09-25 01:47:07', 0),
('9b601b5a-0548-5e15-4a06-64ed1c1ce231', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2a4697b0-3240-c8b3-d01f-643d422579a5', -99, '2023-08-28 22:17:09', 0),
('9b7f99df-7dc9-ee9c-b23c-64ed196a0344', '96611c3f-0542-6304-6faa-64ed18d1687c', '75ca38c5-ebff-3350-2c4b-643d42a56fab', 0, '2023-08-28 22:17:53', 1),
('9bcde1ef-eae8-ec99-7bdf-64ed1cdfe284', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '27f59658-b650-9952-69e2-643d428bf721', -99, '2023-08-28 22:17:09', 0),
('9bd67f4c-e575-d679-ee97-64e3fc4571a3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd8d127e8-a1de-0e2b-042a-643d421dc0ea', 90, '2023-09-25 01:47:07', 0),
('9c15c313-a692-73fc-2db4-64ed195113d2', '96611c3f-0542-6304-6faa-64ed18d1687c', '72c4cf67-9fe1-9e28-9659-643d42314c14', 0, '2023-08-28 22:17:53', 1),
('9c25026c-c252-7efb-e102-64e3fa89ec5b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '643f2be8-7e80-985b-62e4-643d4230b986', -99, '2023-09-25 01:52:49', 0),
('9c5c5bca-6b50-8ca0-9b55-64ed1c5088d7', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '21a5b584-c1b8-d7d9-6e34-643d42922a53', -99, '2023-08-28 22:17:09', 0),
('9c5edb8b-3a9e-7fb3-e6e8-64e3fc11c11a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'df8c42c9-3aee-be58-671d-643d4235d873', -99, '2023-09-25 01:47:07', 0),
('9c78ec30-0093-4298-3cc1-64ed1928a794', '96611c3f-0542-6304-6faa-64ed18d1687c', '685d7fb3-86bb-8492-bc28-643d42e7e44e', 0, '2023-08-28 22:17:53', 1),
('9cd4d482-9387-59a6-da8a-64ed1c84723d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2d9df5e2-e704-40ac-c128-643d42dfe310', -99, '2023-08-28 22:17:09', 0),
('9cdba590-ac0d-8c2c-6eed-64e3fca146e8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'dd797512-f07f-81a9-d6fb-643d424037ec', -99, '2023-09-25 01:47:07', 0),
('9d01c9d1-6a68-7e56-a502-64ed199ab925', '96611c3f-0542-6304-6faa-64ed18d1687c', '790236bf-94d9-3487-09d0-643d424cd228', 0, '2023-08-28 22:17:53', 1),
('9d5d5ac4-4756-35b2-9345-64ed1c8abeff', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1ec1941b-161d-56d7-77ea-643d42a19f13', -99, '2023-08-28 22:17:09', 0),
('9d65882a-a064-5832-889d-64e3fce4b008', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd6a22a53-6b00-a901-df6f-643d42fecebc', -99, '2023-09-25 01:47:07', 0),
('9d76489a-7362-3269-30a9-64e3fa0c3bae', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '587e63d5-1ad4-6c4c-896b-643d428a3ba1', -98, '2023-09-25 01:52:49', 0),
('9d9e64e1-5c71-3112-ebe6-64ed19f808df', '96611c3f-0542-6304-6faa-64ed18d1687c', '643f2be8-7e80-985b-62e4-643d4230b986', 0, '2023-08-28 22:17:53', 1),
('9dd104c2-514e-6ae5-e4c4-64ed19b2759c', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd7d96093-4137-5e83-fd6a-643d424a69dd', 0, '2023-08-28 22:17:53', 1),
('9ddb1858-3c11-ee63-5c93-64ed1c2cea90', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3291ce61-6dc2-3656-9dfb-643d4238a8db', -98, '2023-08-28 22:17:09', 0),
('9de1c932-a5d9-a183-0889-64e3fca1d42f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e1d2a11c-d5f5-b89b-7766-643d42b1e357', -99, '2023-09-25 01:47:07', 0),
('9e394a8f-9cd3-114e-fdd8-64e3fa83af5b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '62ad92fd-05d8-edd6-5e14-643d42e04c48', -99, '2023-09-25 01:52:49', 0),
('9e3e09de-aa19-a7c1-0c77-64e3fc7b86eb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a5d71559-5ef5-2513-8bea-643d424b3e1c', -99, '2023-09-25 01:47:07', 0),
('9e4061bd-ba3e-c1af-ee21-64ed191dad10', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a384ebfd-f798-c305-2eeb-643d426219fc', 0, '2023-08-28 22:17:53', 1),
('9e638d2e-7b9c-f32a-07b5-64ed1cbda048', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3fc6fc1d-bb6c-424b-a1bc-643d427c0cc5', -99, '2023-08-28 22:17:09', 0),
('9ea79897-653e-6db1-b06e-64e3fab10ea6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '60203409-538b-7451-c953-643d4239ee5f', -99, '2023-09-25 01:52:49', 0),
('9eb13b21-50ba-f3c9-3f19-64e3fcbba545', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd3cd96e4-a704-4034-23e1-643d421d60bb', 90, '2023-09-25 01:47:07', 0),
('9f079480-d9fd-cfb6-4156-64ed1c591abc', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3d842321-1f42-32a6-91ae-643d42b7cbbe', -99, '2023-08-28 22:17:09', 0),
('9f373bff-381e-e26c-e8ae-64e3faf0a9a2', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '67763625-2266-0e06-ab21-643d42e41619', -99, '2023-09-25 01:52:49', 0),
('9f4459f8-4557-f6de-34db-64ed19fbf99d', '96611c3f-0542-6304-6faa-64ed18d1687c', 'adb35373-f666-2910-3564-643d42c2f959', 0, '2023-08-28 22:17:53', 1),
('9f4e7dff-c58b-0d27-d65b-64e3fc5e77a5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '358a3d09-f62c-dd9b-621f-643d424b9a8d', -98, '2023-09-25 01:47:07', 0),
('9fab465f-7e82-8f6e-33f0-64ed1950bef6', '96611c3f-0542-6304-6faa-64ed18d1687c', 'ab15d5db-f931-aa5d-86e7-643d425ff462', 0, '2023-08-28 22:17:53', 1),
('9fb5afa2-a602-27f7-2000-64ed1c681471', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4696b7e8-2f0e-d4e1-e2fc-643d42d907c5', -99, '2023-08-28 22:17:09', 0),
('9fb78b42-ecb3-bc08-7959-64e3fc11c979', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3fb6b234-b3fc-d865-8b0d-643d42afa345', -99, '2023-09-25 01:47:07', 0),
('a03f6a41-4ea2-08f9-1638-64ed1c58bedd', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '43026e67-ccdb-f06a-01a4-643d42d2b66a', -99, '2023-08-28 22:17:09', 0),
('a04011cf-c090-9460-5e61-64e3fc8c000f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3d18525f-9c6e-3ba6-2300-643d42c12f39', -99, '2023-09-25 01:47:07', 0),
('a04d6e86-348f-bd84-ddb8-64ed190f8e98', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b3303191-95a1-ab43-b3b4-643d42ca3eca', 0, '2023-08-28 22:17:53', 1),
('a054ce64-86e6-55ae-20fe-64e3faa5032a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '64fd8b6e-18db-5c97-76c6-643d42d12487', -99, '2023-09-25 01:52:49', 0),
('a0bedf50-43cc-139c-ca6c-64e3fc6ae4d9', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '44b52419-0530-b7e2-553e-643d42a731f6', -99, '2023-09-25 01:47:07', 0),
('a0c29f0a-120b-c611-b8d6-64ed1c62fa0e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3ae27b9b-17cd-2231-db91-643d424574cf', -99, '2023-08-28 22:17:09', 0),
('a0f85361-6250-9297-c148-64e3faa04dff', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5ddc5fb8-9db0-78df-2077-643d42f3b2b2', -99, '2023-09-25 01:52:49', 0),
('a146f93a-7865-0d14-a578-64e3fc7401e5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '422cc733-699e-8767-48c0-643d428de70d', -99, '2023-09-25 01:47:07', 0),
('a152db21-386b-1f96-59f3-64ed1cadddaa', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4a1c4d83-eb57-7fad-6d9d-643d429fb639', -99, '2023-08-28 22:17:09', 0),
('a154f5e6-9ce8-c8c4-d449-64ed195d20e5', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b0653f3d-944e-9630-0256-643d424223c6', 0, '2023-08-28 22:17:53', 1),
('a16295b3-260d-155c-7095-64e3fa768bdd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '69a21c13-2952-08dc-3320-643d42583953', -99, '2023-09-25 01:52:49', 0),
('a1bb0387-4d5a-15c5-05ce-64e3fc0b9313', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4525f0f3-fadd-0d80-971a-645032f47b39', 89, '2023-09-25 01:47:07', 0),
('a1bd5654-a106-4071-26ec-64e3fc13253f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3abd6f75-729c-219e-7c5d-643d42a08b49', -99, '2023-09-25 01:47:07', 0),
('a1eb2515-2b82-ef4d-a645-64e3faa3759f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5b5d5aa7-2f8f-e503-b97e-643d42361b6c', -99, '2023-09-25 01:52:49', 0),
('a1f423df-d5d3-4cae-fb00-64ed1c296fb2', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '37d7bc9d-b39d-1a27-0ba5-643d42dd2488', -99, '2023-08-28 22:17:09', 0),
('a217cd0c-9535-10d7-d53e-64ed192cedcb', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a8a27bd3-2c66-7e50-01b5-643d424e3274', 0, '2023-08-28 22:17:53', 1),
('a247de27-bfd3-4934-73db-64e3fc11021f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '479b5deb-6c04-228c-1130-643d425465a8', -99, '2023-09-25 01:47:07', 0),
('a25e5b5a-b829-a5e3-2458-64ed1c1d79ac', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '587e63d5-1ad4-6c4c-896b-643d428a3ba1', -98, '2023-08-28 22:17:09', 0),
('a26930b6-0e12-52c1-dbcd-64e3fa482b45', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '18754228-6a6f-13d0-3b49-643d42c860d4', -98, '2023-09-25 01:52:49', 0),
('a27bc5d8-9b5d-41ea-865e-64ed1942b820', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b5f4016f-a91b-b857-1710-643d42f986a1', 0, '2023-08-28 22:17:53', 1),
('a2b30d5d-2fab-fa32-0ecc-64ed1c966bb6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '96d3c5dc-c323-34b0-76b5-643d4241b113', -99, '2023-08-28 22:17:09', 0),
('a2e317b0-fc9c-0463-9541-64e3fc99c3bf', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '38ba949d-3ee7-4c05-2f9f-643d42f5e185', -99, '2023-09-25 01:47:07', 0),
('a2eeb32f-161b-e7c1-1807-64ed1c7e883c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '62ad92fd-05d8-edd6-5e14-643d42e04c48', -99, '2023-08-28 22:17:09', 0),
('a3310afb-78ac-d670-7cec-64e3fab1dbf5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '25344b6e-7108-f8dd-147b-643d429ad28d', -99, '2023-09-25 01:52:49', 0),
('a341c025-9517-6e5f-41c9-64ed196c8391', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a61fea35-60aa-14d9-6125-643d42442c8a', 0, '2023-08-28 22:17:53', 1),
('a34e50a6-31f4-96a0-42b9-64e3fc77c7cb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'f244c6ac-f7a0-1bed-f693-643d4235765c', -98, '2023-09-25 01:47:07', 0),
('a364c71e-ae85-20cb-92ca-64ed1c5928f0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '60203409-538b-7451-c953-643d4239ee5f', -99, '2023-08-28 22:17:09', 0),
('a37e0d71-7470-f644-25d0-64e3fac6751f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a384ebfd-f798-c305-2eeb-643d426219fc', 89, '2023-09-25 01:52:49', 0),
('a3b40a40-984b-caef-d801-64e3fa3dd1e8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '21ea3fa1-4b51-7038-b219-643d42bba8ac', -99, '2023-09-25 01:52:49', 0),
('a3cce6f8-eed5-70e1-4236-64ed19867f93', '96611c3f-0542-6304-6faa-64ed18d1687c', '50262b93-bc6d-6811-c326-643d423e7b56', 0, '2023-08-28 22:17:53', 1),
('a3f54817-45df-1dbc-c2c7-64ed1c2acb1d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '67763625-2266-0e06-ab21-643d42e41619', -99, '2023-08-28 22:17:09', 0),
('a44ad57a-f3ad-f738-2f89-64ed1951a9fd', '96611c3f-0542-6304-6faa-64ed18d1687c', '5983d8b0-9b7b-9a13-24fd-643d42b163f2', 0, '2023-08-28 22:17:53', 1),
('a455b1ae-86f7-98c3-7594-64e3fac28905', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2a4fa106-22a0-f631-4457-643d42edddb3', -99, '2023-09-25 01:52:49', 0),
('a45f7ba8-9b56-0939-633d-64ed1ce064c5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '64fd8b6e-18db-5c97-76c6-643d42d12487', -99, '2023-08-28 22:17:09', 0),
('a4b76c4e-2771-d5ac-48e6-64e3fcde1e43', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '898f00c6-9cfa-713e-e364-643d427d05ec', -99, '2023-09-25 01:47:07', 0),
('a4da5f52-beb1-dccb-2975-64ed19107fc4', '96611c3f-0542-6304-6faa-64ed18d1687c', '57581f24-ab95-43da-f130-643d420ee578', 0, '2023-08-28 22:17:53', 1),
('a4e01fd8-9d4a-d5f6-b983-64e3fafcc412', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '27c8e436-475b-e1e9-23a0-643d423fb989', -99, '2023-09-25 01:52:49', 0),
('a527e00b-1b07-3684-746a-64ed1c991cc8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5ddc5fb8-9db0-78df-2077-643d42f3b2b2', -99, '2023-08-28 22:17:09', 0),
('a54eef7b-90b3-8834-ae8a-64ed1996680e', '96611c3f-0542-6304-6faa-64ed18d1687c', '5e2003a6-cb62-64c2-b317-643d42284b57', 0, '2023-08-28 22:17:53', 1),
('a55b36b7-3d06-bca5-78dc-64e3fa1a3242', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '20058d18-0722-5d89-e929-643d4237b2f3', -99, '2023-09-25 01:52:49', 0),
('a5626a78-d553-b7a6-9b9d-64e3fc816ffb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '57690809-b91c-6cd2-5ca7-643d42effc68', -99, '2023-09-25 01:47:07', 0),
('a5ae6850-e943-db03-82dc-64ed1ceca308', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '69a21c13-2952-08dc-3320-643d42583953', -99, '2023-08-28 22:17:09', 0),
('a5d81519-2dcd-4dab-ef15-64ed1907acdb', '96611c3f-0542-6304-6faa-64ed18d1687c', '5b90a6bd-e8cc-5201-6a90-643d4287774a', 0, '2023-08-28 22:17:53', 1),
('a5ffab62-ffc2-9db8-840d-64e3fada1f84', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2d16dc83-148f-391d-57db-643d42abc978', -99, '2023-09-25 01:52:49', 0),
('a61707d9-9519-dc99-f539-64e3fc0dc880', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b26aa161-75e7-bbfa-eebb-643d425821a6', -99, '2023-09-25 01:47:07', 0),
('a6313fa2-82df-60b4-35df-64e3fcff48f0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '10473511-7921-dbd6-22f1-643d429a330e', -99, '2023-09-25 01:47:07', 0),
('a64edf9c-4129-f267-d97a-64ed1ccee6f9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5b5d5aa7-2f8f-e503-b97e-643d42361b6c', -99, '2023-08-28 22:17:09', 0),
('a65192ea-5964-810f-2f6a-64ed198a7941', '96611c3f-0542-6304-6faa-64ed18d1687c', '55961af2-5f21-9d83-7af2-643d42520528', 0, '2023-08-28 22:17:53', 1),
('a66ff8ab-ca6c-c314-49ce-64e3fa7a9c8b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1db5ca27-9945-5c8b-9a72-643d42497250', -99, '2023-09-25 01:52:49', 0),
('a6d2a0ee-b451-1c0a-95b5-64e3fc11e5ae', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'cefc0924-8147-24d4-76c5-643d42d653bc', -99, '2023-09-25 01:47:07', 0),
('a6d6d77f-a5ba-862b-3111-64ed1c1ca915', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '18754228-6a6f-13d0-3b49-643d42c860d4', -98, '2023-08-28 22:17:09', 0),
('a6df022b-3811-380a-532d-64ed19e0e883', '96611c3f-0542-6304-6faa-64ed18d1687c', '60d7a73d-9ae7-91dc-af03-643d4211000b', 0, '2023-08-28 22:17:53', 1),
('a7117819-4b48-ad9d-0135-64e3fac21e4f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9e8c8d77-450a-1896-ce31-643d42df5682', -98, '2023-09-25 01:52:49', 0),
('a737d829-3d66-922c-1bfc-64e3fc93f445', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '29ec0d43-0049-56ff-8f01-643d423be8ac', -99, '2023-09-25 01:47:07', 0),
('a750f269-7946-1fbc-9187-64ed192fb7be', '96611c3f-0542-6304-6faa-64ed18d1687c', '534a269b-da64-9c46-6dbc-643d42133245', 0, '2023-08-28 22:17:53', 1),
('a753879f-975e-0c17-41cd-64ed1cb1cdb2', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '25344b6e-7108-f8dd-147b-643d429ad28d', -99, '2023-08-28 22:17:09', 0),
('a78f30da-6c8e-6cd6-a4ce-64e3fa376728', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'aea8f222-4ddd-ce12-7094-643d42640dcf', -99, '2023-09-25 01:52:49', 0),
('a7bf44f5-43c5-33c3-4d8a-64e3fcaf6c57', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '12a235ee-1633-f953-b38c-643d42067f0b', -99, '2023-09-25 01:47:07', 0),
('a7d9a95c-fd77-de2f-bc7e-64ed19910cc7', '96611c3f-0542-6304-6faa-64ed18d1687c', '8610deb7-0f6c-975b-995c-643d42bc906e', 0, '2023-08-28 22:17:53', 1),
('a7dd61fe-03c6-8f36-d212-64ed1ca5e221', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '21ea3fa1-4b51-7038-b219-643d42bba8ac', -99, '2023-08-28 22:17:09', 0),
('a83c425a-8472-dff4-1016-64e3fce7187d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b0400a95-28b5-65a1-c17a-643d42a702ef', -99, '2023-09-25 01:47:07', 0),
('a859fcf6-4a39-832c-c0df-64ed1c8c0923', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2a4fa106-22a0-f631-4457-643d42edddb3', -99, '2023-08-28 22:17:09', 0),
('a87ca16c-d5bc-1dd0-38d6-64ed1998cc00', '96611c3f-0542-6304-6faa-64ed18d1687c', '8ff01bc2-19a5-801a-f2cd-643d42c340b8', 0, '2023-08-28 22:17:53', 1),
('a89b7e2b-208d-efba-a5a6-64e3faf77c62', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'abfd3021-01ef-ce0b-4651-643d42a23fb1', -99, '2023-09-25 01:52:49', 0),
('a8e47ea1-b3a9-a658-b37a-64ed1c2050d1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '27c8e436-475b-e1e9-23a0-643d423fb989', -99, '2023-08-28 22:17:09', 0),
('a904a24a-0983-8dec-c7fe-64e3fc2cc849', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'cfc7767b-a8e2-316d-0760-643d424c79f4', -98, '2023-09-25 01:47:07', 0),
('a905ba9a-810b-416d-5492-64ed19a3fae3', '96611c3f-0542-6304-6faa-64ed18d1687c', '8d549135-b8b5-8a0a-5e5c-643d427ec496', 0, '2023-08-28 22:17:53', 1),
('a93ec2ce-c614-be3e-eee8-64e3fa3e59af', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b3cba99d-bdc5-b1aa-f2ae-643d42da459d', -99, '2023-09-25 01:52:49', 0),
('a95a781b-1432-1140-509a-64ed1c8cf916', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '20058d18-0722-5d89-e929-643d4237b2f3', -99, '2023-08-28 22:17:09', 0),
('a981128a-9488-95f2-3d13-64e3fc6d3964', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'da18b789-91aa-9f9b-f322-643d429904c2', -99, '2023-09-25 01:47:07', 0),
('a98187eb-2309-aab0-434d-64ed196e2ded', '96611c3f-0542-6304-6faa-64ed18d1687c', '9627d44d-b177-e8db-c36c-643d42bb584c', 0, '2023-08-28 22:17:53', 1),
('a9c6574e-0892-ca3f-082a-64e3fa1f36fd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b10f7000-7dfa-5794-e3a5-643d42a6cff5', -99, '2023-09-25 01:52:49', 0),
('aa0aeec7-2778-99c0-9824-64ed19fb4d24', '96611c3f-0542-6304-6faa-64ed18d1687c', '92902c7c-b4af-90c8-727c-643d42206517', 0, '2023-08-28 22:17:53', 1),
('aa29eeb7-dd4d-4503-1b06-64e3fc7c3c39', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd755af60-05ad-df72-0632-643d424558b5', -99, '2023-09-25 01:47:07', 0),
('aa2a7da2-3567-88e3-2c4c-64ed1cf1cc36', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2d16dc83-148f-391d-57db-643d42abc978', -99, '2023-08-28 22:17:09', 0),
('aa4590ae-93f2-6662-4b36-64e3faff310b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a7eec1e1-8bb0-5ee3-2b16-643d4268b042', -99, '2023-09-25 01:52:49', 0),
('aa8245fd-89c7-b549-466a-64ed19e151e3', '96611c3f-0542-6304-6faa-64ed18d1687c', '8b063eae-50bb-0a84-9c06-643d4219c6f3', 0, '2023-08-28 22:17:53', 1),
('aacdfd7e-a8eb-4d03-ffc7-64e3fc697531', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e0409fe7-39fe-95a2-95da-643d427af92b', -99, '2023-09-25 01:47:07', 0),
('aad0a394-4ad6-e8ed-2598-64ed1ca4fbe2', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1db5ca27-9945-5c8b-9a72-643d42497250', -99, '2023-08-28 22:17:09', 0),
('aad55618-6235-4aa1-c40f-64e3fab163ef', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b6eaebb9-8851-f1b6-da6a-643d4256b64f', -99, '2023-09-25 01:52:49', 0),
('aae90fe6-b33b-7498-ec16-64e3fc6f5439', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '318d1271-d76a-ef16-0032-64503264116c', 90, '2023-09-25 01:47:07', 0),
('ab0c885e-cc6f-4467-3e23-64ed19da17fe', '96611c3f-0542-6304-6faa-64ed18d1687c', '97e985a8-e38b-b9c4-a848-643d4234983e', 0, '2023-08-28 22:17:53', 1),
('ab312692-4589-910c-2ad7-64e3fc86cdf0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'dd753bae-e776-5f20-4b59-643d4231dead', -99, '2023-09-25 01:47:07', 0),
('ab3d9f3b-6917-7375-f8b4-64ed1ca4a6fa', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9e8c8d77-450a-1896-ce31-643d42df5682', -98, '2023-08-28 22:17:09', 0),
('ab49ef4b-0271-daeb-f597-64e3fa9ae726', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a2ff80e3-649c-5647-90f0-643d42a3a174', -99, '2023-09-25 01:52:49', 0),
('ab8ac28b-39b3-84b7-3053-64ed194f81a7', '96611c3f-0542-6304-6faa-64ed18d1687c', '887b72db-5b23-adb8-8474-643d420c887b', 0, '2023-08-28 22:17:53', 1),
('abb9fb95-66c3-2375-a34c-64e3fc2e3101', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd51877e2-2e18-6b33-2020-643d425d5564', -99, '2023-09-25 01:47:07', 0),
('abcbab20-407a-47df-e871-64ed1c58508b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'aea8f222-4ddd-ce12-7094-643d42640dcf', -99, '2023-08-28 22:17:09', 0),
('abd4fd54-49d3-943e-adb5-64e3fa26ba49', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '212122ef-0e29-3dd2-b76e-643d42cbe552', -98, '2023-09-25 01:52:49', 0),
('abf00cea-feab-8355-9435-64ed1c7347ab', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b9ca88b7-bdef-9a0b-cbb6-643d42fdd951', -98, '2023-08-28 22:17:09', 0),
('ac140ed0-f9f8-6bb0-8de3-64ed19043cf8', '96611c3f-0542-6304-6faa-64ed18d1687c', '6d8c1eb5-77bf-1078-0ded-643d4250cc3a', 0, '2023-08-28 22:17:53', 1),
('ac17092e-07ba-9419-4af1-64e3fa8a3462', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'adb35373-f666-2910-3564-643d42c2f959', 90, '2023-09-25 01:52:49', 0),
('ac327342-0c30-bc01-0f91-64e3fcb6c992', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e228742e-3e7c-edac-67b7-643d429f32a2', -99, '2023-09-25 01:47:07', 0),
('ac424a32-2954-bdd0-ee0b-64ed1c581bee', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'abfd3021-01ef-ce0b-4651-643d42a23fb1', -99, '2023-08-28 22:17:09', 0),
('ac4b7d90-114d-9f37-6326-64e3fa08f06f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2f21b9f4-7435-5b57-13a8-643d42fd83c5', -99, '2023-09-25 01:52:49', 0),
('acaede95-0166-061c-73b7-64ed19628ef8', '96611c3f-0542-6304-6faa-64ed18d1687c', '789db405-0dfc-c174-f39b-643d4251e398', 0, '2023-08-28 22:17:53', 1),
('acb9f81b-f8e1-a38e-7964-64e3fc488c13', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd1ffde19-2af0-31a7-fd2f-643d42bc80e7', -99, '2023-09-25 01:47:07', 0),
('accc0c84-5b53-00f5-00ad-64ed1c59b77c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b3cba99d-bdc5-b1aa-f2ae-643d42da459d', -99, '2023-08-28 22:17:09', 0),
('acd40000-96ea-0110-866e-64e3fa2f7140', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2c4b127e-2f51-c772-ad22-643d42ef55c0', -99, '2023-09-25 01:52:49', 0),
('ad11d95f-48d2-7876-42f1-64ed191c5b7e', '96611c3f-0542-6304-6faa-64ed18d1687c', '759687e0-f6fd-1e1e-5d5b-643d42f74861', 0, '2023-08-28 22:17:53', 1),
('ad4952d0-58b0-245e-fafe-64ed1c3cad28', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b10f7000-7dfa-5794-e3a5-643d42a6cff5', -99, '2023-08-28 22:17:09', 0),
('ad51ec6a-ac1a-241b-6dc9-64e3fa6fc6c5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '344cb9c9-3795-af93-a8ac-643d42e77f59', -99, '2023-09-25 01:52:49', 0),
('adb4d163-173e-bc08-e63b-64e3fc96acc2', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '710066d0-0a5e-ae44-66fc-643d4222947a', 89, '2023-09-25 01:47:07', 0),
('add2c3f6-08e8-471f-15ea-64ed1cc1a988', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a7eec1e1-8bb0-5ee3-2b16-643d4268b042', -99, '2023-08-28 22:17:09', 0),
('addac8bb-8702-7172-b021-64ed191d2e88', '96611c3f-0542-6304-6faa-64ed18d1687c', '7eca18ba-036f-045c-aa09-643d4290642d', 0, '2023-08-28 22:17:53', 1),
('ae1a1c13-e202-db90-b569-64e3fad30fcd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3187c201-78f2-7b00-4933-643d42602bae', -99, '2023-09-25 01:52:49', 0),
('ae4f6e01-4410-3a08-5969-64ed1c35d9aa', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b6eaebb9-8851-f1b6-da6a-643d4256b64f', -99, '2023-08-28 22:17:09', 0),
('ae56c2fe-2923-b24f-338d-64ed19e5d703', '96611c3f-0542-6304-6faa-64ed18d1687c', '7c5b41ea-5f22-3a09-faf0-643d42adbc2b', 0, '2023-08-28 22:17:53', 1),
('ae58217f-e1f9-66a5-cf4f-64e3fccef077', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7ec6bccd-e8d5-93fc-de53-643d42026916', 75, '2023-09-25 01:47:07', 0),
('aebacc52-72b3-4f12-a502-64e3fa20d549', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '27f5de46-8606-f6da-d572-643d42e0fa95', -99, '2023-09-25 01:52:49', 0),
('aed86e27-fb76-0019-2e7b-64ed1c7de92a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a2ff80e3-649c-5647-90f0-643d42a3a174', -99, '2023-08-28 22:17:09', 0),
('aedfe992-c661-341c-1ed1-64e3fc7999a6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7c59d71b-187b-8b54-1f6e-643d42eaaf3f', 75, '2023-09-25 01:47:07', 0),
('aee0c37b-5652-ce57-3f30-64ed199f399f', '96611c3f-0542-6304-6faa-64ed18d1687c', '72d2a522-d27e-0bd0-f35b-643d42fe0f84', 0, '2023-08-28 22:17:53', 1),
('af1f9829-68ec-2566-9d5b-64e3fa09f455', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '37651cfe-e03f-d055-9ee2-643d42c9e2d5', -99, '2023-09-25 01:52:49', 0),
('af5eb68e-65cd-2bb3-2411-64e3fc47a72f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '82b34683-b1d4-f717-7e29-643d429edb24', 90, '2023-09-25 01:47:07', 0),
('af5f7189-aa10-1882-e972-64ed1935c8a8', '96611c3f-0542-6304-6faa-64ed18d1687c', '81745005-8785-0ac3-6fcb-643d4246c161', 0, '2023-08-28 22:17:53', 1),
('af7b4ff4-ca2b-41bb-a2ab-64ed1c32e44e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '212122ef-0e29-3dd2-b76e-643d42cbe552', -98, '2023-08-28 22:17:09', 0),
('afc2ca51-ed75-70c3-62c6-64e3fa5fa197', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '255dafc5-a740-0c0f-3110-643d42bef1cf', -99, '2023-09-25 01:52:49', 0),
('afe699fa-ead9-d18c-f7cb-64e3fcc65fc1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '80e18296-980d-1c93-fef8-643d426d43ec', 90, '2023-09-25 01:47:07', 0),
('b0013c5b-2192-5d99-8fb0-64ed195ca771', '96611c3f-0542-6304-6faa-64ed18d1687c', '70575131-f443-c2fa-a007-643d42340c2d', 0, '2023-08-28 22:17:53', 1),
('b00b946e-e04c-332e-1710-64ed1c5b0950', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2f21b9f4-7435-5b57-13a8-643d42fd83c5', -99, '2023-08-28 22:17:09', 0),
('b02b53bb-2c8a-64d5-4911-64e3facf4fda', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '715a6247-bc68-8fba-6357-643d426b4ceb', -98, '2023-09-25 01:52:49', 0),
('b02f0a63-e2c2-cd89-62f4-64ed1971c3ed', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e0e7fe08-9777-6c9d-f88d-643d42eeaacf', 0, '2023-08-28 22:17:53', 1),
('b05d8129-f250-600e-39a4-64e3fc8c43dd', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7934d5e3-2238-1a2d-678f-643d426a7f5a', 80, '2023-09-25 01:47:07', 0),
('b08a1b0d-f5ed-c794-809a-64ed19cb9e68', '96611c3f-0542-6304-6faa-64ed18d1687c', '7b4ccd67-fe8c-84aa-03de-643d42f343fb', 0, '2023-08-28 22:17:53', 1),
('b0a19d70-212c-f40a-3f87-64ed1c03a963', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2c4b127e-2f51-c772-ad22-643d42ef55c0', -99, '2023-08-28 22:17:09', 0),
('b0cf6320-ca45-e511-9eaf-64e3fa3e8eb0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7df38b1f-41d1-7cda-3e51-643d420c4708', -99, '2023-09-25 01:52:49', 0),
('b0e77f76-b96e-4938-adaf-64e3fc30a03d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '84828d5f-fbd4-75e6-1158-643d42167dfd', 90, '2023-09-25 01:47:07', 0),
('b109dfce-86b2-427d-45f0-64ed192203ed', '96611c3f-0542-6304-6faa-64ed18d1687c', '87d87562-5212-c676-c24d-643d42484f9c', 0, '2023-08-28 22:17:53', 1),
('b1258a88-39a9-35ad-7c79-64ed1c1466d4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '344cb9c9-3795-af93-a8ac-643d42e77f59', -99, '2023-08-28 22:17:09', 0),
('b14c67a2-a4f7-d9d5-ac28-64e3faef6069', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7ac669c2-4a94-5bab-f66f-643d425b0704', -99, '2023-09-25 01:52:49', 0),
('b1639ad2-759a-e23e-2a99-64e3fcfa9c0a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '75fca19e-4560-c8b7-ff1a-643d420f0a01', 80, '2023-09-25 01:47:07', 0),
('b191772a-f40b-d133-3c39-64ed1993d0b4', '96611c3f-0542-6304-6faa-64ed18d1687c', '82bd69ae-e5e1-bf8e-5afa-643d429b5706', 0, '2023-08-28 22:17:53', 1),
('b1d1f46f-a9d0-9ba1-7ba0-64ed1cce0935', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3187c201-78f2-7b00-4933-643d42602bae', -99, '2023-08-28 22:17:09', 0),
('b1d4e5a6-21a5-f06b-fea4-64e3fa20f8eb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '83ae0141-5498-6568-3638-643d426070a0', -99, '2023-09-25 01:52:49', 0),
('b207d6b5-51db-f221-7d4c-64e3fc4ba187', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'cd2deea0-a81e-c476-6ec5-643d42ba3ec4', -98, '2023-09-25 01:47:07', 0),
('b20cd3dd-418c-2109-88b3-64ed191e9114', '96611c3f-0542-6304-6faa-64ed18d1687c', '8d66fe63-7330-c0ed-e13a-643d42583d6a', 0, '2023-08-28 22:17:53', 1),
('b2260790-12a2-c4d9-7c5e-64e3fc376f7d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2e369573-2121-645b-4df4-645032b3b802', 90, '2023-09-25 01:47:07', 0),
('b252edb9-d3c2-5e2c-a577-64e3fabe31c7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '80b6e875-c54d-2a46-a066-643d42a2f842', -99, '2023-09-25 01:52:49', 0),
('b2553c49-547a-b33e-d9ea-64ed1cc1e41d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '27f5de46-8606-f6da-d572-643d42e0fa95', -99, '2023-08-28 22:17:09', 0),
('b2906b3e-f4d4-be1e-2eca-64e3fc8d4bf8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'daeca790-468f-f029-e2ba-643d42da298c', -99, '2023-09-25 01:47:07', 0),
('b2a741ff-5699-77b5-9526-64e3fa92a25e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'access', -98, '2023-09-25 01:52:49', 0),
('b2d5f257-993a-908b-bff3-64ed19d9818a', '96611c3f-0542-6304-6faa-64ed18d1687c', '8aeb9362-4be9-112d-3319-643d425a76c4', 0, '2023-08-28 22:17:53', 1),
('b2e1c007-276a-d72a-ad29-64e3faada2c9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '77eb2e8e-b277-713a-4001-643d42491c76', -99, '2023-09-25 01:52:49', 0),
('b2e2583d-1d91-f926-4e57-64ed1c6e51ee', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '37651cfe-e03f-d055-9ee2-643d42c9e2d5', -99, '2023-08-28 22:17:09', 0),
('b30c8ece-9806-c220-1ff4-64e3fc81cf32', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd7d96093-4137-5e83-fd6a-643d424a69dd', -99, '2023-09-25 01:47:07', 0),
('b351c2f3-d05a-a966-a33e-64ed19654349', '96611c3f-0542-6304-6faa-64ed18d1687c', '806483d0-8c3c-e4b9-d286-643d42a87ca9', 0, '2023-08-28 22:17:53', 1),
('b37dbb4b-6e23-482a-14f5-64ed1c38932a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '255dafc5-a740-0c0f-3110-643d42bef1cf', -99, '2023-08-28 22:17:09', 0),
('b37ef497-e7d3-2b6b-0808-64e3fa5fc8dc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '85e814a5-d173-40aa-fa8a-643d42943a96', -99, '2023-09-25 01:52:49', 0),
('b3910897-d41c-2419-9e1d-64e3fa0035b8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'ab15d5db-f931-aa5d-86e7-643d425ff462', 90, '2023-09-25 01:52:49', 0),
('b3d4d4a5-ae07-9c51-837e-64e3fc8cb65f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e0e7fe08-9777-6c9d-f88d-643d42eeaacf', -99, '2023-09-25 01:47:07', 0),
('b3db4bd9-1c06-be14-fd5d-64ed1926da41', '96611c3f-0542-6304-6faa-64ed18d1687c', '909673a2-b7ff-26ff-5ea5-643d423a691c', 0, '2023-08-28 22:17:53', 1),
('b3e72967-0908-0845-b127-64ed1ca1aaf0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '715a6247-bc68-8fba-6357-643d426b4ceb', -98, '2023-08-28 22:17:09', 0),
('b400581a-9645-f656-404a-64e3fa289637', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '74edadfb-1620-027c-b1f6-643d4291adc5', -99, '2023-09-25 01:52:49', 0),
('b4100452-4452-77d6-f0fe-64ed1c0f6dd8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c67df9e8-6f18-5711-1d40-643d4264eb9f', -99, '2023-08-28 22:17:09', 0),
('b459d8af-ce82-3fee-0082-64e3fc9a1e78', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'ddf6ebf3-11c4-81a8-d684-643d42b9419a', -99, '2023-09-25 01:47:07', 0),
('b47926ea-cf0e-3175-b095-64ed190ff346', '96611c3f-0542-6304-6faa-64ed18d1687c', '7e02fff5-0859-2893-6a2f-643d42c32f9e', 0, '2023-08-28 22:17:53', 1),
('b48944a2-e9fc-6f71-78fb-64ed1c6c4b82', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7df38b1f-41d1-7cda-3e51-643d420c4708', -99, '2023-08-28 22:17:09', 0),
('b48c00b9-8bd4-1ae2-1ccb-64e3fa4bb413', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'eb06342d-8d37-f51b-226c-643d42a6dbc1', -98, '2023-09-25 01:52:49', 0),
('b4de9d0e-4878-8882-2501-64ed19ee8b2b', '96611c3f-0542-6304-6faa-64ed18d1687c', '425c02ff-4ebc-4aca-32d7-643d42342056', 0, '2023-08-28 22:17:53', 1),
('b4faf3ec-73c2-835c-1e6c-64e3fc1c4c9c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd469a1b7-64df-3932-b39e-643d42e1fa2a', -99, '2023-09-25 01:47:07', 0),
('b50857a3-66bb-dfd8-0616-64e3fa534775', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '229e009c-8006-0ad5-c607-643d42d4bd80', -99, '2023-09-25 01:52:49', 0),
('b5209dd5-40f3-806e-c3a6-64ed1c40a919', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7ac669c2-4a94-5bab-f66f-643d425b0704', -99, '2023-08-28 22:17:09', 0),
('b5439f10-4b9f-24a0-2874-64e3faf8f4d4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'delete', -99, '2023-09-25 01:52:49', 0),
('b584633f-1723-fad1-afb7-64ed198d7eb6', '96611c3f-0542-6304-6faa-64ed18d1687c', '4b89f203-e0e2-e569-dd3c-643d42d22970', 0, '2023-08-28 22:17:53', 1),
('b58603e3-e38a-7108-c68d-64e3fc6a8f73', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'e44d9c42-640b-d797-a732-643d4221a1df', -99, '2023-09-25 01:47:07', 0),
('b591bec8-7709-76b9-499e-64e3fa439b92', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'f3742d29-de7f-5e90-96ff-643d42a5e883', -99, '2023-09-25 01:52:49', 0),
('b5afdbb6-c9a1-8e7e-07fb-64ed1c5dee0b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '83ae0141-5498-6568-3638-643d426070a0', -99, '2023-08-28 22:17:09', 0),
('b5ddf60f-efc2-10f4-7fe3-64e3fa615930', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'edit', -99, '2023-09-25 01:52:49', 0),
('b5f27330-ff2c-ba57-2e64-64ed19bdd8ad', '96611c3f-0542-6304-6faa-64ed18d1687c', '493ca86f-e4f5-d481-492d-643d42fdb4b2', 0, '2023-08-28 22:17:53', 1),
('b6019a90-e60a-08ed-5755-64e3fc0f682d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'd1465356-0e13-13f3-de0d-643d42152692', -99, '2023-09-25 01:47:07', 0),
('b60f2dee-15a8-61b0-f486-64e3faedeb99', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6d480f1f-8b53-ff4e-0f6f-643d4284cd12', -99, '2023-09-25 01:52:49', 0),
('b625ba52-e61c-3856-9ad3-64ed1c0f03d5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '80b6e875-c54d-2a46-a066-643d42a2f842', -99, '2023-08-28 22:17:09', 0),
('b6794c1c-0157-59f3-ba83-64ed19c0e899', '96611c3f-0542-6304-6faa-64ed18d1687c', '50cb9146-1ee2-e9d2-3f22-643d42e057ee', 0, '2023-08-28 22:17:53', 1),
('b680050d-62af-23c8-0d33-64ed1c9335ae', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1026a28e-c377-7610-ca1a-643d42963687', -99, '2023-08-28 22:17:09', 0),
('b68aa0c4-f57a-d7a8-fbe2-64e3fc894fdd', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '786564bf-023c-e94f-5761-643d42bef5cb', -98, '2023-09-25 01:47:07', 0),
('b6945dc3-6400-5837-6fcc-64e3faab8e54', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'export', -99, '2023-09-25 01:52:49', 0),
('b6af9648-6261-b9e4-28c8-64e3fa1354ae', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '43090cfb-7ecb-a027-0ab8-643d422089ed', -99, '2023-09-25 01:52:49', 0),
('b6cd0509-0f45-9196-434c-64e3fc04378a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a28f3535-a6b1-3bb8-6dac-643d4295ac92', -99, '2023-09-25 01:47:07', 0),
('b6f70e1f-2397-ecf5-b677-64ed190cb258', '96611c3f-0542-6304-6faa-64ed18d1687c', '4ea429a3-82ff-87dc-e081-643d42ac92c1', 0, '2023-08-28 22:17:53', 1),
('b7031547-43e7-f3dc-c631-64e3fc12fcd7', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '83f30a44-72d1-4d2d-12ea-643d42374789', -99, '2023-09-25 01:47:07', 0),
('b7149791-9d0e-b60e-f79f-64e3faa5ef47', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'f0c63d21-a684-10f7-60cd-643d42c4af38', -99, '2023-09-25 01:52:49', 0),
('b779a770-a1ee-8ab2-0871-64e3fafd5067', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'import', -99, '2023-09-25 01:52:49', 0),
('b783da30-146e-fc8a-58e4-64ed196ea48c', '96611c3f-0542-6304-6faa-64ed18d1687c', '4730f695-dc77-a1df-3e93-643d42c38325', 0, '2023-08-28 22:17:53', 1),
('b78afa47-b2c7-bf32-c9c1-64e3fc9e7753', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '819ddc78-3198-e380-e4da-643d428660c5', -99, '2023-09-25 01:47:07', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('b79c189b-b554-b356-dc8c-64ed1c5100cc', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '77eb2e8e-b277-713a-4001-643d42491c76', -99, '2023-08-28 22:17:09', 0),
('b7a3bfbe-cb44-809d-4682-64e3faaf49d5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9c4c0fa4-1eb6-3376-0133-643d428bf21c', -99, '2023-09-25 01:52:49', 0),
('b801ba0d-a8cd-8520-0cea-64e3fc7dd09d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '89585879-e425-deba-87a0-643d42461146', -99, '2023-09-25 01:47:07', 0),
('b8123359-19bf-38e1-44eb-64e3fa387463', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'list', -99, '2023-09-25 01:52:49', 0),
('b81c2d89-d5c1-d714-7fda-64ed1c29d07b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd27e17e7-c4fd-e1e1-c731-643d42acf69e', -98, '2023-08-28 22:17:09', 0),
('b8211a92-20e5-68af-1513-64ed19495eb9', '96611c3f-0542-6304-6faa-64ed18d1687c', '5301a4d6-64d3-183d-69c6-643d427e10c4', 0, '2023-08-28 22:17:53', 1),
('b830aaa4-df95-fbcf-0d62-64ed1c00cfb6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '85e814a5-d173-40aa-fa8a-643d42943a96', -99, '2023-08-28 22:17:09', 0),
('b8416889-4376-e901-fb45-64e3fa59be73', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'ee91f36a-81c3-4773-8372-643d428e2c6c', -99, '2023-09-25 01:52:49', 0),
('b8a6f183-fccc-e7af-e50b-64e3fab710f7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'massupdate', -99, '2023-09-25 01:52:49', 0),
('b8ab0064-096e-9bc3-7f2e-64ed19967c15', '96611c3f-0542-6304-6faa-64ed18d1687c', '44c76d2c-a1d2-6b22-c935-643d42a57af6', 0, '2023-08-28 22:17:53', 1),
('b8c61651-0178-82d7-4160-64ed1c18461f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'df0a3935-100e-98c6-66ff-643d42f41dfe', -99, '2023-08-28 22:17:09', 0),
('b8c92568-e601-59eb-e859-64e3fc558b63', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '86626c0c-6745-8b1f-eb9b-643d4270e1e5', -99, '2023-09-25 01:47:07', 0),
('b8e2447d-5545-4696-fb7c-64e3fa145aa7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3239e82a-43c7-1766-3678-643d420149d6', -98, '2023-09-25 01:52:49', 0),
('b8f8c69b-14da-2fdb-13ff-64ed1c103406', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '74edadfb-1620-027c-b1f6-643d4291adc5', -99, '2023-08-28 22:17:09', 0),
('b92337e8-ada6-0452-fdeb-64e3fad1e3d2', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'view', -99, '2023-09-25 01:52:49', 0),
('b92919a8-b92a-f907-9ba2-64ed19ca0e7f', '96611c3f-0542-6304-6faa-64ed18d1687c', '8e2c97df-2e10-0415-7663-643d42f152ec', 0, '2023-08-28 22:17:53', 1),
('b954b302-a88b-a74b-e99d-64e3fcd3286a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7eba62e8-0a9c-b0b4-d153-643d4237747a', -99, '2023-09-25 01:47:07', 0),
('b972bccc-b6c8-0962-5fcb-64ed1cc07b8d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'dc4d9338-5ba9-70a2-ac3c-643d42aeaa81', -99, '2023-08-28 22:17:09', 0),
('b9a29587-104a-c78a-38c6-64ed1c60004f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'eb06342d-8d37-f51b-226c-643d42a6dbc1', -98, '2023-08-28 22:17:09', 0),
('b9ad42ca-8862-9ec9-a885-64e3fa7077de', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd27e17e7-c4fd-e1e1-c731-643d42acf69e', -98, '2023-09-25 01:52:49', 0),
('b9c14358-b911-b68a-8f6e-64ed19b3cb93', '96611c3f-0542-6304-6faa-64ed18d1687c', '9793a630-1d3f-0f93-a0e6-643d42c21aae', 0, '2023-08-28 22:17:53', 1),
('b9d02078-fb2e-2991-f7bd-64e3fc0f5fa1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8cbb4b2c-f9aa-6206-0eb1-643d4220bc92', -99, '2023-09-25 01:47:07', 0),
('b9f03642-4a17-70fe-793f-64e3faeac763', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3b08e877-2142-7f6c-967d-643d424bd213', -99, '2023-09-25 01:52:49', 0),
('b9fc92ad-9bf9-0a20-4503-64ed1cb31ca2', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e53dba22-acb2-83d5-627a-643d42c9beaf', -99, '2023-08-28 22:17:09', 0),
('ba24dd36-824c-c27a-6cd7-64e3faa59a80', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'df0a3935-100e-98c6-66ff-643d42f41dfe', -99, '2023-09-25 01:52:49', 0),
('ba341914-1a69-77c0-08bf-64ed1ce78f15', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '229e009c-8006-0ad5-c607-643d42d4bd80', -99, '2023-08-28 22:17:09', 0),
('ba400182-1cd8-c61a-8bd3-64ed1909ca8a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'ddf6ebf3-11c4-81a8-d684-643d42b9419a', 0, '2023-08-28 22:17:53', 1),
('ba480ae3-b4d8-baef-3580-64ed19e8299f', '96611c3f-0542-6304-6faa-64ed18d1687c', '952d9ece-41fa-b482-0749-643d429a2845', 0, '2023-08-28 22:17:53', 1),
('ba743b21-c047-87c0-2242-64e3fc7c22ca', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7c28b765-428e-0555-1af3-643d42460699', -99, '2023-09-25 01:47:07', 0),
('ba79c9e5-2e5b-1e47-6c34-64e3fafd9b45', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '391d09e0-b0bc-e223-0063-643d42bf6bb6', -99, '2023-09-25 01:52:49', 0),
('bab378db-f0c8-7f3c-467a-64e3fa82d6b7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'dc4d9338-5ba9-70a2-ac3c-643d42aeaa81', -99, '2023-09-25 01:52:49', 0),
('bacdd681-0954-a865-6459-64ed1924b063', '96611c3f-0542-6304-6faa-64ed18d1687c', '9bd85a2d-8dda-eac4-8996-643d4278a173', 0, '2023-08-28 22:17:53', 1),
('bacfe5e5-3968-7209-aaa1-64ed1c0643f6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'f3742d29-de7f-5e90-96ff-643d42a5e883', -99, '2023-08-28 22:17:09', 0),
('bad751e0-5f9e-f67c-d855-64e3fcf030c6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2fa91af7-b30a-d169-fec4-643d4282bf57', -98, '2023-09-25 01:47:07', 0),
('baf55425-7f03-b170-2114-64e3fa937413', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3f67e7fe-c30b-f9bd-f63b-643d42dae256', -99, '2023-09-25 01:52:49', 0),
('bafb2961-9d4d-c49f-a689-64ed1c394188', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e2086b2a-0739-56bf-2bc9-643d42735c6b', -99, '2023-08-28 22:17:09', 0),
('bb528629-c5f5-cb2e-2575-64e3faac781c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e53dba22-acb2-83d5-627a-643d42c9beaf', -99, '2023-09-25 01:52:49', 0),
('bb6d6667-c8d6-c7e9-6e01-64ed19ced511', '96611c3f-0542-6304-6faa-64ed18d1687c', '99cf6ba1-5646-f424-fb63-643d42a30ac0', 0, '2023-08-28 22:17:53', 1),
('bb792dd4-5573-3037-3ea1-64e3fc05edd1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3c016078-ae1a-977d-3d33-643d425bff08', -99, '2023-09-25 01:47:07', 0),
('bb8652fd-b923-5a9b-7b92-64e3fad2f65d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3d1ec346-7607-c7f2-8540-643d42b48164', -99, '2023-09-25 01:52:49', 0),
('bb9d950c-b857-c4f6-3d84-64ed1c8e38c3', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6d480f1f-8b53-ff4e-0f6f-643d4284cd12', -99, '2023-08-28 22:17:09', 0),
('bba052ea-fea1-091f-c9e6-64ed1c4ab326', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd95bed9b-5d0c-6e28-ae45-643d42d85777', -99, '2023-08-28 22:17:09', 0),
('bbb455dd-368b-d1d3-89fc-64e3fa88fda4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e2086b2a-0739-56bf-2bc9-643d42735c6b', -99, '2023-09-25 01:52:49', 0),
('bbdebb13-5c27-4395-53fd-64e3fc2882e3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '39b5dcf6-a7f5-5d8b-7dab-643d42fa8cd2', -99, '2023-09-25 01:47:07', 0),
('bbea7576-d1a7-181e-e71c-64e3fa5b30c3', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '36c908f4-f007-ce88-e682-643d42a5ea6b', -99, '2023-09-25 01:52:49', 0),
('bbefd69c-9841-7c4b-b14c-64ed195376b3', '96611c3f-0542-6304-6faa-64ed18d1687c', '933adaa4-d11c-985b-13a9-643d4200be00', 0, '2023-08-28 22:17:53', 1),
('bc07c259-ff66-4021-a345-64ed1c07f140', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e7cc1213-b0f7-69e2-9a40-643d42b66258', -99, '2023-08-28 22:17:09', 0),
('bc0e0471-6398-51f5-341e-64e3fa80c8d3', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b3303191-95a1-ab43-b3b4-643d42ca3eca', 90, '2023-09-25 01:52:49', 0),
('bc210a86-c84b-0d19-05cc-64ed1c13b2d2', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '43090cfb-7ecb-a027-0ab8-643d422089ed', -99, '2023-08-28 22:17:09', 0),
('bc42ebb2-40bd-aa58-548d-64e3faea0846', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd95bed9b-5d0c-6e28-ae45-643d42d85777', -99, '2023-09-25 01:52:49', 0),
('bc732e6f-2573-fc70-47b1-64e3fa3da5d6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '421302f3-fca1-e169-ecee-643d425570f9', -99, '2023-09-25 01:52:49', 0),
('bc79f681-5238-ce8b-c2e3-64ed1900abf5', '96611c3f-0542-6304-6faa-64ed18d1687c', '9e693c0d-071d-c105-3e26-643d429919bc', 0, '2023-08-28 22:17:53', 1),
('bc9694c4-f27a-7eff-8922-64ed1cc4065d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'd6dab8c7-545e-1d33-66cc-643d426aeb6a', -99, '2023-08-28 22:17:09', 0),
('bcb7961d-6edf-63ff-99b7-64ed1c93ab68', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'f0c63d21-a684-10f7-60cd-643d42c4af38', -99, '2023-08-28 22:17:09', 0),
('bcc602de-5ed8-1127-3186-64ed1c974366', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c3f7a76b-2759-c86a-501f-643d427cdb35', -99, '2023-08-28 22:17:09', 0),
('bcdffd25-99b7-15a6-d722-64e3fa1d922a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e7cc1213-b0f7-69e2-9a40-643d42b66258', -99, '2023-09-25 01:52:49', 0),
('bcf0e37d-e39f-4ae7-27d1-64ed19c1deef', '96611c3f-0542-6304-6faa-64ed18d1687c', '90f61bb7-831c-59ff-6ec7-643d42e01c3c', 0, '2023-08-28 22:17:53', 1),
('bcf10c24-40c6-7697-f389-64e3fa846ffb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '351cea52-4aed-2655-5a7b-643d427df0f1', -99, '2023-09-25 01:52:49', 0),
('bd0f9931-c3b5-9e3d-0fb6-64ed1c1dacff', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b34f61c9-3610-a3b2-b4ea-643d42a5320d', -98, '2023-08-28 22:17:09', 0),
('bd46bf25-cba6-1db6-1a0d-64ed1ce8ccc1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9c4c0fa4-1eb6-3376-0133-643d428bf21c', -99, '2023-08-28 22:17:09', 0),
('bd68a6d0-5c93-03ac-853c-64e3faec2d11', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'd6dab8c7-545e-1d33-66cc-643d426aeb6a', -99, '2023-09-25 01:52:49', 0),
('bd79952a-79f6-b57e-2365-64e3faee6a22', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '431b3918-798f-652a-cceb-643d422e67ae', -98, '2023-09-25 01:52:49', 0),
('bdb740b1-a1d1-7b4c-2eea-64ed1c93be54', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'be50eb6d-eac1-fd6a-c799-643d42e18b8c', -99, '2023-08-28 22:17:09', 0),
('bdb8b5b6-782c-4280-b06c-64ed19e3dfd1', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b8713796-fc6f-aca1-78e6-643d42b2998a', 0, '2023-08-28 22:17:53', 1),
('bdc2a7ea-06eb-6165-a1c8-64ed1ce10e7a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'ee91f36a-81c3-4773-8372-643d428e2c6c', -99, '2023-08-28 22:17:09', 0),
('bde717c8-8150-14cd-39ae-64e3fa34f0d3', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b34f61c9-3610-a3b2-b4ea-643d42a5320d', -98, '2023-09-25 01:52:49', 0),
('be4468de-3886-30e3-9f0c-64ed1915839c', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd10fe2ac-5ccd-2258-a2aa-643d42683373', 0, '2023-08-28 22:17:53', 1),
('be465af8-5c83-f0e4-f042-64ed1c72dfee', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'bbf93427-6f9c-3267-0889-643d42a2b83e', -99, '2023-08-28 22:17:09', 0),
('be58ecdd-d7c4-3bb1-f4b0-64ed1c8360ee', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3239e82a-43c7-1766-3678-643d420149d6', -98, '2023-08-28 22:17:09', 0),
('be774ebb-aa09-24cc-5aad-64e3fa0b2c4f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'be50eb6d-eac1-fd6a-c799-643d42e18b8c', -99, '2023-09-25 01:52:49', 0),
('be7e3dbd-99c4-e69d-ea22-64e3fc4a7ea4', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4198b3ca-2d16-d156-aba5-643d425caf7a', -99, '2023-09-25 01:47:07', 0),
('be9ad771-c0b3-e9e6-c7e9-64e3fa6c72b8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5e97d573-c027-e5be-3dc9-643d42d4f61e', -99, '2023-09-25 01:52:49', 0),
('beb80ef6-3f10-0a99-0955-64ed1c413a64', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c472b375-d3dd-cfbc-5bdf-643d42669ee1', -99, '2023-08-28 22:17:09', 0),
('bebff2be-78c8-1bc1-3b49-64ed191363b3', '96611c3f-0542-6304-6faa-64ed18d1687c', 'cdd515e9-cb60-0719-a8d5-643d42e87eb4', 0, '2023-08-28 22:17:53', 1),
('beea9cbc-a288-44d7-4d54-64ed1c599c47', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3b08e877-2142-7f6c-967d-643d424bd213', -99, '2023-08-28 22:17:09', 0),
('beec20de-ad10-9dc7-4c16-64e3fac08e88', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'bbf93427-6f9c-3267-0889-643d42a2b83e', -99, '2023-09-25 01:52:49', 0),
('bf335dff-c51c-31b8-ad56-64e3fce29d11', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3e6bbfd0-867b-4be1-5893-643d42925bde', -99, '2023-09-25 01:47:07', 0),
('bf3ad871-08c7-211b-6422-64e3fa9387bd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4e3c2f1c-4341-cab4-2fdd-643d42b3e9a2', -99, '2023-09-25 01:52:49', 0),
('bf41e81d-db06-0c7c-8c6b-64ed1c1d863d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c15cf080-6f3d-ff62-93e5-643d42c56c38', -99, '2023-08-28 22:17:09', 0),
('bf49c483-db6c-3f0d-65bc-64ed19d88a40', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd72f4973-eed4-7f4e-80f2-643d42ff956a', 0, '2023-08-28 22:17:53', 1),
('bf4a08d3-c69b-4f06-8917-64e3fc847bd9', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '397323a3-751e-025e-d468-645032b314bc', -99, '2023-09-25 01:47:07', 0),
('bf7b9789-bcd4-3748-08cb-64e3fa808caf', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c472b375-d3dd-cfbc-5bdf-643d42669ee1', -99, '2023-09-25 01:52:49', 0),
('bf8bbbe7-6988-63a3-6971-64ed1c907ebc', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '391d09e0-b0bc-e223-0063-643d42bf6bb6', -99, '2023-08-28 22:17:09', 0),
('bfb7169b-ac68-ca22-0373-64ed1c1cc125', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b939ff6d-476f-401b-6e5b-643d42d131a4', -99, '2023-08-28 22:17:09', 0),
('bfb94a21-06b6-2825-d29b-64e3fa05163f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '66f0a33f-72f1-795e-b2e2-643d420e996f', -99, '2023-09-25 01:52:49', 0),
('bfc60aa5-bf56-03df-f12e-64e3fc823415', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '36564b0d-448c-0dd1-ccd5-643d425fda93', -99, '2023-09-25 01:47:07', 0),
('bfc669ca-79eb-e565-c1f9-64ed19d08104', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd3a55c75-a104-b81d-5a88-643d42e06903', 0, '2023-08-28 22:17:53', 1),
('bfedc915-6cc9-221c-35a9-64e3fab269fe', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c15cf080-6f3d-ff62-93e5-643d42c56c38', -99, '2023-09-25 01:52:49', 0),
('bff80c84-a64c-ae33-7949-64e3fcf7cd4e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7e8f7007-468e-1287-7b73-643d42d28237', -98, '2023-09-25 01:47:07', 0),
('bffbbbab-b030-0b57-90d6-64ed1ca9d39a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3f67e7fe-c30b-f9bd-f63b-643d42dae256', -99, '2023-08-28 22:17:09', 0),
('c0455300-2c11-4315-2f73-64ed1cc39142', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c7aac132-5fa8-b933-9991-643d4252c967', -99, '2023-08-28 22:17:09', 0),
('c058d748-90cf-1bd1-0836-64ed19387f48', '96611c3f-0542-6304-6faa-64ed18d1687c', 'caaa88b4-f60e-3043-ca86-643d42b0c89f', 0, '2023-08-28 22:17:53', 1),
('c07525f7-9fd8-b567-cc77-64e3faf2d86f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b939ff6d-476f-401b-6e5b-643d42d131a4', -99, '2023-09-25 01:52:49', 0),
('c08e2c65-8ed9-b798-482c-64e3fc9a170f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4484d3ac-de10-0bd1-27ef-643d42805644', -99, '2023-09-25 01:47:07', 0),
('c09b03e2-8d77-ace3-03d9-64ed199ef4d0', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd469a1b7-64df-3932-b39e-643d42e1fa2a', 0, '2023-08-28 22:17:53', 1),
('c0bab344-1f5e-d7f6-f3da-64ed1c08f332', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b6c26ca5-d988-f9bb-472b-643d42e1070a', -99, '2023-08-28 22:17:09', 0),
('c0cb06f1-ed62-18f4-d280-64ed1caad4c7', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3d1ec346-7607-c7f2-8540-643d42b48164', -99, '2023-08-28 22:17:09', 0),
('c0cf87a2-623c-23ac-ffb1-64ed191cafef', '96611c3f-0542-6304-6faa-64ed18d1687c', 'da4875a8-f407-544b-3c59-643d4283c76d', 0, '2023-08-28 22:17:53', 1),
('c0ec1e21-ac2c-708c-470d-64e3fa152999', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c7aac132-5fa8-b933-9991-643d4252c967', -99, '2023-09-25 01:52:49', 0),
('c125dfa7-709b-3d36-4f1a-64e3fccc3456', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '33073288-9d55-465e-563e-643d4201fa21', -99, '2023-09-25 01:47:07', 0),
('c141cc42-988f-8005-4830-64ed1ca6b7d5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4525f0f3-fadd-0d80-971a-645032f47b39', 89, '2023-08-28 22:17:09', 0),
('c15f2d0f-4cc1-79a0-56f9-64ed19102110', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c741fa9d-1480-0d4d-6a49-643d42b4a7ee', 0, '2023-08-28 22:17:53', 1),
('c1728659-1831-579b-4cca-64ed1c98378b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '36c908f4-f007-ce88-e682-643d42a5ea6b', -99, '2023-08-28 22:17:09', 0),
('c1761494-3c38-10b1-8f0a-64e3fa10de76', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b6c26ca5-d988-f9bb-472b-643d42e1070a', -99, '2023-09-25 01:52:49', 0),
('c18ec402-729d-43df-dd93-64e3fcbf4269', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '58bf8f7f-2142-dedd-17b7-643d42e52dec', -98, '2023-09-25 01:47:07', 0),
('c1bdf2a3-6290-d598-9dc3-64ed1c88c3b6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '318d1271-d76a-ef16-0032-64503264116c', 90, '2023-08-28 22:17:09', 0),
('c1d3ebe5-3926-b3b1-604f-64ed19e4e55f', '96611c3f-0542-6304-6faa-64ed18d1687c', '177876eb-d5bf-837a-6304-643d427563ed', 0, '2023-08-28 22:17:53', 1),
('c1f6c6a0-4005-3c22-26ed-64ed1cb18921', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '421302f3-fca1-e169-ecee-643d425570f9', -99, '2023-08-28 22:17:09', 0),
('c211e360-5a70-c35a-223f-64e3fab94447', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4525f0f3-fadd-0d80-971a-645032f47b39', 89, '2023-09-25 01:52:49', 0),
('c217137a-c89a-f1da-ca11-64e3fc95abc9', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '62e13871-8662-ef63-3dab-643d42504c0e', -99, '2023-09-25 01:47:07', 0),
('c24e7661-28e4-ec3a-b9c8-64ed1c287c9f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2e369573-2121-645b-4df4-645032b3b802', 90, '2023-08-28 22:17:09', 0),
('c2619b17-99f8-6a8e-2c7b-64ed19396986', '96611c3f-0542-6304-6faa-64ed18d1687c', '1fbd4d64-a8d8-82d3-b452-643d42dd9c0b', 0, '2023-08-28 22:17:53', 1),
('c263d3c1-7b72-71c7-4629-64e3fadb0ae9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '632a05c5-e1e6-120f-2a29-643d4279bdf6', -99, '2023-09-25 01:52:49', 0),
('c28d57b9-4de7-8c6b-2913-64ed1cc9c9b0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '351cea52-4aed-2655-5a7b-643d427df0f1', -99, '2023-08-28 22:17:09', 0),
('c295a299-2033-3dbe-7fc5-64e3fcb9d800', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5fe49b27-4936-5de6-37ac-643d42638148', -99, '2023-09-25 01:47:07', 0),
('c29bf0c2-6013-8cf1-71e6-64e3fa347af0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '318d1271-d76a-ef16-0032-64503264116c', 90, '2023-09-25 01:52:49', 0),
('c2be01c5-877c-d72d-120a-64ed1c9b1ff9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '397323a3-751e-025e-d468-645032b314bc', -99, '2023-08-28 22:17:09', 0),
('c30487a3-3b65-73a1-68b6-64ed193e5306', '96611c3f-0542-6304-6faa-64ed18d1687c', '1d894902-fbaf-6b78-f9df-643d42972ef4', 0, '2023-08-28 22:17:53', 1),
('c30dd502-cf6d-3b18-b5b1-64e3fafe6f4b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4913190c-54d7-3be4-37c8-643d423d7161', -99, '2023-09-25 01:52:49', 0),
('c31d647e-7759-cde8-82e5-64e3fc93a5e5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '69d6f52f-c3b9-6135-7a75-643d422750af', -99, '2023-09-25 01:47:07', 0),
('c328cc5e-091c-ce5a-aa71-64ed1c13ada9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '431b3918-798f-652a-cceb-643d422e67ae', -98, '2023-08-28 22:17:09', 0),
('c3372244-29b7-5316-a2a6-64e3fa227bdc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2e369573-2121-645b-4df4-645032b3b802', 90, '2023-09-25 01:52:49', 0),
('c3612f4e-d789-aa3a-442b-64ed1cf75edd', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '35bb1871-691f-03cd-b52d-645032f3a082', -99, '2023-08-28 22:17:09', 0),
('c3923cdf-7db8-acbf-52f9-64ed19ad3025', '96611c3f-0542-6304-6faa-64ed18d1687c', '244af2e2-b415-5f7a-446d-643d421bd972', 0, '2023-08-28 22:17:53', 1),
('c394539f-0ca8-f1ab-1635-64e3fc62f5e7', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6623f8f0-2a39-a245-388d-643d42cd36d3', -99, '2023-09-25 01:47:07', 0),
('c39c69b0-7cf3-0174-e80d-64e3fa967aec', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6b162634-c3f4-7db3-2fe0-643d4228315d', -99, '2023-09-25 01:52:49', 0),
('c39d3dd4-73b7-fa7a-b430-64e3fa5c64de', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '397323a3-751e-025e-d468-645032b314bc', 90, '2023-09-25 01:52:49', 0),
('c3b23b13-ed29-78a3-6791-64ed1c4929c0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5e97d573-c027-e5be-3dc9-643d42d4f61e', -99, '2023-08-28 22:17:09', 0),
('c3c57e41-a136-8110-071f-64ed1cdfab2d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2a92fe21-ed84-31a6-5a40-6450328f0189', -99, '2023-08-28 22:17:09', 0),
('c3f0051c-fdde-a9a1-af56-64e3fae48398', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b0653f3d-944e-9630-0256-643d424223c6', 90, '2023-09-25 01:52:49', 0),
('c41e5ba7-9b79-ed92-51da-64e3fc84cd56', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5da9d4dc-2def-cc56-a8f4-643d42593f0b', -99, '2023-09-25 01:47:07', 0),
('c424cc44-cf1f-c056-9b32-64e3fa2b4d16', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '35bb1871-691f-03cd-b52d-645032f3a082', 90, '2023-09-25 01:52:49', 0),
('c42804f6-899a-b54b-3bdb-64ed1c978b1e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'cc7d16f2-498c-3b33-d1ec-643d42f07ddf', -99, '2023-08-28 22:17:09', 0),
('c42baf0f-8d66-e1e8-3b3e-64ed19eee406', '96611c3f-0542-6304-6faa-64ed18d1687c', '21d63e61-1382-185b-25fb-643d42f0ca1f', 0, '2023-08-28 22:17:53', 1),
('c436cf98-5c8d-1bfe-82fb-64e3fa5b7fa0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4660e3e3-ce3c-3343-589d-643d42ac340e', -99, '2023-09-25 01:52:49', 0),
('c46084cb-6056-e0f6-9e91-64ed1c66c98f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4e3c2f1c-4341-cab4-2fdd-643d42b3e9a2', -99, '2023-08-28 22:17:09', 0),
('c4692885-95b7-5b5c-c949-64ed1c9dd3c3', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3c602b17-cd3f-c64f-57ce-645032225655', -99, '2023-08-28 22:17:09', 0),
('c49482dc-1bfe-f27f-8a6d-64e3fc4b1865', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6c9cb84b-265f-3af8-8b0c-643d4251a053', -99, '2023-09-25 01:47:07', 0),
('c495c69b-a75b-21d0-ac58-64ed19b663aa', '96611c3f-0542-6304-6faa-64ed18d1687c', '1bd2d367-0bab-c438-b482-643d42fb2a2b', 0, '2023-08-28 22:17:53', 1),
('c4a1b66f-41be-237c-bd60-64e3fa8804be', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9fb8b1fc-6e8b-ce3e-b408-643d425995be', -98, '2023-09-25 01:52:49', 0),
('c4a29bf7-4ed7-d79c-d162-64e3fabb4991', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2a92fe21-ed84-31a6-5a40-6450328f0189', -99, '2023-09-25 01:52:49', 0),
('c4e445a3-9f5e-348d-d8db-64ed1cb6ef3a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '275dcbaf-2cb1-556e-79c3-645032ccc2c6', 90, '2023-08-28 22:17:09', 0),
('c4eb61bf-a6bb-5b4b-45b5-64ed1cce1341', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '66f0a33f-72f1-795e-b2e2-643d420e996f', -99, '2023-08-28 22:17:09', 0),
('c525bc64-9bf0-5ef4-9e93-64ed19e93b4d', '96611c3f-0542-6304-6faa-64ed18d1687c', '26f00a26-ce74-70ac-26d4-643d4294b861', 0, '2023-08-28 22:17:53', 1),
('c52b2442-f9e2-f0ea-fd23-64e3fac0c1d5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3c602b17-cd3f-c64f-57ce-645032225655', -99, '2023-09-25 01:52:49', 0),
('c5309f49-7979-0dc5-0072-64e3fae8ce4f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'aa6f3c60-a80d-7d27-b7ce-643d42f6c680', -99, '2023-09-25 01:52:49', 0),
('c5386a2f-4a21-0595-3e22-64e3fc95797e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5baf86df-d03b-7342-2bfd-643d424c0a39', -99, '2023-09-25 01:47:07', 0),
('c59384be-9e0c-1a07-df54-64ed1ccb00da', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '632a05c5-e1e6-120f-2a29-643d4279bdf6', -99, '2023-08-28 22:17:09', 0),
('c59c542f-1bab-7739-5432-64ed19dce8cc', '96611c3f-0542-6304-6faa-64ed18d1687c', '1a27b250-4c97-441c-68fd-643d42a9c18c', 0, '2023-08-28 22:17:53', 1),
('c5a395ab-5626-4b64-16f9-64e3fa31c29f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '275dcbaf-2cb1-556e-79c3-645032ccc2c6', 90, '2023-09-25 01:52:49', 0),
('c5ae0c7c-2786-c132-8f9f-64ed1ce87588', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '93cba4cf-a547-3319-305b-643d424f4562', -98, '2023-08-28 22:17:09', 0),
('c5d58a42-4a2b-9ffb-b71d-64e3faf7f503', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a80219a7-04d9-0770-c566-643d42fb4f25', -99, '2023-09-25 01:52:49', 0),
('c5df86b5-0d65-f0e5-8167-64e3fcb53b5b', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '92e15dac-7c4f-3915-bc02-643d424ce18d', -98, '2023-09-25 01:47:07', 0),
('c624f456-92a4-787b-878d-64ed1c7d33e4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4913190c-54d7-3be4-37c8-643d423d7161', -99, '2023-08-28 22:17:09', 0),
('c625103b-0297-7e43-0b1c-64ed19216353', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b9bb5349-42cc-5f3c-85a2-643d426d4bea', 0, '2023-08-28 22:17:53', 1),
('c62b61c3-aaa5-447f-2db5-64e3fa4fbe03', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '93cba4cf-a547-3319-305b-643d424f4562', -98, '2023-09-25 01:52:49', 0),
('c64fd95a-fcf8-f57c-1587-64ed1cdd06a3', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a1934fbd-d512-c91c-a908-643d42a03610', -99, '2023-08-28 22:17:09', 0),
('c663ff6a-ccfa-9296-403e-64e3fab92c0f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'aefd8727-d3a4-eb12-1a77-643d422403b5', -99, '2023-09-25 01:52:49', 0),
('c6a8e3e1-27c6-52fd-ca64-64e3fa71c99c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a1934fbd-d512-c91c-a908-643d42a03610', -99, '2023-09-25 01:52:49', 0),
('c6a99ed5-f4e6-bd5d-4347-64ed192a4fcb', '96611c3f-0542-6304-6faa-64ed18d1687c', 'de511817-38e2-24d4-bfa1-643d42c47da1', 0, '2023-08-28 22:17:53', 1),
('c6cb61c5-cb6f-5489-de29-64ed1c4178e0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6b162634-c3f4-7db3-2fe0-643d4228315d', -99, '2023-08-28 22:17:09', 0),
('c6e0026f-b46d-84a6-3a1e-64e3facc0d44', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'aca6bba4-da7e-4ee0-6d5c-643d42429b0d', -99, '2023-09-25 01:52:49', 0),
('c6e22d8a-47de-ea00-76e8-64e3fcb78395', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9ac140d0-d270-1200-e964-643d42edaf79', -99, '2023-09-25 01:47:07', 0),
('c73408dd-a77a-7a44-31c2-64ed196967ee', '96611c3f-0542-6304-6faa-64ed18d1687c', 'db37e215-e77f-321e-1cd2-643d4237fb46', 0, '2023-08-28 22:17:53', 1),
('c75afd79-a310-b449-c206-64ed1c0548e4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4660e3e3-ce3c-3343-589d-643d42ac340e', -99, '2023-08-28 22:17:09', 0),
('c76ee5be-47d9-806c-0cd9-64e3faaa19d9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a5d71559-5ef5-2513-8bea-643d424b3e1c', -99, '2023-09-25 01:52:49', 0),
('c76f3b1f-8d67-4582-ace6-64e3fcc64228', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9902b5f2-5b63-c442-42d7-643d42b5b77a', -99, '2023-09-25 01:47:07', 0),
('c7706bfe-275b-d1d1-7007-64e3fac83103', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9ec1bbe9-8908-3a32-64e0-643d42016853', -99, '2023-09-25 01:52:49', 0),
('c778584e-81a9-9824-c30e-64ed1c8da2d9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9ec1bbe9-8908-3a32-64e0-643d42016853', -99, '2023-08-28 22:17:09', 0),
('c7d4ea64-4dcb-fe96-c647-64ed194c30ba', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e2d41451-104f-2cf8-6834-643d427497fc', 0, '2023-08-28 22:17:53', 1),
('c7da2999-1fab-8b3a-0631-64ed1ce5b289', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9fb8b1fc-6e8b-ce3e-b408-643d425995be', -98, '2023-08-28 22:17:09', 0),
('c8016f2d-f064-b66d-0e09-64e3fa72ccb5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a645e477-20d8-4a94-b19b-643d42e400be', -99, '2023-09-25 01:52:49', 0),
('c804de8d-a474-bace-a8b6-64ed1cf44a7a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a645e477-20d8-4a94-b19b-643d42e400be', -99, '2023-08-28 22:17:09', 0),
('c80600c6-579f-56a3-0fb4-64e3faaf6183', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b26aa161-75e7-bbfa-eebb-643d425821a6', -99, '2023-09-25 01:52:49', 0),
('c807354c-d509-1902-e127-64e3fc7dfd1f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9eff166d-74f8-6506-b888-643d424eb40d', -99, '2023-09-25 01:47:07', 0),
('c85f2861-cccc-b605-cb3e-64ed1990aff2', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e07c503b-33a5-caea-2b02-643d42e59b60', 0, '2023-08-28 22:17:53', 1),
('c86908ad-a4fb-b705-4db1-64ed1caf47a8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'aa6f3c60-a80d-7d27-b7ce-643d42f6c680', -99, '2023-08-28 22:17:09', 0),
('c869de7d-f330-806e-4a86-64e3fa0f07f2', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a28f3535-a6b1-3bb8-6dac-643d4295ac92', -99, '2023-09-25 01:52:49', 0),
('c86a221b-c491-f893-5878-64e3fcaebde6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9ca206fe-a55f-5356-acd0-643d42f77212', -99, '2023-09-25 01:47:07', 0),
('c87290e8-744a-a1ec-7f26-64e3fa90ed61', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a420101f-a651-cbd9-32ff-643d42707891', -99, '2023-09-25 01:52:49', 0),
('c881c930-9dbd-1685-08e6-64ed1c55139e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a420101f-a651-cbd9-32ff-643d42707891', -99, '2023-08-28 22:17:09', 0),
('c8f89ced-6d8a-bdc5-0176-64e3fa0925c6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7e8f7007-468e-1287-7b73-643d42d28237', -98, '2023-09-25 01:52:49', 0),
('c8fa5b21-70ab-24bb-80b5-64e3fad5bbbc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9b7bcef8-5273-f72c-375f-643d422e3f7f', -99, '2023-09-25 01:52:49', 0),
('c8fa9ddd-2613-7d5f-d51a-64ed19273bf2', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd9002e2e-0263-3690-41b3-643d422ff549', 0, '2023-08-28 22:17:53', 1),
('c90ac42a-ea5c-0b6c-f813-64ed1ca48acf', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9b7bcef8-5273-f72c-375f-643d422e3f7f', -99, '2023-08-28 22:17:09', 0),
('c91ef4b6-70ee-70c2-9a31-64e3fc53a208', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '971331fb-5d2b-0bcb-d8e6-643d423f2620', -99, '2023-09-25 01:47:07', 0),
('c92547fe-8649-3f0f-ecc5-64ed1cac45e4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a80219a7-04d9-0770-c566-643d42fb4f25', -99, '2023-08-28 22:17:09', 0),
('c93806f6-39d8-e739-150f-64e3fc6afd26', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '35bb1871-691f-03cd-b52d-645032f3a082', -99, '2023-09-25 01:47:07', 0),
('c95f0ade-2ce7-e81e-8b8e-64ed195d2d2b', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e53b714c-4d2e-148d-a656-643d426aff5d', 0, '2023-08-28 22:17:53', 1),
('c9704909-ceed-8661-73c1-64e3fa4d5228', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '86102df3-4147-288f-1c90-643d425d33a1', -99, '2023-09-25 01:52:49', 0),
('c97fa57a-43ac-a566-37b1-64e3fa3af285', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a83a21b7-d419-b6ce-328b-643d42007b1a', -99, '2023-09-25 01:52:49', 0),
('c9835073-e3fc-5009-6fdf-64ed1cb2adbb', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a83a21b7-d419-b6ce-328b-643d42007b1a', -99, '2023-08-28 22:17:09', 0),
('c984a85b-26d2-1bda-0edf-64e3fc6a09b8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a1d4213a-db48-0d82-475f-643d42227af7', -99, '2023-09-25 01:47:07', 0),
('c994c3b8-5699-024e-801c-64ed1c18dec6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'aefd8727-d3a4-eb12-1a77-643d422403b5', -99, '2023-08-28 22:17:09', 0),
('c9ed9ca0-2440-98fe-a5e1-64ed195e29b4', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd44144be-3e5f-2a04-bb28-643d42689410', 0, '2023-08-28 22:17:53', 1),
('c9ff67e1-40db-459b-d74a-64e3fa65e9cd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '843db447-fb52-52aa-19be-643d42a5ec94', -99, '2023-09-25 01:52:49', 0),
('ca113063-9f42-92b9-6245-64e3faecf4c2', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9857df44-554e-ebdb-01bf-643d4249e2d0', -99, '2023-09-25 01:52:49', 0),
('ca251340-45a8-401b-4460-64e3fcdced7a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '955df3c5-db1c-efc7-0a3b-643d4257d925', -99, '2023-09-25 01:47:07', 0),
('ca37d4cb-7e8e-72d0-5f1a-64ed1c8dd9ca', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9857df44-554e-ebdb-01bf-643d4249e2d0', -99, '2023-08-28 22:17:09', 0),
('ca56df24-466c-653f-6651-64ed1c176052', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'aca6bba4-da7e-4ee0-6d5c-643d42429b0d', -99, '2023-08-28 22:17:09', 0),
('ca670eca-437f-7dd9-bf06-64ed19f2aafe', '96611c3f-0542-6304-6faa-64ed18d1687c', '2df703c3-1886-2132-38ac-643d422be3d1', 0, '2023-08-28 22:17:53', 1),
('ca7fcc27-8ac9-893d-a71a-64e3fa9c9564', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '17e63bbb-f163-f186-509d-643d428a2ba2', 89, '2023-09-25 01:52:49', 0),
('ca898926-b646-1623-2324-64e3fcf216d5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3ac3a1be-2795-c189-c071-643d42aead5b', -98, '2023-09-25 01:47:07', 0),
('ca9b3f32-313c-f293-555d-64ed1cb5deea', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '17e63bbb-f163-f186-509d-643d428a2ba2', -98, '2023-08-28 22:17:09', 0),
('ca9c0c7b-44fa-b28f-5463-64e3fa163bc3', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8b003b5c-f841-a280-a25d-643d42886ffc', -99, '2023-09-25 01:52:49', 0),
('cae7d899-979a-8d07-e1f1-64ed1c46a05f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a5d71559-5ef5-2513-8bea-643d424b3e1c', -99, '2023-08-28 22:17:09', 0),
('cb07fa54-9543-91b9-8881-64ed1901bf22', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c46d0004-f93c-4f96-4767-643d42389c29', 0, '2023-08-28 22:17:53', 1),
('cb08b0b0-b18b-3db5-7d94-64e3faa24c15', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '26211d4e-a2ea-ee1c-c703-643d42aa6127', 90, '2023-09-25 01:52:49', 0),
('cb5eadc6-daac-c429-522c-64e3fc3cfdba', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5c228bcb-35c4-b558-4a80-643d428197c9', -99, '2023-09-25 01:47:07', 0),
('cb63f50f-2097-62e7-5b54-64ed1cef42c6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '26211d4e-a2ea-ee1c-c703-643d42aa6127', -99, '2023-08-28 22:17:09', 0),
('cb68b614-21a6-5fd8-0153-64ed1caf6187', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b26aa161-75e7-bbfa-eebb-643d425821a6', -99, '2023-08-28 22:17:09', 0),
('cb6b8c1b-e3ab-9906-f8d0-64ed1934594c', '96611c3f-0542-6304-6faa-64ed18d1687c', 'a1290757-56b3-252c-a722-643d42be8603', 0, '2023-08-28 22:17:53', 1),
('cb801908-bc10-8f50-405b-64e3fa98c63d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '22ad461b-4082-6bb5-5a7f-643d421d4154', 90, '2023-09-25 01:52:49', 0),
('cb950793-a84a-610c-4a64-64e3fcfd0db8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '86102df3-4147-288f-1c90-643d425d33a1', -99, '2023-09-25 01:47:07', 0),
('cba7ddbc-5fb4-f9af-c2e5-64e3fad2954e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '87e4343b-106e-c1af-7744-643d426f55cc', -99, '2023-09-25 01:52:49', 0),
('cbee646a-9273-a008-b05e-64e3fcb72cc2', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '44c788a1-622c-6c6c-22d6-643d42f7a561', -99, '2023-09-25 01:47:07', 0),
('cbf61573-455e-41d4-c5a6-64ed195015b3', '96611c3f-0542-6304-6faa-64ed18d1687c', '12f223e0-d48a-a5e7-c1fc-643d42715d96', 0, '2023-08-28 22:17:53', 1),
('cc07426d-f88a-1edd-80c7-64ed1c79bc9f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '22ad461b-4082-6bb5-5a7f-643d421d4154', -99, '2023-08-28 22:17:09', 0),
('cc077a57-690d-2ab3-6113-64e3fa092669', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2bfb8518-cbbc-9041-9631-643d4239b918', 90, '2023-09-25 01:52:49', 0),
('cc323d31-3b5f-34ed-346b-64e3fab15b67', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '827fa663-54c1-d0b9-ab91-643d424b6552', -99, '2023-09-25 01:52:49', 0),
('cc3e7306-385d-3d31-363d-64ed1cef9bfe', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a28f3535-a6b1-3bb8-6dac-643d4295ac92', -99, '2023-08-28 22:17:09', 0),
('cc645499-6ebb-13a1-08f1-64e3fc827794', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '65ff257d-6f6b-ae90-493b-643d42698a1f', -99, '2023-09-25 01:47:07', 0),
('cc69168d-9a6f-4340-b803-64ed1c70cc93', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2bfb8518-cbbc-9041-9631-643d4239b918', -99, '2023-08-28 22:17:09', 0),
('cc6b4ab7-3793-3ca9-1143-64ed19a6ae5b', '96611c3f-0542-6304-6faa-64ed18d1687c', 'f8340ab6-7d56-066f-3c28-643d42bb965a', 0, '2023-08-28 22:17:53', 1),
('cca8e27c-37e6-0168-2493-64e3fa4059d9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8d78ea83-ccff-f139-7cc8-643d42c348c5', -99, '2023-09-25 01:52:49', 0),
('ccb06d56-d0ce-da04-69f7-64e3fa553552', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '291e15bd-7a32-c880-b4e0-643d42d8352f', 90, '2023-09-25 01:52:49', 0),
('ccbe3a0d-239b-b140-1cee-64ed1c3c83cc', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7e8f7007-468e-1287-7b73-643d42d28237', -98, '2023-08-28 22:17:09', 0),
('ccbf09af-3cd5-dcc4-8206-64ed1cea8999', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c98c0e55-84ac-c618-0731-643d42e94df7', -99, '2023-08-28 22:17:09', 0),
('ccefc9d8-2753-af2e-933d-64e3fcf7feb1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6071aa09-dc75-c4a7-4434-643d4281592e', -99, '2023-09-25 01:47:07', 0),
('ccf58764-fefd-49ca-6d38-64ed1989c7d7', '96611c3f-0542-6304-6faa-64ed18d1687c', '7e180749-bc8c-2725-c58e-643d42617e82', 0, '2023-08-28 22:17:53', 1),
('cd0c0b3a-a400-167d-dabe-64ed1c757315', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '291e15bd-7a32-c880-b4e0-643d42d8352f', -99, '2023-08-28 22:17:09', 0),
('cd317593-ab88-2118-1c2d-64e3fa5b00ac', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '80dd1457-331f-b814-dddc-643d4227054e', -99, '2023-09-25 01:52:49', 0),
('cd3aa72b-4566-82a8-5021-64e3fae61497', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1f86c2d4-d860-e677-0008-643d42ad518a', -99, '2023-09-25 01:52:49', 0),
('cd577b78-969c-732c-02ed-64ed1cf67fe8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '86102df3-4147-288f-1c90-643d425d33a1', -99, '2023-08-28 22:17:09', 0),
('cd65e4ed-0cba-47b4-659e-64e3fc6005ce', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '41c69dd7-31cf-1152-f982-643d42ddf714', -99, '2023-09-25 01:47:07', 0),
('cd7359c9-8b71-6075-699b-64ed19e00574', '96611c3f-0542-6304-6faa-64ed18d1687c', '1579a9cb-de4a-9bb8-06c4-643d427efd03', 0, '2023-08-28 22:17:53', 1),
('cd8f7d01-7f50-0ffc-3097-64ed1cb3c1d6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1f86c2d4-d860-e677-0008-643d42ad518a', -99, '2023-08-28 22:17:09', 0),
('cd9b0e0e-3085-53c2-f05d-64ed19c35330', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e44d9c42-640b-d797-a732-643d4221a1df', 0, '2023-08-28 22:17:53', 1),
('cdafab62-b4e0-4d4c-37d9-64e3fa4509f0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3831706e-e3dd-525a-6bfc-643d426ab45b', -98, '2023-09-25 01:52:49', 0),
('cdb7e43b-c95c-6397-b608-64e3fa1171ad', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2f2d8ff1-7cd2-5461-af33-643d429e8fff', -99, '2023-09-25 01:52:49', 0),
('cdee5ed0-5872-1dc5-02fa-64e3fc3a6d60', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '691196f2-b7d6-3954-1ec4-643d42de275d', -99, '2023-09-25 01:47:07', 0),
('cdfb6c9b-371c-522b-9e05-64ed19cb38f1', '96611c3f-0542-6304-6faa-64ed18d1687c', '5e4500bb-12be-3e3c-29cd-643d42b49034', 0, '2023-08-28 22:17:53', 1),
('ce18a654-4ec7-9687-30e4-64ed1cd13eba', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2f2d8ff1-7cd2-5461-af33-643d429e8fff', -99, '2023-08-28 22:17:09', 0),
('ce1b4408-3eee-003e-cbad-64ed1c932205', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '843db447-fb52-52aa-19be-643d42a5ec94', -99, '2023-08-28 22:17:09', 0),
('ce3dfcb2-3f92-155d-cfd3-64e3fab8ac32', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4247a7e7-ff7c-b050-20ca-643d427e9fcf', -99, '2023-09-25 01:52:49', 0),
('ce411e48-7901-566a-107e-64e3fa574d5b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1cc78c59-3337-188f-73bf-643d420723f3', 90, '2023-09-25 01:52:49', 0),
('ce6d157c-62c5-adf7-5746-64e3fc2606d3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3e011d04-6712-7956-24d6-643d42004acf', -99, '2023-09-25 01:47:07', 0),
('ce78d8e7-a247-e8e0-0713-64ed19b5ffc0', '96611c3f-0542-6304-6faa-64ed18d1687c', '3d1d9db1-ea6d-05d7-9935-643d42faf5e8', 0, '2023-08-28 22:17:53', 1),
('ce9130a4-13f6-92f0-b2ab-64ed1c40735b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1cc78c59-3337-188f-73bf-643d420723f3', -99, '2023-08-28 22:17:09', 0),
('cea84e2c-f87c-d4cd-7481-64ed1c76f82a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8b003b5c-f841-a280-a25d-643d42886ffc', -99, '2023-08-28 22:17:09', 0),
('cedb5810-408b-627c-1f13-64e3faab6aa0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4026aa1a-1037-4bef-0383-643d424e9de6', -99, '2023-09-25 01:52:49', 0),
('cee2cd8c-fe95-0f97-b562-64e3fa085144', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6175078d-9193-95a7-d99a-643d42f6389c', 89, '2023-09-25 01:52:49', 0),
('cef4cd7b-840b-c00a-2771-64e3fc81258d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1c12ef83-cb08-55cf-2f79-643d42ba9596', -98, '2023-09-25 01:47:07', 0),
('cf0b5410-af5e-fa1b-84a7-64ed19945e14', '96611c3f-0542-6304-6faa-64ed18d1687c', '4827e228-c210-aae8-1dad-643d4203cbe8', 0, '2023-08-28 22:17:53', 1),
('cf4530e6-638d-bd0a-11a3-64e3faace0bc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '46a502c7-947c-aa28-4377-643d42239093', -99, '2023-09-25 01:52:49', 0),
('cf4665c5-d397-9124-7db5-64e3fa47e299', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6bf6266d-6d73-495c-16e9-643d42b9f3a6', 90, '2023-09-25 01:52:49', 0),
('cf571b99-aa47-37dc-4ce1-64ed1c9ff65d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '87e4343b-106e-c1af-7744-643d426f55cc', -99, '2023-08-28 22:17:09', 0),
('cf57f7c2-babe-76c2-166e-64ed1c19d85c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6175078d-9193-95a7-d99a-643d42f6389c', -98, '2023-08-28 22:17:09', 0),
('cf710b2e-44c8-5a7e-6ad7-64e3fc2f0a20', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '25eb71f1-29e2-2ade-750f-643d4265fd32', -99, '2023-09-25 01:47:07', 0),
('cf8014e5-0ba7-fd01-bcba-64ed1939964b', '96611c3f-0542-6304-6faa-64ed18d1687c', '45bfd43b-0e31-f47c-fc67-643d42cda15f', 0, '2023-08-28 22:17:53', 1),
('cf90002f-938e-22b6-389e-64e3fc782ace', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'view', -99, '2023-09-25 01:47:07', 0),
('cfd15f15-bf37-d8e6-40e4-64e3fa56a37e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6980b3c9-af0a-4f9c-866b-643d4245c615', 90, '2023-09-25 01:52:49', 0),
('cfe201e1-4782-1c6c-1e89-64ed1c6d6a02', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6bf6266d-6d73-495c-16e9-643d42b9f3a6', -99, '2023-08-28 22:17:09', 0),
('cfe6005e-6b23-6e1e-174f-64e3fc0fcedd', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2a92fe21-ed84-31a6-5a40-6450328f0189', -99, '2023-09-25 01:47:07', 0),
('cff3369b-8acd-23c0-555a-64ed1c72045f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '827fa663-54c1-d0b9-ab91-643d424b6552', -99, '2023-08-28 22:17:09', 0),
('d001b66b-32ff-7403-bdd5-64e3fc8a4652', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '23bd3518-afc4-2601-fa4d-643d42b23485', -99, '2023-09-25 01:47:07', 0),
('d0089fc9-5c5f-03a2-1222-64ed19f80f5b', '96611c3f-0542-6304-6faa-64ed18d1687c', '4d6477ae-078e-a18c-684d-643d420aa107', 0, '2023-08-28 22:17:53', 1),
('d00d76ca-2a6c-b0d1-6f8c-64e3fac9f459', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '447ee460-89cc-d8cb-3fe6-643d42c74ca4', -99, '2023-09-25 01:52:49', 0),
('d048cb7e-f17d-8533-3fc7-64e3fa920568', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7217f0d1-d5a1-a60c-5564-643d42512e78', 90, '2023-09-25 01:52:49', 0),
('d067a12c-2a49-e70f-60a8-64ed1c843aa1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8d78ea83-ccff-f139-7cc8-643d42c348c5', -99, '2023-08-28 22:17:09', 0),
('d0850d0b-fdd6-f356-b3a2-64ed19a2b9b8', '96611c3f-0542-6304-6faa-64ed18d1687c', '4b64ebf1-3f5e-6064-2bab-643d42e2fb23', 0, '2023-08-28 22:17:53', 1),
('d08d30af-ff4f-0de0-0cb9-64ed1c35613b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6980b3c9-af0a-4f9c-866b-643d4245c615', -99, '2023-08-28 22:17:09', 0),
('d08eda45-cb92-8efe-4eee-64e3fa649f88', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3db93a00-845c-f69d-8af7-643d4278deec', -99, '2023-09-25 01:52:49', 0),
('d0a5a210-e13e-2a7a-4b23-64e3fcf1dc95', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2a4697b0-3240-c8b3-d01f-643d422579a5', -99, '2023-09-25 01:47:07', 0),
('d0d1257e-5d7c-1a39-e61b-64e3faeed196', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '6edcc876-f1e9-192d-0644-643d42cc82ce', 90, '2023-09-25 01:52:49', 0),
('d10fa024-c106-9ed9-a213-64ed19b19bd5', '96611c3f-0542-6304-6faa-64ed18d1687c', '43840c58-7109-c4dc-624e-643d429dd4c9', 0, '2023-08-28 22:17:53', 1),
('d1129020-0a6e-5778-ef40-64ed1c781c14', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '80dd1457-331f-b814-dddc-643d4227054e', -99, '2023-08-28 22:17:09', 0),
('d11a7f1a-5231-f348-9167-64ed1c64303e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7217f0d1-d5a1-a60c-5564-643d42512e78', -99, '2023-08-28 22:17:09', 0),
('d132b5d3-9294-b66a-c306-64e3fa09cac9', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '48de9d1b-7318-2bab-caab-643d4237ce9b', -99, '2023-09-25 01:52:49', 0),
('d1467304-856e-ed25-a324-64e3fcb4952e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '27f59658-b650-9952-69e2-643d428bf721', -99, '2023-09-25 01:47:07', 0),
('d174b9f1-a196-527e-59de-64e3fad01f39', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '66a68a8d-39c7-347c-8e79-643d42a1a49d', -99, '2023-09-25 01:52:49', 0),
('d185a4cc-1897-6e83-8ce7-64ed19170815', '96611c3f-0542-6304-6faa-64ed18d1687c', '4fb2ed6d-b030-97cd-5688-643d42f47b36', 0, '2023-08-28 22:17:53', 1),
('d18b1a9d-6526-3dbb-36bf-64ed1cee6cd9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3831706e-e3dd-525a-6bfc-643d426ab45b', -98, '2023-08-28 22:17:09', 0),
('d1973e94-b7d8-438a-fbda-64ed1cce3fa1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6edcc876-f1e9-192d-0644-643d42cc82ce', -99, '2023-08-28 22:17:09', 0),
('d1badc4d-dc4f-8b21-374e-64e3fa2ac406', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3b22fd65-0d32-52f6-9244-643d4230c3ea', -99, '2023-09-25 01:52:49', 0),
('d1e00f41-95a2-0d8e-9efa-64e3fc41e428', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '843db447-fb52-52aa-19be-643d42a5ec94', -99, '2023-09-25 01:47:07', 0),
('d1ec8b8b-8324-46eb-6816-64e3fc1de2c5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '21a5b584-c1b8-d7d9-6e34-643d42922a53', -99, '2023-09-25 01:47:07', 0),
('d1fd0ce1-cb4a-0cb2-4630-64e3faef5ec4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '7529b778-fb51-a9da-2a67-643d42dcd95a', -99, '2023-09-25 01:52:49', 0),
('d238c59d-6e52-17dc-d9ae-64e3faaef36b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '23b30fde-2c5f-8bf0-6e40-643d42e2877d', -98, '2023-09-25 01:52:49', 0),
('d23c440b-d6e3-33ef-43de-64ed191b19e0', '96611c3f-0542-6304-6faa-64ed18d1687c', '40898c12-09e1-b1a3-789f-643d42fe52e6', 0, '2023-08-28 22:17:53', 1),
('d2556629-6538-e9e1-c01c-64e3fc74f9c6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2d9df5e2-e704-40ac-c128-643d42dfe310', -99, '2023-09-25 01:47:07', 0),
('d27a21b7-5217-7edb-7377-64e3fab40c58', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '64579707-1f93-e8af-2488-643d421c3f2d', 90, '2023-09-25 01:52:49', 0),
('d2c475c1-1b72-54d9-2654-64ed192e98fa', '96611c3f-0542-6304-6faa-64ed18d1687c', '18dbd534-b071-8b59-048c-643d4266af9f', 0, '2023-08-28 22:17:53', 1),
('d2dc077d-5d04-6c6f-b5d4-64e3fa62dbb7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e02607b5-4d26-a9e1-c3a4-643d427ff59b', -99, '2023-09-25 01:52:49', 0),
('d2e66a78-4f47-96f4-a2d1-64e3fc14cf4a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1ec1941b-161d-56d7-77ea-643d42a19f13', -99, '2023-09-25 01:47:07', 0),
('d30211a3-d32f-93ca-1230-64e3fa1a32a1', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'dc80e445-ec22-10ef-ec3b-643d42e97f9f', -98, '2023-09-25 01:52:49', 0),
('d33e5ce7-05bc-fcbc-fdda-64e3fa1de6ab', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c18500a0-1ee8-6e8a-c264-643d420f8646', -99, '2023-09-25 01:52:49', 0),
('d342122d-7eae-358a-d59d-64ed194d098c', '96611c3f-0542-6304-6faa-64ed18d1687c', '22a1e411-e21a-aafd-66ea-643d42211553', 0, '2023-08-28 22:17:53', 1),
('d351cd5f-df28-83f0-cd9b-64ed1cafb97d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4247a7e7-ff7c-b050-20ca-643d427e9fcf', -99, '2023-08-28 22:17:09', 0),
('d35cf812-6295-618b-5ecb-64e3fc296191', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3291ce61-6dc2-3656-9dfb-643d4238a8db', -98, '2023-09-25 01:47:07', 0),
('d37fff34-77d1-0456-4e92-64e3fafb6c06', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e73a1d78-f2d2-b10f-d3a0-643d4212e62f', -99, '2023-09-25 01:52:49', 0),
('d3c9f0cc-bd15-98e3-5dec-64e3faf55a6e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '11bfb468-984e-e90f-f4c7-643d4236199d', -99, '2023-09-25 01:52:49', 0),
('d3d19b46-445c-0423-7dcf-64ed1969e74e', '96611c3f-0542-6304-6faa-64ed18d1687c', '20f617ea-a2f9-90db-a0b5-643d423c35ba', 0, '2023-08-28 22:17:53', 1),
('d3eb3d96-db36-8678-60dd-64ed1c681a70', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4026aa1a-1037-4bef-0383-643d424e9de6', -99, '2023-08-28 22:17:09', 0),
('d3ec4d68-f0ee-96d9-21b0-64e3fc9a1375', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3fc6fc1d-bb6c-424b-a1bc-643d427c0cc5', -99, '2023-09-25 01:47:07', 0),
('d4099f08-5121-ca04-559a-64e3fa9df667', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e4b24459-904b-473e-1a7b-643d42ef3f79', -99, '2023-09-25 01:52:49', 0),
('d43fe694-5a38-7a7d-3bf8-64e3fad31f55', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'fcad046b-5555-2362-e977-643d42eb75bb', -99, '2023-09-25 01:52:49', 0),
('d4462094-2a7a-4f18-6fc4-64ed1cb42b0b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '66a68a8d-39c7-347c-8e79-643d42a1a49d', -99, '2023-08-28 22:17:09', 0),
('d44866f5-5809-7312-34b6-64ed19e33d60', '96611c3f-0542-6304-6faa-64ed18d1687c', '26744b14-5ab9-55c5-8ec1-643d4220330b', 0, '2023-08-28 22:17:53', 1),
('d461ebfa-7dc8-865f-5b8f-64e3fcc8eac9', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3d842321-1f42-32a6-91ae-643d42b7cbbe', -99, '2023-09-25 01:47:07', 0),
('d4628abb-9b17-e877-b02d-64ed1cd32de8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '46a502c7-947c-aa28-4377-643d42239093', -99, '2023-08-28 22:17:09', 0),
('d4810e00-d340-ba50-277d-64e3fae54a97', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'ec922d29-37aa-1f72-34cf-643d428f5ce6', -99, '2023-09-25 01:52:49', 0),
('d499065a-0387-0829-c8fd-64ed1c7b3ed2', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c0ccaf4e-8792-11ad-1bec-643d42234848', -99, '2023-08-28 22:17:09', 0),
('d4c9adb2-2831-03e6-5288-64e3fa2ae525', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a5b90652-428b-98dc-8fbd-643d42217932', -99, '2023-09-25 01:52:49', 0),
('d4d0ecb2-2b53-eb29-445d-64ed198b9564', '96611c3f-0542-6304-6faa-64ed18d1687c', '247a2b2d-95f9-313f-76f2-643d42c6439d', 0, '2023-08-28 22:17:53', 1),
('d4f06ceb-003a-2523-de0f-64e3fc049eee', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4696b7e8-2f0e-d4e1-e2fc-643d42d907c5', -99, '2023-09-25 01:47:07', 0),
('d4f9422c-aada-725d-4fb5-64ed1ceba9da', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '447ee460-89cc-d8cb-3fe6-643d42c74ca4', -99, '2023-08-28 22:17:09', 0),
('d50807e6-07e6-ae8f-6c6f-64ed1cef77f4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '7529b778-fb51-a9da-2a67-643d42dcd95a', -99, '2023-08-28 22:17:09', 0),
('d508cc2b-74c9-4144-1cb2-64e3fa0d2b1d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e9fb1012-98aa-39da-3324-643d4274f8c3', -99, '2023-09-25 01:52:49', 0),
('d5450f29-103d-f8ab-2ee5-64ed19e4e15e', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd1465356-0e13-13f3-de0d-643d42152692', 0, '2023-08-28 22:17:53', 1),
('d548559e-1fd1-2130-e37f-64ed193ad33e', '96611c3f-0542-6304-6faa-64ed18d1687c', '1eda117f-7c86-9865-0174-643d42d37055', 0, '2023-08-28 22:17:53', 1),
('d566a129-ce01-7682-053d-64e3fca457c2', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '43026e67-ccdb-f06a-01a4-643d42d2b66a', -99, '2023-09-25 01:47:07', 0),
('d56a6c97-65a0-4723-5d98-64e3fa789793', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '13bddec6-14e9-215b-5602-643d42567829', -99, '2023-09-25 01:52:49', 0),
('d574457e-642a-2adb-2549-64ed1cca789e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3db93a00-845c-f69d-8af7-643d4278deec', -99, '2023-08-28 22:17:09', 0),
('d588799b-c0d0-3524-6544-64e3fa3da932', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e265fb27-af1e-5c34-e2ef-643d427d374f', -99, '2023-09-25 01:52:49', 0),
('d5b0aee5-b7da-753a-4328-64ed1cb0dfba', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '64579707-1f93-e8af-2488-643d421c3f2d', -99, '2023-08-28 22:17:09', 0),
('d5f5f188-5b37-5b7b-305b-64e3fae03d7b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '86030232-554b-3912-ff6d-643d429e6db0', -99, '2023-09-25 01:52:49', 0),
('d60d16f0-d3bf-1ac5-ad72-64ed1c8a5262', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '48de9d1b-7318-2bab-caab-643d4237ce9b', -99, '2023-08-28 22:17:09', 0),
('d610ad35-c9b9-60e0-0670-64e3fa6a62e5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'ef87a9f5-cd80-ff7d-bb7f-643d426ea488', -99, '2023-09-25 01:52:49', 0),
('d622740c-8fdd-d4c3-34c7-64ed1cab5cf1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'dc80e445-ec22-10ef-ec3b-643d42e97f9f', -98, '2023-08-28 22:17:09', 0),
('d63640d6-ac97-69d7-301f-64e3fc05a57d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3ae27b9b-17cd-2231-db91-643d424574cf', -99, '2023-09-25 01:47:07', 0),
('d66c645a-c382-42f2-ee11-64e3faaf7765', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b313e01d-06a7-5419-82d0-643d42d66fd0', -98, '2023-09-25 01:52:49', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('d6a2bec5-fbe9-b582-1aa3-64ed1c201628', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3b22fd65-0d32-52f6-9244-643d4230c3ea', -99, '2023-08-28 22:17:09', 0),
('d6d4b50e-aef4-927e-0446-64e3fc8f0647', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '4a1c4d83-eb57-7fad-6d9d-643d429fb639', -99, '2023-09-25 01:47:07', 0),
('d6d5e82c-1200-bfd1-bf10-64ed1cc19247', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e73a1d78-f2d2-b10f-d3a0-643d4212e62f', -99, '2023-08-28 22:17:09', 0),
('d6d90a1c-786f-5236-bfd5-64e3fa04d01f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'e02940f3-b381-ea69-6e0f-643d422bf806', -99, '2023-09-25 01:52:49', 0),
('d6f506a2-a24d-8fc8-e112-64e3fa715acc', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c0b7a82f-61b7-a942-0e58-643d4272b826', -99, '2023-09-25 01:52:49', 0),
('d7158c57-f277-64e7-1021-64ed1c538c5b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '23b30fde-2c5f-8bf0-6e40-643d42e2877d', -98, '2023-08-28 22:17:09', 0),
('d73d0d2c-9892-4017-32ed-64e3fc1afe4e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '37d7bc9d-b39d-1a27-0ba5-643d42dd2488', -99, '2023-09-25 01:47:07', 0),
('d74849e2-e881-8cb8-1907-64e3fad95cd8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b3f9fdb1-4f7e-8677-5c0f-643d422b78e2', -98, '2023-09-25 01:52:49', 0),
('d7495e61-e1b5-9679-a704-64ed1cea3cf5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e4b24459-904b-473e-1a7b-643d42ef3f79', -99, '2023-08-28 22:17:09', 0),
('d75004f7-9039-f900-90d0-64ed19af5f18', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd755af60-05ad-df72-0632-643d424558b5', 0, '2023-08-28 22:17:53', 1),
('d76c9bf1-18fa-9319-c176-64e3fab77587', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'bd333d73-94fc-a74c-ff83-643d422bf2f9', -99, '2023-09-25 01:52:49', 0),
('d7b042b3-1c4c-1f91-a4c1-64ed1ca2914c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e02607b5-4d26-a9e1-c3a4-643d427ff59b', -99, '2023-08-28 22:17:09', 0),
('d7c619cf-5c2e-bf21-e98c-64e3fc09d066', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '587e63d5-1ad4-6c4c-896b-643d428a3ba1', -98, '2023-09-25 01:47:07', 0),
('d7cb70ed-f2c2-7a33-a497-64ed1982b1e5', '96611c3f-0542-6304-6faa-64ed18d1687c', '28cc7a99-835f-0b83-c3d5-643d4250f93e', 0, '2023-08-28 22:17:53', 1),
('d7d1ea7d-ae7b-354f-8a10-64e3fa64c070', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'bd59270a-482b-a7c5-381e-643d425dac8d', -99, '2023-09-25 01:52:49', 0),
('d7e07176-a08c-a543-4873-64ed1c082f6b', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'ec922d29-37aa-1f72-34cf-643d428f5ce6', -99, '2023-08-28 22:17:09', 0),
('d7f4249f-bde6-b9c4-2cd0-64e3fae59805', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c7abc2fc-bfdf-edba-b560-643d42bfb7c8', -99, '2023-09-25 01:52:49', 0),
('d8423cf5-f093-4f20-ad8e-64e3fcd2b133', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '62ad92fd-05d8-edd6-5e14-643d42e04c48', -99, '2023-09-25 01:47:07', 0),
('d84e20c6-c9a6-a3c6-5928-64e3faf185dd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'bace0c27-f773-f3fc-4041-643d42753d4d', -99, '2023-09-25 01:52:49', 0),
('d8598780-c3c3-da2d-cdda-64ed1cdc8a46', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c18500a0-1ee8-6e8a-c264-643d420f8646', -99, '2023-08-28 22:17:09', 0),
('d8611170-2bb4-a976-d0c8-64ed19268fb6', '96611c3f-0542-6304-6faa-64ed18d1687c', '1ce1b0d4-5886-d6de-96b1-643d42c82330', 0, '2023-08-28 22:17:53', 1),
('d871ec80-01ea-196b-c1df-64e3fa090f42', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c431bd33-ceba-1993-c1bf-643d429e5f26', -99, '2023-09-25 01:52:49', 0),
('d8813e50-cfcb-4899-fa2f-64ed1c4bc749', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e9fb1012-98aa-39da-3324-643d4274f8c3', -99, '2023-08-28 22:17:09', 0),
('d8cbc925-ddad-ab3f-36a6-64e3fc47ab62', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '60203409-538b-7451-c953-643d4239ee5f', -99, '2023-09-25 01:47:07', 0),
('d8d93c0b-c989-9a3c-2fb3-64e3fa3c1209', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c2b0daf4-73fa-f8ad-4af0-643d42d1b294', -99, '2023-09-25 01:52:49', 0),
('d8e1077d-7452-79c4-c19b-64e3fc5e4a06', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3c602b17-cd3f-c64f-57ce-645032225655', -99, '2023-09-25 01:47:07', 0),
('d8f31f4d-5a07-503d-0f24-64ed1c1a1c91', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '11bfb468-984e-e90f-f4c7-643d4236199d', -99, '2023-08-28 22:17:09', 0),
('d8fc28c2-6d8f-dfce-8d72-64e3fa174ca8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b96f4d15-6e2e-53e0-a0ba-643d42dcdfd9', -99, '2023-09-25 01:52:49', 0),
('d916dee7-3d49-8510-c104-64ed1cab0fef', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e265fb27-af1e-5c34-e2ef-643d427d374f', -99, '2023-08-28 22:17:09', 0),
('d9200082-975b-98c1-3be6-64ed191f9f1d', '96611c3f-0542-6304-6faa-64ed18d1687c', 'cd64ad84-2065-c303-dc5a-643d42ddbd6c', 0, '2023-08-28 22:17:53', 1),
('d9493e12-c3fc-f6e9-4820-64e3fc1cd00d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '67763625-2266-0e06-ab21-643d42e41619', -99, '2023-09-25 01:47:07', 0),
('d94edc19-d66f-e910-95cf-64e3fa990e52', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c023cc03-aa31-a558-12e2-643d42892ec5', -99, '2023-09-25 01:52:49', 0),
('d990cdc2-407c-3bc6-9d76-64ed1cf098a5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'fcad046b-5555-2362-e977-643d42eb75bb', -99, '2023-08-28 22:17:09', 0),
('d9a13825-409c-df4f-56b9-64e3facecda6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'cb09c525-d32d-3945-e993-643d4245d55f', -99, '2023-09-25 01:52:49', 0),
('d9ab175c-8585-3453-0d2d-64ed1909b029', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd921d2fb-21cb-4380-3393-643d42fc41c5', 0, '2023-08-28 22:17:53', 1),
('d9d364e0-b20d-8dda-87d5-64e3fce089a7', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '64fd8b6e-18db-5c97-76c6-643d42d12487', -99, '2023-09-25 01:47:07', 0),
('d9d733e8-0d39-a4cc-9945-64ed1c3acfde', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'ef87a9f5-cd80-ff7d-bb7f-643d426ea488', -99, '2023-08-28 22:17:09', 0),
('d9d885ac-b60c-74e8-a266-64e3fa000c62', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b878f74e-b575-aed7-a18d-643d424a9cc2', -99, '2023-09-25 01:52:49', 0),
('da093015-3a62-8bc0-20eb-64ed1c9fd2f5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'a5b90652-428b-98dc-8fbd-643d42217932', -99, '2023-08-28 22:17:09', 0),
('da093619-0d79-5540-5d69-64e3fa946412', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b62e6401-da2a-742b-3522-643d4296caee', -99, '2023-09-25 01:52:49', 0),
('da2a3c5d-9112-9263-457f-64ed190a3511', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd6b8f4d9-6121-3625-daaa-643d426a67f6', 0, '2023-08-28 22:17:53', 1),
('da45086e-6237-a1b0-5fae-64ed1c21805d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e02940f3-b381-ea69-6e0f-643d422bf806', -99, '2023-08-28 22:17:09', 0),
('da4ef8f4-6f0a-074e-a33d-64e3fc95c6b3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5ddc5fb8-9db0-78df-2077-643d42f3b2b2', -99, '2023-09-25 01:47:07', 0),
('da4fdec4-8445-3162-c48e-64e3fa2978d0', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c5476205-a9a0-1cab-a970-643d42c1273b', -99, '2023-09-25 01:52:49', 0),
('da5a0a17-2970-91c9-1c1d-64e3fce8042e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8b003b5c-f841-a280-a25d-643d42886ffc', -99, '2023-09-25 01:47:07', 0),
('dab4d4f5-6508-8c77-b1b3-64ed19d332ba', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e2fea466-52ff-d091-ddb5-643d42d87664', 0, '2023-08-28 22:17:53', 1),
('dad20551-c9a9-7405-b0e1-64e3faa60359', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8a5aeba8-50b8-75f8-9b41-643d42d044df', -98, '2023-09-25 01:52:49', 0),
('dad7c2e8-0b35-5da3-9c10-64e3fa307c8b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b678aaa3-1564-f495-9cee-643d42a96dc3', -99, '2023-09-25 01:52:49', 0),
('dadcd384-f121-7ad1-93c4-64ed1c8529bb', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '13bddec6-14e9-215b-5602-643d42567829', -99, '2023-08-28 22:17:09', 0),
('daf5b072-11cd-d60b-1ea1-64ed1c0e98e0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b3f9fdb1-4f7e-8677-5c0f-643d422b78e2', -98, '2023-08-28 22:17:09', 0),
('db33194c-85de-8626-3553-64ed19971a84', '96611c3f-0542-6304-6faa-64ed18d1687c', 'dfe88f27-1c49-c87e-054e-643d42b1b613', 0, '2023-08-28 22:17:53', 1),
('db4e044e-05aa-6044-71d7-64e3fad3fc6d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '964021bb-4fc3-5eca-b076-643d42d7f62f', -99, '2023-09-25 01:52:49', 0),
('db4f4f70-a833-9959-3ba4-64e3fa648089', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '16e177a7-a814-a0d1-005c-643d42231a75', -98, '2023-09-25 01:52:49', 0),
('db57e664-a937-f1fc-34e7-64e3fc320bee', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '69a21c13-2952-08dc-3320-643d42583953', -99, '2023-09-25 01:47:07', 0),
('db60d253-1e57-5118-871a-64ed1c4ec637', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '86030232-554b-3912-ff6d-643d429e6db0', -99, '2023-08-28 22:17:09', 0),
('db90e0a1-0108-909b-7625-64ed1c76b9de', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'bd59270a-482b-a7c5-381e-643d425dac8d', -99, '2023-08-28 22:17:09', 0),
('dbbca916-d885-4ec2-281f-64ed196d00a2', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd398d6c5-1fd5-2558-ea8b-643d42febc88', 0, '2023-08-28 22:17:53', 1),
('dbd6d96c-881b-b015-729a-64e3fa98314d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9451aa4a-5aab-336a-d588-643d429e1cc4', -99, '2023-09-25 01:52:49', 0),
('dbe08a6a-df4c-4e0e-7023-64e3fc83426e', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '5b5d5aa7-2f8f-e503-b97e-643d42361b6c', -99, '2023-09-25 01:47:07', 0),
('dbff1196-def1-37c6-2900-64ed1c7a743e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'bace0c27-f773-f3fc-4041-643d42753d4d', -99, '2023-08-28 22:17:09', 0),
('dc0d0859-4d61-e27c-6b0f-64ed1c41967f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b313e01d-06a7-5419-82d0-643d42d66fd0', -98, '2023-08-28 22:17:09', 0),
('dc17194c-c385-ab02-0dae-64e3fa9d7db7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1eccb202-b30a-4e79-017b-643d426cb521', -99, '2023-09-25 01:52:49', 0),
('dc3e9178-1809-4a66-cb14-64ed19eef81f', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e60d1c08-d1f6-f37e-4480-643d42b5b139', 0, '2023-08-28 22:17:53', 1),
('dc5da837-06f1-137b-689d-64e3fcec5a00', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '18754228-6a6f-13d0-3b49-643d42c860d4', -98, '2023-09-25 01:47:07', 0),
('dc8f42c9-423f-8add-0dee-64ed1cee16f9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c2b0daf4-73fa-f8ad-4af0-643d42d1b294', -99, '2023-08-28 22:17:09', 0),
('dc970cf7-0a22-3cc7-14e8-64e3fadfb1a8', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a8a27bd3-2c66-7e50-01b5-643d424e3274', -99, '2023-09-25 01:52:49', 0),
('dca1e7e3-ed91-5385-858b-64e3fa5f39d3', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1d4c764d-cab6-faab-ff0f-643d42bfa922', -99, '2023-09-25 01:52:49', 0),
('dca3e12d-10de-cbef-a847-64ed1c6afe1e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c0b7a82f-61b7-a942-0e58-643d4272b826', -99, '2023-08-28 22:17:09', 0),
('dcc90b47-4c01-22b9-8b8e-64ed197772b1', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd0846199-52f1-6cbe-bc3f-643d4256389b', 0, '2023-08-28 22:17:53', 1),
('dceb2d46-9790-7042-8c77-64e3fc0541cb', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '25344b6e-7108-f8dd-147b-643d429ad28d', -99, '2023-09-25 01:47:07', 0),
('dcf7a503-d5a6-dd26-bff8-64e3fa8df870', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9adcaf60-7829-73cb-c0ec-643d42c8a446', -99, '2023-09-25 01:52:49', 0),
('dd06ba5e-d987-1002-ab5b-64ed1c820512', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c023cc03-aa31-a558-12e2-643d42892ec5', -99, '2023-08-28 22:17:09', 0),
('dd1102c3-4b1c-b6f3-0cb0-64ed1c7b2522', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'cf3b6446-b35f-7467-5fc1-643d42fdeea1', -99, '2023-08-28 22:17:09', 0),
('dd17b52b-de2c-8015-dad2-64e3fa604591', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '229dc731-75b1-feca-2b36-643d42faafdf', -99, '2023-09-25 01:52:49', 0),
('dd1b4908-4e70-c4f7-1785-64ed1c91b4bf', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'bd333d73-94fc-a74c-ff83-643d422bf2f9', -99, '2023-08-28 22:17:09', 0),
('dd49c05f-6e1b-f041-5b21-64ed191f16cb', '96611c3f-0542-6304-6faa-64ed18d1687c', '8871bbfa-fb5c-f7a2-bb8f-643d42cad534', 0, '2023-08-28 22:17:53', 1),
('dd8eb443-a995-af21-7186-64e3fc21802f', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '21ea3fa1-4b51-7038-b219-643d42bba8ac', -99, '2023-09-25 01:47:07', 0),
('dd97cc2e-2fd5-f3c5-eff3-64e3faf14e93', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '984e24b6-a4e3-5369-5d87-643d4258a04a', -99, '2023-09-25 01:52:49', 0),
('dda133a0-de91-d7f7-6f49-64e3faf6895f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2070b68e-bfcf-b556-124b-643d423944ea', -99, '2023-09-25 01:52:49', 0),
('ddd0309c-0a12-ad62-6c35-64ed1cd4e4b0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b878f74e-b575-aed7-a18d-643d424a9cc2', -99, '2023-08-28 22:17:09', 0),
('ddd4b000-fe61-c9cf-c65e-64ed198cb137', '96611c3f-0542-6304-6faa-64ed18d1687c', '944f8ed7-cf99-be1f-33d9-643d42b4466f', 0, '2023-08-28 22:17:53', 1),
('ddeece28-9617-5c3d-e8cc-64ed1c76d41a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c7abc2fc-bfdf-edba-b560-643d42bfb7c8', -99, '2023-08-28 22:17:09', 0),
('ddfc1f1a-828c-609c-a56c-64e3fc8a8f98', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2a4fa106-22a0-f631-4457-643d42edddb3', -99, '2023-09-25 01:47:07', 0),
('de15afb1-c5ae-9b2c-0109-64e3fa3567eb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9110b114-8c32-345f-676b-643d421b3409', -99, '2023-09-25 01:52:49', 0),
('de1f3239-2785-a9b8-2b7e-64e3fa971348', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1b79268a-cae2-bcfe-2bc5-643d4265434a', -99, '2023-09-25 01:52:49', 0),
('de555c9c-04fb-e7f5-babc-64ed1c00859e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c5476205-a9a0-1cab-a970-643d42c1273b', -99, '2023-08-28 22:17:09', 0),
('de670765-9ce4-56c6-c5e8-64ed1994da48', '96611c3f-0542-6304-6faa-64ed18d1687c', '786564bf-023c-e94f-5761-643d42bef5cb', 0, '2023-08-28 22:17:53', 1),
('de7883c3-d147-b7a5-95fa-64ed19416809', '96611c3f-0542-6304-6faa-64ed18d1687c', '91147876-d8b7-1217-59b0-643d42723378', 0, '2023-08-28 22:17:53', 1),
('de88a582-e400-f11c-d399-64e3fc1f8094', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '27c8e436-475b-e1e9-23a0-643d423fb989', -99, '2023-09-25 01:47:07', 0),
('de9558f0-8fc1-ba08-afa7-64ed1c7136cd', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c431bd33-ceba-1993-c1bf-643d429e5f26', -99, '2023-08-28 22:17:09', 0),
('de9f48b5-62af-4545-47fe-64e3fa2fcad5', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9d5129d9-81e6-f6b5-cf0e-643d423b347c', -99, '2023-09-25 01:52:49', 0),
('deae432c-f32d-c1c4-31ac-64e3fa43d76d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '24a67cf2-d1cb-21f8-34d9-643d42b3ac7a', -99, '2023-09-25 01:52:49', 0),
('dee51c23-0e34-542b-2c3a-64ed1c6cf439', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b678aaa3-1564-f495-9cee-643d42a96dc3', -99, '2023-08-28 22:17:09', 0),
('df000fd6-8884-1785-fb6c-64e3fcb53262', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '20058d18-0722-5d89-e929-643d4237b2f3', -99, '2023-09-25 01:47:07', 0),
('df072994-6547-6e4a-724f-64ed19c88624', '96611c3f-0542-6304-6faa-64ed18d1687c', '99ddafa8-9321-0e64-b46d-643d421c50aa', 0, '2023-08-28 22:17:53', 1),
('df07c2d1-1329-d871-b9f4-64ed1c6c68db', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b96f4d15-6e2e-53e0-a0ba-643d42dcdfd9', -99, '2023-08-28 22:17:09', 0),
('df1b6437-a797-e797-7443-64e3faace90c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '8db31284-a16e-771b-e44a-643d42d92b62', -99, '2023-09-25 01:52:49', 0),
('df2b333f-a305-e5de-9b44-64e3fa06cb5a', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '19e340de-d34d-3a8f-b112-643d421a16c0', -99, '2023-09-25 01:52:49', 0),
('df7e965a-b711-c775-7400-64ed1cf5e633', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '16e177a7-a814-a0d1-005c-643d42231a75', -98, '2023-08-28 22:17:09', 0),
('df898ba6-c0cc-0d76-2917-64e3fce6a1c6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2d16dc83-148f-391d-57db-643d42abc978', -99, '2023-09-25 01:47:07', 0),
('dfacaad1-25c5-1d85-bbc5-64ed199652ee', '96611c3f-0542-6304-6faa-64ed18d1687c', '97390838-1340-e12b-b0ec-643d42ea9fcf', 0, '2023-08-28 22:17:53', 1),
('dfb66e16-8dc9-7c75-3ce9-64ed1c5ddbfe', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'cb09c525-d32d-3945-e993-643d4245d55f', -99, '2023-08-28 22:17:09', 0),
('dfbc201e-95fd-db20-7606-64e3fa8e8c3e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '2d377155-c266-053c-a780-643d4274ced1', -98, '2023-09-25 01:52:49', 0),
('dfed2fe2-ed37-c5af-4830-64ed1cdf947e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1eccb202-b30a-4e79-017b-643d426cb521', -99, '2023-08-28 22:17:09', 0),
('dfff3daa-8610-fb4c-6d2b-64e3fc92315a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '1db5ca27-9945-5c8b-9a72-643d42497250', -99, '2023-09-25 01:47:07', 0),
('e01971d7-2566-cdb0-ad79-64ed195daffd', '96611c3f-0542-6304-6faa-64ed18d1687c', '8e2fc654-f1dd-c2a6-9b7b-643d4238d82b', 0, '2023-08-28 22:17:53', 1),
('e032572f-a34e-e98b-3905-64e3faf585a7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '40035ade-8ab4-d576-99fd-643d42e880db', -99, '2023-09-25 01:52:49', 0),
('e0377d41-171e-cd56-6412-64ed1c405724', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'b62e6401-da2a-742b-3522-643d4296caee', -99, '2023-08-28 22:17:09', 0),
('e048054c-d04a-91c4-4842-64e3fcefbf2d', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '275dcbaf-2cb1-556e-79c3-645032ccc2c6', 90, '2023-09-25 01:47:07', 0),
('e0777c35-ba66-0ecf-8e92-64ed1ce6f4f4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1d4c764d-cab6-faab-ff0f-643d42bfa922', -99, '2023-08-28 22:17:09', 0),
('e0a3099c-e01c-bbfd-2e5e-64ed19763f7a', '96611c3f-0542-6304-6faa-64ed18d1687c', '9c2c3603-e4f2-6f36-4f94-643d42967850', 0, '2023-08-28 22:17:53', 1),
('e0b9f55c-3ec3-b355-e0a7-64e3fa42ea10', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '39cdb5f5-55f8-537c-2680-643d427824b7', -99, '2023-09-25 01:52:49', 0),
('e0c404cc-714a-0be4-a84d-64ed1c90f8f9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'db0d092f-0637-f8fd-b368-643d42c324dc', 0, '2023-08-28 22:15:56', 0),
('e0cd3a83-95af-ddef-fb78-64e3fcd5eb53', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9e8c8d77-450a-1896-ce31-643d42df5682', -98, '2023-09-25 01:47:07', 0),
('e0ebec52-ff98-8e8d-f24e-64ed1cd5efad', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '229dc731-75b1-feca-2b36-643d42faafdf', -99, '2023-08-28 22:17:09', 0),
('e13ec84b-6e70-17e3-fca7-64ed1cb7d09d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e520d25a-ce04-95e3-241f-643d42024060', 0, '2023-08-28 22:15:56', 0),
('e15dcaca-fbeb-7a3d-d860-64e3fa336ae2', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4a917b3c-07ff-b956-b808-643d42d91434', -99, '2023-09-25 01:52:49', 0),
('e16d379f-eaa9-b678-0ba9-64e3fc9193b1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'aea8f222-4ddd-ce12-7094-643d42640dcf', -99, '2023-09-25 01:47:07', 0),
('e1756f83-5732-ef5a-c469-64ed1cf0a77a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2070b68e-bfcf-b556-124b-643d423944ea', -99, '2023-08-28 22:17:09', 0),
('e1db6e66-bdc8-b125-7d9c-64e3fcdaec36', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'abfd3021-01ef-ce0b-4651-643d42a23fb1', -99, '2023-09-25 01:47:07', 0),
('e1e142da-bafa-1293-6e7d-64ed1c8dcdb5', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e329fb7d-8b0c-7bd7-3117-643d4251fc0f', 0, '2023-08-28 22:15:56', 0),
('e1e79a40-7734-7982-8c5d-64e3fa061892', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '46bcd1d4-03b2-2f8a-7d2c-643d420d1a13', -99, '2023-09-25 01:52:49', 0),
('e1ee03cb-5131-1a07-cb70-64e3fc8b7539', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '87e4343b-106e-c1af-7744-643d426f55cc', -99, '2023-09-25 01:47:07', 0),
('e1ee1608-c33d-f037-0442-64ed1c65c5f6', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1b79268a-cae2-bcfe-2bc5-643d4265434a', -99, '2023-08-28 22:17:09', 0),
('e20b13b7-f571-662b-9838-64ed19e7d506', '96611c3f-0542-6304-6faa-64ed18d1687c', '8b6a5436-1e65-d670-4d71-643d42066012', 0, '2023-08-28 22:17:53', 1),
('e2650d8b-2851-6554-426c-64e3fcb54ea4', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b3cba99d-bdc5-b1aa-f2ae-643d42da459d', -99, '2023-09-25 01:47:07', 0),
('e26a8776-0a0d-1b70-9f5e-64ed1c6cc5d7', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'eac4d778-9a2a-8856-d0e9-643d4296833a', 0, '2023-08-28 22:15:56', 0),
('e2764a74-f99f-f4ea-1ecc-64ed1c4776a9', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '24a67cf2-d1cb-21f8-34d9-643d42b3ac7a', -99, '2023-08-28 22:17:09', 0),
('e28eff0b-4122-3972-0f4e-64e3fa22ee81', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '3545bccb-a488-e2c9-4ed2-643d42c97663', -99, '2023-09-25 01:52:49', 0),
('e29933ac-b3e6-c49b-4cc4-64ed1935c5a9', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b5440a3c-120e-44cf-52d2-643d425bf629', 0, '2023-08-28 22:17:53', 1),
('e2e27383-84cd-268f-5ecc-64e3fcab6037', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b10f7000-7dfa-5794-e3a5-643d42a6cff5', -99, '2023-09-25 01:47:07', 0),
('e2e6778f-7bc4-d4e8-95b7-64ed1cd559b0', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e753ee24-0735-4589-fca9-643d42b464ac', 0, '2023-08-28 22:15:56', 0),
('e30c8545-4699-a464-2581-64e3fab84839', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4db74728-ad00-37a6-4a1c-643d42db2d40', -99, '2023-09-25 01:52:49', 0),
('e30d8c7e-47b4-9e55-32d9-64ed19b786ef', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c12f12ed-d0de-833b-28dc-643d424439cc', 0, '2023-08-28 22:17:53', 1),
('e30dba82-1c49-16ac-974c-64ed1c10812d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '19e340de-d34d-3a8f-b112-643d421a16c0', -99, '2023-08-28 22:17:09', 0),
('e36b0d1f-1a49-0c5b-8f5b-64e3fcb66f70', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a7eec1e1-8bb0-5ee3-2b16-643d4268b042', -99, '2023-09-25 01:47:07', 0),
('e39681c4-f13f-12fa-f12f-64e3fa5953f4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '31d70ba4-73cc-d1fc-fa03-643d42089bf1', -99, '2023-09-25 01:52:49', 0),
('e39ba673-d94d-38f9-aaf7-64ed19baaa98', '96611c3f-0542-6304-6faa-64ed18d1687c', 'be37d83f-5fd1-4e2a-eab4-643d4232e6d6', 0, '2023-08-28 22:17:53', 1),
('e3aef2b8-84ae-e09b-ba36-64ed1c9c5a65', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '2d377155-c266-053c-a780-643d4274ced1', -98, '2023-08-28 22:17:09', 0),
('e3b4412d-c7f5-4d1f-1357-64ed1cfe5ac7', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'e0c6637d-bb3e-90fd-496a-643d4266b0fa', 0, '2023-08-28 22:15:56', 0),
('e3e84cd9-5666-263f-5518-64e3fcb06aad', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'b6eaebb9-8851-f1b6-da6a-643d4256b64f', -99, '2023-09-25 01:47:07', 0),
('e4120b80-d5d8-5f2e-1f42-64e3fa752c4e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4c56983b-5dbf-a07a-80cc-643d42405d23', -98, '2023-09-25 01:52:49', 0),
('e4124b34-78cf-2384-f3ca-64ed1ce2d5fe', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '40035ade-8ab4-d576-99fd-643d42e880db', -99, '2023-08-28 22:17:09', 0),
('e42ca40e-9720-8dfc-48a6-64ed1c67462e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'ecbcae7e-d0d4-c118-f2bc-643d42535c13', 0, '2023-08-28 22:15:56', 0),
('e433d408-ed75-7520-77e4-64ed199c9cd5', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c5bc5513-c14e-4816-44b1-643d424385ff', 0, '2023-08-28 22:17:53', 1),
('e44d0f86-55a6-856c-84c8-64e3fa08d532', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b5f4016f-a91b-b857-1710-643d42f986a1', -99, '2023-09-25 01:52:49', 0),
('e471e725-c5ea-f451-0147-64e3fc48433c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a2ff80e3-649c-5647-90f0-643d42a3a174', -99, '2023-09-25 01:47:07', 0),
('e49c5f6e-6a89-61e5-b9e7-64ed1cc4b688', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '39cdb5f5-55f8-537c-2680-643d427824b7', -99, '2023-08-28 22:17:09', 0),
('e49c7af4-5e09-801b-49f7-64e3fa4e283b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '54f6c960-d4f7-0053-fab9-643d4238e5c6', -99, '2023-09-25 01:52:49', 0),
('e4b7f355-4635-b330-44a7-64ed1c193fbd', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'de4fcba1-80d4-ee51-1653-643d425cccf4', 0, '2023-08-28 22:15:56', 0),
('e4c03a38-e0a6-d1e2-cad8-64ed19b105b8', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c384f6b9-e02e-515d-e52b-643d4205628f', 0, '2023-08-28 22:17:53', 1),
('e4ed91d4-06ba-d447-4b7c-64e3fcd9f489', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '212122ef-0e29-3dd2-b76e-643d42cbe552', -98, '2023-09-25 01:47:07', 0),
('e518e69c-bb09-6616-9cc6-64ed1cf0bdce', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4a917b3c-07ff-b956-b808-643d42d91434', -99, '2023-08-28 22:17:09', 0),
('e518fc7d-31f0-eefe-f1f9-64e3faf0bb05', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '52fece2c-5b02-f9a3-cbe6-643d428fbd72', -99, '2023-09-25 01:52:49', 0),
('e558a503-d8bd-3b17-0f44-64ed1c09fc92', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8a5aeba8-50b8-75f8-9b41-643d42d044df', -98, '2023-08-28 22:17:09', 0),
('e566f0a0-26a5-ece1-2a02-64ed19f8b1ab', '96611c3f-0542-6304-6faa-64ed18d1687c', 'bb2f25a7-4a02-2c7f-51d4-643d420cf04b', 0, '2023-08-28 22:17:53', 1),
('e57e6a05-ab75-26fe-d091-64e3fc705979', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2f21b9f4-7435-5b57-13a8-643d42fd83c5', -99, '2023-09-25 01:47:07', 0),
('e5a2abbd-ab9b-7d30-61e3-64e3fa2fb8fd', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5921ccf2-de62-adc2-df21-643d42583bcb', -99, '2023-09-25 01:52:49', 0),
('e5d0d0d7-0ed2-2507-8f63-64ed19e324ba', '96611c3f-0542-6304-6faa-64ed18d1687c', 'c7b1cd44-3c15-4121-e0d4-643d427323bc', 0, '2023-08-28 22:17:53', 1),
('e5e06c63-aa1d-39ef-b916-64ed1c6b5a2c', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '964021bb-4fc3-5eca-b076-643d42d7f62f', -99, '2023-08-28 22:17:09', 0),
('e5e181a4-ea5d-197b-b31f-64ed1cb87606', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '46bcd1d4-03b2-2f8a-7d2c-643d420d1a13', -99, '2023-08-28 22:17:09', 0),
('e6150835-9e01-5373-05bc-64e3fc11c720', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '2c4b127e-2f51-c772-ad22-643d42ef55c0', -99, '2023-09-25 01:47:07', 0),
('e640820f-fdb8-c496-e596-64e3fa26c389', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '56dd3d65-e7dd-680d-d40e-643d424b2f20', -99, '2023-09-25 01:52:49', 0),
('e66021ce-4b6c-c130-1100-64ed19d026f5', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b8bac30b-3e25-7eb7-1671-643d42f09a8e', 0, '2023-08-28 22:17:53', 1),
('e66c11b2-25e5-117a-a405-64ed1cc8f340', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '3545bccb-a488-e2c9-4ed2-643d42c97663', -99, '2023-08-28 22:17:09', 0),
('e6883ec4-4344-2f5d-5d23-64ed1ccfa3b2', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9451aa4a-5aab-336a-d588-643d429e1cc4', -99, '2023-08-28 22:17:09', 0),
('e69ded7b-f11d-0295-1876-64e3fc492daf', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '344cb9c9-3795-af93-a8ac-643d42e77f59', -99, '2023-09-25 01:47:07', 0),
('e6c8e278-e1df-94f3-6a94-64e3faea1aff', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '513320a1-6731-d5dd-fb32-643d42a90d27', -99, '2023-09-25 01:52:49', 0),
('e6d5042a-dc37-77f3-c6d4-64ed19a6de5a', '96611c3f-0542-6304-6faa-64ed18d1687c', 'cf525505-651c-f24e-aab4-643d4248f835', 0, '2023-08-28 22:17:53', 1),
('e6e8274d-7979-db08-a6ca-64ed1c0bbc8f', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4db74728-ad00-37a6-4a1c-643d42db2d40', -99, '2023-08-28 22:17:09', 0),
('e6faa0dc-ddc7-f945-fa92-64ed1c873b2e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9adcaf60-7829-73cb-c0ec-643d42c8a446', -99, '2023-08-28 22:17:09', 0),
('e7158545-a17e-855e-eb70-64e3fc28a4d6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3187c201-78f2-7b00-4933-643d42602bae', -99, '2023-09-25 01:47:07', 0),
('e7570e85-d94d-a3fc-abee-64ed1c895459', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'bde704f5-761a-4a07-80d6-643d425c7bb1', -99, '2023-08-28 22:17:09', 0),
('e76ac2df-79da-50aa-7eb4-64e3fa6b5585', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5b21dd04-33bf-65a4-2eac-643d4202e641', -99, '2023-09-25 01:52:49', 0),
('e77023de-8303-399a-efb9-64ed1c8622aa', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '31d70ba4-73cc-d1fc-fa03-643d42089bf1', -99, '2023-08-28 22:17:09', 0),
('e78a9073-23cc-9ee6-0b2c-64ed1c8db5b2', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '984e24b6-a4e3-5369-5d87-643d4258a04a', -99, '2023-08-28 22:17:09', 0),
('e79f394f-62b1-1fe6-46cc-64e3fc6d842a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '27f5de46-8606-f6da-d572-643d42e0fa95', -99, '2023-09-25 01:47:07', 0),
('e7d60889-1a5d-513c-ee68-64e3faa8df98', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '4f356e24-0bdb-814f-e8a1-643d42fcc5fa', -99, '2023-09-25 01:52:49', 0),
('e7e5f8b7-37fc-f735-7efd-64ed19c4e1df', '96611c3f-0542-6304-6faa-64ed18d1687c', 'db3216f4-7d45-8fb1-5111-643d4224801f', 0, '2023-08-28 22:17:53', 1),
('e7e9da23-d1ab-57e2-991e-64ed1ca3f3c8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4c56983b-5dbf-a07a-80cc-643d42405d23', -98, '2023-08-28 22:17:09', 0),
('e8016377-7d09-1004-65a9-64ed1c223d3d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9110b114-8c32-345f-676b-643d421b3409', -99, '2023-08-28 22:17:09', 0),
('e839c4f1-d124-728e-fd96-64e3fcb31adf', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '37651cfe-e03f-d055-9ee2-643d42c9e2d5', -99, '2023-09-25 01:47:07', 0),
('e877fc75-9b42-f763-e3d6-64ed1c8a3c1d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '54f6c960-d4f7-0053-fab9-643d4238e5c6', -99, '2023-08-28 22:17:09', 0),
('e87a5727-e16e-e417-c7b7-64e3fa6aba72', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'c6d70e4f-6c16-f30f-9de2-643d424967bb', -98, '2023-09-25 01:52:49', 0),
('e887866f-e916-77bd-2bee-64ed197c8d52', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd8d127e8-a1de-0e2b-042a-643d421dc0ea', 0, '2023-08-28 22:17:53', 1),
('e88af93e-55ed-7408-2583-64ed1cb31919', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '9d5129d9-81e6-f6b5-cf0e-643d423b347c', -99, '2023-08-28 22:17:09', 0),
('e8a245dd-18cf-bba9-b410-64e3fcf8b479', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '255dafc5-a740-0c0f-3110-643d42bef1cf', -99, '2023-09-25 01:47:07', 0),
('e8c30460-d2e6-a735-05d7-64e3fc5d6f95', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '93cba4cf-a547-3319-305b-643d424f4562', -98, '2023-09-25 01:47:07', 0),
('e8e24d82-5c62-bdff-c2e9-64e3fab5c945', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '164c3a2d-6c19-27a8-7999-643d42aa2def', -99, '2023-09-25 01:52:49', 0),
('e8f43df9-2570-6384-c33e-64ed19cde3ae', '96611c3f-0542-6304-6faa-64ed18d1687c', 'df8c42c9-3aee-be58-671d-643d4235d873', 0, '2023-08-28 22:17:53', 1),
('e8f4736f-d80e-0456-eda9-64ed1cd502df', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '52fece2c-5b02-f9a3-cbe6-643d428fbd72', -99, '2023-08-28 22:17:09', 0),
('e9250f3f-21b9-25c5-681a-64ed196c713b', '96611c3f-0542-6304-6faa-64ed18d1687c', '83f30a44-72d1-4d2d-12ea-643d42374789', 0, '2023-08-28 22:17:53', 1),
('e934bcd8-f433-f5a7-d413-64ed1c7e347d', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '8db31284-a16e-771b-e44a-643d42d92b62', -99, '2023-08-28 22:17:09', 0),
('e939b655-cf88-53a1-8d07-64e3fc85d56c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '715a6247-bc68-8fba-6357-643d426b4ceb', -98, '2023-09-25 01:47:07', 0),
('e96b0e7d-f1fa-2df4-6c2e-64e3fa1dcd13', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '14041a40-73be-558b-5ad7-643d42a2271c', -99, '2023-09-25 01:52:49', 0),
('e97eb1b5-9542-2ce8-9914-64ed1c7c6819', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5921ccf2-de62-adc2-df21-643d42583bcb', -99, '2023-08-28 22:17:09', 0),
('e98164b8-8d71-7a0e-a784-64ed194f5ad8', '96611c3f-0542-6304-6faa-64ed18d1687c', 'dd797512-f07f-81a9-d6fb-643d424037ec', 0, '2023-08-28 22:17:53', 1),
('e9aa240a-4126-10fd-77b8-64e3fc0a238c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7df38b1f-41d1-7cda-3e51-643d420c4708', -99, '2023-09-25 01:47:07', 0),
('e9e1519e-c92f-6669-35a7-64e3faae8758', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1adbe49e-3ecf-53f2-6744-643d42534dac', -99, '2023-09-25 01:52:49', 0),
('e9fb1cda-96af-3ac3-f76a-64ed1c6566a4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '56dd3d65-e7dd-680d-d40e-643d424b2f20', -99, '2023-08-28 22:17:09', 0),
('ea1c9db7-9dfa-0dd8-5d14-64ed197eed70', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd6a22a53-6b00-a901-df6f-643d42fecebc', 0, '2023-08-28 22:17:53', 1),
('ea41d9b3-2dec-ea29-4345-64e3fc4a2eca', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '7ac669c2-4a94-5bab-f66f-643d425b0704', -99, '2023-09-25 01:47:07', 0),
('ea6c5d26-390b-07ef-140e-64e3fac214fb', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '18c5695a-26b3-660a-475b-643d42ad6079', -99, '2023-09-25 01:52:49', 0),
('ea6d0aa7-66dc-0f12-9139-64e3fcca5446', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '827fa663-54c1-d0b9-ab91-643d424b6552', -99, '2023-09-25 01:47:07', 0),
('ea858198-d6bd-c31a-4f77-64ed1943971c', '96611c3f-0542-6304-6faa-64ed18d1687c', 'e1d2a11c-d5f5-b89b-7766-643d42b1e357', 0, '2023-08-28 22:17:53', 1),
('ea9e7a78-e7d5-17a0-8099-64ed1cf951b1', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '513320a1-6731-d5dd-fb32-643d42a90d27', -99, '2023-08-28 22:17:09', 0),
('ead68f42-2640-5ccf-b2a0-64e3fc01bc66', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '83ae0141-5498-6568-3638-643d426070a0', -99, '2023-09-25 01:47:07', 0),
('eae1cec4-9f83-3755-27e4-64e3faa80d49', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1240b421-871b-f9a0-8139-643d42b06743', -99, '2023-09-25 01:52:49', 0),
('eaec0c44-a8b5-6a83-985b-64ed19cccc96', '96611c3f-0542-6304-6faa-64ed18d1687c', 'd3cd96e4-a704-4034-23e1-643d421d60bb', 0, '2023-08-28 22:17:53', 1),
('eb26e0cc-a627-ab74-844b-64ed1cf03ce8', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5b21dd04-33bf-65a4-2eac-643d4202e641', -99, '2023-08-28 22:17:09', 0),
('eb69b7bd-af75-68a4-f37b-64e3fcbf00f0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '80b6e875-c54d-2a46-a066-643d42a2f842', -99, '2023-09-25 01:47:07', 0),
('eb7a45b9-7341-7130-22bc-64ed19d62a1b', '96611c3f-0542-6304-6faa-64ed18d1687c', '358a3d09-f62c-dd9b-621f-643d424b9a8d', 0, '2023-08-28 22:17:53', 1),
('eb9f60e1-12b5-fe86-eceb-64ed1ca992a4', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '4f356e24-0bdb-814f-e8a1-643d42fcc5fa', -99, '2023-08-28 22:17:09', 0),
('ebab07da-a141-adc1-4391-64e3fadcd2e4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1cd38f60-f082-cc95-ca19-643d42905cc4', -99, '2023-09-25 01:52:49', 0),
('ebe233d1-a73a-7d54-b33f-64e3fc790e0c', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '77eb2e8e-b277-713a-4001-643d42491c76', -99, '2023-09-25 01:47:07', 0),
('ebf0ded0-4f5c-0339-f7e1-64ed1938ea8d', '96611c3f-0542-6304-6faa-64ed18d1687c', '3fb6b234-b3fc-d865-8b0d-643d42afa345', 0, '2023-08-28 22:17:53', 1),
('ec26a6cf-79ca-694f-d6c8-64ed1ccf6730', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'c6d70e4f-6c16-f30f-9de2-643d424967bb', -98, '2023-08-28 22:17:09', 0),
('ec4bdf3b-681f-41ee-2798-64e3fa9d35f4', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '1026a28e-c377-7610-ca1a-643d42963687', -99, '2023-09-25 01:52:49', 0),
('ec71a487-b437-1fcf-a00b-64e3fc70bd64', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '85e814a5-d173-40aa-fa8a-643d42943a96', -99, '2023-09-25 01:47:07', 0),
('ec7d0325-7418-c901-b57a-64ed19334e8a', '96611c3f-0542-6304-6faa-64ed18d1687c', '3d18525f-9c6e-3ba6-2300-643d42c12f39', 0, '2023-08-28 22:17:53', 1),
('ec9e2c37-8256-3efb-9794-64ed1c000d75', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '164c3a2d-6c19-27a8-7999-643d42aa2def', -99, '2023-08-28 22:17:09', 0),
('ecb08596-5512-7ec0-731f-64e3fa353695', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9892fc40-3e4c-b365-26b3-643d422e7a06', -98, '2023-09-25 01:52:49', 0),
('ecf1532e-b265-785c-d039-64e3fcbd8d42', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '74edadfb-1620-027c-b1f6-643d4291adc5', -99, '2023-09-25 01:47:07', 0),
('ecf689a1-0db6-561e-6ecf-64ed1927cf5e', '96611c3f-0542-6304-6faa-64ed18d1687c', '44b52419-0530-b7e2-553e-643d42a731f6', 0, '2023-08-28 22:17:53', 1),
('ecff06cf-55a2-e7fb-62e9-64e3fa7e119c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a61fea35-60aa-14d9-6125-643d42442c8a', 90, '2023-09-25 01:52:49', 0),
('ed3a17a3-aeee-ecca-aea4-64e3fa410cb6', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a97bf2b3-2fd0-4c36-322b-643d42c74e60', -99, '2023-09-25 01:52:49', 0),
('ed480f56-120e-ad96-2bb7-64e3fcd46bd7', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'access', -98, '2023-09-25 01:47:07', 0),
('ed82bde8-1336-b6f9-1855-64ed19e062b0', '96611c3f-0542-6304-6faa-64ed18d1687c', '422cc733-699e-8767-48c0-643d428de70d', 0, '2023-08-28 22:17:53', 1),
('ed99dc8c-2c4c-d0cd-9ec1-64e3fc0707bd', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'eb06342d-8d37-f51b-226c-643d42a6dbc1', -98, '2023-09-25 01:47:07', 0),
('edb19957-c711-08b4-f2b8-64e3faff2e7d', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a606e345-c0f2-262e-c335-643d422adfa1', -99, '2023-09-25 01:52:49', 0),
('ee23f62b-6614-bd53-e826-64ed1918c270', '96611c3f-0542-6304-6faa-64ed18d1687c', '3abd6f75-729c-219e-7c5d-643d42a08b49', 0, '2023-08-28 22:17:53', 1),
('ee3c9528-8e8e-8816-ab40-64e3fab09a44', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b0621c54-ef5f-a8c4-083b-643d42adce5f', -99, '2023-09-25 01:52:49', 0),
('ee41385e-bf76-3d0d-3b42-64e3fc301fb0', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '229e009c-8006-0ad5-c607-643d42d4bd80', -99, '2023-09-25 01:47:07', 0),
('ee8ce518-5814-4260-f9fb-64ed19cca61b', '96611c3f-0542-6304-6faa-64ed18d1687c', '479b5deb-6c04-228c-1130-643d425465a8', 0, '2023-08-28 22:17:53', 1),
('eea61af2-f222-3932-10d3-64e3fcad27a8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'f3742d29-de7f-5e90-96ff-643d42a5e883', -99, '2023-09-25 01:47:07', 0),
('eeb75bfa-9669-f097-5b0e-64e3faf7feff', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'ad965725-4082-a705-3e72-643d42c1651c', -99, '2023-09-25 01:52:49', 0),
('ef24bb75-08b3-b88c-2106-64ed19126c87', '96611c3f-0542-6304-6faa-64ed18d1687c', '38ba949d-3ee7-4c05-2f9f-643d42f5e185', 0, '2023-08-28 22:17:53', 1),
('ef414cd9-016a-f4a1-e97e-64e3fa63af94', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a0445ad2-d73b-7df1-acd4-643d423db58d', -99, '2023-09-25 01:52:49', 0),
('ef4a4645-3197-13f6-b879-64e3fc2e0add', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '6d480f1f-8b53-ff4e-0f6f-643d4284cd12', -99, '2023-09-25 01:47:07', 0),
('ef8dbe70-f5be-307f-79c4-64ed190b0730', '96611c3f-0542-6304-6faa-64ed18d1687c', 'f244c6ac-f7a0-1bed-f693-643d4235765c', 0, '2023-08-28 22:17:53', 1),
('efb70d83-9122-7e7e-9bcc-64e3fab51e0f', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'b336ef1c-9877-ff1b-1f21-643d42537cfd', -99, '2023-09-25 01:52:49', 0),
('efbab1a4-0d1f-f9e6-eb15-64e3fc3cac37', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '43090cfb-7ecb-a027-0ab8-643d422089ed', -99, '2023-09-25 01:47:07', 0),
('efd40e3e-7320-0714-f3b0-64ed1999cabb', '96611c3f-0542-6304-6faa-64ed18d1687c', '819ddc78-3198-e380-e4da-643d428660c5', 0, '2023-08-28 22:17:53', 1),
('efd903b9-d102-7b16-2d2c-64ed1cc062be', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '5f1f04da-595b-b172-938d-643d42df6264', -98, '2023-08-28 22:17:09', 0),
('f023814a-8f89-6cee-59a5-64ed19df5c7e', '96611c3f-0542-6304-6faa-64ed18d1687c', '898f00c6-9cfa-713e-e364-643d427d05ec', 0, '2023-08-28 22:17:53', 1),
('f08703a6-7f8d-0a2c-15f5-64e3fcde643a', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'a1934fbd-d512-c91c-a908-643d42a03610', -99, '2023-09-25 01:47:07', 0),
('f0881212-aa68-c53a-206d-64e3fca2b4a6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'f0c63d21-a684-10f7-60cd-643d42c4af38', -99, '2023-09-25 01:47:07', 0),
('f094b338-a25a-8adb-1032-64ed19cc4f47', '96611c3f-0542-6304-6faa-64ed18d1687c', '57690809-b91c-6cd2-5ca7-643d42effc68', 0, '2023-08-28 22:17:53', 1),
('f09bcddb-f984-589d-e4e5-64ed1c655d3a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '14041a40-73be-558b-5ad7-643d42a2271c', -99, '2023-08-28 22:17:09', 0),
('f0be5bb2-3e36-e1f3-0937-64e3fa0faa54', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9caf10c5-f7e9-e47c-0069-643d42f09040', -99, '2023-09-25 01:52:49', 0),
('f11e8f2b-2b4f-f750-560c-64ed1972a3dc', '96611c3f-0542-6304-6faa-64ed18d1687c', '10473511-7921-dbd6-22f1-643d429a330e', 0, '2023-08-28 22:17:53', 1),
('f123f861-d1a2-67cc-ebd5-64e3fc4145c2', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9c4c0fa4-1eb6-3376-0133-643d428bf21c', -99, '2023-09-25 01:47:07', 0),
('f186cef1-d256-b881-c973-64e3fafd362b', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '90d70a18-7930-6538-3fbc-643d42c545f5', 89, '2023-09-25 01:52:49', 0),
('f188d3c6-23f0-847a-20a6-64e3fc994266', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'delete', -99, '2023-09-25 01:47:07', 0),
('f188fdbf-3910-b4af-5045-64e3fc078edc', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'ee91f36a-81c3-4773-8372-643d428e2c6c', -99, '2023-09-25 01:47:07', 0),
('f193f737-bfef-a169-d88b-64ed19f13f22', '96611c3f-0542-6304-6faa-64ed18d1687c', 'cefc0924-8147-24d4-76c5-643d42d653bc', 0, '2023-08-28 22:17:53', 1),
('f21da3a8-ba69-51be-d1e1-64ed19d2ec52', '96611c3f-0542-6304-6faa-64ed18d1687c', '29ec0d43-0049-56ff-8f01-643d423be8ac', 0, '2023-08-28 22:17:53', 1),
('f228dd62-51c7-ddbf-3eb4-64ed1c79502e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1adbe49e-3ecf-53f2-6744-643d42534dac', -99, '2023-08-28 22:17:09', 0),
('f228f4ab-e6d8-9109-2a13-64e3fa2968c7', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a0355c13-ad06-1ad1-773a-643d4266a498', 90, '2023-09-25 01:52:49', 0),
('f22e00c5-b319-29a2-12d3-64e3fc1b25cd', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '8d78ea83-ccff-f139-7cc8-643d42c348c5', -99, '2023-09-25 01:47:07', 0),
('f22e355b-2ed1-54b8-06eb-64e3fc346ec1', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'edit', -99, '2023-09-25 01:47:07', 0),
('f22eff07-fe98-ef23-8bee-64e3fca9ff53', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3239e82a-43c7-1766-3678-643d420149d6', -98, '2023-09-25 01:47:07', 0),
('f28bfe10-c744-fe1f-230f-64e3faa0b27c', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9d32b466-e9da-c17d-4b7f-643d42977d34', 90, '2023-09-25 01:52:49', 0),
('f2955116-3ff0-8341-c700-64ed19665a86', '96611c3f-0542-6304-6faa-64ed18d1687c', '12a235ee-1633-f953-b38c-643d42067f0b', 0, '2023-08-28 22:17:53', 1),
('f2963506-768e-bc9a-8434-64e3fcb70ca5', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3b08e877-2142-7f6c-967d-643d424bd213', -99, '2023-09-25 01:47:07', 0),
('f29bf401-ddc1-c583-5865-64e3fc322417', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'export', -99, '2023-09-25 01:47:07', 0),
('f2dc8719-0627-3358-ae02-64ed1c6ca98e', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '18c5695a-26b3-660a-475b-643d42ad6079', -99, '2023-08-28 22:17:09', 0),
('f31ce578-86ca-0c26-1205-64ed19c0a7f1', '96611c3f-0542-6304-6faa-64ed18d1687c', 'b0400a95-28b5-65a1-c17a-643d42a702ef', 0, '2023-08-28 22:17:53', 1),
('f31dfe26-3fdf-4c3e-d573-64e3fcb08122', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '391d09e0-b0bc-e223-0063-643d42bf6bb6', -99, '2023-09-25 01:47:07', 0),
('f3320b7c-685c-40ec-1575-64e3fae2ec40', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a56ed735-7b43-f738-6f28-643d42708fcc', 90, '2023-09-25 01:52:49', 0),
('f332d459-a485-83f3-01c9-64e3fc7e9334', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'import', -99, '2023-09-25 01:47:07', 0),
('f38c9826-c726-a509-799e-64ed1cd47a7a', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '1240b421-871b-f9a0-8139-643d42b06743', -99, '2023-08-28 22:17:09', 0),
('f39a2683-2a61-891e-0ff2-64e3fa81e365', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'a2de6a4a-cb4d-692a-d0f4-643d42cdc625', 90, '2023-09-25 01:52:49', 0),
('f39b6da3-65f3-f787-fee5-64e3fcb49996', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '3f67e7fe-c30b-f9bd-f63b-643d42dae256', -99, '2023-09-25 01:47:07', 0),
('f3aebb54-1636-5827-7d66-64e3fc8294e3', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'list', -99, '2023-09-25 01:47:07', 0),
('f3cd75eb-eb51-1019-29e2-64ed19a8794d', '96611c3f-0542-6304-6faa-64ed18d1687c', 'cfc7767b-a8e2-316d-0760-643d424c79f4', 0, '2023-08-28 22:17:53', 1),
('f4219bd5-53e3-dafa-b45f-64e3fabc92b2', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '9a06e864-baa3-cc51-fd51-643d422c5610', -99, '2023-09-25 01:52:49', 0),
('f4540307-a052-bad4-4035-64e3fa157732', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '50262b93-bc6d-6811-c326-643d423e7b56', -98, '2023-09-25 01:52:49', 0),
('f8cc0247-6ce7-5b27-f207-64ed19b6d023', '96611c3f-0542-6304-6faa-64ed18d1687c', '89585879-e425-deba-87a0-643d42461146', 0, '2023-08-28 22:17:53', 1),
('fa1c0328-db8c-ba2c-e939-64ed1ca08ee3', 'b131edd2-c2c8-679e-d576-64ed1ce97274', '6f4b56ee-6b9a-6582-d189-643d42b55275', -99, '2023-08-28 22:17:09', 0),
('fad40bef-f5aa-956d-e3a7-64e3fcf599d6', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '80dd1457-331f-b814-dddc-643d4227054e', -99, '2023-09-25 01:47:07', 0),
('fb000602-5943-2f42-ec43-64e3fc1961be', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '9ec1bbe9-8908-3a32-64e0-643d42016853', -99, '2023-09-25 01:47:07', 0),
('fcf202a9-a621-b184-3c5a-64e3faeeff63', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '5983d8b0-9b7b-9a13-24fd-643d42b163f2', -99, '2023-09-25 01:52:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acl_roles_users`
--

INSERT INTO `acl_roles_users` (`id`, `role_id`, `user_id`, `date_modified`, `deleted`) VALUES
('22dd4685-46b8-5814-deae-64ed12b9b11e', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', '97240576-184d-be72-21f0-64e3efe77262', '2023-08-28 21:34:11', 0),
('43c9da70-6051-2436-47dc-64e3ff552ec8', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', '97240576-184d-be72-21f0-64e3efe77262', '2023-08-22 00:19:21', 0),
('51d509c4-7f46-902f-76d2-64ed1ac8175c', '96611c3f-0542-6304-6faa-64ed18d1687c', '688e6d13-ec97-c120-f020-64ed1a561d37', '2023-08-28 22:17:53', 1),
('98596988-bad5-d3fa-2c59-64e3fe3135af', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'ae27a67e-4c44-6d3a-152a-645855c19de0', '2023-08-22 00:18:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bean` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bean_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url_redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reminder_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Draft',
  `priority` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contacts_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `users_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Started',
  `priority` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'High',
  `percent_complete` int DEFAULT '0',
  `predecessors` int DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'FS',
  `task_number` int DEFAULT NULL,
  `order_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `utilization` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `duration` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  `closing_hours` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2023-04-17 12:57:48', '2023-04-17 12:57:48', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `error` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `record_module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('2b8fc1b6-3800-9a9d-6424-6510b6a3a15f', 'Cleaning', '2023-09-24 22:20:19', '2023-09-24 22:20:19', '1', '1', NULL, 0, NULL, NULL, 1, '1a90ae59-4761-3508-74e3-6510b670e3c7', 'Meetings'),
('30923682-2751-57e7-7ae6-653acae19911', 'Mr. Arnold Strong', '2023-10-26 20:22:15', '2023-10-26 20:22:15', '1', '1', NULL, 0, NULL, NULL, 1, '242e96a7-673a-2ffd-7121-653acafeb183', 'Contacts'),
('39b5f7b8-a846-c67b-98a4-6539ae8a7f54', 'Mr. Jackson Townsend', '2023-10-26 00:09:36', '2023-10-26 00:09:36', '1', '1', NULL, 0, NULL, NULL, 1, '2639d382-157a-2f45-2e92-6539ae484d11', 'Contacts'),
('3b068340-d01f-29f8-1ad3-64deeb8790ec', 'hxkuy', '2023-08-18 03:53:34', '2023-09-25 01:32:14', '1', '1', NULL, 0, '', NULL, 1, '34216acc-8b0a-ee16-a01c-64deeb171246', 'Meetings'),
('40ecc686-9b2f-e5eb-addd-65386a50f324', 'Mr. Jason Bourne', '2023-10-25 01:07:31', '2023-10-25 01:07:31', '1', '1', NULL, 0, NULL, NULL, 1, '349090df-c2c1-f32a-957d-65386a9cd9e4', 'Contacts'),
('428a7ac0-bebf-d7e4-1089-6539bb43bc2e', 'Mr. Thomas Hill', '2023-10-26 01:06:09', '2023-10-26 01:06:09', '1', '1', NULL, 0, NULL, NULL, 1, '314d1f16-5088-f40b-4afb-6539bb93b5f5', 'Contacts'),
('5466b947-a934-35a8-d2dc-6539b4c39b53', 'Ms. Jennfier Strong', '2023-10-26 00:37:16', '2023-10-26 00:37:16', '1', '1', NULL, 0, NULL, NULL, 1, '239c7969-a3c1-c8e8-ace2-6539b47077b5', 'Contacts'),
('6e4130d4-7e16-58f9-3eae-64dedf6f12ff', 'new exam', '2023-08-18 03:02:01', '2023-09-25 01:32:16', '1', '1', NULL, 0, '', NULL, 1, '6794bad1-b891-6c8d-954b-64dedf6ad3f4', 'Meetings'),
('7203eac8-1af5-1cb1-e74f-6539cdc0fc67', 'Dental Chart', '2023-10-26 02:20:58', '2023-10-26 02:20:58', '1', '1', NULL, 0, NULL, NULL, 1, '67d4c569-89a8-fe35-d9ee-6539cd228a3f', 'DDC_DC'),
('73635a89-54a9-b7b9-3265-6510e2326c51', 'Chart', '2023-09-25 01:31:21', '2023-09-25 01:31:21', '1', '1', NULL, 0, NULL, NULL, 1, '6bac18fa-55e7-0909-c541-6510e2a5cf3d', 'DDC_DC'),
('7c2a6875-3531-09fb-a934-64acf4530e7a', 'Nathan Peele', '2023-07-11 06:21:50', '2023-07-23 22:38:08', '1', '1', NULL, 0, '', NULL, 1, 'c710054a-e76c-c095-20c7-64acf407272d', 'Meetings'),
('83fca465-ae0e-466b-cb02-6539c2aefc6e', 'Mr. Callum Plumfeet', '2023-10-26 01:36:25', '2023-10-26 01:36:25', '1', '1', NULL, 0, NULL, NULL, 1, '78a1aca3-f372-885a-2077-6539c2e6e57e', 'Contacts'),
('84966831-f24f-ab7a-7311-6510fefd77cb', 'Mrs. Karen Mackenzie', '2023-09-25 03:27:22', '2023-09-25 03:27:22', '1', '1', NULL, 0, NULL, NULL, 1, '77761704-294c-81d6-aa2f-6510fe59503f', 'Contacts'),
('8f6b828f-e13d-fc58-7fe2-653ae0dd897c', 'Mrs. Bella Thorpe', '2023-10-26 21:55:54', '2023-10-26 21:55:54', '1', '1', NULL, 0, NULL, NULL, 1, '8342952e-ed80-5162-0755-653ae0a31a63', 'Contacts'),
('930bf0b8-680a-5a02-a0d0-6539bebd6112', 'Mrs. Elle Doe', '2023-10-26 01:20:37', '2023-10-26 01:20:37', '1', '1', NULL, 0, NULL, NULL, 1, '7fe3e660-7de4-829d-d5c0-6539be1e3d44', 'Contacts'),
('9f7c01c6-de10-bab2-5006-6510fa54de0c', 'Mr. Jake Cannan', '2023-09-25 03:10:51', '2023-09-25 03:10:51', '1', '1', NULL, 0, NULL, NULL, 1, 'f2b01b68-3c8c-55a5-1523-6510fa638dba', 'Contacts'),
('b5923198-8f78-031f-48b3-6510fa3eef79', 'Mr. Maxwell Homes', '2023-09-25 03:13:44', '2023-09-25 03:13:44', '1', '1', NULL, 0, NULL, NULL, 1, 'a9f60fbb-8c00-2444-61f0-6510fa2cc32c', 'Contacts'),
('b92b35d6-f476-171c-3099-643d46ce711c', 'Client Meeting and handover', '2023-04-17 13:15:48', '2023-05-29 22:16:15', '1', '1', NULL, 0, '', NULL, 1, '8b90c176-0050-f3db-af8c-643d468864f3', 'Meetings'),
('bc2bf49b-f4c1-ec1f-2971-643d46162782', 'fff', '2023-04-17 13:17:08', '2023-05-29 22:16:13', '1', '1', NULL, 0, '', NULL, 1, 'a7642ecb-e771-6357-647d-643d4622b47a', 'Meetings'),
('cd74e046-70a8-6bab-a8e6-64bda9b393b6', 'Ms. Janice Bing', '2023-07-23 22:29:14', '2023-07-23 22:29:14', '1', '1', NULL, 0, NULL, NULL, 1, '770380c5-b112-50b0-7b94-64bda96cb1c1', 'Contacts'),
('d124dfa6-1924-9285-94ac-64dabbb1f3c9', 'Orthodontist', '2023-08-14 23:42:03', '2023-09-25 01:32:19', '1', '1', NULL, 0, '', NULL, 1, 'c828b850-06fe-419e-e1e1-64dabb21f6ab', 'Meetings'),
('d3425c60-3f42-0360-8794-6539c71763eb', 'Mr. Thomas Smith', '2023-10-26 01:59:04', '2023-10-26 01:59:04', '1', '1', NULL, 0, NULL, NULL, 1, 'c37b17d0-edae-286d-52df-6539c73734ae', 'Contacts'),
('dc46787b-7d01-eb12-8066-64deed8a4a78', 'Mr. Grady Thompson', '2023-08-18 04:01:14', '2023-08-18 04:01:14', '1', '1', NULL, 0, NULL, NULL, 1, 'd007cb7a-8dcc-b818-cfcc-64deede166b2', 'Contacts'),
('df95ac9b-318b-9cdb-9569-64daa7391827', 'Dental Exam', '2023-08-14 22:14:58', '2023-09-25 01:32:22', '1', '1', NULL, 0, '', NULL, 1, 'd5501c98-4747-f491-f7a1-64daa7062b41', 'Meetings'),
('dfc303a7-b096-31dc-5eab-64daa3eded3a', 'Mr. Jason Briggs', '2023-08-14 21:58:40', '2023-08-14 21:58:40', '1', '1', NULL, 0, NULL, NULL, 1, 'cc9c10dd-f28f-d0c3-8c53-64daa3dedb57', 'Contacts'),
('ea0a9a07-c3b6-da93-24c6-64d9780f5a5e', 'Mr. John Doe', '2023-08-14 00:43:20', '2023-08-14 00:43:20', '1', '1', NULL, 0, NULL, NULL, 1, 'e0b309bd-ce42-16ea-076c-64d97855d9d3', 'Contacts'),
('eedc825d-29e6-eed7-f147-6539c5ddf7ca', 'Mr. Michael Simpson', '2023-10-26 01:50:51', '2023-10-26 01:50:51', '1', '1', NULL, 0, NULL, NULL, 1, 'e237bf21-eac2-bbe4-c6f9-6539c5a31c33', 'Contacts'),
('f03e44b1-17f9-eec6-873c-64daa72d6326', 'Janice Bing', '2023-08-14 22:13:49', '2023-08-14 22:13:49', '1', '1', NULL, 0, NULL, NULL, 1, 'e68e3342-16ab-7346-f650-64daa77e22f6', 'Contacts');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Draft',
  `revision` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `user_id_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id1_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `case_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `case_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `x_field` int DEFAULT NULL,
  `y_field` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `logic_op` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parenthesis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `module_path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `field` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_order` int DEFAULT NULL,
  `module_path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `field` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_function` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sort_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `format` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sort_order` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `group_display` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `report_module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `graphs_per_row` int DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_recipients` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `aor_report_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reference_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Type',
  `contract_account_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opportunity_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `call_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `documents_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `document_revision_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_account_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_contact_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` int NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quote_number` int DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `template_ddown_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  `currency_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pdfheader` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `pdffooter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `margin_left` int DEFAULT '15',
  `margin_right` int DEFAULT '15',
  `margin_top` int DEFAULT '16',
  `margin_bottom` int DEFAULT '16',
  `margin_header` int DEFAULT '9',
  `margin_footer` int DEFAULT '9',
  `page_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `orientation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `maincode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'XXXX',
  `part_number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aos_product_category_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `part_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `number` int DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '5.0',
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `group_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `approval_issue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `billing_account_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_contact_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `billing_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int DEFAULT NULL,
  `opportunity_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `template_ddown_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Draft',
  `term` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `terms_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `approval_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `action_order` int DEFAULT NULL,
  `action` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `module_path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `field` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `aow_processed_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aow_action_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flow_module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flow_run_on` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Active',
  `run_when` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0',
  `run_on_import` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointmentID` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `NHI` varchar(7) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TreatmentPlan` text COLLATE utf8mb4_general_ci,
  `Diagnoses` text COLLATE utf8mb4_general_ci,
  `Notes` text COLLATE utf8mb4_general_ci,
  `DateOfAppointment` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointmentID`, `NHI`, `TreatmentPlan`, `Diagnoses`, `Notes`, `DateOfAppointment`) VALUES
('B002', 'nvh3456', 'Tooth extraction planned.', 'Severe decay in molar.', 'Patient should avoid eating before the procedure.', '2023-09-15'),
('BUB9876', 'BUB9876', 'Dental cleaning and check-up.', 'No issues detected.', 'Regular cleaning and flossing recommended.', '2023-08-25'),
('C003', 'BUB9876', 'Braces consultation.', 'Misaligned teeth', 'Discuss options for orthodontic treatment.', '2023-08-28'),
('D004', 'BUB9876', 'Teeth whitening requested.', 'Stained teeth', 'Explain different whitening options available.', '2023-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bug_number` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `priority` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `resolution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `work_log` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `found_in_release` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fixed_in_release` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Planned',
  `direction` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `repeat_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `recurring_source` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `call_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `required` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  `accept_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `call_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lead_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `required` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  `accept_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `call_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `call_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `required` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  `accept_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tracker_key` int NOT NULL,
  `tracker_count` int DEFAULT '0',
  `refer_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'http://',
  `tracker_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `impressions` int DEFAULT '0',
  `currency_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `objective` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `frequency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `survey_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `target_tracker_key` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `target_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int DEFAULT '0',
  `list_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `marketing_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tracker_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tracker_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'http://',
  `tracker_key` int NOT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `case_number` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `priority` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `resolution` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `work_log` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `account_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Open',
  `contact_created_by_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `case_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bug_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.25'),
('MySettings', 'tab', 'YTo0OntzOjg6IkNhbGVuZGFyIjtzOjg6IkNhbGVuZGFyIjtzOjQ6IkhvbWUiO3M6NDoiSG9tZSI7czo4OiJDb250YWN0cyI7czo4OiJDb250YWN0cyI7czo2OiJERENfREMiO3M6NjoiRERDX0RDIjt9'),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SuiteCRM'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('MySettings', 'disable_useredit', 'yes'),
('MySettings', 'hide_subpanels', 'YToyNjp7czo1OiJsZWFkcyI7czo1OiJsZWFkcyI7czoxNDoic2VjdXJpdHlncm91cHMiO3M6MTQ6InNlY3VyaXR5Z3JvdXBzIjtzOjExOiJjYW1wYWlnbmxvZyI7czoxMToiY2FtcGFpZ25sb2ciO3M6OToiZnBfZXZlbnRzIjtzOjk6ImZwX2V2ZW50cyI7czo5OiJkb2N1bWVudHMiO3M6OToiZG9jdW1lbnRzIjtzOjk6Impqd2dfbWFwcyI7czo5OiJqandnX21hcHMiO3M6MTI6Impqd2dfbWFya2VycyI7czoxMjoiamp3Z19tYXJrZXJzIjtzOjEwOiJqandnX2FyZWFzIjtzOjEwOiJqandnX2FyZWFzIjtzOjEyOiJhb3NfcHJvZHVjdHMiO3M6MTI6ImFvc19wcm9kdWN0cyI7czoxMzoib3Bwb3J0dW5pdGllcyI7czoxMzoib3Bwb3J0dW5pdGllcyI7czo0OiJidWdzIjtzOjQ6ImJ1Z3MiO3M6MjI6ImFvc19wcm9kdWN0X2NhdGVnb3JpZXMiO3M6MjI6ImFvc19wcm9kdWN0X2NhdGVnb3JpZXMiO3M6MjE6ImFvcl9zY2hlZHVsZWRfcmVwb3J0cyI7czoyMToiYW9yX3NjaGVkdWxlZF9yZXBvcnRzIjtzOjI5OiJhb2tfa25vd2xlZGdlX2Jhc2VfY2F0ZWdvcmllcyI7czoyOToiYW9rX2tub3dsZWRnZV9iYXNlX2NhdGVnb3JpZXMiO3M6MTc6ImFva19rbm93bGVkZ2ViYXNlIjtzOjE3OiJhb2tfa25vd2xlZGdlYmFzZSI7czoxOToiYW1fcHJvamVjdHRlbXBsYXRlcyI7czoxOToiYW1fcHJvamVjdHRlbXBsYXRlcyI7czoxMzoicHJvc3BlY3RsaXN0cyI7czoxMzoicHJvc3BlY3RsaXN0cyI7czo1OiJjYXNlcyI7czo1OiJjYXNlcyI7czo5OiJwcm9zcGVjdHMiO3M6OToicHJvc3BlY3RzIjtzOjU6Im5vdGVzIjtzOjU6Im5vdGVzIjtzOjg6Im1lZXRpbmdzIjtzOjg6Im1lZXRpbmdzIjtzOjg6ImFjY291bnRzIjtzOjg6ImFjY291bnRzIjtzOjc6InByb2plY3QiO3M6NzoicHJvamVjdCI7czoxMDoiYW9zX3F1b3RlcyI7czoxMDoiYW9zX3F1b3RlcyI7czoxMzoiYW9zX2NvbnRyYWN0cyI7czoxMzoiYW9zX2NvbnRyYWN0cyI7czoxMjoiYW9zX2ludm9pY2VzIjtzOjEyOiJhb3NfaW52b2ljZXMiO30='),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salutation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_work` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_other` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_fax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lawful_basis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assistant` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assistant_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reports_to_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `joomla_account_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `lawful_basis`, `date_reviewed`, `lawful_basis_source`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`, `portal_user_type`) VALUES
('239c7969-a3c1-c8e8-ace2-6539b47077b5', '2023-10-26 00:37:16', '2023-10-26 00:37:16', '1', '1', NULL, 0, NULL, 'Ms.', 'tesr', 'Strong', NULL, NULL, NULL, 0, NULL, '0214444666', NULL, NULL, NULL, NULL, NULL, NULL, '85 Sea View Road', 'Taupo', NULL, '1042', 'New Zealand', NULL, NULL, NULL, NULL, 'New Zealand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Single'),
('242e96a7-673a-2ffd-7121-653acafeb183', '2023-10-26 20:22:15', '2023-10-26 20:22:15', '1', '1', NULL, 0, NULL, 'Mr.', 'Arnold', 'Strong', NULL, NULL, NULL, 0, NULL, '021067823', NULL, NULL, NULL, NULL, NULL, NULL, '52 Exmouth Road', 'Auckland', '', '1267', 'New Zealand', NULL, NULL, NULL, NULL, 'New Zealand', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('2639d382-157a-2f45-2e92-6539ae484d11', '2023-10-26 00:09:36', '2023-10-26 00:09:36', '1', '1', NULL, 0, NULL, 'Mr.', 'Jackson', 'Townsend', NULL, NULL, NULL, 0, NULL, '021444888', NULL, NULL, NULL, NULL, NULL, NULL, '92 Beach Road', 'Auckland', '', '1026', 'New Zealand', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('314d1f16-5088-f40b-4afb-6539bb93b5f5', '2023-10-26 01:06:09', '2023-10-26 01:06:09', '1', '1', NULL, 0, NULL, 'Mr.', 'Thomas', 'Hill', NULL, NULL, NULL, 0, NULL, '0215555333', NULL, NULL, NULL, NULL, NULL, NULL, 'Malibu Boulevard', 'Auckland', '', '3214', 'New Zealand', NULL, NULL, NULL, NULL, 'New Zealand', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('349090df-c2c1-f32a-957d-65386a9cd9e4', '2023-10-25 01:07:31', '2023-10-25 01:07:31', '1', '1', NULL, 0, NULL, 'Mr.', 'Jason', 'Bourne', NULL, NULL, NULL, 0, NULL, '02105550555', NULL, NULL, NULL, NULL, NULL, NULL, '85 Sea View Road', 'Taupo', '', '1042', 'New Zealand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('770380c5-b112-50b0-7b94-64bda96cb1c1', '2023-07-23 22:29:14', '2023-07-23 22:29:14', '1', '1', NULL, 0, NULL, 'Ms.', 'Janice', 'Bing', NULL, NULL, NULL, 0, NULL, '021454545', NULL, NULL, NULL, NULL, NULL, NULL, '123 Queen STreet', 'Auckland', '', '1042', 'New Zealand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('77761704-294c-81d6-aa2f-6510fe59503f', '2023-09-25 03:27:22', '2023-09-25 03:27:22', '1', '1', NULL, 0, NULL, 'Mrs.', 'Karen', 'Mackenzie', NULL, NULL, NULL, 0, NULL, '021333666999', NULL, NULL, NULL, NULL, NULL, NULL, 'McBreen Ave, Northcote', 'Auckland', '', '1023', 'New Zealand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('78a1aca3-f372-885a-2077-6539c2e6e57e', '2023-10-26 01:36:25', '2023-10-26 01:36:25', '1', '1', NULL, 0, NULL, 'Mr.', 'Callum', 'Plumfeet', NULL, NULL, NULL, 0, NULL, '021067823', NULL, NULL, NULL, NULL, NULL, NULL, '52 Exmouth Road', 'Auckland', '', '1267', 'New Zealand', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('7fe3e660-7de4-829d-d5c0-6539be1e3d44', '2023-10-26 01:20:37', '2023-10-26 01:20:37', '1', '1', NULL, 0, NULL, 'Mrs.', 'peter', 'Doe', NULL, NULL, NULL, 0, NULL, '021555888', NULL, NULL, NULL, NULL, NULL, NULL, 'New York Drive', 'Wellington', '', '3457', 'New Zealand', NULL, NULL, NULL, NULL, 'New Zealand', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('8342952e-ed80-5162-0755-653ae0a31a63', '2023-10-26 21:55:54', '2023-10-26 21:55:54', '1', '1', NULL, 0, NULL, 'Mrs.', 'Bella', 'Thorpe', NULL, NULL, NULL, 0, NULL, '021665533', NULL, NULL, NULL, NULL, NULL, NULL, '32 Sylvan Ave', 'Auckland', '', '1234', 'New Zealand', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('a9f60fbb-8c00-2444-61f0-6510fa2cc32c', '2023-09-25 03:13:44', '2023-10-26 00:07:08', '1', '1', NULL, 1, NULL, 'Mr.', 'Maxwell', 'Homes', NULL, NULL, NULL, 0, NULL, '021777999444', NULL, NULL, NULL, NULL, NULL, NULL, 'New York Drive', 'Wellington', '', '3457', 'New Zealnad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('c37b17d0-edae-286d-52df-6539c73734ae', '2023-10-26 01:59:04', '2023-10-26 01:59:04', '1', '1', NULL, 0, NULL, 'Mr.', 'Thomas', 'Smith', NULL, NULL, NULL, 0, NULL, '029678123', NULL, NULL, NULL, NULL, NULL, NULL, '85 Sea View Road', 'Taupo', '', '1042', 'New Zealand', NULL, NULL, NULL, NULL, 'New Zealand', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('cc9c10dd-f28f-d0c3-8c53-64daa3dedb57', '2023-08-14 21:58:40', '2023-08-14 21:58:40', '1', '1', NULL, 0, NULL, 'Mr.', 'test', 'test', NULL, NULL, NULL, 0, NULL, '123456789', NULL, NULL, NULL, NULL, NULL, NULL, '115/438 Queen Street', 'Auckland', '', '1042', 'New Zealand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('d007cb7a-8dcc-b818-cfcc-64deede166b2', '2023-08-18 04:01:14', '2023-08-18 04:01:14', '1', '1', NULL, 0, NULL, 'Mr.', 'John', 'Wick', NULL, NULL, NULL, 0, NULL, '02176898409', NULL, NULL, NULL, NULL, NULL, NULL, '438 Queen Street', 'Auckland', '', '1042', 'New Zealand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('e0b309bd-ce42-16ea-076c-64d97855d9d3', '2023-08-14 00:43:20', '2023-08-14 00:43:20', '1', '1', NULL, 0, NULL, 'Mr.', 'John', 'Doe', NULL, NULL, NULL, 0, NULL, '0210987654', NULL, NULL, NULL, NULL, NULL, NULL, '92 Queen Street', 'Auckland', '', '1042', 'New Zealand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('e237bf21-eac2-bbe4-c6f9-6539c5a31c33', '2023-10-26 01:50:51', '2023-10-26 01:50:51', '1', '1', NULL, 0, NULL, 'Mr.', 'Michael', 'Simpson', NULL, NULL, NULL, 0, NULL, '027665544', NULL, NULL, NULL, NULL, NULL, NULL, '85 Sea View Road', 'Taupo', '', '1042', 'New Zealand', NULL, NULL, NULL, NULL, 'New Zealand', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single'),
('e68e3342-16ab-7346-f650-64daa77e22f6', '2023-08-14 22:13:49', '2023-10-26 00:07:47', '1', '1', NULL, 1, NULL, NULL, 'Janice', 'Bing', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Single'),
('f2b01b68-3c8c-55a5-1523-6510fa638dba', '2023-09-25 03:10:50', '2023-09-25 03:10:50', '1', '1', NULL, 0, NULL, 'Mr.', 'Jake', 'Cannan', NULL, NULL, NULL, 0, NULL, '021055777999', NULL, NULL, NULL, NULL, NULL, NULL, 'Malibu Boulevard', 'Auckland', '', '3214', 'New Zealand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bug_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `case_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nhi_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dob_c` date DEFAULT NULL,
  `allergies_c` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `medicalpage_c` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'https://tooth-mate-current-team.vercel.app/'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`, `nhi_c`, `dob_c`, `allergies_c`, `medicalpage_c`) VALUES
('e68e3342-16ab-7346-f650-64daa77e22f6', 0.00000000, 0.00000000, NULL, NULL, '', NULL, '', 'https://www.aut.ac.nz/'),
('7fe3e660-7de4-829d-d5c0-6539be1e3d44', 0.00000000, 0.00000000, NULL, NULL, 'ABC1234', '2023-10-01', '', 'https://tooth-mate-current-team.vercel.app/'),
('314d1f16-5088-f40b-4afb-6539bb93b5f5', 0.00000000, 0.00000000, NULL, NULL, 'ABC675', '2005-10-04', '', 'https://tooth-mate-current-team.vercel.app/'),
('239c7969-a3c1-c8e8-ace2-6539b47077b5', 0.00000000, 0.00000000, '', '', 'ABC8765', '2023-10-17', 'Latex', 'https://tooth-mate-current-team.vercel.app/'),
('349090df-c2c1-f32a-957d-65386a9cd9e4', 0.00000000, 0.00000000, NULL, NULL, 'BHG7684', '1994-01-23', '', 'https://tooth-mate-current-team.vercel.app/'),
('77761704-294c-81d6-aa2f-6510fe59503f', 0.00000000, 0.00000000, NULL, NULL, 'BUB7345', '1959-09-16', 'NA', 'https://tooth-mate-current-team.vercel.app/'),
('d007cb7a-8dcc-b818-cfcc-64deede166b2', 0.00000000, 0.00000000, NULL, NULL, 'BUB9876', '2023-08-15', 'Latex', 'https://tooth-mate-current-team.vercel.app/'),
('2639d382-157a-2f45-2e92-6539ae484d11', 0.00000000, 0.00000000, NULL, NULL, 'BUG6753', '1982-10-12', 'Latex', 'https://tooth-mate-current-team.vercel.app/'),
('c37b17d0-edae-286d-52df-6539c73734ae', 0.00000000, 0.00000000, NULL, NULL, 'DFG5642', '2023-10-10', '', 'https://tooth-mate-current-team.vercel.app/'),
('a9f60fbb-8c00-2444-61f0-6510fa2cc32c', 0.00000000, 0.00000000, NULL, NULL, 'DUD569', '1994-09-16', '', 'https://tooth-mate-current-team.vercel.app/'),
('cc9c10dd-f28f-d0c3-8c53-64daa3dedb57', 0.00000000, 0.00000000, NULL, NULL, 'gfh1647', '1986-04-15', '', 'https://www.aut.ac.nz/'),
('f2b01b68-3c8c-55a5-1523-6510fa638dba', 0.00000000, 0.00000000, NULL, NULL, 'GIG134', '2015-02-02', 'Bit of a biter', 'https://tooth-mate-current-team.vercel.app/'),
('8342952e-ed80-5162-0755-653ae0a31a63', 0.00000000, 0.00000000, NULL, NULL, 'JKL6789', '2023-10-15', 'Latex', 'https://tooth-mate-current-team.vercel.app/'),
('e0b309bd-ce42-16ea-076c-64d97855d9d3', 0.00000000, 0.00000000, NULL, NULL, 'nvh3456', '2023-08-10', '', NULL),
('770380c5-b112-50b0-7b94-64bda96cb1c1', 0.00000000, 0.00000000, NULL, NULL, 'w346999', '1995-01-10', NULL, NULL),
('78a1aca3-f372-885a-2077-6539c2e6e57e', 0.00000000, 0.00000000, NULL, NULL, 'XYZ456', '2023-10-08', '', 'https://tooth-mate-current-team.vercel.app/'),
('242e96a7-673a-2ffd-7121-653acafeb183', 0.00000000, 0.00000000, NULL, NULL, 'XYZ543', '1997-10-08', '', 'https://tooth-mate-current-team.vercel.app/'),
('e237bf21-eac2-bbe4-c6f9-6539c5a31c33', 0.00000000, 0.00000000, NULL, NULL, 'XYZ7523', '2023-10-21', 'Penicillin', 'https://tooth-mate-current-team.vercel.app/');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bean_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `module` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `symbol` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `iso4217` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `set_num` int DEFAULT '0',
  `field0` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ddc_dc`
--

CREATE TABLE `ddc_dc` (
  `id` char(36) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddc_dc`
--

INSERT INTO `ddc_dc` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('67d4c569-89a8-fe35-d9ee-6539cd228a3f', 'Dental Chart', '2023-10-26 02:20:58', '2023-10-26 02:20:58', '1', '1', '', 0, '1'),
('6bac18fa-55e7-0909-c541-6510e2a5cf3d', 'Chart', '2023-09-25 01:31:21', '2023-10-26 02:20:46', '1', '1', '', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `ddc_dc_audit`
--

CREATE TABLE `ddc_dc_audit` (
  `id` char(36) COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text COLLATE utf8mb4_general_ci,
  `after_value_text` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ddc_dc_cstm`
--

CREATE TABLE `ddc_dc_cstm` (
  `id_c` char(36) COLLATE utf8mb4_general_ci NOT NULL,
  `dental_chart_c` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'https://tooth-mate-current-team.vercel.app/'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ddc_dc_cstm`
--

INSERT INTO `ddc_dc_cstm` (`id_c`, `dental_chart_c`) VALUES
('67d4c569-89a8-fe35-d9ee-6539cd228a3f', 'https://tooth-mate-current-team.vercel.app/'),
('6bac18fa-55e7-0909-c541-6510e2a5cf3d', 'http://localhost:3000/');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `document_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `doc_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `doc_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Sugar',
  `doc_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subcategory_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `document_revision_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_doc_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_doc_rev_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bug_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `case_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opportunity_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `change_log` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `document_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `doc_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `doc_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `doc_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_ext` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `revision` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_model`
--

CREATE TABLE `dynamic_model` (
  `NHI` varchar(10) DEFAULT NULL,
  `json_data` json DEFAULT NULL,
  `treatment_types` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `application` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'webex',
  `api_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `consumer_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `consumer_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oauth_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oauth_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` int NOT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `marketing_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `list_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'pick',
  `mailbox_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bean_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bean_module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `campaign_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_address_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `from_addr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reply_to_addr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `to_addrs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `cc_addrs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `bcc_addrs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description_html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `raw_source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_address_caps` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `confirm_opt_in`, `confirm_opt_in_date`, `confirm_opt_in_sent_date`, `confirm_opt_in_fail_date`, `confirm_opt_in_token`, `date_created`, `date_modified`, `deleted`) VALUES
('24e4b5c2-9870-0a01-08f6-653acacdec77', 'arnold@example.com', 'ARNOLD@EXAMPLE.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-10-26 20:22:15', '2023-10-26 20:22:15', 0),
('320a91d8-a453-2e35-567a-6539bbf5ccb1', 'Thomas@gmail.com', 'THOMAS@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-10-26 01:06:09', '2023-10-26 01:06:09', 0),
('353c9958-362e-0f8f-f291-65386a2b67ec', 'Jason@gmail.com', 'JASON@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-10-25 01:07:31', '2023-10-25 01:07:31', 0),
('7864146f-121f-bde2-ce0b-6510fecd81c9', 'Karen@hotmail.com', 'KAREN@HOTMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-09-25 03:27:22', '2023-09-25 03:27:22', 0),
('809bd706-8fcc-1d57-afbc-6539be811f30', 'Elle@exapmle.com', 'ELLE@EXAPMLE.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-10-26 01:20:37', '2023-10-26 01:20:37', 0),
('9c9a6968-1f4f-d3c6-e3bb-64bda9d1da67', 'Janice@hotmail.com', 'JANICE@HOTMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-07-23 22:29:14', '2023-07-23 22:29:14', 0),
('a06a3eec-c916-196d-d24a-64ed1ac72bac', 'James@hotmail.com', 'JAMES@HOTMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-08-28 22:05:43', '2023-08-28 22:05:43', 0),
('c42971e3-a166-13fc-050f-6539c7a566ce', 'Thomas@hotmail.com', 'THOMAS@HOTMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-10-26 01:59:04', '2023-10-26 01:59:04', 0),
('cd48bae6-b083-6d27-1f2b-64daa3b433a9', 'Jason@example.com', 'JASON@EXAMPLE.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-08-14 21:58:40', '2023-08-14 21:58:40', 0),
('d0c8c533-055b-ae16-a37b-64deed9bc8d2', 'Grady@gmail.com', 'GRADY@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-08-18 04:01:14', '2023-08-18 04:01:14', 0),
('e2d984eb-8248-3a73-fb1d-6539c50d88c8', 'Michael@gmail.com', 'MICHAEL@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2023-10-26 01:50:51', '2023-10-26 01:50:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses_audit`
--

CREATE TABLE `email_addresses_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_address_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bean_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bean_module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('24c3278c-858c-b2cd-3016-653aca012386', '24e4b5c2-9870-0a01-08f6-653acacdec77', '242e96a7-673a-2ffd-7121-653acafeb183', 'Contacts', 1, 0, '2023-10-26 20:22:15', '2023-10-26 20:22:15', 0),
('31ea3072-00c1-139f-c942-6539bba13fae', '320a91d8-a453-2e35-567a-6539bbf5ccb1', '314d1f16-5088-f40b-4afb-6539bb93b5f5', 'Contacts', 1, 0, '2023-10-26 01:06:09', '2023-10-26 01:06:09', 0),
('351c9993-540c-7044-5fbe-65386ab5193e', '353c9958-362e-0f8f-f291-65386a2b67ec', '349090df-c2c1-f32a-957d-65386a9cd9e4', 'Contacts', 1, 0, '2023-10-25 01:07:31', '2023-10-25 01:07:31', 0),
('415b81b8-5a20-3eb8-f608-64ed1e66a30b', 'a06a3eec-c916-196d-d24a-64ed1ac72bac', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'Users', 1, 0, '2023-08-28 22:23:42', '2023-08-28 22:23:42', 0),
('4758c253-07b5-21c1-dc0d-6539b48ea4ab', '353c9958-362e-0f8f-f291-65386a2b67ec', '239c7969-a3c1-c8e8-ace2-6539b47077b5', 'Contacts', 1, 0, '2023-10-26 00:37:16', '2023-10-26 00:37:16', 0),
('783f4726-9f65-7b7e-6fb5-6510fe98d634', '7864146f-121f-bde2-ce0b-6510fecd81c9', '77761704-294c-81d6-aa2f-6510fe59503f', 'Contacts', 1, 0, '2023-09-25 03:27:22', '2023-09-25 03:27:22', 0),
('807c6122-88fe-8957-d670-6539be228933', '809bd706-8fcc-1d57-afbc-6539be811f30', '7fe3e660-7de4-829d-d5c0-6539be1e3d44', 'Contacts', 1, 0, '2023-10-26 01:20:37', '2023-10-26 01:20:37', 0),
('9bc716a7-53e9-c2d5-7963-64bda9aa9a6e', '9c9a6968-1f4f-d3c6-e3bb-64bda9d1da67', '770380c5-b112-50b0-7b94-64bda96cb1c1', 'Contacts', 1, 0, '2023-07-23 22:29:14', '2023-07-23 22:29:14', 0),
('a04948f8-5932-f14c-4d7e-64ed1a9f7c89', 'a06a3eec-c916-196d-d24a-64ed1ac72bac', 'a03dc2fb-1a10-36a5-a9e4-64ed1a531d5f', 'Users', 1, 0, '2023-08-28 22:05:43', '2023-08-28 22:20:40', 1),
('c40a4ceb-e83b-04f8-f4d4-6539c7a6cbb3', 'c42971e3-a166-13fc-050f-6539c7a566ce', 'c37b17d0-edae-286d-52df-6539c73734ae', 'Contacts', 1, 0, '2023-10-26 01:59:04', '2023-10-26 01:59:04', 0),
('cd27c60c-7fe6-9b3a-750f-64daa3979faa', 'cd48bae6-b083-6d27-1f2b-64daa3b433a9', 'cc9c10dd-f28f-d0c3-8c53-64daa3dedb57', 'Contacts', 1, 0, '2023-08-14 21:58:40', '2023-08-14 21:58:40', 0),
('d0a98dd4-f348-d566-41db-64deed9a7301', 'd0c8c533-055b-ae16-a37b-64deed9bc8d2', 'd007cb7a-8dcc-b818-cfcc-64deede166b2', 'Contacts', 1, 0, '2023-08-18 04:01:14', '2023-08-18 04:01:14', 0),
('e2b91ad9-1dee-4a35-ac0d-6539c52ba46f', 'e2d984eb-8248-3a73-fb1d-6539c50d88c8', 'e237bf21-eac2-bbe4-c6f9-6539c5a31c33', 'Contacts', 1, 0, '2023-10-26 01:50:51', '2023-10-26 01:50:51', 0),
('e6bf2903-7f30-bdf7-6c75-64daa793e2d3', '9c9a6968-1f4f-d3c6-e3bb-64bda9d1da67', 'e68e3342-16ab-7346-f650-64daa77e22f6', 'Contacts', 1, 0, '2023-08-14 22:13:49', '2023-10-26 00:07:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mbox` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fromaddr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `toaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mailsize` int UNSIGNED DEFAULT NULL,
  `imap_uid` int UNSIGNED DEFAULT NULL,
  `msgno` int UNSIGNED DEFAULT NULL,
  `recent` tinyint DEFAULT NULL,
  `flagged` tinyint DEFAULT NULL,
  `answered` tinyint DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `seen` tinyint DEFAULT NULL,
  `draft` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `from_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `from_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reply_to_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reply_to_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `inbound_email_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `outbound_email_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prospect_list_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_marketing_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `published` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `body_html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('c67ba748-2901-e3c6-d4a6-643d42a79620', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('cb577e43-3bc3-29da-02ee-643d42cb4bc8', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('cef4b414-d6a4-db5c-f2b6-643d42826161', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Description</td><td>$acase_description</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('d3ecb138-ab30-3e6c-54a7-643d4207abd6', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('d848d7f2-f1ec-80b3-982a-643d42539022', '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'off', 'User Case Update', 'Email template to send to a SuiteCRM user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					     <p> </p>\r\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>', 0, NULL, NULL, 'system'),
('e113ffbd-63c1-870c-8c07-643d4253c20e', '2013-05-24 14:31:45', '2023-04-17 12:56:42', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'system');

-- --------------------------------------------------------

--
-- Table structure for table `external_oauth_connections`
--

CREATE TABLE `external_oauth_connections` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_secret` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expires_in` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `refresh_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `external_oauth_provider_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_oauth_providers`
--

CREATE TABLE `external_oauth_providers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `connector` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scope` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `url_authorize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `authorize_url_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `url_access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra_provider_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `get_token_request_grant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'authorization_code',
  `get_token_request_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `refresh_token_request_grant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'refresh_token',
  `refresh_token_request_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `access_token_mapping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `help` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `custom_module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `len` int DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ext1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ext2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ext3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ext4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('abcd_Appointmentslink_c', 'link_c', 'LBL_LINK', '', '', 'abcd_Appointments', 'url', 255, 1, 'https://www.aut.ac.nz/', '2023-08-28 22:40:37', 0, 0, 0, 0, 1, 'true', '', '', '1', '_self'),
('abcd_Appointmentstoothmodel_c', 'toothmodel_c', 'LBL_TOOTHMODEL', '', '', 'abcd_Appointments', 'html', 255, 0, NULL, '2023-08-14 21:44:25', 0, 0, 0, 0, 1, 'true', '', '', 'text', '<p>https://www.aut.ac.nz/</p>'),
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsallergies_c', 'allergies_c', 'LBL_ALLERGIES', '', '', 'Contacts', 'varchar', 255, 0, '', '2023-08-13 23:38:45', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsdob_c', 'dob_c', 'LBL_DOB', '', '', 'Contacts', 'date', NULL, 1, '', '2023-07-23 22:24:32', 0, 0, 0, 0, 1, 'required', '', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsmedicalpage_c', 'medicalpage_c', 'LBL_MEDICALPAGE', NULL, NULL, 'Contacts', 'url', 255, 0, 'https://tooth-mate-current-team.vercel.app/', '2023-08-18 03:59:23', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, '_self'),
('Contactsnhi_c', 'nhi_c', 'LBL_NHI', NULL, 'Patient NHI Number', 'Contacts', 'varchar', 7, 1, NULL, '2023-07-23 21:57:14', 0, 0, 0, 0, 1, 'required', NULL, NULL, NULL, NULL),
('DDC_DCdental_chart_c', 'dental_chart_c', 'LBL_DENTAL_CHART', NULL, NULL, 'DDC_DC', 'url', 255, 0, 'https://tooth-mate-current-team.vercel.app/', '2023-10-26 02:19:35', 0, 0, 0, 0, 1, 'true', NULL, NULL, '1', '_self'),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2023-04-17 12:56:42', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `folder_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_folder` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `assign_to_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `modified_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `folder_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `polymorphic_module` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `polymorphic_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `folder_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invite_templates` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `accept_redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `decline_redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activity_status_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invite_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Invited',
  `accept_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'No Response',
  `email_responded` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invite_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Invited',
  `accept_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'No Response',
  `email_responded` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invite_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Invited',
  `accept_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'No Response',
  `email_responded` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `capacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `source` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `enclosure` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT ' ',
  `delimiter` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT ',',
  `module` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `default_values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_published` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Active',
  `server_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `connection_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `port` int DEFAULT '143',
  `service` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mailbox` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `sentFolder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trashFolder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT '0',
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `template_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stored_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `group_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `auth_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'basic',
  `protocol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT '0',
  `distribution_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `outbound_email_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_case_template_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `external_oauth_connection_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ie_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ie_timestamp` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coordinates` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'mi',
  `module_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Accounts',
  `parent_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `resolution` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint DEFAULT NULL,
  `failure_count` tinyint DEFAULT NULL,
  `job_delay` int DEFAULT NULL,
  `client` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `percent_complete` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salutation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_work` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_other` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_fax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lawful_basis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assistant` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assistant_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lead_source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lead_source_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `reports_to_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `contact_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opportunity_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opportunity_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opportunity_amount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `portal_app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `document_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `document_revision_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_records`
--

CREATE TABLE `medical_records` (
  `id` int NOT NULL,
  `nhi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `treatment_summary` json NOT NULL,
  `notes` text,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medical_records`
--

INSERT INTO `medical_records` (`id`, `nhi`, `treatment_summary`, `notes`, `date`) VALUES
(4, 'nvh3456', '{\"3Dmodel/Right_Upper_Wisdom.glb\": {\"TreatmentSummary\": [\"Option 1 (BOP)\"]}}', 'test1', '2023-09-25'),
(5, 'nvh3456', '{\"3Dmodel/Left_Upper_Canine.glb\": {\"TreatmentSummary\": [\"Option 1 (BOP)\"]}}', '', '2023-09-25'),
(6, 'BUB9876', '{\"3Dmodel/Left_Upper_Canine.glb\": {\"TreatmentSummary\": [\"Option 1 (BOP)\"]}}', 'test5', '2023-09-13'),
(7, 'BUB9876', '{\"3Dmodel/Left_Upper_Lateral_Incisor.glb\": {\"TreatmentSummary\": [\"Option 1 (DOP)\"]}}', 'test3', '2023-09-01'),
(8, 'BUB9876', '{\"3Dmodel/Right_Upper_Central_Incisor.glb\": {\"TreatmentSummary\": [\"Option 1 (BO)\"]}}', '', '2023-09-05'),
(9, 'BUB9876', '{\"3Dmodel/Left_Upper_Canine.glb\": {\"TreatmentSummary\": [\"Option 1 (OP)\"]}}', '', '2023-09-02'),
(10, 'nvh3456', '{\"3Dmodel/Left_Upper_First_Premolar.glb\": {\"TreatmentSummary\": [\"Option 1 (BOP)\"]}}', '', '2023-09-25'),
(16, 'w346999', '{\"3Dmodel/Left_Upper_Canine.glb\": {\"TreatmentSummary\": [\"(OBM)\"]}}', 'Problem with upper left canine', '2023-09-25'),
(17, 'BUB9876', '{\"3Dmodel/Left_Upper_First_Premolar.glb\": {\"TreatmentSummary\": [\"Option 1 (OBM)\", \"Option 2 (OPD)\"]}, \"3Dmodel/Left_Lower_Central_Incisor.glb\": {\"TreatmentSummary\": [\"Option 1 (LD)\"]}}', 'Tooth decay', '2023-09-24'),
(18, 'BUB9876', '{\"3Dmodel/Right_Upper_Lateral_Incisor.glb\": {\"TreatmentSummary\": [\"Option 1 (BO)\", \"Option 1 (PDO)\", \"(OBD)\"]}}', 'filling', '2023-09-25'),
(19, 'BUB7345', '{\"3Dmodel/Left_Lower_Second_Premolar.glb\": {\"TreatmentSummary\": [\"Option 2 (DOM)\"]}, \"3Dmodel/Right_Upper_Second_Premolar.glb\": {\"TreatmentSummary\": [\"Option 1 (BOP)\"]}, \"Pediatric_model/Pediatric_Right_Lower_Second_Molar.glb\": {\"TreatmentSummary\": [\"Option 1 (LOB)\"]}, \"Pediatric_model/Pediatric_Left_Lower_Lateral_Incisor.glb\": {\"TreatmentSummary\": [\"Option 3 (DOB)\"]}}', '', '2023-09-25'),
(20, 'BUB7345', '{\"3Dmodel/Right_Upper_Second_Molar.glb\": {\"TreatmentSummary\": [\"Option 1 (BOD)\"]}}', 'test1', '2023-09-25'),
(21, 'BUB7345', '{\"3Dmodel/Left_Upper_Canine.glb\": {\"TreatmentSummary\": [\"Option 1, Option 2 (BOP)\", \"Option 3 (DOM)\"]}}', 'test3', '2023-09-25'),
(22, 'BUB9876', '{\"3Dmodel/Right_Lower_Central_Incisor.glb\": {\"TreatmentSummary\": [\"Option 1 (L)\"]}}', 'Patient has plaque build up cleaning will be needed at a later appointment', '2023-09-25'),
(23, 'DUD569', '{}', '', '2023-09-28'),
(24, 'GIG134', '{\"3Dmodel/Right_Upper_Second_Molar.glb\": {\"TreatmentSummary\": [\"Option 1, Option 2 (OD)\"]}}', '', '2023-09-29'),
(25, 'BUB7345', '{\"3Dmodel/Left_Upper_Wisdom.glb\": {\"TreatmentSummary\": [\"Option 1 (BOD)\", \"Option 2 (OMP)\"]}}', '', '2023-09-29'),
(26, 'BUB7345', '{\"3Dmodel/Left_Upper_Canine.glb\": {\"TreatmentSummary\": [\"Option 2 (BOM)\", \"(POD)\"]}}', '', '2023-09-29'),
(27, 'BUB7345', '{\"Pediatric_model/Pediatric_Left_Upper_Canine.glb\": {\"TreatmentSummary\": [\"Option 1 (BO)\"]}, \"Pediatric_model/Pediatric_Right_Upper_Canine.glb\": {\"TreatmentSummary\": [\"Option 1 (BOP)\"]}, \"Pediatric_model/Pediatric_Left_Upper_Second_Molar.glb\": {\"TreatmentSummary\": [\"Option 1 (BO)\", \"Option 1 (DPM)\"]}}', '', '2023-09-29'),
(28, 'GIG134', '{\"3Dmodel/Right_Upper_Central_Incisor.glb\": {\"TreatmentSummary\": [\"Filling (OBD)\"]}, \"Pediatric_model/Pediatric_Right_Upper_Lateral_Incisor.glb\": {\"TreatmentSummary\": [\"Option 1\"]}}', '', '2023-09-29'),
(29, 'gfh1647', '{\"3Dmodel/Right_Upper_Canine.glb\": {\"TreatmentSummary\": [\"Option 1 (OB)\"]}}', '', '2023-09-29'),
(30, 'gfh1647', '{\"3Dmodel/Right_Upper_Wisdom.glb\": {\"TreatmentSummary\": [\"Option 1 (BO)\"]}}', '', '2023-09-29'),
(31, 'BUB9876', '{\"3Dmodel/Right_Upper_Wisdom.glb\": {\"TreatmentSummary\": [\"Option 1 (OB)\"]}}', '', '2023-09-29'),
(32, 'BUB7345', '{\"Pediatric_model/Pediatric_Right_Upper_Second_Molar.glb\": {\"TreatmentSummary\": [\"(OM)\"]}}', '', '2023-09-30'),
(33, 'BUB9876', '{\"3Dmodel/Right_Upper_Second_Molar.glb\": {\"TreatmentSummary\": [\"Crown (DO)\"]}}', '', '2023-09-30'),
(34, 'gfh1647', '{\"3Dmodel/43_Left_Lower_Canine.glb\": {\"TreatmentSummary\": [\"Filling (LID)\"]}}', '', '2023-10-02'),
(35, 'gfh1647', '{\"3Dmodel/43_Left_Lower_Canine.glb\": {\"TreatmentSummary\": [\"Filling (LID)\"]}}', '', '2023-10-02'),
(36, 'DUD569', '{\"3Dmodel/23_Right_Upper_Canine.glb\": {\"TreatmentSummary\": [\"Filling (BIM)\"]}, \"3Dmodel/22_Right_Upper_Lateral_Incisor.glb\": {\"TreatmentSummary\": [\"Filling (MIP)\"]}}', '', '2023-10-02'),
(37, 'BUB9876', '{\"3Dmodel/21_Right_Upper_Central_Incisor.glb\": {\"TreatmentSummary\": [\"Crown (BIMDP)\"]}}', 'regular creaning', '2023-10-05'),
(38, 'BUB9876', '{}', 'regular cleaning ', '2023-10-05'),
(39, 'nvh3456', '{\"3Dmodel/45_Left_Lower_Second_Premolar.glb\": {\"TreatmentSummary\": [\"Filling (LOB)\"]}}', '', '2023-10-09'),
(40, 'BUB9876', '{\"3Dmodel/12_Left_Upper_Lateral_Incisor.glb\": {\"TreatmentSummary\": [\"Filling (DIM)\"]}, \"3Dmodel/31_Right_Lower_Central_Incisor.glb\": {\"TreatmentSummary\": [\"Veneer (IMB)\"]}}', 'test', '2023-10-09'),
(41, 'BUB9876', '{\"3Dmodel/28_Right_Upper_Wisdom.glb\": {\"TreatmentSummary\": [\"Filling (BOP)\"]}}', '', '2023-10-09'),
(42, 'gfh1647', '{\"3Dmodel/28_Right_Upper_Wisdom.glb\": {\"TreatmentSummary\": [\"Filling (BOM)\", \"Crown (BOD)\"]}}', 'test', '2023-10-19'),
(43, 'ABC8765', '{\"3Dmodel/48_Left_Lower_Wisdom.glb\": {\"TreatmentSummary\": [\"Filling, Crown (LOB)\", \"(LO)\"]}}', '', '2023-10-26'),
(44, 'ABC675', '{\"3Dmodel/48_Left_Lower_Wisdom.glb\": {\"TreatmentSummary\": [\"Filling (LOB)\"]}}', 'clenning', '2023-10-26'),
(45, 'ABC1234', '{\"3Dmodel/48_Left_Lower_Wisdom.glb\": {\"TreatmentSummary\": [\"Filling (LOB)\"]}}', '', '2023-10-26'),
(46, 'XYZ7523', '{\"3Dmodel/48_Left_Lower_Wisdom.glb\": {\"TreatmentSummary\": [\"Extraction (LO)\"]}}', '', '2023-10-26'),
(47, 'DFG5642', '{\"3Dmodel/48_Left_Lower_Wisdom.glb\": {\"TreatmentSummary\": [\"Filling (LOB)\"]}}', 'clean', '2023-10-26'),
(48, 'XYZ543', '{\"3Dmodel/28_Right_Upper_Wisdom.glb\": {\"TreatmentSummary\": [\"Filling (BOP)\"]}}', '', '2023-10-26'),
(49, 'JKL6789', '{\"3Dmodel/28_Right_Upper_Wisdom.glb\": {\"TreatmentSummary\": [\"Filling (BOP)\"]}}', 'cleanning', '2023-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `join_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `host_url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `displayed_url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `creator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `external_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Planned',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Sugar',
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sequence` int DEFAULT '0',
  `repeat_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `recurring_source` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gsync_id` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gsync_lastsync` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `location`, `password`, `join_url`, `host_url`, `displayed_url`, `creator`, `external_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `type`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `sequence`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`, `gsync_id`, `gsync_lastsync`) VALUES
('1a90ae59-4761-3508-74e3-6510b670e3c7', 'Cleaning', '2023-09-24 22:20:19', '2023-09-24 22:23:53', '1', '1', 'Test123', 1, '97240576-184d-be72-21f0-64e3efe77262', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 30, '2023-09-25 06:30:00', '2023-09-25 07:00:00', 'Contacts', 'Planned', 'Sugar', 'd007cb7a-8dcc-b818-cfcc-64deede166b2', -1, -1, 0, NULL, 0, '', 0, '', NULL, 0, '', NULL, NULL, NULL),
('34216acc-8b0a-ee16-a01c-64deeb171246', 'hxkuy', '2023-08-18 03:53:34', '2023-09-25 01:32:13', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 30, '2023-08-14 06:30:00', '2023-08-14 07:00:00', 'Accounts', 'Held', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL),
('6794bad1-b891-6c8d-954b-64dedf6ad3f4', 'new exam', '2023-08-18 03:02:01', '2023-09-25 01:32:16', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 15, '2023-08-18 03:00:00', '2023-08-18 03:15:00', NULL, 'Held', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL),
('8b90c176-0050-f3db-af8c-643d468864f3', 'Client Meeting and handover', '2023-04-17 13:15:48', '2023-05-29 22:16:11', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 30, '2023-04-18 16:00:00', '2023-04-18 16:30:00', 'Leads', 'Held', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 0, NULL, NULL, 0, '', NULL, NULL, NULL),
('a7642ecb-e771-6357-647d-643d4622b47a', 'fff', '2023-04-17 13:17:08', '2023-05-29 22:16:07', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 15, '2023-04-18 16:00:00', '2023-04-18 16:15:00', 'Accounts', 'Held', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL),
('c710054a-e76c-c095-20c7-64acf407272d', 'Nathan Peele', '2023-07-11 06:21:46', '2023-07-23 22:38:07', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 15, '2023-07-11 06:30:00', '2023-07-11 06:45:00', 'Accounts', 'Held', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL),
('c828b850-06fe-419e-e1e1-64dabb21f6ab', 'Orthodontist', '2023-08-14 23:42:03', '2023-09-25 01:32:19', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 30, '2023-08-16 08:30:00', '2023-08-16 09:00:00', 'Accounts', 'Held', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 0, NULL, NULL, 0, '', NULL, NULL, NULL),
('d5501c98-4747-f491-f7a1-64daa7062b41', 'Dental Exam', '2023-08-14 22:14:58', '2023-09-25 01:32:22', '1', '1', NULL, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 30, '2023-08-16 07:00:00', '2023-08-16 07:30:00', 'Accounts', 'Held', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 0, NULL, NULL, 0, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `meeting_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `required` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  `accept_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings_contacts`
--

INSERT INTO `meetings_contacts` (`id`, `meeting_id`, `contact_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('2f7e58cf-ffc4-bc98-bff7-6510b6743e7e', '1a90ae59-4761-3508-74e3-6510b670e3c7', 'd007cb7a-8dcc-b818-cfcc-64deede166b2', '1', 'none', '2023-09-24 22:23:53', 1),
('42596287-eac7-1df1-0cce-64deebbb8612', '34216acc-8b0a-ee16-a01c-64deeb171246', '770380c5-b112-50b0-7b94-64bda96cb1c1', '1', 'none', '2023-08-18 03:54:14', 1),
('6279ddc8-8fa8-47c6-acb6-64deebce57f9', '34216acc-8b0a-ee16-a01c-64deeb171246', 'cc9c10dd-f28f-d0c3-8c53-64daa3dedb57', '1', 'none', '2023-08-18 03:54:14', 0),
('710f8631-e7c0-0ab1-596d-64dedf2e589f', '6794bad1-b891-6c8d-954b-64dedf6ad3f4', '770380c5-b112-50b0-7b94-64bda96cb1c1', '1', 'none', '2023-08-18 03:02:01', 0),
('d425ea1b-b6b4-63d3-87da-64dabb9cc5e3', 'c828b850-06fe-419e-e1e1-64dabb21f6ab', '770380c5-b112-50b0-7b94-64bda96cb1c1', '1', 'none', '2023-08-14 23:42:03', 0),
('e2c42046-5fdc-2a2d-aa87-64daa753c364', 'd5501c98-4747-f491-f7a1-64daa7062b41', 'cc9c10dd-f28f-d0c3-8c53-64daa3dedb57', '1', 'none', '2023-08-14 22:14:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings_cstm`
--

INSERT INTO `meetings_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('1a90ae59-4761-3508-74e3-6510b670e3c7', 0.00000000, 0.00000000, NULL, NULL),
('34216acc-8b0a-ee16-a01c-64deeb171246', 0.00000000, 0.00000000, '', ''),
('6794bad1-b891-6c8d-954b-64dedf6ad3f4', 0.00000000, 0.00000000, '', ''),
('8b90c176-0050-f3db-af8c-643d468864f3', 0.00000000, 0.00000000, '', ''),
('a7642ecb-e771-6357-647d-643d4622b47a', 0.00000000, 0.00000000, '', ''),
('c710054a-e76c-c095-20c7-64acf407272d', 0.00000000, 0.00000000, '', ''),
('c828b850-06fe-419e-e1e1-64dabb21f6ab', 0.00000000, 0.00000000, '', ''),
('d5501c98-4747-f491-f7a1-64daa7062b41', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `meeting_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lead_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `required` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  `accept_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `meeting_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `required` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  `accept_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings_users`
--

INSERT INTO `meetings_users` (`id`, `meeting_id`, `user_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('2db34a0f-b061-5004-9813-6510b65623f4', '1a90ae59-4761-3508-74e3-6510b670e3c7', '1', '1', 'none', '2023-09-24 22:23:53', 1),
('2e6db279-d2b2-f19a-dd78-6510b619a62e', '1a90ae59-4761-3508-74e3-6510b670e3c7', '97240576-184d-be72-21f0-64e3efe77262', '1', 'none', '2023-09-24 22:23:53', 1),
('41119a9d-9b23-815e-1d4d-64deeba01d22', '34216acc-8b0a-ee16-a01c-64deeb171246', '1', '1', 'accept', '2023-08-18 03:53:34', 0),
('701e8691-9747-9dc6-58c4-64dedf05a5d2', '6794bad1-b891-6c8d-954b-64dedf6ad3f4', '1', '1', 'accept', '2023-08-18 03:02:01', 0),
('c2e60969-049f-ccf0-f3ec-643d46f9605d', '8b90c176-0050-f3db-af8c-643d468864f3', '1', '1', 'accept', '2023-04-17 13:15:48', 0),
('c415b98b-1a11-ab56-f675-643d46e85d9d', 'a7642ecb-e771-6357-647d-643d4622b47a', '1', '1', 'accept', '2023-04-17 13:17:08', 0),
('cd09251f-c703-110b-7f2f-64acf457e977', 'c710054a-e76c-c095-20c7-64acf407272d', '1', '1', 'accept', '2023-07-11 06:21:46', 0),
('d31fec6b-78db-295f-6254-64dabb2a7d73', 'c828b850-06fe-419e-e1e1-64dabb21f6ab', '1', '1', 'accept', '2023-08-14 23:42:03', 0),
('e1b9e5c0-9b6e-d558-e654-64daa767b64e', 'd5501c98-4747-f491-f7a1-64daa7062b41', '1', '1', 'accept', '2023-08-14 22:14:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2clients`
--

CREATE TABLE `oauth2clients` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'password',
  `duration_value` int DEFAULT NULL,
  `duration_amount` int DEFAULT NULL,
  `duration_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2tokens`
--

CREATE TABLE `oauth2tokens` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `refresh_token` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `c_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `c_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nonce` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nonce_ts` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `secret` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tstate` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `consumer` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token_ts` bigint DEFAULT NULL,
  `verify` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opportunity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lead_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sales_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opportunity_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'user',
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smtp_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smtp_from_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reply_to_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reply_to_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `signature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `mail_sendtype` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'SMTP',
  `mail_smtptype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'other',
  `mail_smtpserver` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail_smtpport` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '25',
  `mail_smtpuser` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail_smtppass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `reply_to_name`, `reply_to_addr`, `signature`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('193fb5bc-2fdf-133b-bc6c-643d425b9009', 'system', 'system', '1', NULL, NULL, NULL, NULL, NULL, 'SMTP', 'other', '', '25', '', '', 1, '0', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bug_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `case_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `opportunity_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `project_task_id` int DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `relationship_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `predecessors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date_start` date DEFAULT NULL,
  `time_start` int DEFAULT NULL,
  `time_finish` int DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `duration_unit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `actual_duration` int DEFAULT NULL,
  `percent_complete` int DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int DEFAULT '1',
  `task_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `actual_effort` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_users_1users_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salutation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_work` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_other` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_fax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lawful_basis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alt_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assistant` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assistant_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tracker_key` int NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `list_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `domain_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prospect_list_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prospect_list_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `campaign_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `relationship_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lhs_module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lhs_table` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lhs_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rhs_module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rhs_table` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rhs_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `join_table` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `join_key_lhs` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `join_key_rhs` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `relationship_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `relationship_role_column` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `relationship_role_column_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('1071267a-eb89-1c28-31fa-6539cca71230', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('10d501cb-8335-c9c5-0c83-6539cc80cce6', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('115d855b-2997-b1d5-8276-6539cc98b480', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('11d515b4-5c11-9bb8-8345-6539cce78a10', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('125ebddc-884a-1ab0-505e-6539cca3d605', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('12fb258e-1a09-e6bb-9c4e-6539cc79f22e', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('138a5dea-8f5b-6b70-9b28-6539cc7b6d5c', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Meetings', 0, 0),
('148dc51d-baca-c2c4-d7be-6539cc9540da', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14f655f8-7380-6e7e-3b66-6539cce74793', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('157def49-de50-eb70-ff93-6539cc049720', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15fbb645-522b-c8b9-5f4e-6539cc1caf8e', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('160b0d32-db67-ba6e-1079-6539ccf9cb8f', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('169e0159-9ab0-4371-df1d-6539cce15106', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('17725bf5-1810-a5db-ff47-6539cc9bdcdd', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17d75376-8379-0e65-4804-6539cc959fe4', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1866993c-ba59-c6ec-bd3a-6539cc66e166', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18d6e9a9-cdc3-1e42-1ca2-6539cc70f8bf', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('195f6152-3adf-0ecd-31b4-6539cc6fe0e7', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b3b51a3-c219-de92-88bb-6539cc88a8cf', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1bcbfd3d-39fc-b04a-9c0e-6539ccf6e667', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1c61414a-8166-ad22-965c-6539cc7f751f', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1d40705b-818f-e857-6346-6539ccd09e7d', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1da5bb17-f876-2933-9cb9-6539ccda9897', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e2fa741-f6e9-ebfd-40a1-6539cc97e8c2', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ea605ff-8f46-3304-7e96-6539cc907d75', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ea61da9-1bc7-4fe8-8342-6539cc7e10fc', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('1f4d23fe-41ef-556e-d7ea-6539cc3770ee', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1fe0ad9b-f77c-2cfd-6034-6539cc343603', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('236e5236-4f30-99cf-64eb-6539cc65bc94', 'securitygroups_inboundemail', 'SecurityGroups', 'securitygroups', 'id', 'InboundEmail', 'inbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'InboundEmail', 0, 0),
('240db5f8-22ae-4c96-57ab-6539ccd6899e', 'inbound_emails_distribution_user', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'distribution_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24907d21-aa31-03e7-8383-6539cc20b326', 'inbound_emails_autoreply_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25236b69-8cbc-f415-1997-6539cc265bb6', 'inbound_emails_case_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'create_case_template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('259c2302-d454-a532-b571-6539cc55db71', 'inbound_emails_external_oauth_connections', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'InboundEmail', 'inbound_email', 'external_oauth_connection_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('262a6f33-7668-169d-2217-6539cc7ad46b', 'inbound_outbound_email_accounts', 'OutboundEmailAccounts', 'outbound_email', 'id', 'InboundEmail', 'inbound_email', 'outbound_email_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26c1b612-ce55-6a26-fe8b-6539cc0d2ca9', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('274a2181-447a-7325-37e9-6539ccc1d6e7', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('2829e458-7f0f-be01-3ed5-6539cc49ce70', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29340671-e6c9-df6c-58a0-6539cc68de9e', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29ca4337-17d8-a096-a248-6539cc44742a', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a39a725-36a3-6486-8c13-6539ccbd39ab', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ac2b1b4-682c-c55c-c62d-6539cc83e48f', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('2b723594-bc38-2db2-5074-6539cc890671', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2bf53162-bcac-b7e9-5003-6539cc532b95', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2cada7e9-6a20-63cc-317b-6539cca563bc', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d478edf-5192-fc6c-8412-6539cc47559b', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2dcfff5d-23e4-419b-39c7-6539cc5f8632', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e981dbb-b5aa-da88-7299-6539cc9d08b2', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f01b6d7-d5a9-3853-8af9-6539cc8a46c8', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f6620b2-afe3-4ed1-ca90-6539ccb988cd', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('301e4d91-ac9b-2d04-78c3-6539cc70b6d8', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30ac0241-4d7f-cf72-fe8b-6539cc89ed0c', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3122ab35-d898-b47e-8f49-6539cca41c15', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31d3d87b-4cd0-69a4-e015-6539cc7231bb', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('323bbf0c-2b8f-d183-2ea1-6539ccb58046', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3300ae27-347d-88c0-69ec-6539cc8e9717', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('338d16bb-9a72-943a-f543-6539cc6bff84', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3409a684-934a-4e67-d743-6539ccb31a5d', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34d1f85a-dd5f-1a9e-c4da-6539cc76f94b', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('355a032a-b700-eb91-14b6-6539cc5c313b', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35676dbc-f592-9fc6-4e2d-6539cc864f05', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35f141a5-73b8-63e8-509a-6539cc6c33c4', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36c1f0ed-105d-2cfc-b555-6539cc718232', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('37367a0d-de0f-1ab6-7103-6539cc07906f', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('37c035a8-841b-4072-b13a-6539cc5fcbfa', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('386a8ffa-fb02-b4d5-db4f-6539ccdb23d7', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38ebe64c-8f13-f0fd-610c-6539ccba4cf3', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39753991-28d2-dcc9-7d64-6539cc21c01f', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3a2c5c51-fa55-e772-2199-6539cc5bd0d1', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3aa6e373-2ffb-7a0a-88b9-6539cc2fdedf', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b0c11a5-6d62-5953-cc5c-6539cc2c2821', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b9455a2-de96-d911-5a25-6539ccf4f87b', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('3c681062-46d9-b308-c051-6539cca2972d', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3cf93394-4c75-4a69-3619-6539cc95eeda', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d959915-8971-bd0f-67b1-6539cca8c4b1', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e2e28a6-1de2-1596-2490-6539cc0686a0', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ec20385-bf01-7db4-bc6d-6539cc7adc17', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f50a9ae-4152-69fd-0923-6539ccf10bb8', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('400ce52e-63ed-6516-c7ad-6539cc905728', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('407cfafd-4cf3-70fb-8e5a-6539ccc12e27', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40fa20e7-0876-10c7-3ab9-6539cceb6768', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4183b641-36d3-4648-3ef1-6539ccb0951a', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('423b1d97-d487-5f58-d457-6539cc483056', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42b0317c-3ae6-cb71-cc80-6539ccb93df7', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43387d89-290c-0db9-4283-6539cca89cae', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43b6c373-0fa3-7b39-d932-6539cc4cdc4c', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('447e9fc1-106a-9ab5-9b5b-6539cc48a399', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('44e25572-f689-e970-f75b-6539cc37e9e5', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('459f6e5d-a1af-7ff3-1b77-6539cc7947a3', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('466d570f-bd92-a3b6-8761-6539cc604eec', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46d5948d-0421-f65f-6ffd-6539ccc71d4d', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('476b4dd9-e200-684d-df57-6539cc433015', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47dcd413-b1a3-c2d2-caf6-6539ccee14b3', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48160d05-5e5a-764e-ed28-6539cce839ae', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('48661d62-951d-98f9-c4ce-6539cc181f8d', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49156181-3eef-d79d-deed-6539ccae9965', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49938ae4-6586-77cb-bc5a-6539ccc6e551', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a5b3a1a-f5f0-85f0-8275-6539ccba6823', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ac4bcb9-e4c2-d046-2f74-6539cc67cf12', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b96778e-7f39-552b-a0ba-6539ccac357e', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c232000-6b66-7a8a-65c9-6539cc88dff9', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c9959f3-2ee8-b6db-d495-6539cc0cf33d', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d237154-c9f8-9fdb-d6de-6539cc9319d9', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4da5a93b-1e16-3aff-330c-6539cc14fd35', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('4ee187a4-eb1f-c881-1fd9-6539cc5cd1f5', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f6f2403-0f4d-f979-e710-6539ccddd721', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('500b6ad3-cb57-59e9-fb00-6539cc8a7325', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('506eb7de-4a73-61f2-5eb6-6539cc5fce10', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('50f6f478-4abd-4912-0944-6539cc0803ea', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('511109b9-2944-d61e-8587-6539cc83972c', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51758bfa-2da6-8ecc-96e4-6539cccfc3a8', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('523c4ab0-26c4-c090-a97f-6539cc47d629', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('530344eb-ba60-2ace-8712-6539cc080787', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('536eae20-db2c-eeb4-3e42-6539ccebb897', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54460a69-40e7-bffd-4bb1-6539ccceea4a', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('549000b3-c1a6-052c-c406-6539cca1bce1', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54d2d5e7-5bb4-5c42-7400-6539cc48e145', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('554acd66-f682-35f9-a3e0-6539cc44b186', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5609254c-19d3-66cc-1e99-6539cc633520', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('567cfebe-356d-b23e-acce-6539cc7c9fe0', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('578a8651-87cb-e565-4797-6539ccf6666b', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('581d5d88-4063-6ff2-6337-6539ccd561bb', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58bbae03-1296-b808-5467-6539ccdb7c47', 'securitygroups_aor_scheduled_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Scheduled_Reports', 0, 0),
('599fd2cf-8226-743d-5f55-6539cc72d783', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a075616-d5d3-3046-6eb5-6539ccc0afb1', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a93fdaa-ecf9-18d7-cb97-6539cc2477f9', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b3c85a3-13a9-d10d-d178-6539cc3303d6', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('5bcc0261-5cf0-3a27-a1ef-6539cca48958', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('5c426c4d-18d1-74c8-ae18-6539cc7f5957', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('5cc9ad3a-87df-7fa0-eef4-6539cc32a7a1', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('5d4d8d28-82ee-5567-3fe9-6539cc168aa9', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('5dd66dbd-f4c1-2ac4-b812-6539cc0ef033', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e59a51e-4535-fe29-800c-6539cce8e6b2', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f88260b-2128-febd-7508-6539cc37c4c1', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('600f1ca5-0f04-99d5-5b67-6539ccabeeeb', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60b5ca56-97d1-d845-e492-6539cc0644ae', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61221092-5fc8-1e95-ad3b-6539cca1f6fd', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('613c08eb-5b2d-8ff9-0a56-6539ccd6f7c4', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65d3745f-238a-3ba8-6343-6539cc704da2', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66a8f022-cfc6-b9b2-b449-6539cc5dfe99', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('681a4ed0-1613-f74f-d793-6539ccc0f380', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68fe943a-279e-ad5b-f415-6539cc71753e', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a2547d6-d0b8-30fb-6023-6539ccd49a9a', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a720818-69fe-47d9-6d98-6539cce98627', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('6b1b57d7-a92d-6d6f-f769-6539cc2b0691', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('6c7e55b6-7f23-f8fe-2339-6539cc9573ac', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d6e5b9e-1dad-4e13-378e-6539cc2ae6f6', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e52332c-8340-eebd-b0a3-6539cc4ca5b0', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fcbb8c7-3dd3-8e02-aa09-6539cc7d8de1', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('7076b380-3e1a-4e5a-881a-6539cc161e95', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71417562-b25d-cd3a-2f91-6539cc8b89e8', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72010de4-9242-77e2-57d0-6539ccf77364', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('720695bd-28a7-5fdd-7a54-6539cc201740', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('737284d9-855b-b17f-2778-6539ccc8a379', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('74074810-b86b-3f27-28cb-6539cc0745ee', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('74b0849c-136b-e53e-34e2-6539cc662a55', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76420c66-3255-50d8-1727-6539ccac4b08', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77699378-260a-225b-fe6c-6539cc8b8129', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78926aff-3b2a-896f-92fe-6539cc21a0d7', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79b8b18f-e784-edf7-e97e-6539cca69bbb', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ad7059e-3755-e2bc-fad0-6539cca80d65', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b20dc08-c4db-1871-d580-6539cccc359a', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c1dcefb-3f5c-1ac4-78ee-6539ccbf511b', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d29b2af-3617-1c8f-921e-6539cc12b7a7', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7dc387a6-692f-6e6a-ae62-6539ccce20fb', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ef3d4db-46b8-e629-d5ec-6539cc66ee70', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f93b848-64c9-2ae1-2c1f-6539cc7b3ecd', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('808db909-bb96-527a-e143-6539cc6b09ca', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81179324-4ea6-7a25-b49b-6539cc607174', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('81b35508-241a-c059-b98a-6539cc3255f6', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82168f1b-413a-6ba2-84ed-6539cc1d8d43', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82d22a12-39a1-e744-929d-6539cc38f28c', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('833d5344-257e-8528-2055-6539ccf54c46', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83d8b328-7941-60cd-a702-6539cca53224', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('843cd0fd-ddd0-e5b1-ad05-6539ccdaadb9', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84cd3dd1-3475-710b-c209-6539cc470fb8', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85369fdb-cb6b-4d2d-14b6-6539cc00dc7b', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('85bf389a-0bab-653e-64d5-6539ccda3af9', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86385b9f-9083-c63b-16fd-6539cc893694', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86c0df64-74f2-fab1-746d-6539cce5c07b', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8792fa11-be89-363b-7cee-6539cc6afacf', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('882fa292-a504-0d73-c0a1-6539ccb01af2', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88ee34cd-aaef-6530-4edb-6539ccc2be2b', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('897c18ea-691f-c832-ca3b-6539cc44f861', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a90ae9c-a3a3-9e5e-deee-6539cc9d2f65', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b7024ac-e9df-28d0-f74f-6539ccd6b433', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c048340-b71b-ec9d-4a79-6539cc1e9710', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ca524ae-5e0b-bbc0-d027-6539cc1a61cf', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('8ca7030b-7ae1-f427-2817-6539cccca2d5', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d1430b0-ff26-6dc4-65d4-6539cc704705', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('8d9eb2e3-fea8-d5db-faf3-6539cca27dcc', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('8e261984-ba99-cce4-f1d1-6539cc6b560a', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('8ee1aa7e-90c6-7073-73db-6539cc1e1e4c', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('8f772b6d-8984-1554-665d-6539cc6d1263', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('900e277a-f5c9-80b6-2596-6539ccc7a4a3', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('909d80fa-1e1d-5a52-02dc-6539ccc6cdd2', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('9114cddf-1c18-b277-5eb8-6539cc8edc4b', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('920421ba-f7fb-060e-40e4-6539cc688257', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9292d328-aac1-61b4-947d-6539cc86f24f', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93079b1d-9154-9c5a-aaaf-6539cc93a002', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('937d069f-1ed8-b40b-b463-6539cc0e794e', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93918b1b-caa0-ef71-c0ec-6539cc55f04e', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('9468e995-b47d-93b5-a2a4-6539cc697a3f', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94d153bf-f983-092d-62b6-6539ccb6e4eb', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95592df8-1931-0c91-f96b-6539cc14018e', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95d86827-0d11-c9aa-585c-6539cc781715', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('96b2d135-af60-df96-9b52-6539ccb41965', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('973bf367-a7e4-18d8-38ed-6539cc766232', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97bb94ac-147d-9f0e-5b07-6539ccdd2633', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98ceebe4-af30-3873-2c14-6539ccfa35db', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9969da17-dff5-4515-71ac-6539cc6463d6', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99da1c2d-0f1b-b655-84bd-6539cc5e74b6', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a9a82c8-6d7e-7784-220d-6539ccb0fdbb', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b249a98-2b11-f295-09ab-6539cca8b40f', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b876a42-188c-07cd-3b6c-6539cc6b7c90', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c8d581d-e639-8015-90c2-6539ccfddae8', 'securitygroups_outboundemailaccounts', 'SecurityGroups', 'securitygroups', 'id', 'OutboundEmailAccounts', 'outbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'OutboundEmailAccounts', 0, 0),
('9d2e15c2-7aef-1260-9f8e-6539ccea405f', 'outbound_email_owner_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9da7ee06-5cb0-9ec0-e8a8-6539cc1ea6e2', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e4649e2-21f4-7879-2224-6539cc97d2fb', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9eb39386-2dd4-f79b-5a1b-6539ccbba38d', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f88973c-ca82-4118-1d12-6539cc4a65c6', 'externaloauthconnection_modified_user', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f8e6852-74d4-a99e-2443-6539cc48e92a', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a016b8b9-0f13-4d87-1d7c-6539ccbecf7d', 'externaloauthconnection_created_by', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0440ead-5bf6-f7ac-3141-6539cce72df2', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0bb1288-b949-71e5-7ba2-6539cc647aa7', 'securitygroups_externaloauthconnection', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthConnection', 0, 0),
('a0d64ba1-ac9b-e974-4ef5-6539cc2677f6', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1541ab4-01a4-ed2d-4305-6539cca33ea3', 'external_oauth_connections_external_oauth_providers', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'external_oauth_provider_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a174b326-81d8-b685-fe81-6539cca194e9', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('a2404b8f-814b-b3f4-6338-6539cc63a698', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('a2475dc1-ab8b-4e98-da4c-6539cc29a60f', 'externaloauthprovider_modified_user', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2c0c31c-f11f-42f1-bd82-6539cc410985', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a2e12d2f-d64c-3fe4-7efe-6539cc72db26', 'externaloauthprovider_created_by', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a34b219a-86be-64b4-1217-6539ccce0eb5', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a35ee153-dfc8-22cc-837a-6539ccb31cbe', 'securitygroups_externaloauthprovider', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthProvider', 0, 0),
('a3e5a9fe-60a3-204b-607c-6539cca25930', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('a425b42c-71a6-5577-e4f8-6539cc48b604', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a44ded71-e5ac-34f1-42e2-6539cc47b804', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('a4bbb519-fdd4-c98e-a5c6-6539cca4e401', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4e421b9-39fc-ebaf-c61c-6539cca0432c', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('a558b094-5ace-edf4-7d34-6539ccc51d57', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('a5957423-ca62-f727-490b-6539cc1cc071', 'oauth2tokens_modified_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('a5e190af-1589-3668-c24b-6539ccbb2401', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('a637d919-3497-bcce-3024-6539cc0b0431', 'oauth2tokens_created_by', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a65749be-a9d7-2f21-6241-6539cc1ec743', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('a6d624b8-dbb1-3579-0e6f-6539cc32ec11', 'oauth2tokens_assigned_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a77d2d63-f172-b221-7813-6539cc072b16', 'oauth2clients_modified_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7971c52-78de-3d4f-9ec2-6539ccfba716', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a80ca748-6bfb-e86f-10c7-6539cc34fe38', 'oauth2clients_created_by', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a827649a-4bf0-8fec-c937-6539cce2177e', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8b6cecf-040d-8302-aa47-6539cce955f6', 'oauth2clients_oauth2tokens', 'OAuth2Clients', 'oauth2clients', 'id', 'OAuth2Tokens', 'oauth2tokens', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8c0ba43-9d45-4715-2d58-6539cc56702b', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9271d89-23ca-a719-ce0b-6539cc74b3ae', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('a94b3340-2ee2-bbdb-fd3e-6539ccf30a85', 'oauth2clients_assigned_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9b722c7-1d8c-e82d-bc92-6539cc29ee15', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('aa302137-5b79-58aa-21ea-6539cc511a4d', 'surveyresponses_modified_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa533856-ba91-c230-ef8f-6539cc499016', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('aabd0e56-6bb7-a58d-fc20-6539cc512182', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aac2a67c-0a6d-3d65-b1cc-6539cc270050', 'surveyresponses_created_by', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aadceced-41e6-7717-9273-6539ccb3d8a6', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('ab39ab84-c470-26eb-99c5-6539ccf40f59', 'surveyresponses_assigned_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab597f9d-5f0a-6159-2d3e-6539cca8a8e0', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('abc949f1-495d-91c5-aa71-6539cc93c81a', 'securitygroups_surveyresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyResponses', 'surveyresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyResponses', 0, 0),
('abe162ba-8e6c-df42-ca99-6539cc194e29', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('ac3f3274-3b7f-8e87-4e48-6539cc7551d9', 'surveyresponses_surveyquestionresponses', 'SurveyResponses', 'surveyresponses', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyresponse_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac5fd8e2-21e5-d18c-3a03-6539cc2a72f2', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad15f51c-f4bf-bc9e-6c52-6539cc44bfb7', 'surveys_modified_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad77767c-511e-64d8-080e-6539cc68ca2b', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ada622ab-83be-f6d2-006c-6539ccbf7f8b', 'surveys_created_by', 'Users', 'users', 'id', 'Surveys', 'surveys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae02d3f5-47e6-fbc0-da50-6539cc82116f', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae20c863-cc32-c475-8d90-6539cc139995', 'surveys_assigned_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae9ece2a-0c02-76a8-de76-6539cce4be91', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aeb208f8-4c9d-4304-fd90-6539cc6a71e8', 'securitygroups_surveys', 'SecurityGroups', 'securitygroups', 'id', 'Surveys', 'surveys', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Surveys', 0, 0),
('af02f291-3698-20fb-5034-6539cc1b409d', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('af273d62-4b34-0f20-4400-6539cc4ae52f', 'surveys_surveyquestions', 'Surveys', 'surveys', 'id', 'SurveyQuestions', 'surveyquestions', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af8c84e9-e594-41de-665a-6539cce5c07a', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('afb6a814-7e8b-ca1a-7b49-6539cc701152', 'surveys_surveyresponses', 'Surveys', 'surveys', 'id', 'SurveyResponses', 'surveyresponses', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b001ead7-20ce-e743-576b-6539cc0f2509', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('b03560a4-6b17-b780-cb34-6539cc7446d1', 'surveys_campaigns', 'Surveys', 'surveys', 'id', 'Campaigns', 'campaigns', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b08c4d39-e8ea-835e-e6c8-6539cc541041', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('b104201f-41bd-103e-6117-6539ccb872d3', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('b140a3fa-5579-e0dc-edf9-6539cc82097d', 'surveyquestionresponses_modified_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b18cf891-6502-76e9-535d-6539cc05de86', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('b1c05113-24f4-8201-775d-6539cc591926', 'surveyquestionresponses_created_by', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b22fefb0-f818-d2d3-020d-6539cc6a3d8a', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b27026ab-8c31-633f-d45f-6539cc9ea0a7', 'surveyquestionresponses_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2b94b87-5083-e5c6-acef-6539cce36911', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b30281cf-1a08-f4b9-b2f7-6539cc9a159f', 'securitygroups_surveyquestionresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionResponses', 0, 0),
('b34ece36-eb9b-1a50-62f2-6539cc286405', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b379000d-f1d2-1b93-c2aa-6539cc777a9a', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('b3de7587-0649-fe19-351f-6539cc59250d', 'users_users_password_link', 'Users', 'users', 'id', NULL, 'users_signatures', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3e123a9-724d-0ea9-2df2-6539cc4cc24e', 'surveyquestions_modified_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b476e5a6-d317-97c7-bec7-6539ccc86873', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('b47bd523-f17e-bebb-f114-6539ccc8d3b6', 'surveyquestions_created_by', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4de2070-21d0-e4d7-1326-6539ccd6e258', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('b4ea7f81-e67d-f5d5-8186-6539ccda9e15', 'surveyquestions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b579d80d-c5c8-8815-f99e-6539cc228bb4', 'securitygroups_surveyquestions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestions', 'surveyquestions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestions', 0, 0),
('b599e469-6c5a-ed4e-41ad-6539ccf1661d', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b5f83d87-41aa-b815-11e4-6539cc9a0ba1', 'surveyquestions_surveyquestionoptions', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'survey_question_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b60cc480-2875-13c9-2476-6539cc9934f4', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b687cec9-df10-8a09-4fdb-6539cc713d7c', 'surveyquestions_surveyquestionresponses', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyquestion_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b69fb7fb-44d4-8097-f0aa-6539cc347586', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b711ee47-8115-530b-abc5-6539cc878277', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b740be7c-1c1e-048e-6614-6539cc59dd6c', 'surveyquestionoptions_modified_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b79a14ae-c2f3-a6a6-069d-6539ccf0e84b', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7b4ffa7-824b-cd28-48de-6539cc60a1fa', 'surveyquestionoptions_created_by', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8495f98-bd78-4c8e-dd84-6539cc0a2f0b', 'surveyquestionoptions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b87c36ca-4bcd-de0a-4837-6539cc030667', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('b8e624a6-89e7-b2cd-929e-6539cc107527', 'securitygroups_surveyquestionoptions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionOptions', 0, 0),
('b8e7301b-fda0-c0ba-7eac-6539cc8bdae9', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('b9731b96-7f96-4b5c-bfc1-6539cc3698d8', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('ba1396e4-273f-82d0-8e8c-6539cc9580fb', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('ba28c490-95e8-eaa6-1b01-6539cc9af64b', 'ddc_dc_modified_user', 'Users', 'users', 'id', 'DDC_DC', 'ddc_dc', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba9b9b93-af79-417f-88ee-6539ccb1e7c6', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('babd796c-a977-dcf5-c144-6539cc566521', 'ddc_dc_created_by', 'Users', 'users', 'id', 'DDC_DC', 'ddc_dc', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb184116-03b9-d57e-be50-6539ccc05dcf', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('bb5c4848-b790-04ac-d94a-6539ccceea52', 'ddc_dc_assigned_user', 'Users', 'users', 'id', 'DDC_DC', 'ddc_dc', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bba0aa43-9ab0-cc53-5134-6539ccf14997', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bbcec14b-bea1-92aa-54d4-6539cc12e40c', 'securitygroups_ddc_dc', 'SecurityGroups', 'securitygroups', 'id', 'DDC_DC', 'ddc_dc', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'DDC_DC', 0, 0),
('bc1ec706-faaf-62a9-4872-6539ccaa0e48', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bcadc93f-044b-40d6-6c1a-6539cc4bb82e', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bcbf4c48-f8ab-39cd-533c-6539ccd8e630', 'abcd_appointments_modified_user', 'Users', 'users', 'id', 'abcd_Appointments', 'abcd_appointments', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd45fd00-a10f-5108-1e53-6539cc056bec', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd560683-ad8b-cce7-ab10-6539ccc19ca4', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('bd982fd3-5101-9dd8-0e07-6539cc18217d', 'abcd_appointments_created_by', 'Users', 'users', 'id', 'abcd_Appointments', 'abcd_appointments', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be0de6b9-46b7-418e-2513-6539ccd2f3a0', 'abcd_appointments_assigned_user', 'Users', 'users', 'id', 'abcd_Appointments', 'abcd_appointments', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be348154-2c18-1990-dd6c-6539cc11cd28', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('be98075d-71c7-abe3-89e3-6539ccb9dff5', 'securitygroups_abcd_appointments', 'SecurityGroups', 'securitygroups', 'id', 'abcd_Appointments', 'abcd_appointments', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'abcd_Appointments', 0, 0),
('be9d569c-d59b-3e4c-dd93-6539cc4cc1f9', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('bf2cd42e-34d1-e942-016c-6539cca6a45c', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('bfa190c9-f1d0-2b25-1501-6539cc468ecd', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('bfad3f80-67b3-4eb1-0b46-6539cc3b7eff', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c02bc51b-5f61-05b7-6723-6539cc576fd4', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('c03c6f7a-fb23-9785-d617-6539cc6d939a', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c0a36292-4d42-1634-a324-6539cc161bae', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('c0d71580-bc05-07a6-1d95-6539ccd1fcf7', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('c12cce19-bd11-8a0c-d04f-6539cc284189', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1801f33-546c-f0af-a658-6539cc40fd17', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c1d48688-3627-ab52-c505-6539cc1f2f0f', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1ef0906-7afb-87a8-5bdb-6539cc6c6ddb', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c25eb14b-abb4-b15a-b754-6539cc44fba0', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c28119bf-2ccb-a86d-265d-6539cc89d9b5', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('c315f4be-47bd-8320-0039-6539cc0fb849', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c333a520-4efc-30e5-448d-6539ccef4b01', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3710ef6-cbee-a341-d5d9-6539ccf06011', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c37ebdaf-03cf-d8f4-85db-6539cc6333da', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c3a3f880-1222-9d7b-a1be-6539cccc584f', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c40917b2-2588-64b0-344a-6539cc619752', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('c42f9e3d-1afa-b27c-7751-6539cc86a1a2', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c48be7a0-cc27-5f90-3ee2-6539cc1db9cb', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c4a9a8c5-433e-cfe3-a906-6539ccf26da7', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('c522f815-c4e3-04ac-7de2-6539cc786790', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('c533aedc-2b66-f163-0428-6539ccf5fb27', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5975d77-5f05-bf28-ff4b-6539ccf9bd07', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('c5ab0613-d7fd-09c2-142c-6539cc15e129', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c63282f3-5215-478e-7ad1-6539cc9a4fd0', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('c6a03121-6ba2-cf0d-6c06-6539cc6f528f', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('c7202c7b-49cc-97e0-c840-6539cc5763be', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c72d85e7-aaae-75e1-a4cb-6539cc181cc3', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('c7b65f34-7a7a-47af-5016-6539ccde8e17', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7d0d5e6-0f20-465a-9ffd-6539cc62291c', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('c84e400b-1982-8591-aa47-6539cc42f840', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c85f23e8-c345-aada-7bca-6539cc68234b', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('c8c72c9e-c99c-2bb7-f674-6539cc2a790f', 'campaign_notes', 'Campaigns', 'campaigns', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Campaigns', 0, 0),
('c8fa36a7-5ac2-f381-0cc3-6539ccb099ec', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('c957ad02-4437-9601-aaa5-6539cc433232', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c96899eb-7621-f17f-3523-6539ccb69266', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c9f7d500-00a7-b10c-dcb1-6539cc6513c2', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9f7efa3-3115-ad69-6e5e-6539ccd1fde9', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('ca6d58ca-682a-6e3b-0b64-6539cc6aad19', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('caa1b6eb-c4e8-69d3-0338-6539cc166a83', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb04a8b1-c62b-f880-2455-6539ccca55a1', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('cb35d577-2911-f4e4-e009-6539cc6df81c', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb73bc84-7a05-7be2-4700-6539cc3c1a5e', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('cbb14876-2425-e4be-c008-6539cc3bfc1c', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cc037779-e43f-9ac3-b52c-6539ccacfe4d', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('cc490fe7-02a0-cc76-63bd-6539ccc3b8d0', 'surveyresponses_campaigns', 'Campaigns', 'campaigns', 'id', 'SurveyResponses', 'surveyresponses', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cc821959-3510-e179-fd02-6539cca990b3', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('cd10767a-978d-ae5a-19aa-6539cc9b12a2', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('cd17945f-a925-de20-2665-6539ccd49e31', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'ProspectLists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd86cd9e-8c57-7eca-c94a-6539cc7281d5', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('cd8cbfb5-8b81-fa20-df1d-6539ccc2c6b1', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('ce18c505-7027-2bb9-24d7-6539cc76819d', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('ce981217-9041-aec9-abb6-6539cc676aef', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ceb45627-7932-37aa-6b15-6539cc9c08fb', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('cf24276e-7d92-e952-7fdb-6539cc9244f8', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf49c247-18f1-5f98-f363-6539cc42e68d', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('cfa0487c-c84f-aeae-0149-6539cc22373a', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cfdb42ca-4bbc-3c99-ece4-6539ccdcf0fc', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('d0299d0d-2ab5-dddd-e778-6539cc88366b', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('d0567ba0-df41-3305-22df-6539ccb29814', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('d0a750aa-dd73-40a7-ba3a-6539cc423905', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('d0e52862-2396-a7bf-e2df-6539cccce100', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('d1337b9b-f251-011b-9f53-6539cca033dc', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('d1642d06-a1fb-3347-a44f-6539cccc86a2', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('d1d0df25-b586-5325-c154-6539ccf9d014', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d2624858-4ca1-6433-4986-6539cc5efbbc', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d2db7d9b-a44e-310c-1958-6539cc6e9abb', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('d2fcff9d-5bc8-fda7-1cf5-6539cc441abe', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d36a2234-e7ca-80b1-59f7-6539cce04f95', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d37116df-479d-2c8a-9241-6539ccb103dc', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('d3f6f278-c930-d8da-899f-6539ccfa4796', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d40d8110-eb83-52c9-856f-6539ccc1dc71', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('d47643ea-9233-5c3a-015f-6539cc9d280c', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('d4a33a00-625d-b07b-4bb9-6539ccab8d70', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('d53f62dd-462f-b1ab-1227-6539ccf7dc0b', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('d56bca7a-a231-155e-a6b1-6539cc401414', 'securitygroups_emailmarketing', 'SecurityGroups', 'securitygroups', 'id', 'EmailMarketing', 'email_marketing', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailMarketing', 0, 0),
('d5fb5b67-36dc-598c-17b2-6539ccc3b909', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d68f49fd-5b1a-54a6-349b-6539cc23bcfd', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6b290f3-ca62-78e2-4c16-6539cc514915', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('d7456f3f-49f4-cead-9c9d-6539cc0142fa', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('d807aab7-b64f-16f5-c282-6539ccca4f3c', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('d83e2316-9c60-f828-75d6-6539ccbb593e', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('d89630e1-522b-ea8b-ea5f-6539cca598f9', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('d8c894b1-5e22-ef1d-940f-6539ccefa1c9', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d914861c-e2b5-a22a-2707-6539ccf81975', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('d96a5d36-b3b2-1f76-b27b-6539ccdad55c', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9aa419b-4f3d-4046-e201-6539cc869569', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('d9ff5b65-f625-1ac3-c6c1-6539cc2cc660', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da26bad0-e50f-07ab-b79a-6539ccfbbe03', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('dab735f0-ea3c-9482-a66a-6539cc4f2c9c', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('db32fcfd-0e2c-e043-186d-6539cc4b7d34', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('db4ab183-0899-5bf9-b751-6539cca6d529', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbc39888-75d3-62f5-d115-6539ccada5cf', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('dbda13fd-5e05-a768-8c23-6539ccef00ae', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc412441-4a38-9bd3-08fd-6539ccf587d4', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('dc59b628-a968-9bb4-09d4-6539cc841eb3', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dcd0152a-2d4a-c546-38c0-6539cc3753ee', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('dce26d77-5d16-6736-7f58-6539cc62b24d', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('dd4d3e9b-37d0-a0d3-6e90-6539cc1e9075', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('dd83634a-8a24-9048-0e5f-6539cc6d86a7', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('ddee6254-eb03-42cf-a1a9-6539ccbb0357', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('de1b7940-be70-c7df-21b3-6539cc3ebc9b', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('de7d0ef7-ed79-40d4-d576-6539cc4198bd', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dec33d12-97c3-009c-f2bf-6539cca1860b', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('def5be2b-5c39-5eff-b1ab-6539cc4938e5', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df2e9d07-764f-d86d-e1ad-6539cc9bd78b', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('df400e18-43de-9540-9208-6539cce32a74', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df8349cf-5b49-0a0d-9988-6539cc97b202', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dfbeafed-e212-a77d-e253-6539cc5758b3', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('e00238e7-4928-12fc-ea15-6539cc720da7', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e03bf7fa-fc3c-5399-3a5f-6539cc54202d', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('e08f2a33-8193-0f09-de13-6539cc83ab96', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('e0ca1d1b-0e44-17cd-68c8-6539cca722f0', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('e10e7bd6-3bc8-ad88-32d9-6539cc1f65aa', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('e16687f5-dcc8-fc1e-6935-6539ccbe1e3f', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('e19e68c2-a6fc-b815-b949-6539cc64df74', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('e1f0d6aa-397c-1360-f27a-6539cc414573', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('e2153c10-7f42-e8e8-d4b1-6539cc8c1bf8', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2971bb1-5717-77b7-e43d-6539cc3d8f13', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('e2df78a0-2b5a-a92b-f0ab-6539ccf886c9', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e30a2d6f-c073-782f-55ac-6539ccd7751d', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('e38c4ecd-802b-b4b0-6e5f-6539cc0c8514', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e399d322-999a-d8d8-69fb-6539cc12cff0', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('e3f6ea02-d9cc-a40f-edb0-6539cc425fa1', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e45b6b4b-ec7a-cd02-2213-6539cc9185bf', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('e4feac30-324d-484a-4432-6539ccd0dc18', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('e55e0d86-5127-8e53-5c31-6539cc8da30c', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e5931119-2036-92dc-4eda-6539cc8d4695', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('e5eb198a-4b3d-dbea-fc6e-6539cc07a132', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e5fe8c44-ab99-2703-8d38-6539cca0e40a', 'surveyquestionoptions_surveyquestionresponses', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'surveyquestionoptions_surveyquestionresponses', 'surveyq72c7options_ida', 'surveyq10d4sponses_idb', 'many-to-many', NULL, NULL, 0, 0),
('e68c99c8-a6fb-463e-7536-6539cc26b7c3', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6f82bc6-4e2a-36df-4bda-6539cc0463b6', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('e780e4e2-01f2-1fa5-87c5-6539cc226d70', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('e80494bf-93bc-0c46-1047-6539ccef48cd', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('e88ec020-d586-c614-c052-6539cc0dc58d', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e90b05cf-d83a-ff53-7291-6539cc329dd9', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9941d70-66b2-0242-7662-6539cc133520', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ea307fbd-aee0-9a5a-7424-6539cce75f23', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ea94563d-91e0-45f2-dc6b-6539cc8c5ea8', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('eac20266-ff8f-58d7-37db-6539cccb9649', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb628cae-8912-51f6-4351-6539cc9923bc', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ebd98d95-1d6f-fb78-cb23-6539cc28b7d5', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ec62fc75-e933-f124-3f71-6539cc21918f', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ecd96b6e-b589-c763-666f-6539cce64ff5', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('ed63fb6f-f6bc-9fd6-014e-6539cc95d56f', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('edd9cdf5-9b90-c514-0ce4-6539cc485fe7', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee6405a2-13fe-3708-814b-6539ccef0455', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef9ea8d4-4e96-8418-0b48-6539cc42e5f7', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f032991f-e3aa-9f6d-370a-6539cc69cef8', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('f0966e84-7f6f-b6ba-3fd1-6539cc0d62e6', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f11edfd3-ba4d-d9c5-3f9f-6539cc125818', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('f19c1155-7606-7a51-2248-6539ccfed6dc', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f226360d-3fac-71d1-70aa-6539ccb7e90c', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f2a207d3-1c8c-57f1-fecd-6539cc342c66', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f37123ed-76fb-2c1b-64e9-6539ccdf93b1', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f40bb206-fbd2-d6f6-427a-6539cc94d8a5', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f4710201-9beb-ddb0-d074-6539cca80e86', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fceb03f5-c3e0-50a0-79b6-6539cc363a3b', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `list_order` int DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `timer_email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_event_module` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_event_module_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_willexecute` int DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reminder_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `related_invitee_module` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_invitee_module_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `modules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `module_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `search_module` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('3d0a1b19-f48a-9301-e95e-643d4238ddf5', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 19:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('3f94dd77-b69b-3418-1368-643d42637b39', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 11:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('439472f1-7fab-ce70-5bfd-643d421dc771', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 08:00:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('460167c1-3470-353b-e48c-643d42d16b26', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 19:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('48c06264-9f76-3921-67d0-643d42271a28', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 06:30:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('4b00ab47-d668-d996-9bd1-643d4227b417', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 16:45:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('4db32d14-1b23-7e23-40dd-643d4218c68c', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 19:15:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('50743101-0e44-d93b-23fd-643d42f859b1', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 10:45:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('533c82bb-ee4c-f481-9fc5-643d4275c5c0', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 17:45:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('55f64fde-bb26-f86d-4fb0-643d4236a536', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 19:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('59d337a0-5c45-a556-3669-643d42011b1a', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 06:00:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('5cd574cc-40f5-15c7-d223-643d42dc39ff', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 08:00:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('5fb28e17-e12b-742d-16bc-643d4295bddb', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 18:45:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('629d926b-477f-8e61-58b5-643d42b26e98', 0, '2023-04-17 12:56:42', '2023-04-17 12:56:42', '1', '1', 'Google Calendar Sync', 'function::syncGoogleCalendar', '2015-01-01 10:00:01', NULL, '*/15::*::*::*::*', NULL, NULL, NULL, 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `securitygroups`
--

INSERT INTO `securitygroups` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `noninheritable`) VALUES
('e70605ec-b56d-80d8-8d67-64e3ef7bda05', 'OHS', '2023-08-21 23:14:44', '2023-08-21 23:14:44', '1', '1', '', 0, '97240576-184d-be72-21f0-64e3efe77262', 1);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `securitygroup_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `securitygroup_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `securitygroup_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `record_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `related_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('28ad3b4c-f623-6c61-5535-6539ae494a6c', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:2639d382-157a-2f45-2e92-6539ae484d11:Jackson Townsend]', '2023-10-26 00:09:36', '2023-10-26 00:09:36', '1', '1', NULL, 0, NULL, 'Contacts', '2639d382-157a-2f45-2e92-6539ae484d11', NULL, NULL),
('29f35502-1d36-54ce-dfee-653acaea313d', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:242e96a7-673a-2ffd-7121-653acafeb183:Arnold Strong]', '2023-10-26 20:22:15', '2023-10-26 20:22:15', '1', '1', NULL, 0, NULL, 'Contacts', '242e96a7-673a-2ffd-7121-653acafeb183', NULL, NULL),
('3a4db4ee-3e9d-f259-5a52-65386a693e47', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:349090df-c2c1-f32a-957d-65386a9cd9e4:Jason Bourne]', '2023-10-25 01:07:31', '2023-10-25 01:07:31', '1', '1', NULL, 0, NULL, 'Contacts', '349090df-c2c1-f32a-957d-65386a9cd9e4', NULL, NULL),
('3c1c2df1-5462-7199-29f3-6539bb14ded4', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:314d1f16-5088-f40b-4afb-6539bb93b5f5:Thomas Hill]', '2023-10-26 01:06:09', '2023-10-26 01:06:09', '1', '1', NULL, 0, NULL, 'Contacts', '314d1f16-5088-f40b-4afb-6539bb93b5f5', NULL, NULL),
('4cab7998-c68b-e403-cf1d-6539b4c5f846', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:239c7969-a3c1-c8e8-ace2-6539b47077b5:Jennfier Strong]', '2023-10-26 00:37:16', '2023-10-26 00:37:16', '1', '1', NULL, 0, NULL, 'Contacts', '239c7969-a3c1-c8e8-ace2-6539b47077b5', NULL, NULL),
('7af7827c-4f4e-d9b4-0f4d-6539c2bcce2a', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:78a1aca3-f372-885a-2077-6539c2e6e57e:Callum Plumfeet]', '2023-10-26 01:36:25', '2023-10-26 01:36:25', '1', '1', NULL, 0, NULL, 'Contacts', '78a1aca3-f372-885a-2077-6539c2e6e57e', NULL, NULL),
('7d8a790c-20c7-6250-1f84-6510fe7aed08', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:77761704-294c-81d6-aa2f-6510fe59503f:Karen Mackenzie]', '2023-09-25 03:27:22', '2023-09-25 03:27:22', '1', '1', NULL, 0, NULL, 'Contacts', '77761704-294c-81d6-aa2f-6510fe59503f', NULL, NULL),
('85c0453c-2d37-89af-1027-653ae0b961ba', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:8342952e-ed80-5162-0755-653ae0a31a63:Bella Thorpe]', '2023-10-26 21:55:54', '2023-10-26 21:55:54', '1', '1', NULL, 0, NULL, 'Contacts', '8342952e-ed80-5162-0755-653ae0a31a63', NULL, NULL),
('8c347a7f-a142-6994-7748-6539be72e689', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:7fe3e660-7de4-829d-d5c0-6539be1e3d44:Elle Doe]', '2023-10-26 01:20:37', '2023-10-26 01:20:37', '1', '1', NULL, 0, NULL, 'Contacts', '7fe3e660-7de4-829d-d5c0-6539be1e3d44', NULL, NULL),
('ac5ba766-0338-240f-ca91-6510faed5b2d', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:a9f60fbb-8c00-2444-61f0-6510fa2cc32c:Maxwell Homes]', '2023-09-25 03:13:44', '2023-09-25 03:13:44', '1', '1', NULL, 0, NULL, 'Contacts', 'a9f60fbb-8c00-2444-61f0-6510fa2cc32c', NULL, NULL),
('b3767b65-8ebc-490b-4262-64bda9fbc671', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:770380c5-b112-50b0-7b94-64bda96cb1c1:Janice Bing]', '2023-07-23 22:29:14', '2023-07-23 22:29:14', '1', '1', NULL, 0, NULL, 'Contacts', '770380c5-b112-50b0-7b94-64bda96cb1c1', NULL, NULL),
('ccb8ebd4-15af-7687-7b81-6539c76ce494', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:c37b17d0-edae-286d-52df-6539c73734ae:Thomas Smith]', '2023-10-26 01:59:04', '2023-10-26 01:59:04', '1', '1', NULL, 0, NULL, 'Contacts', 'c37b17d0-edae-286d-52df-6539c73734ae', NULL, NULL),
('d5b2ef66-0aeb-2c85-2703-64daa38d3b84', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:cc9c10dd-f28f-d0c3-8c53-64daa3dedb57:Jason Briggs]', '2023-08-14 21:58:40', '2023-08-14 21:58:40', '1', '1', NULL, 0, NULL, 'Contacts', 'cc9c10dd-f28f-d0c3-8c53-64daa3dedb57', NULL, NULL),
('d5ce2652-20be-430b-4f92-64deeda32190', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:d007cb7a-8dcc-b818-cfcc-64deede166b2:Grady Thompson]', '2023-08-18 04:01:14', '2023-08-18 04:01:14', '1', '1', NULL, 0, NULL, 'Contacts', 'd007cb7a-8dcc-b818-cfcc-64deede166b2', NULL, NULL),
('e33fc150-5296-acf7-89eb-64d9788387f1', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e0b309bd-ce42-16ea-076c-64d97855d9d3:John Doe]', '2023-08-14 00:43:20', '2023-08-14 00:43:20', '1', '1', NULL, 0, NULL, 'Contacts', 'e0b309bd-ce42-16ea-076c-64d97855d9d3', NULL, NULL),
('e832cb23-1f81-e2ba-3579-6539c56e1c0a', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e237bf21-eac2-bbe4-c6f9-6539c5a31c33:Michael Simpson]', '2023-10-26 01:50:51', '2023-10-26 01:50:51', '1', '1', NULL, 0, NULL, 'Contacts', 'e237bf21-eac2-bbe4-c6f9-6539c5a31c33', NULL, NULL),
('ea0d72bf-301b-59cd-d6d4-64daa74935f0', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e68e3342-16ab-7346-f650-64daa77e22f6:Janice Bing]', '2023-08-14 22:13:49', '2023-08-14 22:13:49', '1', '1', NULL, 0, NULL, 'Contacts', 'e68e3342-16ab-7346-f650-64daa77e22f6', NULL, NULL),
('ea600abd-257d-86b4-db2d-6510fafe8d28', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:f2b01b68-3c8c-55a5-1523-6510fa638dba:Jake Cannan]', '2023-09-25 03:10:50', '2023-09-25 03:10:50', '1', '1', NULL, 0, NULL, 'Contacts', 'f2b01b68-3c8c-55a5-1523-6510fa638dba', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions`
--

CREATE TABLE `surveyquestionoptions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `survey_question_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_audit`
--

CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses`
--

CREATE TABLE `surveyquestionresponses` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `surveyresponse_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses_audit`
--

CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions_audit`
--

CREATE TABLE `surveyquestions_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `happiness` int DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `campaign_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `survey_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses_audit`
--

CREATE TABLE `surveyresponses_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Submit',
  `satisfied_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Satisfied',
  `neither_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Dissatisfied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveys_audit`
--

CREATE TABLE `surveys_audit` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `after_value_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `before_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `after_value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `priority` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `grp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ord` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tooth_model`
--

CREATE TABLE `tooth_model` (
  `NHI` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tooth_model` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int NOT NULL,
  `monitor_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `session_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(16, '10423e2f-8f95-4d6f-4e7e-64752458b61c', '1', 'Meetings', 'a7642ecb-e771-6357-647d-643d4622b47a', 'fff', '2023-05-29 22:16:15', 'detailview', 'f0pq027j8mk1rr8b6scfpqf187', 1, 0),
(17, '43bf6f5b-303e-a4d9-0414-6475245940d6', '1', 'Meetings', '8b90c176-0050-f3db-af8c-643d468864f3', 'Client Meeting and handover', '2023-05-29 22:16:16', 'detailview', 'f0pq027j8mk1rr8b6scfpqf187', 1, 0),
(21, 'dd581769-d56e-243f-67f4-64bdab167fa9', '1', 'Meetings', 'c710054a-e76c-c095-20c7-64acf407272d', 'Nathan Peele', '2023-07-23 22:38:08', 'detailview', 'e2b64tjcrdbopd6md6v3n9e919', 1, 0),
(28, 'd05a8c23-ee08-64e5-35ba-64daa30ae3a6', '1', 'Contacts', 'e0b309bd-ce42-16ea-076c-64d97855d9d3', 'Mr. John Doe', '2023-08-14 21:57:11', 'detailview', '23fdl3elcrbrc7regnaiku9jrk', 1, 0),
(49, '10e883d2-e149-c213-c11a-64deebd4ce46', '1', 'Contacts', '770380c5-b112-50b0-7b94-64bda96cb1c1', 'Ms. Janice Bing', '2023-08-18 03:53:44', 'detailview', 'hvf4sjpdlq1s4tib8l8ru3prni', 1, 0),
(51, '8edcc262-5f07-2957-ec0e-64deeb272a78', '1', 'Contacts', 'cc9c10dd-f28f-d0c3-8c53-64daa3dedb57', 'Mr. Jason Briggs', '2023-08-18 03:54:19', 'detailview', 'hvf4sjpdlq1s4tib8l8ru3prni', 1, 0),
(65, '4ae3fb12-891b-3165-98aa-64e3fd061ddc', '1', 'Employees', 'ae27a67e-4c44-6d3a-152a-645855c19de0', 'John Smith', '2023-08-22 00:12:28', 'detailview', 'du5tok9ftabsb7j2d3kaf7ab14', 1, 0),
(69, '10b2dbbe-0f82-a8d5-1337-64e3fd401d7b', '1', 'ACLRoles', 'e3ea0d73-3f88-817a-1805-64e3fd0a979f', 'OHS', '2023-08-22 00:14:34', 'save', 'du5tok9ftabsb7j2d3kaf7ab14', 0, 0),
(72, 'a27cac76-ae31-0d1c-cf36-64e3fe721ea8', '1', 'ACLRoles', 'e3ea0d73-3f88-817a-1805-64e3fd0a979f', 'OHS', '2023-08-22 00:17:29', 'detailview', 'du5tok9ftabsb7j2d3kaf7ab14', 0, 0),
(77, 'c45c7f3c-cd83-250f-ff1a-64e6c5cebb98', '1', 'Employees', '1', 'Administrator', '2023-08-24 02:51:51', 'detailview', 'r7mvc9tfn7n38o4vp955m8dfjr', 1, 0),
(86, '77e01454-1747-db95-6783-64ed0e9871ee', '1', 'SecurityGroups', 'e70605ec-b56d-80d8-8d67-64e3ef7bda05', 'OHS', '2023-08-28 21:16:06', 'detailview', '55komjo220kn38a30gj67ilr2m', 1, 0),
(104, '32d841fb-9cc3-7332-28e7-64ed1b88235f', '1', 'ACLRoles', '96611c3f-0542-6304-6faa-64ed18d1687c', 'Support Staff', '2023-08-28 22:10:51', 'detailview', '7qc3pd9jt1tp5ulec83l2g8gbr', 0, 0),
(109, '6ce68b38-3056-15ce-54c2-64ed1da6a530', '1', 'ACLRoles', 'b131edd2-c2c8-679e-d576-64ed1ce97274', 'Support Staff', '2023-08-28 22:17:58', 'detailview', 'ght58ln2uflc2utrmgdhj85308', 1, 0),
(110, '6f4edeb5-61ee-63e0-1e58-64ed1dbdc9dc', '1', 'Users', '688e6d13-ec97-c120-f020-64ed1a561d37', 'James Applebee', '2023-08-28 22:20:02', 'detailview', 'ght58ln2uflc2utrmgdhj85308', 0, 0),
(111, 'f1661135-4f77-f0c2-68ff-64ed1d4eb524', '1', 'Users', 'a03dc2fb-1a10-36a5-a9e4-64ed1a531d5f', 'James Applebee', '2023-08-28 22:20:35', 'detailview', 'ght58ln2uflc2utrmgdhj85308', 0, 0),
(114, '1bb5e8cb-5201-0008-1845-64ed1e5efcae', '1', 'Users', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'James Applebee', '2023-08-28 22:24:36', 'detailview', 'ght58ln2uflc2utrmgdhj85308', 1, 0),
(117, '49e17f92-a475-5e93-0fac-6510e367b049', '1', 'Meetings', '34216acc-8b0a-ee16-a01c-64deeb171246', 'hxkuy', '2023-09-25 01:32:14', 'detailview', '1iq1l9l5p925u6gm0pbi5bhc0u', 1, 0),
(118, '27bf9872-77ce-39d5-1fb9-6510e33fd3d9', '1', 'Meetings', '6794bad1-b891-6c8d-954b-64dedf6ad3f4', 'new exam', '2023-09-25 01:32:17', 'detailview', '1iq1l9l5p925u6gm0pbi5bhc0u', 1, 0),
(119, 'cac92438-6a2c-1657-e7bf-6510e31a75f6', '1', 'Meetings', 'c828b850-06fe-419e-e1e1-64dabb21f6ab', 'Orthodontist', '2023-09-25 01:32:19', 'detailview', '1iq1l9l5p925u6gm0pbi5bhc0u', 1, 0),
(120, 'dbfca7b5-536e-7029-b796-6510e33e46cd', '1', 'Meetings', 'd5501c98-4747-f491-f7a1-64daa7062b41', 'Dental Exam', '2023-09-25 01:32:22', 'detailview', '1iq1l9l5p925u6gm0pbi5bhc0u', 1, 0),
(125, 'e7ff4f42-1197-15ea-79bc-6510e8dfb81d', '1', 'ACLRoles', '5987a9ad-7bde-c252-9e38-64e3f84d2a15', 'OHS', '2023-09-25 01:53:36', 'detailview', 'hnf3sbifu6dejic7b472v0qf2k', 1, 0),
(126, 'dd53ea1d-37b9-aba5-0a6d-6510e88f6ac9', 'ae27a67e-4c44-6d3a-152a-645855c19de0', 'Employees', 'ae27a67e-4c44-6d3a-152a-645855c19de0', 'John Smith', '2023-09-25 01:55:21', 'detailview', 'hpaojr0srip1dm9obm94omethl', 1, 0),
(127, 'a5670f75-1c9c-295f-18b0-6510e87b5e9a', '1', 'Employees', '97240576-184d-be72-21f0-64e3efe77262', 'Harry Watson', '2023-09-25 01:56:06', 'detailview', 'pit6as9sec7hidcds3ot7lhm7m', 1, 0),
(128, '65d954c2-6ebe-f35f-cab8-6510e8a3001e', '1', 'ACLRoles', 'a71c57e9-71c1-3a6a-d89c-64e3fc5216c5', 'DA', '2023-09-25 01:56:24', 'detailview', 'pit6as9sec7hidcds3ot7lhm7m', 1, 0),
(130, '1b7ccc1c-dac6-9b60-8a6b-6510fa6d650a', '1', 'Contacts', 'd007cb7a-8dcc-b818-cfcc-64deede166b2', 'Mr. Grady Thompson', '2023-09-25 03:11:07', 'detailview', 'pit6as9sec7hidcds3ot7lhm7m', 1, 0),
(134, '11f9e74c-ba16-7766-03e3-652cbab6f30a', '1', 'Contacts', '77761704-294c-81d6-aa2f-6510fe59503f', 'Mrs. Karen Mackenzie', '2023-10-16 04:23:00', 'detailview', '4t5gjuvs351hgtl2cgef0mj4a5', 1, 0),
(136, 'ac29c453-72e9-5f12-c1a0-6539ac8397fb', '1', 'Contacts', '349090df-c2c1-f32a-957d-65386a9cd9e4', 'Mr. Jason Bourne', '2023-10-26 00:03:05', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 1, 0),
(137, '3f14597d-6048-587d-1f0b-6539adbf176a', '1', 'Contacts', 'a9f60fbb-8c00-2444-61f0-6510fa2cc32c', 'Mr. Maxwell Homes', '2023-10-26 00:07:02', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 0, 0),
(138, '5dad3515-b4a3-1a37-4c1f-6539ad0ab032', '1', 'Contacts', 'f2b01b68-3c8c-55a5-1523-6510fa638dba', 'Mr. Jake Cannan', '2023-10-26 00:07:12', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 1, 0),
(139, '9e1e64cc-558d-0a5f-7fda-6539ad51acbd', '1', 'Contacts', 'e68e3342-16ab-7346-f650-64daa77e22f6', 'Janice Bing', '2023-10-26 00:07:40', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 0, 0),
(140, '66aca72b-4b0f-64de-38c6-6539ae719409', '1', 'Contacts', '2639d382-157a-2f45-2e92-6539ae484d11', 'Mr. Jackson Townsend', '2023-10-26 00:09:36', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 1, 0),
(141, 'ad2a2d6a-9abb-d9fc-f7db-6539b42f4f0b', '1', 'Contacts', '239c7969-a3c1-c8e8-ace2-6539b47077b5', 'Ms. Jennfier Strong', '2023-10-26 00:37:16', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 1, 0),
(142, '716bfdeb-3365-b10d-eb33-6539bb7c972c', '1', 'Contacts', '314d1f16-5088-f40b-4afb-6539bb93b5f5', 'Mr. Thomas Hill', '2023-10-26 01:06:09', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 1, 0),
(143, 'c0f8f0e5-dd6b-7339-ff61-6539be320934', '1', 'Contacts', '7fe3e660-7de4-829d-d5c0-6539be1e3d44', 'Mrs. Elle Doe', '2023-10-26 01:20:37', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 1, 0),
(144, 'b14533a7-2e46-270e-d0ad-6539c2d3b90f', '1', 'Contacts', '78a1aca3-f372-885a-2077-6539c2e6e57e', 'Mr. Callum Plumfeet', '2023-10-26 01:36:25', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 1, 0),
(145, '28fd3d7f-b712-38bd-6e05-6539c5c11b70', '1', 'Contacts', 'e237bf21-eac2-bbe4-c6f9-6539c5a31c33', 'Mr. Michael Simpson', '2023-10-26 01:50:52', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 1, 0),
(146, 'c5b80785-3d26-3b45-0212-6539c7363cb1', '1', 'Contacts', 'c37b17d0-edae-286d-52df-6539c73734ae', 'Mr. Thomas Smith', '2023-10-26 01:59:05', 'detailview', 'dahqe87p76grahgfdhneqdcb5v', 1, 0),
(148, 'bb00ac83-bd1f-c76c-5a05-6539cc9e61e5', '1', 'DDC_DC', '6bac18fa-55e7-0909-c541-6510e2a5cf3d', 'Chart', '2023-10-26 02:20:17', 'editview', 'mbgg1s8u8vcokltss5hssqgc93', 0, 0),
(149, '9ed60a75-878d-5d44-6b56-6539cd507f7f', '1', 'DDC_DC', '67d4c569-89a8-fe35-d9ee-6539cd228a3f', 'Dental Chart', '2023-10-26 02:20:58', 'detailview', 'mbgg1s8u8vcokltss5hssqgc93', 1, 0),
(150, '60707256-1197-3027-fd86-653aca710112', '1', 'Contacts', '242e96a7-673a-2ffd-7121-653acafeb183', 'Mr. Arnold Strong', '2023-10-26 20:22:15', 'detailview', 'dgq2unbco5dk1khle1hcvsagts', 1, 0),
(151, 'bb12ea40-d121-5807-a137-653ae0636bf7', '1', 'Contacts', '8342952e-ed80-5162-0755-653ae0a31a63', 'Mrs. Bella Thorpe', '2023-10-26 21:55:54', 'detailview', 'dgq2unbco5dk1khle1hcvsagts', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `md5sum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `version` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `manifest` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('6f93f209-8591-3817-4bc6-64503214ae11', 'upload/upgrades/module/TestOne2023_05_01_234136.zip', 'c63fd3dfde65b6d0a435dfa5e3291b2c', 'module', 'installed', '1682977295', 'TestOne', '', 'TestOne', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NDoiYWJjZCI7czo2OiJhdXRob3IiO3M6NToiYWRtaW4iO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czo3OiJUZXN0T25lIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyMy0wNS0wMSAyMTo0MTozNCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE2ODI5NzcyOTU7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjc6IlRlc3RPbmUiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTc6ImFiY2RfQXBwb2ludG1lbnRzIjtzOjU6ImNsYXNzIjtzOjE3OiJhYmNkX0FwcG9pbnRtZW50cyI7czo0OiJwYXRoIjtzOjQ3OiJtb2R1bGVzL2FiY2RfQXBwb2ludG1lbnRzL2FiY2RfQXBwb2ludG1lbnRzLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2FiY2RfQXBwb2ludG1lbnRzIjtzOjI6InRvIjtzOjI1OiJtb2R1bGVzL2FiY2RfQXBwb2ludG1lbnRzIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2023-05-01 21:41:34', 1),
('83a4cadc-b960-90d9-b43f-6510df58c097', 'upload/upgrades/module/Charts2023_09_25_011822.zip', '810fa1a9c127bb3a29dced7a3b6f677d', 'module', 'installed', '1695604702', 'Charts', '', 'Charts', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiRERDIjtzOjY6ImF1dGhvciI7czo1OiJhZG1pbiI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjY6IkNoYXJ0cyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMjMtMDktMjUgMDE6MTg6MjEiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNjk1NjA0NzAyO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czo2OiJDaGFydHMiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6NjoiRERDX0RDIjtzOjU6ImNsYXNzIjtzOjY6IkREQ19EQyI7czo0OiJwYXRoIjtzOjI1OiJtb2R1bGVzL0REQ19EQy9ERENfREMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6Mzg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvRERDX0RDIjtzOjI6InRvIjtzOjE0OiJtb2R1bGVzL0REQ19EQyI7fX1zOjg6Imxhbmd1YWdlIjthOjE6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2023-09-25 01:18:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_home` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_work` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_other` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_fax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `messenger_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `messenger_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reports_to_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`, `factor_auth`, `factor_auth_interface`) VALUES
('1', 'admin', '$2y$10$JqlpxX3jNP.Ut10WkIIiUuatcVf/9yv9fwuCExdBbWghZ18l1/UqO', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2023-04-17 12:56:42', '2023-05-01 21:57:09', '1', '1', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0, 0, NULL),
('40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'James', '$2y$10$wwiJtq8LzU9cT44LsfktWukn78Dj4ZXzRz862O2Fqkx7LtqOV9fxK', 0, '2023-08-28 22:23:00', NULL, 1, 'James', 'Applebee', 0, 0, 1, NULL, '2023-08-28 22:23:42', '2023-08-28 22:25:29', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', '1', 'Reception', NULL, 'Reception', NULL, '0211234567', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, 'New Zealand', NULL, 0, 0, 1, 'Active', NULL, NULL, '1', 0, 0, NULL),
('688e6d13-ec97-c120-f020-64ed1a561d37', 'James', '$2y$10$G/FikDK/3G5XzV44xz6/ie1JwY6JwDCOEubFUAI6AuyjLGhbECw6O', 0, '2023-08-28 22:07:00', NULL, 1, 'James', 'Applebee', 0, 0, 1, NULL, '2023-08-28 22:07:57', '2023-08-28 22:20:32', '1', '1', 'Reception', NULL, 'Reception', NULL, '021055666777', NULL, NULL, NULL, 'Inactive', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 'Terminated', NULL, NULL, '1', 0, 0, NULL),
('97240576-184d-be72-21f0-64e3efe77262', 'Harry', '$2y$10$clv.3GArcOIv6sajlRVQb.L2FYufJK76y/RtOqX/sMURlU4dAlN.2', 0, '2023-08-21 23:13:00', NULL, 1, 'Harry', 'Watson', 0, 0, 1, NULL, '2023-08-21 23:13:35', '2023-08-22 00:19:21', '1', '1', 'Dentist', NULL, 'OHS', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '1', 0, 0, NULL),
('a03dc2fb-1a10-36a5-a9e4-64ed1a531d5f', '', NULL, 0, NULL, NULL, 1, 'James', 'Applebee', 0, 0, 1, NULL, '2023-08-28 22:05:43', '2023-08-28 22:20:40', '1', '1', 'Reception', NULL, 'Reception', NULL, '021055666777', NULL, NULL, NULL, 'Inactive', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 'Terminated', NULL, NULL, '1', 0, 0, NULL),
('ae27a67e-4c44-6d3a-152a-645855c19de0', 'Dentist', '$2y$10$krIEsU7zL0GoN26g1qmoJO0e9SX7MJOhWiA7cfyhSzicaO.LyQG2a', 0, '2023-05-08 01:51:00', NULL, 1, 'John', 'Smith', 0, 0, 1, NULL, '2023-05-08 01:51:31', '2023-08-22 00:12:40', '1', '1', 'Dentist', NULL, 'DA', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '1', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `feed_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `import_module` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bean_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bean_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keyhash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `signature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `signature_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('21792b85-4f75-a458-71ad-6510e150770a', 'DDC_DC2_DDC_DC', 0, '2023-09-25 01:27:24', '2023-10-26 02:20:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxNDoiZGVudGFsX2NoYXJ0X2MiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('23ae0b88-0b74-c237-77b3-6510e6cdfa8d', 'DDC_DC', 0, '2023-09-25 01:44:34', '2023-09-25 01:44:34', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('2aa2983b-9cc0-b3d2-d372-64ed1ea27a93', 'Home', 0, '2023-08-28 22:25:30', '2023-08-28 22:25:30', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjIxMWJlNjhkLTAzODMtMjBhNy0zNzBmLTY0ZWQxZTFiYTBhMyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjIxMWZlZWJhLTJjMDEtNWFhMy1mODdkLTY0ZWQxZWUxOTU1YiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjIxMjMyM2RlLTk0ZjAtZDE4OS1iYTQ1LTY0ZWQxZTA0MjI4MiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjIxMjUxZDUxLTgxODgtZTc3Mi0xMTU1LTY0ZWQxZTdjODI5OSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjEyOTA4ODYtZGQ4ZS0wYmYxLTA3NTUtNjRlZDFlZTg4ZjI3IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjEyYmNmYTMtM2JhOC04YmYzLThiNTEtNjRlZDFlYWZiZmU5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIyMTFmZWViYS0yYzAxLTVhYTMtZjg3ZC02NGVkMWVlMTk1NWIiO2k6MTtzOjM2OiIyMTIzMjNkZS05NGYwLWQxODktYmE0NS02NGVkMWUwNDIyODIiO2k6MjtzOjM2OiIyMTI1MWQ1MS04MTg4LWU3NzItMTE1NS02NGVkMWU3YzgyOTkiO2k6MztzOjM2OiIyMTI5MDg4Ni1kZDhlLTBiZjEtMDc1NS02NGVkMWVlODhmMjciO2k6NDtzOjM2OiIyMTJiY2ZhMy0zYmE4LThiZjMtOGI1MS02NGVkMWVhZmJmZTkiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjIxMWJlNjhkLTAzODMtMjBhNy0zNzBmLTY0ZWQxZTFiYTBhMyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('2c1be95c-4785-697e-9992-64ed1ea1af1e', 'Home2_CALL', 0, '2023-08-28 22:25:30', '2023-08-28 22:25:30', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2d199b37-afc0-c655-c5f8-64ed1eb26eca', 'Home2_MEETING', 0, '2023-08-28 22:25:30', '2023-08-28 22:25:30', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2e11036b-a534-2c27-a0f6-64ed1e137200', 'Home2_OPPORTUNITY', 0, '2023-08-28 22:25:30', '2023-08-28 22:25:30', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2f05dd05-2122-e8d7-85b7-64ed1e648ac6', 'Home2_ACCOUNT', 0, '2023-08-28 22:25:30', '2023-08-28 22:25:30', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('300c71e8-d429-e68e-33df-64ed1ef2b9d5', 'Home2_LEAD', 0, '2023-08-28 22:25:30', '2023-08-28 22:25:30', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('30f98528-45f1-547c-71db-64ed1ed9e33e', 'Home2_SUGARFEED', 0, '2023-08-28 22:25:30', '2023-08-28 22:25:30', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3335335e-8b2c-4f80-cf5d-643d49a9f67f', 'Contacts2_CONTACT', 0, '2023-04-17 13:28:39', '2023-04-17 13:28:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('358141e4-3ddd-24bf-c74a-643d42bea4a6', 'global', 0, '2023-04-17 12:56:42', '2023-09-25 02:54:13', '1', 'YTo1ODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjM0ZTM1MDVhLWY2NzYtZmJjNC00MTYyLTY0M2Q0MmQwYjk1ZCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6Mjoib24iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YToyMzp7aTowO3M6ODoiQWNjb3VudHMiO2k6MTtzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjI7czo1OiJMZWFkcyI7aTozO3M6MTA6IkFPU19RdW90ZXMiO2k6NDtzOjk6IkRvY3VtZW50cyI7aTo1O3M6OToiQ2FtcGFpZ25zIjtpOjY7czo1OiJTcG90cyI7aTo3O3M6MTM6IkFPU19Db250cmFjdHMiO2k6ODtzOjU6IkNhc2VzIjtpOjk7czo5OiJQcm9zcGVjdHMiO2k6MTA7czoxMzoiUHJvc3BlY3RMaXN0cyI7aToxMTtzOjc6IlByb2plY3QiO2k6MTI7czoxOToiQU1fUHJvamVjdFRlbXBsYXRlcyI7aToxMztzOjk6IkZQX2V2ZW50cyI7aToxNDtzOjE4OiJGUF9FdmVudF9Mb2NhdGlvbnMiO2k6MTU7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7aToxNjtzOjEyOiJBT1NfUHJvZHVjdHMiO2k6MTc7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO2k6MTg7czoxMToiQU9SX1JlcG9ydHMiO2k6MTk7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO2k6MjA7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO2k6MjE7czoxNDoiRW1haWxUZW1wbGF0ZXMiO2k6MjI7czo3OiJTdXJ2ZXlzIjt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czozOiJvZmYiO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6OToiQ29udGFjdHNRIjthOjI6e3M6MTQ6ImRpc3BsYXlDb2x1bW5zIjtOO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6NjoiQ2FzZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6IkFPU19JbnZvaWNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToiZWRpdG9yX3R5cGUiO3M6NjoibW96YWlrIjtzOjY6IlRhc2tzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE4OiJhYmNkX0FwcG9pbnRtZW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMjoiZ2xvYmFsU2VhcmNoIjthOjk6e3M6ODoiQWNjb3VudHMiO3M6NzoiQWNjb3VudCI7czo1OiJDYWxscyI7czo0OiJDYWxsIjtzOjU6IkNhc2VzIjtzOjU6ImFDYXNlIjtzOjg6IkNvbnRhY3RzIjtzOjc6IkNvbnRhY3QiO3M6OToiRG9jdW1lbnRzIjtzOjg6IkRvY3VtZW50IjtzOjU6IkxlYWRzIjtzOjQ6IkxlYWQiO3M6ODoiTWVldGluZ3MiO3M6NzoiTWVldGluZyI7czo1OiJOb3RlcyI7czo0OiJOb3RlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJPcHBvcnR1bml0eSI7fXM6MTI6ImRpc3BsYXlfdGFicyI7YTozMzp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjU6IlNwb3RzIjtpOjEwO3M6OToiQ2FtcGFpZ25zIjtpOjExO3M6NToiQ2FsbHMiO2k6MTI7czo4OiJNZWV0aW5ncyI7aToxMztzOjU6IlRhc2tzIjtpOjE0O3M6NToiTm90ZXMiO2k6MTU7czoxMjoiQU9TX0ludm9pY2VzIjtpOjE2O3M6MTM6IkFPU19Db250cmFjdHMiO2k6MTc7czo1OiJDYXNlcyI7aToxODtzOjk6IlByb3NwZWN0cyI7aToxOTtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjIwO3M6NzoiUHJvamVjdCI7aToyMTtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtpOjIyO3M6OToiRlBfZXZlbnRzIjtpOjIzO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7aToyNDtzOjEyOiJBT1NfUHJvZHVjdHMiO2k6MjU7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7aToyNjtzOjE3OiJBT1NfUERGX1RlbXBsYXRlcyI7aToyNztzOjExOiJBT1JfUmVwb3J0cyI7aToyODtzOjE3OiJBT0tfS25vd2xlZGdlQmFzZSI7aToyOTtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7aTozMDtzOjE0OiJFbWFpbFRlbXBsYXRlcyI7aTozMTtzOjc6IlN1cnZleXMiO2k6MzI7czoxNzoiYWJjZF9BcHBvaW50bWVudHMiO31zOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czo4OiJzdWJ0aGVtZSI7czozOiJEYXkiO3M6NjoiTm90ZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkVtcGxveWVlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJVc2Vyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJBQ0xSb2xlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJNZWV0aW5nc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNToiU2VjdXJpdHlHcm91cHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTM6IkFPV19Xb3JrRmxvd1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToiU2NoZWR1bGVyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo3OiJERENfRENRIjthOjI6e3M6MTQ6ImRpc3BsYXlDb2x1bW5zIjtOO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),
('381b3d8a-8e7f-cf19-603f-64ed1ea5c094', 'Contacts2_CONTACT', 0, '2023-08-28 22:25:36', '2023-08-28 22:25:36', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('385b369b-d1e8-169a-3a90-643d42deb921', 'GoogleSync', 0, '2023-04-17 12:56:42', '2023-07-11 06:38:53', '1', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('3e928f0b-97f5-11ac-3eb0-645035181eb4', 'Meetings', 0, '2023-05-01 21:55:09', '2023-07-11 06:38:53', '1', 'YTowOnt9'),
('458e4703-2ab5-e3a2-8492-64503557fa17', 'Assistant', 0, '2023-05-01 21:55:09', '2023-05-08 01:45:15', '1', 'YTowOnt9'),
('48f30382-283e-2e59-6aa9-64bdbfe96e93', 'SecurityGroups2_SECURITYGROUP', 0, '2023-07-24 00:02:30', '2023-07-24 00:02:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('48fd2bb9-bfaa-7189-84ec-6450359a2c6e', 'ModuleBuilder', 0, '2023-05-01 21:55:09', '2023-05-08 01:45:15', '1', 'YTowOnt9'),
('4a8f3e52-3964-7067-26ac-64ed1e9df194', 'global', 0, '2023-08-28 22:23:42', '2023-08-28 22:25:29', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YTo0Mzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7aToxODAwO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6MzYwMDtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjM6IkRheSI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjEwOiJkYXRlZm9ybWF0IjtzOjU6Im0vZC9ZIjtzOjEwOiJ0aW1lZm9ybWF0IjtzOjQ6Img6aWEiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjk6IkNvbnRhY3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('4ef9e8c3-ac74-b543-c32a-645035d333e9', 'search', 0, '2023-05-01 21:55:09', '2023-05-08 01:45:15', '1', 'YTowOnt9'),
('57a7a516-4e08-c040-1946-64e3ff7cc4e9', 'Home', 0, '2023-08-22 00:20:57', '2023-08-22 00:20:57', '97240576-184d-be72-21f0-64e3efe77262', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjI6e3M6MzY6IjRkZTEyNDc0LTFhNWYtZTQ5Yi1lYzA3LTY0ZTNmZmE2ZGEzOCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjRkZTYxOGYxLTE0ZjYtOTU5My1mZGZlLTY0ZTNmZmM0NTJhNyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiNGRlNjE4ZjEtMTRmNi05NTkzLWZkZmUtNjRlM2ZmYzQ1MmE3Ijt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiI0ZGUxMjQ3NC0xYTVmLWU0OWItZWMwNy02NGUzZmZhNmRhMzgiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('5893f178-fdb3-281e-dbf4-64e3ffdc80da', 'Home2_MEETING', 0, '2023-08-22 00:20:57', '2023-08-22 00:20:57', '97240576-184d-be72-21f0-64e3efe77262', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('59aa3902-4262-1ae2-90c6-64e3ff9bc1f9', 'Home2_SUGARFEED', 0, '2023-08-22 00:20:57', '2023-08-22 00:20:57', '97240576-184d-be72-21f0-64e3efe77262', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5e7d1764-0f42-bd63-cafc-6450355ec9a0', 'Users', 0, '2023-05-01 21:55:09', '2023-05-08 01:45:15', '1', 'YTowOnt9'),
('61af3db5-dfc8-d24d-fdef-64ed1bdf3cbb', 'Contacts2_CONTACT', 0, '2023-08-28 22:09:55', '2023-08-28 22:09:55', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('68d19648-004d-f940-7bc5-64deddbc00d7', 'Schedulers2_SCHEDULER', 0, '2023-08-18 02:53:25', '2023-08-18 02:53:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6fe4b5ff-fd77-70b7-240d-64ed1a4c89be', 'global', 0, '2023-08-28 22:07:57', '2023-08-28 22:20:32', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YTo0Mzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mzoib2ZmIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxMToiZWRpdG9yX3R5cGUiO3M6NjoibW96YWlrIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjEwOiJkYXRlZm9ybWF0IjtzOjU6Im0vZC9ZIjtzOjEwOiJ0aW1lZm9ybWF0IjtzOjQ6Img6aWEiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjk6IkNvbnRhY3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('715e4ed5-a315-8fe3-9687-64ed1a6667a7', 'GoogleSync', 0, '2023-08-28 22:07:57', '2023-08-28 22:07:57', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('75bd4c46-f950-6764-94e9-64ded63fe3b4', 'Contacts', 0, '2023-08-18 02:26:27', '2023-08-18 02:26:27', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('787f04db-9ebe-260e-3ff8-64ed15c5b54b', 'Contacts2_CONTACT', 0, '2023-08-28 21:46:20', '2023-08-28 21:46:20', '97240576-184d-be72-21f0-64e3efe77262', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7c8b8d7d-f622-6674-896e-643d42d078d1', 'Home2_LEAD_a9722ce7-fd27-246c-bf4d-643d42ac97ec', 0, '2023-04-17 12:58:03', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7cb2a0e7-7229-23a6-86be-64c058a2f11f', 'AOW_WorkFlow2_AOW_WORKFLOW', 0, '2023-07-25 23:20:12', '2023-07-25 23:20:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7ebbcd3a-c62e-2e6b-e05c-64ed1e3a958b', 'GoogleSync', 0, '2023-08-28 22:23:55', '2023-08-28 22:23:55', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('7fd33655-d6e3-4559-47e2-64ed1ed69ad8', 'Emails', 0, '2023-08-28 22:23:55', '2023-08-28 22:23:55', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YTowOnt9'),
('893bb1ba-d81f-115e-c500-645034c73462', 'Home2_CASE', 0, '2023-05-01 21:52:12', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8c6f1a06-3960-b31d-9eb8-6450348099ef', 'Home2_CONTACT', 0, '2023-05-01 21:52:12', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8cc77c87-bc92-ba2c-935f-6510e863851d', 'Employees2_EMPLOYEE', 0, '2023-09-25 01:54:26', '2023-09-25 01:54:26', 'ae27a67e-4c44-6d3a-152a-645855c19de0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8d3e9dc4-c353-119c-2405-643d4d6fa9b9', 'Cases2_CASE', 0, '2023-04-17 13:45:04', '2023-04-17 13:45:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8f2c6702-397e-5876-5d3e-6450347d9517', 'Home2_DOCUMENT', 0, '2023-05-01 21:52:12', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('92e68579-be44-406b-9f77-643d42a68262', 'Home', 0, '2023-04-17 12:57:48', '2023-08-18 02:12:36', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjI6e3M6MzY6ImE3MjZlMWI2LWU1ODUtZDVkYy1jYTI1LTY0M2Q0MmYwY2RmMSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImE4M2MxNDZkLWM0NDktZmFmYS1lN2FhLTY0M2Q0MmY4NzFkYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTo2OntzOjc6ImZpbHRlcnMiO2E6Mzp7czo2OiJzdGF0dXMiO2E6MTp7aTowO3M6NzoiUGxhbm5lZCI7fXM6MTA6ImRhdGVfc3RhcnQiO2E6MDp7fXM6MTI6ImRhdGVfZW50ZXJlZCI7YTowOnt9fXM6NToidGl0bGUiO3M6MTI6IkFwcG9pbnRtZW50cyI7czoxMToibXlJdGVtc09ubHkiO3M6NDoidHJ1ZSI7czoxMToiZGlzcGxheVJvd3MiO3M6MToiNSI7czoxNDoiZGlzcGxheUNvbHVtbnMiO2E6NTp7aTowO3M6MTI6InNldF9jb21wbGV0ZSI7aToxO3M6NDoibmFtZSI7aToyO3M6MTE6InBhcmVudF9uYW1lIjtpOjM7czoxMDoiZGF0ZV9zdGFydCI7aTo0O3M6MTY6InNldF9hY2NlcHRfbGlua3MiO31zOjExOiJhdXRvUmVmcmVzaCI7czoyOiItMSI7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aToxO3M6MzY6ImE4M2MxNDZkLWM0NDktZmFmYS1lN2FhLTY0M2Q0MmY4NzFkYiI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiYTcyNmUxYjYtZTU4NS1kNWRjLWNhMjUtNjQzZDQyZjBjZGYxIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('95084de0-8cb5-e2e6-87f0-645034666951', 'Home2_NOTE', 0, '2023-05-01 21:52:12', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('961a3af1-a85f-73b7-5c56-645032f0edf8', 'ETag', 0, '2023-05-01 21:41:34', '2023-09-25 01:18:21', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NDt9'),
('97da564f-1570-12c7-1af7-643d42282c39', 'Home2_CALL', 0, '2023-04-17 12:57:48', '2023-07-11 06:38:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9af4e234-0d50-ab1a-0758-643d427d6ca1', 'Home2_MEETING', 0, '2023-04-17 12:57:48', '2023-07-11 06:38:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9e138da3-4b97-431d-8678-64e3ef2370c6', 'global', 0, '2023-08-21 23:13:35', '2023-08-28 21:46:20', '97240576-184d-be72-21f0-64e3efe77262', 'YTo0MTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjQ6Img6aWEiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),
('9e7cae8f-5216-986e-6ad5-643d422171f0', 'Home2_OPPORTUNITY', 0, '2023-04-17 12:57:48', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9f3ae732-f226-8e7a-04a5-64e3ef2fec8c', 'GoogleSync', 0, '2023-08-21 23:13:35', '2023-08-21 23:13:35', '97240576-184d-be72-21f0-64e3efe77262', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('9f835a3c-390e-8fcf-46eb-64532c02511e', 'Notes2_NOTE', 0, '2023-05-04 03:52:46', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a1b32d83-2e5b-edf8-2dc6-643d42d531d8', 'Home2_ACCOUNT', 0, '2023-04-17 12:57:48', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a504f7d4-9f89-06c5-ef34-643d4214ed91', 'Home2_LEAD', 0, '2023-04-17 12:57:48', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a8abad2d-be8c-7b87-1a80-643d42169f94', 'Home2_SUGARFEED', 0, '2023-04-17 12:57:48', '2023-07-11 06:38:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ada5afd6-b37e-2b9a-d1f6-645854ec4c2f', 'Users2_USER', 0, '2023-05-08 01:46:21', '2023-05-08 01:46:21', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b894d891-7ffe-a578-a41f-6440d421d122', 'Dashboard', 0, '2023-04-20 05:59:06', '2023-07-11 06:38:53', '1', 'YTowOnt9'),
('bb7804b2-fb6b-7be8-8fc3-64641381b7f8', 'Meetings2_MEETING', 0, '2023-05-16 23:36:22', '2023-05-16 23:36:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c612efdc-6c67-6c3c-bda4-6440d444367a', 'Emails', 0, '2023-04-20 05:59:06', '2023-07-11 06:38:53', '1', 'YTowOnt9'),
('c90f4586-ffa5-8525-22e2-6458558962ee', 'ACLRoles2_ACLROLE', 0, '2023-05-08 01:51:58', '2023-05-08 01:51:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d695bae8-d9c0-37f6-f4e6-64ed1b547528', 'Home2_LEAD_dc7c3587-4483-b9e0-b098-64ed1bf4e108', 0, '2023-08-28 22:09:46', '2023-08-28 22:09:46', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('da6464d5-85d2-4b96-472e-6510e709e0a9', 'Home', 0, '2023-09-25 01:50:30', '2023-09-25 01:50:30', 'ae27a67e-4c44-6d3a-152a-645855c19de0', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjI6e3M6MzY6ImQ0M2U0YTk5LWVjZjgtMWIxOS04MDY1LTY1MTBlN2IwNWEyNSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImQ0NzM1ZmZkLWI4ZTgtNTM3OC0yODY3LTY1MTBlNzAyM2IyZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiZDQ3MzVmZmQtYjhlOC01Mzc4LTI4NjctNjUxMGU3MDIzYjJkIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiJkNDNlNGE5OS1lY2Y4LTFiMTktODA2NS02NTEwZTdiMDVhMjUiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('e1b9556e-0d2c-22bb-2ef0-645855abbf4f', 'global', 0, '2023-05-08 01:51:31', '2023-09-25 01:54:26', 'ae27a67e-4c44-6d3a-152a-645855c19de0', 'YTo0MTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjE2OiJBdXN0cmFsaWEvU3lkbmV5IjtzOjI6InV0IjtpOjE7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjM6IkRheSI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czoxMDoiRW1wbG95ZWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('e3574acc-1baf-5651-c399-64533101a929', 'Employees2_EMPLOYEE', 0, '2023-05-04 04:16:02', '2023-07-23 23:02:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMDoiZGVwYXJ0bWVudCI7czo5OiJzb3J0T3JkZXIiO3M6MDoiIjt9fQ=='),
('e37ec285-230a-1656-33a4-643d4dd6ae3e', 'AOS_Invoices2_AOS_INVOICES', 0, '2023-04-17 13:45:37', '2023-04-17 13:45:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e3ee346b-f5e9-0c26-365b-6510e78515b0', 'Home2_MEETING', 0, '2023-09-25 01:50:30', '2023-09-25 01:50:30', 'ae27a67e-4c44-6d3a-152a-645855c19de0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e51f8345-f5f9-6446-0fc3-64585511b635', 'GoogleSync', 0, '2023-05-08 01:51:31', '2023-05-08 01:51:31', 'ae27a67e-4c44-6d3a-152a-645855c19de0', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('e5922b2d-2b44-023b-c585-6510e72cd99e', 'Home2_SUGARFEED', 0, '2023-09-25 01:50:30', '2023-09-25 01:50:30', 'ae27a67e-4c44-6d3a-152a-645855c19de0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e5ba3fa1-aa81-0349-7ffb-64ed1e1951ee', 'Home2_LEAD_212bcfa3-3ba8-8bf3-8b51-64ed1eafbfe9', 0, '2023-08-28 22:25:30', '2023-08-28 22:25:30', '40b8abbd-8c70-4dc1-2093-64ed1e9a4b3d', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e6074b88-ff21-957b-9034-64ed1b93d0c0', 'Home', 0, '2023-08-28 22:09:45', '2023-08-28 22:09:45', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImRjNmM4MmM3LTE0YjQtNTJmYi0xOGQ2LTY0ZWQxYjE4Y2UxNSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImRjNzA3OWZjLTllODMtOGI4Zi02NjUxLTY0ZWQxYjc4YWMwZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImRjNzNlZjg0LTIyN2YtMGQwYy0yNzgxLTY0ZWQxYjE3N2Y4YSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImRjNzViNDBjLWZkMTctZTBmYS01MjVmLTY0ZWQxYjg3Y2NlYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZGM3OTdiYTUtYTAyNS0wY2QwLTNjNmUtNjRlZDFiMTNkZTI0IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZGM3YzM1ODctNDQ4My1iOWUwLWIwOTgtNjRlZDFiZjRlMTA4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJkYzcwNzlmYy05ZTgzLThiOGYtNjY1MS02NGVkMWI3OGFjMGQiO2k6MTtzOjM2OiJkYzczZWY4NC0yMjdmLTBkMGMtMjc4MS02NGVkMWIxNzdmOGEiO2k6MjtzOjM2OiJkYzc1YjQwYy1mZDE3LWUwZmEtNTI1Zi02NGVkMWI4N2NjZWEiO2k6MztzOjM2OiJkYzc5N2JhNS1hMDI1LTBjZDAtM2M2ZS02NGVkMWIxM2RlMjQiO2k6NDtzOjM2OiJkYzdjMzU4Ny00NDgzLWI5ZTAtYjA5OC02NGVkMWJmNGUxMDgiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImRjNmM4MmM3LTE0YjQtNTJmYi0xOGQ2LTY0ZWQxYjE4Y2UxNSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('e6fa3ce3-a340-f972-89a6-64ed1b2ddf03', 'Home2_CALL', 0, '2023-08-28 22:09:45', '2023-08-28 22:09:45', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e8169f59-5fff-ac2f-ae52-64ed1b5dd959', 'Home2_MEETING', 0, '2023-08-28 22:09:45', '2023-08-28 22:09:45', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e8e9a490-ee72-18a8-1f44-64ed1b23f2a4', 'Home2_OPPORTUNITY', 0, '2023-08-28 22:09:45', '2023-08-28 22:09:45', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e9be69cd-ec0e-57da-334e-64ed1b55e77a', 'Home2_ACCOUNT', 0, '2023-08-28 22:09:45', '2023-08-28 22:09:45', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eae81b1f-66f8-9af6-483a-64ed1b9774f7', 'Home2_LEAD', 0, '2023-08-28 22:09:45', '2023-08-28 22:09:45', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ebd35fcd-7c49-2163-dfd1-64ed1bc9e68c', 'Home2_SUGARFEED', 0, '2023-08-28 22:09:45', '2023-08-28 22:09:45', '688e6d13-ec97-c120-f020-64ed1a561d37', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ebf14f54-ea2c-43b3-ba1d-644c6173b727', 'Tasks2_TASK', 0, '2023-04-29 00:14:45', '2023-05-08 01:45:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ed2f6ee7-9080-b7df-7bfc-645032166ab3', 'abcd_Appointments2_ABCD_APPOINTMENTS', 0, '2023-05-01 21:42:37', '2023-07-11 06:38:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vcals`
--

INSERT INTO `vcals` (`id`, `deleted`, `date_entered`, `date_modified`, `user_id`, `type`, `source`, `content`) VALUES
('c6e2c66c-b1d7-643e-e3d7-643d465bdd8d', 0, '2023-04-17 13:15:48', '2023-09-25 01:32:22', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN=Administrator:VFREEBUSY\nDTSTART:2023-09-23 22:00:00\nDTEND:2023-11-23 23:00:00\nDTSTAMP:2023-09-25 01:32:22\nEND:VFREEBUSY\nEND:VCALENDAR\n');

-- --------------------------------------------------------

--
-- Table structure for table `xray_imaging`
--

CREATE TABLE `xray_imaging` (
  `appointmentID` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `xray` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abcd_appointments`
--
ALTER TABLE `abcd_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `abcd_appointments_audit`
--
ALTER TABLE `abcd_appointments_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_abcd_appointments_parent_id` (`parent_id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indexes for table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indexes for table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointmentID`),
  ADD KEY `NHI` (`NHI`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`),
  ADD KEY `idx_survey_id` (`survey_id`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`nhi_c`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `ddc_dc`
--
ALTER TABLE `ddc_dc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ddc_dc_audit`
--
ALTER TABLE `ddc_dc_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ddc_dc_parent_id` (`parent_id`);

--
-- Indexes for table `ddc_dc_cstm`
--
ALTER TABLE `ddc_dc_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`),
  ADD KEY `idx_email_uid` (`uid`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addresses_audit`
--
ALTER TABLE `email_addresses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_addresses_parent_id` (`parent_id`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `external_oauth_connections`
--
ALTER TABLE `external_oauth_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_oauth_providers`
--
ALTER TABLE `external_oauth_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_patient_nhi` (`nhi`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth2clients`
--
ALTER TABLE `oauth2clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth2tokens`
--
ALTER TABLE `oauth2tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indexes for table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `surveyquestionoptions`
--
ALTER TABLE `surveyquestionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionoptions_audit`
--
ALTER TABLE `surveyquestionoptions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionoptions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestionoptions_surveyquestionresponses`
--
ALTER TABLE `surveyquestionoptions_surveyquestionresponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`);

--
-- Indexes for table `surveyquestionresponses`
--
ALTER TABLE `surveyquestionresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionresponses_audit`
--
ALTER TABLE `surveyquestionresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestions_audit`
--
ALTER TABLE `surveyquestions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyresponses_audit`
--
ALTER TABLE `surveyresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys_audit`
--
ALTER TABLE `surveys_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveys_parent_id` (`parent_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tooth_model`
--
ALTER TABLE `tooth_model`
  ADD KEY `NHI` (`NHI`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- Indexes for table `xray_imaging`
--
ALTER TABLE `xray_imaging`
  ADD KEY `appointmentID` (`appointmentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_records`
--
ALTER TABLE `medical_records`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`NHI`) REFERENCES `contacts_cstm` (`nhi_c`);

--
-- Constraints for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD CONSTRAINT `fk_patient_nhi` FOREIGN KEY (`nhi`) REFERENCES `contacts_cstm` (`nhi_c`);

--
-- Constraints for table `tooth_model`
--
ALTER TABLE `tooth_model`
  ADD CONSTRAINT `tooth_model_ibfk_1` FOREIGN KEY (`NHI`) REFERENCES `contacts_cstm` (`nhi_c`);

--
-- Constraints for table `xray_imaging`
--
ALTER TABLE `xray_imaging`
  ADD CONSTRAINT `xray_imaging_ibfk_1` FOREIGN KEY (`appointmentID`) REFERENCES `appointments` (`appointmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
