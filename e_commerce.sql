-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2016 at 05:49 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `name`) VALUES
(1, 'uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_05_12_091605_buat_table_products', 1),
('2015_05_12_092846_buat_table_transactions', 2),
('2015_05_12_091605_buat_table_pelanggan', 3),
('2015_05_16_051340_buat_table_pelanggan', 4),
('2015_05_16_052126_buat_table_pelanggan', 5),
('2015_05_16_233918_buat_table_transactions', 6),
('2015_05_16_234035_buat_table_pelanggan', 7),
('2015_05_16_234426_buat_table_transactions', 8),
('2016_06_19_133324_buat_table_kategori', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `propinsi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kodepos` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `formid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `telepon`, `alamat`, `propinsi`, `kodepos`, `formid`, `created_at`, `updated_at`) VALUES
(1, 'Kresna Abimanyu K', '0838747472', 'JL. Surya Kencana 12, Pamulang, ', 'Banten', '123414', 'wyGbGMD0DZWDdP7F', '2015-05-17 06:50:24', '2015-05-17 06:50:24'),
(2, 'Akhmad Dharma Kasman', '085691738906', 'Jalan Mangkubumi No. 34 Desa Kepuntren, Kab. Bogor', 'Jawa Barat', '231566', 'gfQxoehfcTCFoa2N', '2015-05-18 13:28:49', '2015-05-18 13:28:49'),
(3, 'hanif', '8092084231', 'awdadafafafa', 'jogjakarta', '5571', '7WikAjVrKfOPrQTX', '2016-06-19 01:14:16', '2016-06-19 01:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `kategori_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`, `kategori_id`) VALUES
(3, 'Samsung Galaxy S4', 'Segi dapur pacu, Samsung Galaxy S4 di lengkapi dengan CPU bertipe Exynos 5 Octa 5410 dan GPU bertipe PowerVR SGX 544MP keduanya akan bertugas sebagai otak dan nyawa dari Samsung Galaxy S4, Kamera berukuran 13 MP untuk penfambian foto aka menjadikan gambar berkwalitas bagus apalagi di tunjang dengan beberapa fitu yang memang di siapkan untuk kecanggihan Samsung Galaxy S4 seperti autofocus, LED flash dan masih banyak lagi. ', '5555000', 'uploads/95673.jpg', '2015-05-14 19:09:57', '2015-05-14 19:25:59', 1),
(4, 'Samsung Galaxy S5', ' Peran Samsung Galaxy S4 sekarang tergantikan seiring upgrade terbaru smartphone Samsung bertipe S. Walaupun saat ini harga Samsung Galaxy S5 berkisar pada 7 jutaan yang saat launcing pertama namun dengan kecanggihan spesifikasi yang di tawarkan oleh pabrikan asal negeri gingseng ini. Kalau di bandingkan dengan smartphone keluaran Samsung yang lain Samsung Galaxy S5 lah yang paling unggul.', '7000000', 'uploads/21598.jpg', '2015-05-14 19:12:54', '2015-05-14 19:12:54', 1),
(5, 'Iphone 6', 'Apple iPhone 6 menjadi ponsel tertipis yang pernah Apple rilis dengan dimensi 138.1 x 67 x 6.9 mm dan bobot 129 gram. Meskipun membesar dimensinya namun iPhone 6 masih masuk akal untuk digenggam dengan satu tangan dan dimasukkan ke saku celana. ', '11000000', 'uploads/18258.jpg', '2015-05-14 19:18:13', '2015-05-14 19:18:13', 1),
(6, 'Asus Zenfone 5', 'Tidak mau kalah dengan para pesaingnya, Asus, kembali menghadirkan varian smartphone berkualitas yang didukung dengan teknologi serta kinerja yang optimal. Asus Zenfone 5 A500CG, hadir dengan desain modern masa kini berbalut 5 pilihan warna menarik yang membuatnya terlihat semakin elegan dan berkelas.', '2300000', 'uploads/86219.jpeg', '2015-05-14 19:21:29', '2015-05-14 19:21:29', 1),
(7, 'Sony Experia Z3', 'Sony Xperia Z3 siap membuat Anda terpukau dengan kualitas layarnya yang di luar ekspektasi Anda. Layar IPS sebesar 5.2" yang dikelilingi bingkai tipis membuat bentuknya tidak melebar dan nyaman digenggam. Teknologi Full HD beresolusi 1920 x 1080 piksel dipadu dengan TRILUMINOS menampilkan warna asli yang kaya dan meproduksi warna-warna yang sulit dihasilkan seperti merah biru dan hijau. Teknologi X-Reality memberikan gambar yang lebih jelas dan hidup serta peningkatkan kontras dan warna. Kini, p', '7500000', 'uploads/41506.jpg', '2015-05-14 21:59:56', '2015-05-14 22:03:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `product_id`, `formid`, `tanggal`, `qty`, `total_price`, `subtotal`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'wyGbGMD0DZWDdP7F', '2015-05-16', '1', '7000000', '9300000', 'unpaid', '2015-05-17 06:49:57', '2015-05-17 06:49:57'),
(2, '6', 'wyGbGMD0DZWDdP7F', '2015-05-16', '1', '2300000', '9300000', 'unpaid', '2015-05-17 06:49:57', '2015-05-17 06:49:57'),
(3, '7', 'gfQxoehfcTCFoa2N', '2015-05-18', '1', '7500000', '14500000', 'unpaid', '2015-05-18 13:26:18', '2015-05-18 13:26:18'),
(4, '4', 'gfQxoehfcTCFoa2N', '2015-05-18', '1', '7000000', '14500000', 'unpaid', '2015-05-18 13:26:18', '2015-05-18 13:26:18'),
(5, '6', '7WikAjVrKfOPrQTX', '2016-06-19', '2', '4600000', '11600000', 'unpaid', '2016-06-19 01:13:37', '2016-06-19 01:13:37'),
(6, '4', '7WikAjVrKfOPrQTX', '2016-06-19', '1', '7000000', '11600000', 'unpaid', '2016-06-19 01:13:37', '2016-06-19 01:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$7hTqpk/DJ5ZTqNCEyIQiEu7qn0jiNIGiX4eqcf6a5tLyYHaLSCicK', '9zpZqXDFgjeJQiGqAZztma6qXMQAD6kI7oqJUBoeLHsa5eiazgpybN9LFjHW', '2015-05-14 18:27:57', '2016-06-19 01:07:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
