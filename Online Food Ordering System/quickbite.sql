-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2024 at 08:31 PM
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
-- Database: `quickbite`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `connection` text DEFAULT NULL,
  `queue` text DEFAULT NULL,
  `payload` longtext DEFAULT NULL,
  `exception` longtext DEFAULT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `price`, `description`, `type`, `picture`) VALUES
(101, 'Hotdog', 199, 'street Food', 'Western', 'https://th.bing.com/th/id/OIP.-SQl_G7RcB51DITJy4ANWwAAAA?rs=1&pid=ImgDetMain'),
(102, 'Pizza', 299, 'street Food', 'Western', 'https://th.bing.com/th/id/OIP.8UeIFPMYwIErE1ShRYB9QAHaEo?rs=1&pid=ImgDetMain'),
(103, 'Burger', 49, 'street Food', 'Western', 'https://th.bing.com/th/id/OIP.KomAB7rg-OCyK3QEDO81fwHaEn?rs=1&pid=ImgDetMain'),
(105, 'Momos', 49, 'Some of the new momo variants are hard to understand, but it’s clear that this street food is ever so popular with Indians.', 'Western', 'https://femina.wwmindia.com/content/2022/mar/momos-011646367565.jpg'),
(108, 'Sheek Kebab with Naan', 149, 'Kebab with Flatbread', 'Western', 'https://www.licious.in/blog/wp-content/uploads/2020/12/Mutton-Seekh-Kebab.jpg'),
(110, 'Grill Chicken', 149, 'Grill Chicken With Naan Roti', 'Western', 'https://www.chefspencil.com/wp-content/uploads/Screenshot-2021-05-24-at-19.15.48.jpg.webp'),
(112, 'Ras Malai', 99, 'sweet dessert', 'Western', 'https://www.chefspencil.com/wp-content/uploads/Ras-Malai-1-960x960.jpg.webp'),
(113, 'Chicken Chow Mein', 350, 'Stir-fried noodles with chicken and vegetables.', 'Chinese', 'https://th.bing.com/th/id/OIP.KKJFeqCzrBEzNLe4WNYHfAHaLG?rs=1&pid=ImgDetMain'),
(114, 'Sweet and Sour Chicken', 400, 'Chicken in a tangy sweet and sour sauce with peppers and pineapple.', 'Chinese', 'https://th.bing.com/th/id/OIP.RFImBYXDq2XHY04TNKe25QHaLH?rs=1&pid=ImgDetMain'),
(115, 'Fried Rice with Shrimp', 300, 'Stir-fried rice with shrimp, egg, and vegetables.', 'Chinese', 'https://realhousemoms.com/wp-content/uploads/Shrimp-Fried-Rice-RECIPE-CARD.jpg'),
(116, 'Hot and Sour Soup', 250, 'Spicy and tangy soup with tofu, mushrooms, and vegetables.', 'Chinese', 'https://thewoksoflife.com/wp-content/uploads/2019/04/hot-and-sour-soup-2.jpg'),
(117, 'Egg Fried Rice', 320, 'Fried rice with scrambled eggs and mild Cantonese flavors.', 'Chinese', 'https://th.bing.com/th/id/OIP.gYvQtGdnnQpoYzZCSV2T6AHaHa?rs=1&pid=ImgDetMain'),
(118, 'Szechuan Chicken', 450, 'Spicy chicken stir-fried with Szechuan sauce and chili peppers.', 'Chinese', 'https://th.bing.com/th/id/OIP.1qJkCDDFe_doos41uCeQDAHaLG?w=1200&h=1799&rs=1&pid=ImgDetMain'),
(119, 'Prawn Wontons', 280, 'Crispy fried wontons stuffed with prawns.', 'Chinese', 'https://th.bing.com/th/id/OIP.l81CDocgNqCKwKgQmbs-hAHaHa?rs=1&pid=ImgDetMain'),
(120, 'Vegetable Spring Rolls', 180, 'Crispy rolls filled with stir-fried vegetables.', 'Chinese', 'https://www.cubesnjuliennes.com/wp-content/uploads/2021/01/Vegetable-Spring-Rolls.jpg'),
(121, 'Grilled Chicken Steak', 600, 'Juicy grilled chicken served with mashed potatoes and vegetables.', 'Western', 'https://image.freepik.com/free-photo/grilled-chicken-steak_1339-23330.jpg'),
(122, 'Beef Burger', 450, 'Grilled beef patty with lettuce, tomato, and cheese in a bun.', 'Western', 'https://th.bing.com/th/id/OIP.8MJgw49NgTeBLs1BFzqS0gHaHa?rs=1&pid=ImgDetMain'),
(123, 'Fish and Chips', 550, 'Crispy battered fish served with fries and tartar sauce.', 'Western', 'https://th.bing.com/th/id/R.ab2db99ff8031a72bba95e34408a2f8b?rik=zjTmGC9aDAzXkA&pid=ImgRaw&r=0'),
(124, 'BBQ Chicken Pizza', 700, 'Pizza topped with BBQ chicken, onions, and mozzarella.', 'Western', 'https://th.bing.com/th/id/OIP.wyGb_snDrZ-ZSVFXtgYMfAAAAA?rs=1&pid=ImgDetMain'),
(125, 'Chicken Caesar Salad', 350, 'Fresh salad with grilled chicken, lettuce, croutons, and Caesar dressing.', 'Western', 'https://th.bing.com/th/id/OIP.NbH1TJ4okUpo5cjPhjXNTgHaLJ?rs=1&pid=ImgDetMain'),
(126, 'Mushroom Soup', 280, 'Creamy soup made from fresh mushrooms.', 'Western', 'https://th.bing.com/th/id/OIP.cQHPC0xUByDI80IPESrZDwHaHa?rs=1&pid=ImgDetMain'),
(127, 'Roast Beef Platter', 750, 'Slices of roast beef served with gravy and mashed potatoes.', 'Western', 'https://th.bing.com/th/id/R.585a84eff38c8ed096a6d0ea06634980?rik=TOBtO%2bBTpxCrqg&pid=ImgRaw&r=0'),
(128, 'Sushi Platter', 900, 'Assortment of sushi rolls with fresh fish and vegetables.', 'Japanese', 'https://th.bing.com/th/id/OIP.aUG_JNxtD4NEgq_d9LLDvgHaHa?w=2759&h=2759&rs=1&pid=ImgDetMain'),
(129, 'Chicken Teriyaki', 550, 'Grilled chicken glazed with sweet teriyaki sauce.', 'Japanese', 'https://th.bing.com/th/id/OIP.gTiInwaa-onJ6zkSNuRqIAAAAA?rs=1&pid=ImgDetMain'),
(130, 'Tempura Prawns', 600, 'Lightly battered deep-fried prawns.', 'Japanese', 'https://th.bing.com/th/id/OIP.jjlQXLBPZ2FmNkocLfGlDAHaGl?rs=1&pid=ImgDetMain'),
(131, 'Ramen Noodles', 450, 'Hot noodle soup with chicken, egg, and vegetables.', 'Japanese', 'https://th.bing.com/th/id/OIP.unR5u5HDeo2_nlJ0SDNS4gHaLH?rs=1&pid=ImgDetMain'),
(132, 'Chicken Katsu Curry', 550, 'Breaded fried chicken served with Japanese curry and rice.', 'Japanese', 'https://th.bing.com/th/id/OIP.O7IcI2NKNvDDrtPCGFIWlgHaHa?rs=1&pid=ImgDetMain');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`order_id`, `food_id`, `quantity`) VALUES
(10, 103, 15),
(11, 102, 13),
(15, 103, 3),
(17, 110, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `deliveryAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `date`, `type`, `deliveryAddress`) VALUES
(9, 5, '2024-10-18 12:30:45', 'pickup', 'Brothers park, Shatkania coloni\r\nLalkhan Bazar, Wasa Moor, Chattogram'),
(10, 5, '2024-10-18 12:46:53', 'pickup', 'Brothers park, Shatkania coloni\r\nLalkhan Bazar, Wasa Moor, Chattogram'),
(11, 5, '2024-10-22 13:27:41', 'pickup', 'Brothers park, Shatkania coloni\r\nLalkhan Bazar, Wasa Moor, Chattogram'),
(15, 5, '2024-10-22 16:00:54', 'delivery', 'Brothers park, Shatkania coloni\r\nLalkhan Bazar, Wasa Moor, Chattogram'),
(17, 8, '2024-10-22 18:14:56', 'pickup', 'Halisohor');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) DEFAULT NULL,
  `tokenable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `isAdmin`, `password`, `address`, `remember_token`) VALUES
