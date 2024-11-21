-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2024 at 04:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `POS_KOI`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(20,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Beauty', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(2, 'Fragrances', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(3, 'Furniture', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(4, 'Groceries', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(5, 'Home Decoration', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(6, 'Kitchen Accessories', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(7, 'Laptops', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(8, 'Mens Shirts', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(9, 'Mens Shoes', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(10, 'Mens Watches', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(11, 'Mobile Accessories', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(12, 'Motorcycle', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(13, 'Skin Care', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(14, 'Smartphones', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(15, 'Sports Accessories', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(16, 'Sunglasses', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(17, 'Tablets', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(18, 'Tops', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(19, 'Vehicle', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(20, 'Womens Bags', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(21, 'Womens Dresses', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(22, 'Womens Jewellery', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(23, 'Womens Shoes', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(24, 'Womens Watches', '2024-11-07 07:18:18', '2024-11-07 07:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salary` decimal(20,8) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `joining_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(20,8) NOT NULL,
  `expense_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_00_000000_create_settings_table', 1),
(2, '2014_10_00_000001_add_group_column_on_settings_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_06_26_020636_create_categories_table', 1),
(8, '2024_07_12_094131_create_suppliers_table', 1),
(9, '2024_07_17_094527_create_unit_types_table', 1),
(10, '2024_07_18_094528_create_products_table', 1),
(11, '2024_07_21_014022_create_expenses_table', 1),
(12, '2024_07_21_075714_create_employees_table', 1),
(13, '2024_07_21_112837_create_customers_table', 1),
(14, '2024_07_22_103204_create_salaries_table', 1),
(15, '2024_09_05_013146_create_carts_table', 1),
(16, '2024_09_13_101423_create_orders_table', 1),
(17, '2024_09_13_102312_create_order_items_table', 1),
(18, '2024_09_21_105318_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `sub_total` decimal(20,8) NOT NULL,
  `tax_total` decimal(20,8) DEFAULT NULL,
  `discount_total` decimal(20,8) DEFAULT NULL,
  `total` decimal(20,8) NOT NULL,
  `paid` decimal(20,8) NOT NULL,
  `due` decimal(20,8) NOT NULL,
  `profit` decimal(20,8) NOT NULL,
  `loss` decimal(20,8) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_json` longtext NOT NULL,
  `quantity` decimal(20,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `product_number` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `root` varchar(255) DEFAULT NULL,
  `buying_price` decimal(20,8) NOT NULL,
  `selling_price` decimal(20,8) NOT NULL,
  `buying_date` timestamp NULL DEFAULT NULL,
  `unit_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` decimal(20,8) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `name`, `product_number`, `description`, `product_code`, `root`, `buying_price`, `selling_price`, `buying_date`, `unit_type_id`, `quantity`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Powder Canister', 'P-2Uv6P', 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', 'DL1', 'Bzh', 14.99000000, 29.99000000, '1984-02-18 17:00:00', 6, 59.00000000, '1.png', 'active', '2024-11-07 07:18:21', '2024-11-07 07:18:21'),
(2, 1, 2, 'Red Lipstick', 'P-cEi69', 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', 'VYf', 'UDF', 12.99000000, 49.99000000, '2023-09-29 17:00:00', 7, 68.00000000, '1.png', 'active', '2024-11-07 07:18:26', '2024-11-07 07:18:26'),
(3, 1, 3, 'Red Nail Polish', 'P-P72zc', 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', 'smr', '5F4', 8.99000000, 59.99000000, '1977-09-12 17:00:00', 9, 71.00000000, '1.png', 'active', '2024-11-07 07:18:29', '2024-11-07 07:18:29'),
(4, 2, 2, 'Dior J\'adore', 'P-skLTC', 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', 'cQP', 'iPx', 89.99000000, 112.99000000, '1993-01-11 17:00:00', 6, 91.00000000, '1.png', 'active', '2024-11-07 07:18:32', '2024-11-07 07:18:32'),
(5, 2, 3, 'Dolce Shine Eau de', 'P-GXO8x', 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', 'T82', 'mtb', 69.99000000, 84.99000000, '2017-07-08 17:00:00', 5, 3.00000000, '1.png', 'active', '2024-11-07 07:18:35', '2024-11-07 07:18:35'),
(6, 2, 3, 'Gucci Bloom Eau de', 'P-gaCZ9', 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', 'Sbh', '2Xs', 79.99000000, 121.99000000, '1980-10-08 17:00:00', 5, 93.00000000, '1.png', 'active', '2024-11-07 07:18:38', '2024-11-07 07:18:38'),
(7, 3, 1, 'Bedside Table African Cherry', 'P-Un5XG', 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', '0BA', 'HWr', 299.99000000, 388.99000000, '2004-12-28 17:00:00', 7, 16.00000000, '1.png', 'active', '2024-11-07 07:18:45', '2024-11-07 07:18:45'),
(8, 3, 1, 'Knoll Saarinen Executive Conference Chair', 'P-4k3lq', 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', 'Oj0', 'hlH', 499.99000000, 597.99000000, '2019-11-08 17:00:00', 7, 47.00000000, '1.png', 'active', '2024-11-07 07:18:55', '2024-11-07 07:18:55'),
(9, 3, 2, 'Wooden Bathroom Sink With Mirror', 'P-tnRUG', 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', 'DKa', 'zyI', 799.99000000, 862.99000000, '1982-10-06 17:00:00', 5, 95.00000000, '1.png', 'active', '2024-11-07 07:19:00', '2024-11-07 07:19:00'),
(10, 4, 2, 'Cat Food', 'P-Vi6ER', 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', 'sJW', 'h1F', 8.99000000, 105.99000000, '1989-04-24 17:00:00', 5, 13.00000000, '1.png', 'active', '2024-11-07 07:19:09', '2024-11-07 07:19:09'),
(11, 4, 2, 'Chicken Meat', 'P-UAEZJ', 'Fresh and tender chicken meat, suitable for various culinary preparations.', 'UKz', 'wLL', 9.99000000, 71.99000000, '1981-10-07 17:00:00', 9, 69.00000000, '1.png', 'active', '2024-11-07 07:19:13', '2024-11-07 07:19:13'),
(12, 4, 2, 'Cooking Oil', 'P-N5ydT', 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', 'Jpw', '4JR', 4.99000000, 60.99000000, '2017-04-25 17:00:00', 3, 22.00000000, '1.png', 'active', '2024-11-07 07:19:18', '2024-11-07 07:19:18'),
(13, 4, 2, 'Cucumber', 'P-05O41', 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', 'jIA', 'Ts3', 1.49000000, 51.49000000, '2007-09-28 17:00:00', 2, 22.00000000, '1.png', 'active', '2024-11-07 07:19:23', '2024-11-07 07:19:23'),
(14, 4, 3, 'Dog Food', 'P-UoYcB', 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', 'pJo', 'qDw', 10.99000000, 46.99000000, '1990-03-10 17:00:00', 2, 40.00000000, '1.png', 'active', '2024-11-07 07:19:30', '2024-11-07 07:19:30'),
(15, 4, 1, 'Eggs', 'P-lcufz', 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', '7F7', 'ZVC', 2.99000000, 56.99000000, '2007-04-08 17:00:00', 8, 10.00000000, '1.png', 'active', '2024-11-07 07:19:35', '2024-11-07 07:19:35'),
(16, 4, 2, 'Fish Steak', 'P-Fqxj7', 'Quality fish steak, suitable for grilling, baking, or pan-searing.', 'eXg', 'tx4', 14.99000000, 111.99000000, '2011-10-21 17:00:00', 1, 99.00000000, '1.png', 'active', '2024-11-07 07:19:40', '2024-11-07 07:19:40'),
(17, 4, 2, 'Green Bell Pepper', 'P-cDp8p', 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', 'ypQ', 'njS', 1.29000000, 46.29000000, '1977-10-31 17:00:00', 5, 89.00000000, '1.png', 'active', '2024-11-07 07:19:47', '2024-11-07 07:19:47'),
(18, 4, 3, 'Green Chili Pepper', 'P-yHeXc', 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', 'pYk', '9VD', 0.99000000, 17.99000000, '1996-06-07 17:00:00', 3, 8.00000000, '1.png', 'active', '2024-11-07 07:19:50', '2024-11-07 07:19:50'),
(19, 4, 2, 'Honey Jar', 'P-QmSme', 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', '1M0', '8JT', 6.99000000, 37.99000000, '2010-06-17 17:00:00', 8, 25.00000000, '1.png', 'active', '2024-11-07 07:19:56', '2024-11-07 07:19:56'),
(20, 4, 2, 'Ice Cream', 'P-GKLtp', 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', '4BQ', 'D9a', 5.49000000, 38.49000000, '1993-05-17 17:00:00', 8, 76.00000000, '1.png', 'active', '2024-11-07 07:20:02', '2024-11-07 07:20:02'),
(21, 4, 1, 'Juice', 'P-yz1ZA', 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', 'Ur1', 'lyC', 3.99000000, 102.99000000, '2024-08-05 17:00:00', 4, 99.00000000, '1.png', 'active', '2024-11-07 07:20:06', '2024-11-07 07:20:06'),
(22, 4, 2, 'Kiwi', 'P-I4nrO', 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', 'pe6', 'C4v', 2.49000000, 25.49000000, '1991-11-06 17:00:00', 5, 1.00000000, '1.png', 'active', '2024-11-07 07:20:11', '2024-11-07 07:20:11'),
(23, 4, 1, 'Lemon', 'P-KVvPl', 'Zesty and tangy lemons, versatile for cooking, baking, or making refreshing beverages.', 'vOE', '8UZ', 0.79000000, 42.79000000, '1982-03-22 17:00:00', 7, 0.00000000, '1.png', 'active', '2024-11-07 07:20:16', '2024-11-07 07:20:16'),
(24, 4, 1, 'Milk', 'P-DkUNY', 'Fresh and nutritious milk, a staple for various recipes and daily consumption.', 'rE3', 'NlZ', 3.49000000, 15.49000000, '1971-07-23 17:00:00', 9, 57.00000000, '1.png', 'active', '2024-11-07 07:20:20', '2024-11-07 07:20:20'),
(25, 4, 3, 'Mulberry', 'P-E4i8O', 'Sweet and juicy mulberries, perfect for snacking or adding to desserts and cereals.', '4ay', 'fvf', 4.99000000, 27.99000000, '1983-07-21 17:00:00', 1, 79.00000000, '1.png', 'active', '2024-11-07 07:20:25', '2024-11-07 07:20:25'),
(26, 4, 2, 'Nescafe Coffee', 'P-kxfL3', 'Quality coffee from Nescafe, available in various blends for a rich and satisfying cup.', 'DNn', 'wbg', 7.99000000, 24.99000000, '1993-12-22 17:00:00', 3, 22.00000000, '1.png', 'active', '2024-11-07 07:20:30', '2024-11-07 07:20:30'),
(27, 4, 3, 'Potatoes', 'P-jt96o', 'Versatile and starchy potatoes, great for roasting, mashing, or as a side dish.', 'jVk', 'yDU', 2.29000000, 31.29000000, '2014-05-17 17:00:00', 1, 8.00000000, '1.png', 'active', '2024-11-07 07:20:35', '2024-11-07 07:20:35'),
(28, 4, 3, 'Protein Powder', 'P-5MELq', 'Nutrient-packed protein powder, ideal for supplementing your diet with essential proteins.', '3tK', 'wqb', 19.99000000, 48.99000000, '2007-03-15 17:00:00', 1, 65.00000000, '1.png', 'active', '2024-11-07 07:20:39', '2024-11-07 07:20:39'),
(29, 4, 1, 'Red Onions', 'P-QTIBC', 'Flavorful and aromatic red onions, perfect for adding depth to your savory dishes.', 'kbk', 'bGu', 1.99000000, 65.99000000, '1998-08-20 17:00:00', 2, 86.00000000, '1.png', 'active', '2024-11-07 07:20:44', '2024-11-07 07:20:44'),
(30, 4, 2, 'Rice', 'P-dy8YV', 'High-quality rice, a staple for various cuisines and a versatile base for many dishes.', 'CJi', 'Tji', 5.99000000, 60.99000000, '2020-02-13 17:00:00', 5, 49.00000000, '1.png', 'active', '2024-11-07 07:20:49', '2024-11-07 07:20:49'),
(31, 4, 3, 'Soft Drinks', 'P-IUTmX', 'Assorted soft drinks in various flavors, perfect for refreshing beverages.', 'kR1', 'MkB', 1.99000000, 97.99000000, '1979-01-17 17:00:00', 7, 78.00000000, '1.png', 'active', '2024-11-07 07:20:54', '2024-11-07 07:20:54'),
(32, 4, 1, 'Strawberry', 'P-Gs6EI', 'Sweet and succulent strawberries, great for snacking, desserts, or blending into smoothies.', 'ZQg', 'Wob', 3.99000000, 27.99000000, '2010-03-20 17:00:00', 6, 9.00000000, '1.png', 'active', '2024-11-07 07:21:00', '2024-11-07 07:21:00'),
(33, 4, 2, 'Tissue Paper Box', 'P-gMxFd', 'Convenient tissue paper box for everyday use, providing soft and absorbent tissues.', 'vY3', 'Tmf', 2.49000000, 94.49000000, '1993-12-21 17:00:00', 2, 97.00000000, '1.png', 'active', '2024-11-07 07:21:04', '2024-11-07 07:21:04'),
(34, 4, 3, 'Water', 'P-rpssT', 'Pure and refreshing bottled water, essential for staying hydrated throughout the day.', 'Z73', 'V74', 0.99000000, 85.99000000, '2010-07-09 17:00:00', 8, 95.00000000, '1.png', 'active', '2024-11-07 07:21:08', '2024-11-07 07:21:08'),
(35, 5, 3, 'House Showpiece Plant', 'P-tpb4r', 'The House Showpiece Plant is an artificial plant that brings a touch of nature to your home without the need for maintenance. It adds greenery and style to any space.', 'd9B', 'vA8', 39.99000000, 99.99000000, '1994-02-02 17:00:00', 7, 89.00000000, '1.png', 'active', '2024-11-07 07:21:14', '2024-11-07 07:21:14'),
(36, 5, 2, 'Plant Pot', 'P-mqPMh', 'The Plant Pot is a stylish container for your favorite plants. With a sleek design, it complements your indoor or outdoor garden, adding a modern touch to your plant display.', 'KLC', 'Qvq', 14.99000000, 75.99000000, '1979-07-12 17:00:00', 1, 70.00000000, '1.png', 'active', '2024-11-07 07:21:18', '2024-11-07 07:21:18'),
(37, 5, 2, 'Table Lamp', 'P-Vc6vV', 'The Table Lamp is a functional and decorative lighting solution for your living space. With a modern design, it provides both ambient and task lighting, enhancing the atmosphere.', 'QB7', 'O8N', 49.99000000, 83.99000000, '1988-03-22 17:00:00', 3, 84.00000000, '1.png', 'active', '2024-11-07 07:21:23', '2024-11-07 07:21:23'),
(38, 6, 3, 'Black Whisk', 'P-OkZjP', 'The Black Whisk is a kitchen essential for whisking and beating ingredients. Its ergonomic handle and sleek design make it a practical and stylish tool.', '9Tm', '6Cv', 9.99000000, 58.99000000, '1971-07-30 17:00:00', 8, 17.00000000, '1.png', 'active', '2024-11-07 07:21:26', '2024-11-07 07:21:26'),
(39, 6, 1, 'Boxed Blender', 'P-tGA1K', 'The Boxed Blender is a powerful and compact blender perfect for smoothies, shakes, and more. Its convenient design and multiple functions make it a versatile kitchen appliance.', 'Acd', 'cFf', 39.99000000, 103.99000000, '1981-11-11 17:00:00', 2, 81.00000000, '1.png', 'active', '2024-11-07 07:21:31', '2024-11-07 07:21:31'),
(40, 6, 2, 'Carbon Steel Wok', 'P-XkCOA', 'The Carbon Steel Wok is a versatile cooking pan suitable for stir-frying, sautéing, and deep frying. Its sturdy construction ensures even heat distribution for delicious meals.', 'vYw', 'NOi', 29.99000000, 116.99000000, '1996-10-15 17:00:00', 6, 2.00000000, '1.png', 'active', '2024-11-07 07:21:34', '2024-11-07 07:21:34'),
(41, 6, 1, 'Chopping Board', 'P-CZ9Cr', 'The Chopping Board is an essential kitchen accessory for food preparation. Made from durable material, it provides a safe and hygienic surface for cutting and chopping.', '4Cj', 'pMO', 12.99000000, 74.99000000, '1988-05-04 17:00:00', 9, 53.00000000, '1.png', 'active', '2024-11-07 07:21:39', '2024-11-07 07:21:39'),
(42, 6, 2, 'Citrus Squeezer Yellow', 'P-1PmxJ', 'The Citrus Squeezer in Yellow is a handy tool for extracting juice from citrus fruits. Its vibrant color adds a cheerful touch to your kitchen gadgets.', '52W', 'f6E', 8.99000000, 89.99000000, '1987-02-09 17:00:00', 3, 59.00000000, '1.png', 'active', '2024-11-07 07:21:43', '2024-11-07 07:21:43'),
(43, 6, 2, 'Egg Slicer', 'P-xPhrT', 'The Egg Slicer is a convenient tool for slicing boiled eggs evenly. It\'s perfect for salads, sandwiches, and other dishes where sliced eggs are desired.', 'qU8', 'ipf', 6.99000000, 71.99000000, '1992-01-13 17:00:00', 2, 30.00000000, '1.png', 'active', '2024-11-07 07:21:48', '2024-11-07 07:21:48'),
(44, 6, 1, 'Electric Stove', 'P-8Dr8f', 'The Electric Stove provides a portable and efficient cooking solution. Ideal for small kitchens or as an additional cooking surface for various culinary needs.', 'pUt', 'FXM', 49.99000000, 98.99000000, '1995-05-08 17:00:00', 1, 41.00000000, '1.png', 'active', '2024-11-07 07:21:52', '2024-11-07 07:21:52'),
(45, 6, 1, 'Fine Mesh Strainer', 'P-F8IM1', 'The Fine Mesh Strainer is a versatile tool for straining liquids and sifting dry ingredients. Its fine mesh ensures efficient filtering for smooth cooking and baking.', '3V8', 'tkj', 9.99000000, 41.99000000, '2006-02-26 17:00:00', 3, 13.00000000, '1.png', 'active', '2024-11-07 07:21:56', '2024-11-07 07:21:56'),
(46, 6, 1, 'Fork', 'P-h4iPL', 'The Fork is a classic utensil for various dining and serving purposes. Its durable and ergonomic design makes it a reliable choice for everyday use.', 'HfK', 'aHH', 3.99000000, 86.99000000, '2009-12-20 17:00:00', 9, 10.00000000, '1.png', 'active', '2024-11-07 07:21:59', '2024-11-07 07:21:59'),
(47, 6, 3, 'Glass', 'P-Q9p6T', 'The Glass is a versatile and elegant drinking vessel suitable for a variety of beverages. Its clear design allows you to enjoy the colors and textures of your drinks.', 'SNn', 'Igs', 4.99000000, 73.99000000, '2009-05-08 17:00:00', 4, 68.00000000, '1.png', 'active', '2024-11-07 07:22:04', '2024-11-07 07:22:04'),
(48, 6, 2, 'Grater Black', 'P-5tLTt', 'The Grater in Black is a handy kitchen tool for grating cheese, vegetables, and more. Its sleek design and sharp blades make food preparation efficient and easy.', 'RDD', 'Qk5', 10.99000000, 106.99000000, '1998-01-13 17:00:00', 3, 80.00000000, '1.png', 'active', '2024-11-07 07:22:10', '2024-11-07 07:22:10'),
(49, 6, 1, 'Hand Blender', 'P-IXSQ2', 'The Hand Blender is a versatile kitchen appliance for blending, pureeing, and mixing. Its compact design and powerful motor make it a convenient tool for various recipes.', 'R0A', 'irR', 34.99000000, 96.99000000, '2010-08-05 17:00:00', 3, 8.00000000, '1.png', 'active', '2024-11-07 07:22:14', '2024-11-07 07:22:14'),
(50, 6, 3, 'Ice Cube Tray', 'P-vHYAp', 'The Ice Cube Tray is a practical accessory for making ice cubes in various shapes. Perfect for keeping your drinks cool and adding a fun element to your beverages.', '91X', 'hEg', 5.99000000, 80.99000000, '1985-12-06 17:00:00', 5, 81.00000000, '1.png', 'active', '2024-11-07 07:22:20', '2024-11-07 07:22:20'),
(51, 6, 2, 'Kitchen Sieve', 'P-Z8VPO', 'The Kitchen Sieve is a versatile tool for sifting and straining dry and wet ingredients. Its fine mesh design ensures smooth results in your cooking and baking.', 'kIj', '9nZ', 7.99000000, 86.99000000, '2019-11-04 17:00:00', 7, 33.00000000, '1.png', 'active', '2024-11-07 07:22:24', '2024-11-07 07:22:24'),
(52, 6, 3, 'Knife', 'P-hdOiV', 'The Knife is an essential kitchen tool for chopping, slicing, and dicing. Its sharp blade and ergonomic handle make it a reliable choice for food preparation.', 'hk0', 'Irh', 14.99000000, 103.99000000, '1999-03-02 17:00:00', 3, 59.00000000, '1.png', 'active', '2024-11-07 07:22:27', '2024-11-07 07:22:27'),
(53, 6, 3, 'Lunch Box', 'P-5A6BU', 'The Lunch Box is a convenient and portable container for packing and carrying your meals. With compartments for different foods, it\'s perfect for on-the-go dining.', 'bVO', 'wBz', 12.99000000, 48.99000000, '1988-01-10 17:00:00', 6, 26.00000000, '1.png', 'active', '2024-11-07 07:22:32', '2024-11-07 07:22:32'),
(54, 6, 3, 'Microwave Oven', 'P-LM1vV', 'The Microwave Oven is a versatile kitchen appliance for quick and efficient cooking, reheating, and defrosting. Its compact size makes it suitable for various kitchen setups.', 'moN', '382', 89.99000000, 157.99000000, '1986-10-14 17:00:00', 1, 27.00000000, '1.png', 'active', '2024-11-07 07:22:37', '2024-11-07 07:22:37'),
(55, 6, 1, 'Mug Tree Stand', 'P-YfgHn', 'The Mug Tree Stand is a stylish and space-saving solution for organizing your mugs. Keep your favorite mugs easily accessible and neatly displayed in your kitchen.', 'VUP', 'C6m', 15.99000000, 37.99000000, '1975-06-23 17:00:00', 3, 93.00000000, '1.png', 'active', '2024-11-07 07:22:40', '2024-11-07 07:22:40'),
(56, 6, 1, 'Pan', 'P-XNAm6', 'The Pan is a versatile and essential cookware item for frying, sautéing, and cooking various dishes. Its non-stick coating ensures easy food release and cleanup.', 'dHT', 'x7m', 24.99000000, 104.99000000, '2004-11-25 17:00:00', 8, 40.00000000, '1.png', 'active', '2024-11-07 07:22:44', '2024-11-07 07:22:44'),
(57, 6, 1, 'Plate', 'P-TCHSp', 'The Plate is a classic and essential dishware item for serving meals. Its durable and stylish design makes it suitable for everyday use or special occasions.', 'n4m', 'xZD', 3.99000000, 43.99000000, '2010-03-07 17:00:00', 9, 30.00000000, '1.png', 'active', '2024-11-07 07:22:48', '2024-11-07 07:22:48'),
(58, 6, 1, 'Red Tongs', 'P-88pcL', 'The Red Tongs are versatile kitchen tongs suitable for various cooking and serving tasks. Their vibrant color adds a pop of excitement to your kitchen utensils.', 'fO2', 'UyN', 6.99000000, 86.99000000, '2000-07-09 17:00:00', 6, 15.00000000, '1.png', 'active', '2024-11-07 07:22:52', '2024-11-07 07:22:52'),
(59, 6, 3, 'Silver Pot With Glass Cap', 'P-sFsyW', 'The Silver Pot with Glass Cap is a stylish and functional cookware item for boiling, simmering, and preparing delicious meals. Its glass cap allows you to monitor cooking progress.', 'Api', 'Al4', 39.99000000, 136.99000000, '1985-04-15 17:00:00', 7, 37.00000000, '1.png', 'active', '2024-11-07 07:22:57', '2024-11-07 07:22:57'),
(60, 6, 1, 'Slotted Turner', 'P-SAnau', 'The Slotted Turner is a kitchen utensil designed for flipping and turning food items. Its slotted design allows excess liquid to drain, making it ideal for frying and sautéing.', '4cP', '3VB', 8.99000000, 62.99000000, '2016-03-29 17:00:00', 7, 36.00000000, '1.png', 'active', '2024-11-07 07:23:00', '2024-11-07 07:23:00'),
(61, 6, 2, 'Spice Rack', 'P-vre6Q', 'The Spice Rack is a convenient organizer for your spices and seasonings. Keep your kitchen essentials within reach and neatly arranged with this stylish spice rack.', 'zpz', '3q5', 19.99000000, 76.99000000, '1977-01-28 17:00:00', 4, 24.00000000, '1.png', 'active', '2024-11-07 07:23:05', '2024-11-07 07:23:05'),
(62, 6, 2, 'Spoon', 'P-lx7Ve', 'The Spoon is a versatile kitchen utensil for stirring, serving, and tasting. Its ergonomic design and durable construction make it an essential tool for every kitchen.', 'por', 'fff', 4.99000000, 57.99000000, '1998-03-28 17:00:00', 4, 51.00000000, '1.png', 'active', '2024-11-07 07:23:09', '2024-11-07 07:23:09'),
(63, 6, 2, 'Tray', 'P-syyt9', 'The Tray is a functional and decorative item for serving snacks, appetizers, or drinks. Its stylish design makes it a versatile accessory for entertaining guests.', 'BlS', 'nc4', 16.99000000, 99.99000000, '1970-04-25 17:00:00', 1, 48.00000000, '1.png', 'active', '2024-11-07 07:23:15', '2024-11-07 07:23:15'),
(64, 6, 3, 'Wooden Rolling Pin', 'P-5DXUP', 'The Wooden Rolling Pin is a classic kitchen tool for rolling out dough for baking. Its smooth surface and sturdy handles make it easy to achieve uniform thickness.', 'zTB', '7GV', 11.99000000, 69.99000000, '1992-09-03 17:00:00', 7, 80.00000000, '1.png', 'active', '2024-11-07 07:23:19', '2024-11-07 07:23:19'),
(65, 6, 2, 'Yellow Peeler', 'P-81WsE', 'The Yellow Peeler is a handy tool for peeling fruits and vegetables with ease. Its bright yellow color adds a cheerful touch to your kitchen gadgets.', 'z0x', '4eQ', 5.99000000, 103.99000000, '2015-03-06 17:00:00', 1, 86.00000000, '1.png', 'active', '2024-11-07 07:23:24', '2024-11-07 07:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,8) NOT NULL,
  `salary_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `val` text DEFAULT NULL,
  `group` varchar(255) NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `photo`, `shop_name`, `created_at`, `updated_at`) VALUES
(1, 'Lauryn Monahan', 'bgraham@stanton.com', '(724) 893-4862', '1564 O\'Reilly Parks\nSouth Arnoborough, CA 55290-6126', 'supplier-1.jpg', 'Crist LLC', '2024-11-07 07:18:17', '2024-11-07 07:18:17'),
(2, 'Walton Maggio', 'fahey.lou@hodkiewicz.com', '248-649-0608', '98165 Lynch Mountains\nNorth Preston, KS 40813', 'supplier-2.jpg', 'Block LLC', '2024-11-07 07:18:17', '2024-11-07 07:18:17'),
(3, 'Tressa Powlowski', 'edoyle@altenwerth.info', '+1-334-451-8157', '431 Sheridan Ports Suite 959\nKuphalhaven, VT 55128-7770', 'supplier-3.jpg', 'Mohr, Champlin and Hickle', '2024-11-07 07:18:17', '2024-11-07 07:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `paid_through` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unit_types`
--

CREATE TABLE `unit_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_types`
--

INSERT INTO `unit_types` (`id`, `name`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Piece', 'p', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(2, 'Kilogram', 'kg', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(3, 'Gram', 'g', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(4, 'Liter', 'l', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(5, 'Milliliter', 'ml', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(6, 'Meter', 'm', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(7, 'Centimeter', 'cm', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(8, 'Inch', 'in', '2024-11-07 07:18:18', '2024-11-07 07:18:18'),
(9, 'Foot', 'ft', '2024-11-07 07:18:18', '2024-11-07 07:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'widiyantiintan', 'widiyantiintanndok252@gmail.com', NULL, '$2y$12$QSpsFr2SXJUNnYQWS/6zTul9KtXr6rl/3coYLUeGVygUoFFrlCZbC', NULL, NULL, '2024-11-07 07:31:58', '2024-11-07 07:31:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_name_index` (`name`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_amount_index` (`amount`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_due_index` (`due`),
  ADD KEY `orders_profit_index` (`profit`),
  ADD KEY `orders_loss_index` (`loss`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`),
  ADD KEY `products_unit_type_id_foreign` (`unit_type_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `unit_types`
--
ALTER TABLE `unit_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_types`
--
ALTER TABLE `unit_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_unit_type_id_foreign` FOREIGN KEY (`unit_type_id`) REFERENCES `unit_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