(5, 'Tamjidul Hasan', 'mohammediraz123@gmail.com', NULL, 1, '$2y$12$PO8tLFVxDEsIh5wXgrPumOxDHpT4oG6QwPiqGXQRrzSTe1S0x/Nse', 'Brothers park, Shatkania coloni\r\nLalkhan Bazar, Wasa Moor, Chattogram', NULL),
(6, 'Adnan', 'adnan@gmail.com', NULL, 1, '$2y$12$qz05zq6YiYmHBAVYDsSFheBllmoLFYaOGL9c5rBcjR3eacSdBzz3S', 'Bohoddarhat', NULL),
(7, 'Aysha', 'aysha@gmail.com', NULL, 1, '$2y$12$bcul5ArWn8sl49AdEvAT7es1ebK81WvcytMLOBCtgsUoJNGYhFxve', 'Agrabad', NULL),
(8, 'Siam', 'siam@gmail.com', NULL, 0, '$2y$12$l56P.UW97ft/Oqb0QcmOceqFrZ283s41hGYlw0KN0PKRCy3KrK4ni', 'Halisohor', NULL),
(9, 'Faria', 'faria@gmail.com', NULL, 0, '$2y$12$Xeti0XxWyFpS.XD0RqZOZupbu5GCvQ1.Nroee./sviqixXcRv9Thu', 'Halisohor', NULL),
(10, 'Ove', 'ove@gmail.com', NULL, 1, '$2y$12$I.kyUp5hyRfPu4sfs3Ey9epIeCY8bb3IB6sHgbRcaeKqNWCcPp4NC', 'Bondor', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`),
  ADD UNIQUE KEY `name_3` (`name`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD PRIMARY KEY (`order_id`,`food_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `email` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_order`
--
ALTER TABLE `food_order`
  ADD CONSTRAINT `food_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `food_order_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
