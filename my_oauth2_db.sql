-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 26, 2018 alle 20:16
-- Versione del server: 10.1.25-MariaDB
-- Versione PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_oauth2_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dump dei dati per la tabella `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('0030455b121bdff27e297c11ef5356dcfc6fa0f3', 'testclient', NULL, '2018-05-23 18:35:38', NULL),
('008c374c05b39b5e9e5e6170cbde018dc1be27ed', 'testclient', NULL, '2018-05-24 20:45:45', 'A'),
('01d65e4c685be4a98d00536016dd9abab0248871', 'testclient', NULL, '2018-05-22 21:57:14', NULL),
('023405991930943cee9f19e144b30878a22d32bf', 'testclient', NULL, '2018-05-23 18:31:46', NULL),
('031565cea3d44c93279337ccdee93460bf11b547', 'testclient', NULL, '2018-05-23 20:40:16', NULL),
('044b14009ef7ec277244f7605a1cf1ae7ec8f73e', 'testclient', NULL, '2018-05-24 21:00:03', 'A'),
('065f206e41b6893a778c93be379b6910cb43c806', 'testclient', NULL, '2018-05-23 18:24:03', NULL),
('0723e10e4da5e7bb66188ecf66990762933056d5', 'testclient', NULL, '2018-05-23 06:56:28', NULL),
('07cce67f9713784775b098fe0b2ef7dedec320b0', 'testclient', NULL, '2018-05-23 18:08:44', NULL),
('0bd8c29e87fde51102a2d5dc5eca01a7a614bce1', 'testclient', NULL, '2018-05-23 06:57:12', NULL),
('0f5d17361fc56fd51d62452c9590dd5699565528', 'testclient', NULL, '2018-05-23 19:28:39', NULL),
('112dbf3dfcaac804ba34010a78a29d6b4a10dc8c', 'testclient', NULL, '2018-05-22 22:19:29', NULL),
('1144b3dbe4f2e097fce3b4556a85947f9fb79b3d', 'testclient', NULL, '2018-05-26 19:13:41', 'A'),
('123d7794756f89966336718e2455bda152d42f7c', 'testclient', NULL, '2018-05-23 19:28:44', NULL),
('132af9614af16bf674b2604ac2573ecd9f971fa7', 'testclient', NULL, '2018-05-23 07:10:38', NULL),
('13b3a929543c79a6e759f82c288621032ba6dfe4', 'testclient', NULL, '2018-05-23 19:27:21', NULL),
('140dc8ee55e20f5de1e324a994f752dd5268ac3f', 'testclient', NULL, '2018-05-24 20:46:41', 'A'),
('17dc04a5193bf0114189c28824148c20d475ba5d', 'testclient', NULL, '2018-05-23 18:11:00', NULL),
('1802075b9d54cfa5731f2ab518b3b9a9e4cf79f1', 'testclient', NULL, '2018-05-23 18:08:28', NULL),
('1a17c931f75a05e574d716eb0949f0c8cba6ee20', 'testclient', NULL, '2018-05-23 18:35:43', NULL),
('1b3b41e6b528432a121bacc2b3c77291556ba4ed', 'testclient', NULL, '2018-05-22 21:58:57', NULL),
('1b9ab968327e4f2bddfe3132359d1a0d58b7f435', 'testclient', NULL, '2018-05-23 18:39:08', NULL),
('1e15db1e9aa119e6814b6a79ff99b1a211bd9f83', 'testclient', NULL, '2018-05-23 06:37:12', NULL),
('1e8cdc67baa2a38f4506ff8f6f33028dfcbc782b', 'testclient', NULL, '2018-05-23 06:41:36', NULL),
('1f585623350597363c40786b6b092c71d02de606', 'testclient', NULL, '2018-05-23 06:30:32', NULL),
('1fab450e6170273cfc408a8b65b1f115be71d03d', 'testclient', NULL, '2018-05-23 07:10:07', NULL),
('1ffe0340e880c668d3b95f16bd824a3a3be46a42', 'testclient', NULL, '2018-05-23 18:10:23', NULL),
('205048d493584f59d03bdfe1d0d49aac58a87244', 'testclient', NULL, '2018-05-23 19:27:30', NULL),
('21b5509937538d22bda0d63d69ac24990495287e', 'testclient', NULL, '2018-05-23 06:57:54', NULL),
('25646810e1ffa925b25731283a8682cd16315896', 'testclient', NULL, '2018-05-22 21:22:02', NULL),
('271cfc33c30289af3d4a7c235e4b50f330ea149c', 'testclient', NULL, '2018-05-23 06:41:49', NULL),
('273ef297d4f87d7256cdfdf674011f2a205f434c', 'testclient', NULL, '2018-05-23 07:14:22', NULL),
('2778acf8ca8343fead4f1f544ba324ce45a8d081', 'testclient', NULL, '2018-05-23 06:57:59', NULL),
('28925ec351a3907e2d2cd6c4f0ee9a4cd0acd84a', 'testclient', NULL, '2018-05-23 20:58:20', NULL),
('2b494da5ffcfd76be2f316944f0fdd3bbd8208e5', 'testclient', NULL, '2018-05-22 21:51:55', NULL),
('2e9b0f8b4588e039eefc28ebc8a628e93739a325', 'testclient', NULL, '2018-05-23 06:41:53', NULL),
('2f447175af87a44c55b75c6164ae23351e01d5e8', 'testclient', NULL, '2018-05-23 06:52:26', NULL),
('3084557fe1e34bc7e64e123b82cf1c3fa9be56cf', 'testclient', NULL, '2018-05-24 20:43:45', 'A'),
('30e6095543bf810fb46faa8c9ce226efa887d01c', 'testclient', NULL, '2018-05-23 06:59:35', NULL),
('31e07660df96bb3b31f303a3430aecbe19170e6c', 'testclient', NULL, '2018-05-24 22:36:50', 'A'),
('325387e31501fc5b0958fe257b076e233b9ae784', 'testclient', NULL, '2018-05-23 06:54:20', NULL),
('32ef4687caf5b0a81d7a3438b9533669fbc8824c', 'testclient', NULL, '2018-05-23 18:10:42', NULL),
('3336d93c0d3b2d835c44fc66ef28204ce044fea4', 'testclient', NULL, '2018-05-23 21:20:40', NULL),
('3702a0b0cc5518e8f43b2daf3953a534d034189a', 'testclient', NULL, '2018-05-23 18:23:59', NULL),
('37d397b85928988a8768e215805fc39c52a5ab8d', 'testclient', NULL, '2018-05-23 21:29:28', NULL),
('3966bd9b26b77625f63af4791a6189d1f63005da', 'testclient', NULL, '2018-05-22 21:23:02', NULL),
('3d25b359cd9506b6627b44442d1822443dabfc6e', 'testclient', NULL, '2018-05-22 21:55:52', NULL),
('3e3eca38e01f05667064e1d267391c23dde4cc35', 'testclient', NULL, '2018-05-22 21:55:55', NULL),
('3f0f1c2064db7ef369c8704989ea37ffb6a8c995', 'testclient', NULL, '2018-05-23 18:10:40', NULL),
('3ff725ac201416191bbbc126c24a9b537fc25aaf', 'testclient', NULL, '2018-05-23 21:20:37', NULL),
('40568ad2c2874b642644df20febce7f5078f88c9', 'testclient', NULL, '2018-05-22 21:32:46', NULL),
('409d177b8b866a899b6059ab1f18df30bbb17c2b', 'testclient', NULL, '2018-05-23 21:04:24', NULL),
('42387fda9a20124136e7822d4fdb5527d53999b1', 'testclient', NULL, '2018-05-23 06:38:32', NULL),
('452faa4c065f04c7e9b5dcb02dcf43a2f98d7e99', 'testclient', NULL, '2018-05-22 21:21:52', NULL),
('45c2ca7133805970c2a719c23f373db4ef740f46', 'testclient', NULL, '2018-05-23 18:21:30', NULL),
('463b2a9c8dba9b5bbf60c488389642fdb5d29b16', 'testclient', NULL, '2018-05-23 07:03:33', NULL),
('46e1b8fee10aefb4adff08aa200519ec17474134', 'testclient', NULL, '2018-05-22 21:59:32', NULL),
('47b50ffdfa1ed0e116b84a0c90c09ae88889658a', 'testclient', NULL, '2018-05-23 18:12:16', NULL),
('48cb91e42b39ac52428508d5c3f7e7b0b2239e91', 'testclient', NULL, '2018-05-23 20:58:25', NULL),
('4991f2c3145bd0c847acdb68edffbfc1157181c9', 'testclient', NULL, '2018-05-22 21:59:29', NULL),
('4ba52c3c2fcce7bc86eb557b600d4c5e79edc167', 'testclient', NULL, '2018-05-23 07:13:02', NULL),
('4c744daec9cc16cc7a422e2bdf38dcc2a89e62ff', 'testclient', NULL, '2018-05-24 20:45:16', 'A'),
('4e88fdb0a4cb1f999d41fddc2d80b3477b6bd435', 'testclient', NULL, '2018-05-24 21:11:33', 'A'),
('4f44c027ef7eeb801dea81ff3ccaf12d8e5d4765', 'testclient', NULL, '2018-05-23 18:10:18', NULL),
('4f92d707d5d880fe215683d22f34aea5915a6e26', 'testclient', NULL, '2018-05-23 07:08:20', NULL),
('5405035d2fdc453b2342515b083b3238bac839c0', 'testclient', NULL, '2018-05-23 06:32:29', NULL),
('5613d4285d03957c7b1d4bca376b9502089e2690', 'testclient', NULL, '2018-05-23 07:13:29', NULL),
('582c4439246dceee32ef72b84ae883d874a63e4a', 'testclient', NULL, '2018-05-23 18:09:39', NULL),
('598e60aabf04c4800f3b66dafb491bf6fbcf3980', 'testclient', NULL, '2018-05-22 22:19:26', NULL),
('59ad2cb4fd825c9d8b64e45547a23994d1c22571', 'testclient', NULL, '2018-05-23 06:55:28', NULL),
('5b4eff245ea6de7e4a0012c4fe7cae436a295c02', 'testclient', NULL, '2018-05-23 18:34:32', NULL),
('5c91f29bdf5865711fabfa09bab8ab2ab9ef6a52', 'testclient', NULL, '2018-05-22 21:29:51', NULL),
('5f5f14e68bd4511831ef52237d975824789551c1', 'testclient', NULL, '2018-05-23 18:09:42', NULL),
('6038541608d036bfe752669aa33aac1f57efb8c7', 'testclient', NULL, '2018-05-23 07:08:16', NULL),
('6450a9f1d7787c32f78de5cf72048564c4cbdeb6', 'testclient', NULL, '2018-05-23 21:04:28', NULL),
('6694be08bbf30da6ee851ba629fba83909285849', 'testclient', NULL, '2018-05-23 06:38:29', NULL),
('679773705194b970395ca6cd3e1cd64810a898d5', 'testclient', NULL, '2018-05-23 19:33:59', NULL),
('680a2e50a549ffb6d25f31c55672d138b8e6b22b', 'testclient', NULL, '2018-05-22 21:53:02', NULL),
('6a59f675511c3bb4ce1092d8b15aa8909be90bf4', 'testclient', NULL, '2018-05-22 21:22:28', NULL),
('6bf91f95aac1563986164100ec881ae4860df9e9', 'testclient', NULL, '2018-05-26 19:14:37', 'A'),
('6c878d9a1474ed0e63827084650b1a00821c7914', 'testclient', NULL, '2018-05-23 07:07:46', NULL),
('6f5ae8e48837d99fc78dcead0557e551561b2d58', 'testclient', NULL, '2018-05-23 18:19:14', NULL),
('70c78d2a2a172f5ad2fd682f92708c1ffabdb3a6', 'testclient', NULL, '2018-05-23 06:42:01', NULL),
('70f2a206acb101bf5a1ca79b06ada7df6a03018e', 'testclient', NULL, '2018-05-23 19:13:40', NULL),
('72e76f52c652121a6ab69dbfd49e95bda13265a8', 'testclient', NULL, '2018-05-24 20:59:27', 'A'),
('72ea79ff758edf8759c1d6f58492651c953c971b', 'testclient', NULL, '2018-05-24 20:08:28', NULL),
('7387c9f63cd418f418c35dfc811414b68659835a', 'testclient', NULL, '2018-05-23 18:10:38', NULL),
('76b1419abc2b631cd0a5bde866dc0fac3fb57dc3', 'testclient', NULL, '2018-05-23 21:19:49', NULL),
('77af3cfe0e0bad1cfe1aaa2c33f4c8ce3976206f', 'testclient', NULL, '2018-05-23 07:06:15', NULL),
('77d84faeb0b5fe46997b78471a7338c58a9cc261', 'testclient', NULL, '2018-05-23 21:05:33', NULL),
('77fda85362863b357889c514cd9f493abaf7381c', 'testclient', NULL, '2018-05-22 21:32:02', NULL),
('78769190878d765a1522dc5ca6fc15ed7f486d47', 'testclient', NULL, '2018-05-22 21:21:16', NULL),
('79ab8fc60d46080a65133bb47e35464e90902226', 'testclient', NULL, '2018-05-22 21:22:58', NULL),
('7bf00292528a2c8f8db48f03cc620968668281d8', 'testclient', NULL, '2018-05-22 21:24:54', NULL),
('7c4ad5b3e59c65f706fa76de82e5472775e6fca2', 'testclient', NULL, '2018-05-23 18:10:44', NULL),
('7cf321023488157429717b1f3b5de1c2eaaf986c', 'testclient', NULL, '2018-05-22 21:30:33', NULL),
('7d1e652f8e37f9637d26ab7b60a14d49c0e2012b', 'testclient', NULL, '2018-05-23 19:27:26', NULL),
('7d7eae82373ba61942a96dc19afee8098cc59e1e', 'testclient', NULL, '2018-05-23 20:40:11', NULL),
('7e049c6ee914ac66177a478f481c281c1c647b2d', 'testclient', NULL, '2018-05-22 21:24:48', NULL),
('804a33e7599e5676d0a745f0a821e35fdb16ed9f', 'testclient', NULL, '2018-05-23 18:22:17', NULL),
('807362ef54520487018d5564c27c6c5fb771cebc', 'testclient', NULL, '2018-05-23 18:10:25', NULL),
('8277626cc8f8bc774f77217238abf79317570fc9', 'testclient', NULL, '2018-05-24 20:47:50', 'A'),
('82ac4b4b459f1729fa7fec011a608ff3e1a2dd83', 'testclient', NULL, '2018-05-22 21:24:52', NULL),
('834f267382186f27829fb803f94d4ce592c85e19', 'testclient', NULL, '2018-05-23 21:19:52', NULL),
('83d79aa16b9c4ff6e0d534001e446fdb08de4b86', 'testclient', NULL, '2018-05-23 18:34:36', NULL),
('84b5ecd3abf760e8c0b17337ad2dc5ef35321c02', 'testclient', NULL, '2018-05-23 06:31:41', NULL),
('85b0c1ba58416e98bb920e8e13290a0801d056dd', 'testclient', NULL, '2018-05-23 06:46:32', NULL),
('85d4e15f523bf776087fac5f8c7c97ae6f7e8ca9', 'testclient', NULL, '2018-05-23 18:08:38', NULL),
('87fa844a9c3bd56c60a709b837d84f8208eb57d4', 'testclient', NULL, '2018-05-23 06:42:08', NULL),
('884826eef677bee6bc35f2c5ef722b35d9237c17', 'testclient', NULL, '2018-05-23 20:40:19', NULL),
('88b7fa142140b2283e2c073c3269101335782fdb', 'testclient', NULL, '2018-05-23 18:38:57', NULL),
('89de17642de9a7813fa496f19f5ddf2a2a6e5cd9', 'testclient', NULL, '2018-05-23 20:40:28', NULL),
('8a7f0d02e7af5f43db8a10336c957903f41bdc4f', 'testclient', NULL, '2018-05-23 19:35:42', NULL),
('8dce950221013062e5c5756bc5727513df1e1836', 'testclient', NULL, '2018-05-23 06:57:08', NULL),
('8e392dc93bbf4a7302be2548a0270ec9b6e78abe', 'testclient', NULL, '2018-05-23 18:10:31', NULL),
('8e544deb5541cff58f0f1ef09bad3461a75ccc48', 'testclient', NULL, '2018-05-23 06:59:31', NULL),
('8ed00ec6722fc9a76592ca5a92d1800d7c125141', 'testclient', NULL, '2018-05-23 18:10:36', NULL),
('8f5145b744cbad9b63366d71e114f4a522811f13', 'testclient', NULL, '2018-05-23 18:19:18', NULL),
('916dc37f79a19cda272cb9d937eb69a63a7a5c6f', 'testclient', NULL, '2018-05-23 18:10:50', NULL),
('91d799f32b78eb32f7aef6876347e626674d5e1e', 'testclient', NULL, '2018-05-23 21:05:29', NULL),
('9266aa20e574f98902c4bc20e0e1c652cfdbd205', 'testclient', NULL, '2018-05-23 06:42:12', NULL),
('9336e32bcc2b73ee40546f5f10ae9e798c5000fd', 'testclient', NULL, '2018-05-23 19:13:44', NULL),
('939e13fbbc8e73b781e995f351771dd6f72e2dac', 'testclient', NULL, '2018-05-23 06:42:03', NULL),
('940aa6e154dc1e589b0cfbe7feeb5154ec82633b', 'testclient', NULL, '2018-05-23 18:22:13', NULL),
('982bceec0bac11037a6a83b54cadefa9f5e74a12', 'testclient', NULL, '2018-05-23 21:03:53', NULL),
('98ca31be52bf43cd4d5d739e76955dd241577285', 'testclient', NULL, '2018-05-22 21:30:36', NULL),
('991ab992f83f5081d7ae2686ad8e290ea422099b', 'testclient', NULL, '2018-05-23 07:13:48', NULL),
('9a8172536776143890db0381aec1162b02f45cdb', 'testclient', NULL, '2018-05-23 06:34:57', NULL),
('9c857751801bb5628e4bab6c87c1ce8c1a67dd9c', 'testclient', NULL, '2018-05-23 07:14:00', NULL),
('9c88193a0cf80483ac2a54bba5dfb1405ce4cdb8', 'testclient', NULL, '2018-05-23 20:40:24', NULL),
('9cb461463f720c9a0259819b496833454ae3d5c5', 'testclient', NULL, '2018-05-22 21:30:31', NULL),
('9e61135636e1757a51a1abbc2a16d585f296ac4d', 'testclient', NULL, '2018-05-23 18:10:48', NULL),
('9eba116247d98351ebe605303f32318ca173cc66', 'testclient', NULL, '2018-05-23 06:58:45', NULL),
('9ff25b2478f713bfb3c6bd429452dafa928ff783', 'testclient', NULL, '2018-05-23 06:37:09', NULL),
('a1d2e8425e4836d3665e33a0da4422daa0ef3f6a', 'testclient', NULL, '2018-05-24 21:55:20', 'A'),
('a65b031948983314863e0ae6380f22621fd27017', 'testclient', NULL, '2018-05-24 21:54:21', 'B'),
('a7531dbce5f2680dcae876a22b54fe3a250c1e1f', 'testclient', NULL, '2018-05-24 20:47:02', 'A'),
('a9c0aee551fb748c66465aebb311e82666a70aa3', 'testclient', NULL, '2018-05-23 18:31:41', NULL),
('acc6025d91c3a8e07e7a37cccf0fc83e5b0d3ff6', 'testclient', NULL, '2018-05-23 06:39:19', NULL),
('b26e64ab3a056256d53bb91cf703d0b0f912f3ad', 'testclient', NULL, '2018-05-23 06:30:36', NULL),
('b27c1e39a8e6f335fe22f96a57534d26d6adeffb', 'testclient', NULL, '2018-05-23 06:41:33', NULL),
('b3a4b71b10695e547bec577389ebf3a962f97bab', 'testclient', NULL, '2018-05-22 21:29:31', NULL),
('b3b41b4c11c29bf9c0217e17eaf56229e6f39dab', 'testclient', NULL, '2018-05-24 20:58:08', 'A'),
('b3c9a2548c96761ebfe370c2eee7c83dbb656cb3', 'testclient', NULL, '2018-05-22 21:59:00', NULL),
('b5b7b4e1113d6b71d7ffba3ee5dbebaaa0648ed7', 'testclient', NULL, '2018-05-23 06:33:41', NULL),
('b78ab73cebe1e64704f169749e50f2e720efb080', 'testclient', NULL, '2018-05-23 06:34:52', NULL),
('b8dde722a17704fb7f64535446941fb588402cf3', 'testclient', NULL, '2018-05-23 21:03:57', NULL),
('ba8de2c51ca42cce9afc3fbec84326baf1240a50', 'testclient', NULL, '2018-05-23 07:13:46', NULL),
('bb54617badee40c146afbe3494a179b574839c9e', 'testclient', NULL, '2018-05-24 21:08:05', 'A'),
('bc00dee81b1cae09830d52b2e24ea5dbcef664d9', 'testclient', NULL, '2018-05-23 07:10:34', NULL),
('bd83898d806e6f6582236f0ee0b874001b9b13aa', 'testclient', NULL, '2018-05-23 18:10:29', NULL),
('bda6cb1cc311c28523c5f2819cdb9be10b513743', 'testclient', NULL, '2018-05-22 21:34:25', NULL),
('bf87088afdf18f6851136326ae6f2d9ec53efe74', 'testclient', NULL, '2018-05-23 21:27:21', NULL),
('bfe05145687aa5d469219506a0cf9bf32f40e443', 'testclient', NULL, '2018-05-23 07:05:28', NULL),
('c0489d23cc99d1da994b5ea45996b963041faafb', 'testclient', NULL, '2018-05-22 21:55:50', NULL),
('c09dbfee76a01c37e8f1525454567d46bbdca331', 'testclient', NULL, '2018-05-23 18:21:26', NULL),
('c11779559f8c5bb3e2dc1189460b1122660bdec6', 'testclient', NULL, '2018-05-22 21:51:33', NULL),
('c3686f1686c476dbe26f53127c251e3f651ec6bc', 'testclient', NULL, '2018-05-23 06:56:32', NULL),
('c658c24e2d1ca9768204396ecf77a323cb816002', 'testclient', NULL, '2018-05-23 18:12:11', NULL),
('c9bb7d9d22bceea7d0da430c46db1d34a2ec84f8', 'testclient', NULL, '2018-05-23 19:35:38', NULL),
('caf82ed32ce3479d9f46e87b9ea9483bc5bfb47d', 'testclient', NULL, '2018-05-23 06:52:32', NULL),
('cb125650b2f162d0edab10584f0b0f40a12ebe11', 'testclient', NULL, '2018-05-23 06:46:36', NULL),
('cca61d08a832e6a8a3e4b705df55e7ee67cacd52', 'testclient', NULL, '2018-05-22 21:22:54', NULL),
('cd21a284d28bf9ab1318c382005eadf18e19e04c', 'testclient', NULL, '2018-05-23 21:13:56', NULL),
('cdfb89abcb92c53047ae8955b19254dd4aeabe52', 'testclient', NULL, '2018-05-23 07:12:56', NULL),
('ce056d8eb008ff1cc40e4eba3c574ea770f249c7', 'testclient', NULL, '2018-05-23 19:33:32', NULL),
('cf5530711497e5f5761b27c6fd71a958f48e45a8', 'testclient', NULL, '2018-05-23 07:05:24', NULL),
('d5ac19911f80a3f217176d3a9b9bfeffa2bb2910', 'testclient', NULL, '2018-05-23 18:17:39', NULL),
('d6528b7b78f4b4476ae304565a175fa39cf63b64', 'testclient', NULL, '2018-05-23 07:07:50', NULL),
('d8792ca0c05403679d259ffc770e579bd9505db3', 'testclient', NULL, '2018-05-23 07:04:08', NULL),
('d9d2a96e66cf49a8d1c33cabd7e60b4f90c403ef', 'testclient', NULL, '2018-05-23 18:10:33', NULL),
('db2a52b630a9200e80002fba470fd2c2c62bc942', 'testclient', NULL, '2018-05-23 18:34:41', NULL),
('dbb8f811a7f1bdfd18a6056b67480cd4b4695d39', 'testclient', NULL, '2018-05-23 07:04:12', NULL),
('dbeedb8155c1b598d88bff1bc9a72ce23c187131', 'testclient', NULL, '2018-05-22 21:21:57', NULL),
('de0b4e4abaaca5776f4e467e62f56d10d15942b7', 'testclient', NULL, '2018-05-23 07:10:11', NULL),
('de1009cd231512c246482a528fb02afdb6fcc08e', 'testclient', NULL, '2018-05-22 21:21:03', NULL),
('de5682c87c8979f5d46fa5c9a52f302e61fa2ca1', 'testclient', NULL, '2018-05-23 19:33:27', NULL),
('e0d575bd436d46645abdf427f51f5e3870f429f7', 'testclient', NULL, '2018-05-23 21:13:51', NULL),
('e238b6266b372acd892578f1bbf28f694ec65983', 'testclient', NULL, '2018-05-23 18:10:55', NULL),
('e33e26a9df1a99382df990c127c8b08bbfd8452d', 'testclient', NULL, '2018-05-23 18:17:34', NULL),
('e3e6b40cb6efd0adda6b989ddee366084b22cb2a', 'testclient', NULL, '2018-05-23 06:54:24', NULL),
('e6acecded1ea79c9274b16ac88e97da615c3523f', 'testclient', NULL, '2018-05-23 07:13:52', NULL),
('e7aae5f6a0da83f143fa2d49e8b5c1f5428cbe07', 'testclient', NULL, '2018-05-23 06:55:25', NULL),
('e870bb152a42076d115cf27590a4fe321b6be3ed', 'testclient', NULL, '2018-05-23 21:04:58', NULL),
('e8d84d3a96bccd678e43c0751b9cb3d3d01f4c31', 'testclient', NULL, '2018-05-23 06:58:48', NULL),
('e93cb454e81e681b33db90b96cdc2d13b8705b79', 'testclient', NULL, '2018-05-23 06:39:22', NULL),
('ea664ea8bb087d4bc3426f1bbf76b55b7d5a77a7', 'testclient', NULL, '2018-05-24 20:49:54', 'A'),
('ed67842d1ffcdf6bd9c6c7530e29c4a99b43ee6b', 'testclient', NULL, '2018-05-23 06:33:38', NULL),
('f4290505b0c28d1bb46c79b623eec428789d0a45', 'testclient', NULL, '2018-05-23 06:32:32', NULL),
('f5a073df7ce6df79f68b5b219c3ab5d88e0dc264', 'testclient', NULL, '2018-05-23 07:06:10', NULL),
('f5f096ae48904f908e29c17f80c391999cc6d9e4', 'testclient', NULL, '2018-05-24 20:46:09', 'A'),
('f66c78a615c8a44fc83d66b3f8fb6160de9cb025', 'testclient', NULL, '2018-05-24 20:46:42', 'A'),
('f7ec1f1993a7ba48d9451ec81e24080f0aba2e4e', 'testclient', NULL, '2018-05-23 18:22:46', NULL),
('fa892961a2f53f9e3128e787cc8ff8318804756c', 'testclient', NULL, '2018-05-22 21:57:16', NULL),
('fba151abbe62abe1d65c2dec0461e4ac52630548', 'testclient', NULL, '2018-05-22 21:24:57', NULL),
('fe3713abc45d83d05655888a22df936f291e5f56', 'testclient', NULL, '2018-05-23 07:03:36', NULL),
('fe9ecd145c6ce47e461df0a6d91209ce8907b157', 'testclient', NULL, '2018-05-20 19:07:34', NULL),
('ffa7e38ede76f0b622ba2adb4c0f4e26c1ae972e', 'testclient', NULL, '2018-05-23 19:33:55', NULL),
('ffa7edde6e09cdbf38eaa7261f2438b9ce1662fc', 'testclient', NULL, '2018-05-23 18:19:21', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dump dei dati per la tabella `oauth_authorization_codes`
--

INSERT INTO `oauth_authorization_codes` (`authorization_code`, `client_id`, `user_id`, `redirect_uri`, `expires`, `scope`, `id_token`) VALUES
('a013575d9c63188e9cccc522cbf86ca185f6f181', 'testclient', NULL, NULL, '2018-05-24 20:50:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dump dei dati per la tabella `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('testclient', 'testpass', 'http://fake/', NULL, 'A', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `oauth_jwt`
--

CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Struttura della tabella `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dump dei dati per la tabella `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('0216d8db6c1206a25c7211cea3e6a15471fd5513', 'testclient', NULL, '2018-06-06 05:39:19', NULL),
('02bf22717c6be47d6bf571d0b1845e9c2ba552a6', 'testclient', NULL, '2018-06-05 20:22:58', NULL),
('067afbefe25d8138179ad0bf5d265dbe2975c642', 'testclient', NULL, '2018-06-07 20:54:21', 'B'),
('072e2cd8f95a19db135ad5e03ebaf72dd8d843f6', 'testclient', NULL, '2018-06-09 18:14:37', 'A'),
('08427574032aae4e3ceb547ce7c67dbe1b6ccf7d', 'testclient', NULL, '2018-06-06 18:28:44', NULL),
('0b0f35a310d1435de44c36a6c97cf25e97c18696', 'testclient', NULL, '2018-06-06 17:19:14', NULL),
('0e0ff3dc97906cdcb2ec2e170c3c7317a8a59784', 'testclient', NULL, '2018-06-06 06:06:15', NULL),
('0e94a140a0250bc2b534db6c54008a2f72f96128', 'testclient', NULL, '2018-06-06 17:10:40', NULL),
('0f18135d1c86a7b202d97110a35120323046a6b0', 'testclient', NULL, '2018-06-06 20:05:33', NULL),
('10eb2edcfa99d3221a8de4be4ec61c798a7af0e1', 'testclient', NULL, '2018-06-05 20:21:16', NULL),
('1222e8e4df52885cd31ce5d61352f25fc922349e', 'testclient', NULL, '2018-06-06 17:31:46', NULL),
('12cf178a1994ddb0680ca81adc444a277d200679', 'testclient', NULL, '2018-06-06 06:14:00', NULL),
('12dc6848ccee3b0673ccc233329abba1751795c9', 'testclient', NULL, '2018-06-06 05:58:45', NULL),
('13a0a72b6599845a17696a4b5f074ce3e3ceef60', 'testclient', NULL, '2018-06-07 19:59:27', 'A'),
('15f6b0d586f7d5541c8d306ec102fa5457401015', 'testclient', NULL, '2018-06-06 18:33:32', NULL),
('168a625dd5047b4568bbdf8e2778e1551483dd32', 'testclient', NULL, '2018-06-06 06:07:46', NULL),
('18f70eb2d03562c94c427e8748bd321235a05479', 'testclient', NULL, '2018-06-06 05:57:12', NULL),
('1997e39fcdecad4bc222608afb7d57e48ec1383d', 'testclient', NULL, '2018-06-05 20:24:48', NULL),
('1ba9dc6bdc0b91a1fce6ae8619f167f28244a5ac', 'testclient', NULL, '2018-06-06 06:12:56', NULL),
('1cdb46b8d24d3db32591e74bade76902fc923044', 'testclient', NULL, '2018-06-05 20:55:52', NULL),
('1d1081b89ba203c78bf718082fe4740ea2eb7719', 'testclient', NULL, '2018-06-05 20:55:55', NULL),
('1d261343b4586179dc64811b1ee47890428ed25b', 'testclient', NULL, '2018-06-06 05:41:33', NULL),
('1d5375cdbf78bf2d9b172c32947992fd67a1fc2a', 'testclient', NULL, '2018-06-09 18:13:41', 'A'),
('1d85a0f8a1d93838a76b7d3af7497f4304247f25', 'testclient', NULL, '2018-06-06 17:11:00', NULL),
('1da406c9f8825b621b433218712aac847418d6a3', 'testclient', NULL, '2018-06-06 17:38:57', NULL),
('1e9eb90899af394bdec3dcc506a93444c9778d03', 'testclient', NULL, '2018-06-06 18:27:30', NULL),
('1ec4607ed0bba368a8130a4b2de0e6f0ae41b64e', 'testclient', NULL, '2018-06-06 05:54:24', NULL),
('23dffdc3d8c87f6f03ffd977cf8451eae4febbcc', 'testclient', NULL, '2018-06-06 17:12:16', NULL),
('259ff94983cf8e527a888a6cb2fe9256012799fc', 'testclient', NULL, '2018-06-06 19:40:11', NULL),
('25e1ff34d5274953dcdf63fadb87aec0778adbd8', 'testclient', NULL, '2018-06-07 19:43:45', 'A'),
('2670b0c5e1896fc1ed8b1dae7b5ca0e1aa941d82', 'testclient', NULL, '2018-06-06 05:41:53', NULL),
('27582256927df9ae1b36c0c92e5dce4aaf594067', 'testclient', NULL, '2018-06-05 20:57:16', NULL),
('2b52f41e5df42a35248b7355ce48749049118e96', 'testclient', NULL, '2018-06-06 17:35:43', NULL),
('3052b6360a85b4c6c2d92ff6db51cb6696bd6d8a', 'testclient', NULL, '2018-06-07 21:36:50', 'A'),
('3251e577179da79f1003b034cd1018935e60ead8', 'testclient', NULL, '2018-06-06 06:03:36', NULL),
('3284f01c6bb073080bbc231cdc4a9a4eb48eb195', 'testclient', NULL, '2018-06-05 20:32:02', NULL),
('33d7a7c039222e6f206cae81433c4f4a3f0cbbb5', 'testclient', NULL, '2018-06-05 20:55:50', NULL),
('370559e63ac33b19ac7279480ecb0a21e5280e0b', 'testclient', NULL, '2018-06-06 06:14:22', NULL),
('37eec95267504e7d59579099006d53f5abad3686', 'testclient', NULL, '2018-06-06 06:04:08', NULL),
('3a44d618c9ec4134d57d9bc52a80641a5114747e', 'testclient', NULL, '2018-06-05 20:21:52', NULL),
('3a6a8ebf480264ddf66f3736020376c82d15a962', 'testclient', NULL, '2018-06-06 05:37:12', NULL),
('3d7f062a9d1fe44669fab6e5adb64ca1bb783d79', 'testclient', NULL, '2018-06-05 20:22:54', NULL),
('3e04c906392db92e53cdaea9f86f6de1a3c254b2', 'testclient', NULL, '2018-06-07 19:47:50', 'A'),
('407b7f1132e2081021c4e7ef210bd50808628baa', 'testclient', NULL, '2018-06-06 06:13:29', NULL),
('41ec337bfefadf5eaa5cee8ccb8c47866e35b21e', 'testclient', NULL, '2018-06-06 05:55:28', NULL),
('422e1c4fdc371f8223c45cf56c826ba322f394f6', 'testclient', NULL, '2018-06-05 20:23:02', NULL),
('43eb5591340e4989dfdaf4506eff800dad77b1bc', 'testclient', NULL, '2018-06-06 05:54:20', NULL),
('446d39058d51953c87fdd21097a64f4773a21c4a', 'testclient', NULL, '2018-06-07 19:47:02', 'A'),
('453e7c18a255d6fbe778a17bc2e50ebb6272034d', 'testclient', NULL, '2018-06-06 18:35:38', NULL),
('457656d77c867e43f5b06c98f1e71e5815e3b161', 'testclient', NULL, '2018-06-06 05:30:32', NULL),
('46e96a781b6b8c7ed449762f34ac357a86a236eb', 'testclient', NULL, '2018-06-06 17:19:21', NULL),
('475e669721dcbd24ff6c6bbfa0525560d5710271', 'testclient', NULL, '2018-06-05 20:53:02', NULL),
('47d11089545ba30a53774b71384516044e0f94d2', 'testclient', NULL, '2018-06-06 18:35:42', NULL),
('481dfc586cfd97d94965e2a14b4c701fbc3990fc', 'testclient', NULL, '2018-06-06 17:34:36', NULL),
('48360f9c32638c6cc357972f54d5a25fa135e83b', 'testclient', NULL, '2018-06-06 17:21:26', NULL),
('484b39e265c48449e45348101a6ae562f668bf7c', 'testclient', NULL, '2018-06-06 05:46:36', NULL),
('4868c6cbf5c28ba95fddce9b8e36b51097a14e8e', 'testclient', NULL, '2018-06-06 18:33:59', NULL),
('4a5e67f81d40f6754b3d1c09b814e59535361980', 'testclient', NULL, '2018-06-06 06:10:11', NULL),
('4a6bca515db2eb940b1e3f3c1768d50babf13824', 'testclient', NULL, '2018-06-05 20:32:46', NULL),
('4bf8776a95ddd0c85bab59e8d7288f5818fa9254', 'testclient', NULL, '2018-06-06 17:17:39', NULL),
('4cd3e3fa0349f837340f0d53caa9b8b431630831', 'testclient', NULL, '2018-06-06 06:10:07', NULL),
('4d1687b739ac5be268a71f84c2b43b46248dddc4', 'testclient', NULL, '2018-06-05 20:51:55', NULL),
('4dc6fa085ef5720850da7b7ca24d7059cf739b71', 'testclient', NULL, '2018-06-06 17:10:38', NULL),
('4f372997932fa09d7ed0700a2946bcf0de1db928', 'testclient', NULL, '2018-06-05 21:19:29', NULL),
('5222ec463d9cbde71261bd3cc20fa065394ca022', 'testclient', NULL, '2018-06-07 19:08:28', NULL),
('55efb99351fc22fff033bf758fefc6dac05e1f88', 'testclient', NULL, '2018-06-06 17:10:42', NULL),
('56d5029cc3345414564bb63aafc03f8ee47cf9d6', 'testclient', NULL, '2018-06-06 17:10:55', NULL),
('571b72a67bb9940fce451d019fcd3db2a95dc494', 'testclient', NULL, '2018-06-06 18:13:44', NULL),
('57389488a5b037404b7018be985825ae8ab18d64', 'testclient', NULL, '2018-06-06 20:03:57', NULL),
('57930314750c47fca7f61890132f2961e4d85270', 'testclient', NULL, '2018-06-05 20:29:51', NULL),
('5802951c35cd3b78e5f15bb68a98da6825127d95', 'testclient', NULL, '2018-06-06 05:32:29', NULL),
('5a4a18753ba35c869bc2018b44cc50aadee5835c', 'testclient', NULL, '2018-06-06 05:42:01', NULL),
('5c5bce5afb3288f1109bd20079409f33419fc3de', 'testclient', NULL, '2018-06-06 05:42:12', NULL),
('5eadab9e800b06c797f95e7dc4272c6168021ebf', 'testclient', NULL, '2018-06-06 20:19:52', NULL),
('5f5b350d4c7b8c305e7f59dc7e631afb809f4e7f', 'testclient', NULL, '2018-06-06 17:10:31', NULL),
('6029c79698e00b5f854b83d1926ba3d681cd7dd4', 'testclient', NULL, '2018-06-06 20:13:56', NULL),
('63ceed6ee975d74c35b8f90a22e1c8431eff58c2', 'testclient', NULL, '2018-06-06 17:21:30', NULL),
('6504b28033e71f664da01ba373b1545b1fa35ea5', 'testclient', NULL, '2018-06-05 20:24:52', NULL),
('6592066bd8d4de6b8d3b9e98aa1238f1fce324b5', 'testclient', NULL, '2018-06-05 21:19:26', NULL),
('6610c0a7e551f8d51fe5dfc9471e2ac253238b5a', 'testclient', NULL, '2018-06-06 17:31:41', NULL),
('670b63db17276baee1c919330d58742e17bd0cec', 'testclient', NULL, '2018-06-06 17:35:38', NULL),
('673dc4252471d5b80b0e91cd00d35f9208145f38', 'testclient', NULL, '2018-06-06 17:10:50', NULL),
('68c3bceebe4e3ed82f332b367e64e235847029fd', 'testclient', NULL, '2018-06-06 06:06:10', NULL),
('6926dd26386d19b8de8bfd0bceb543bde5b0d07b', 'testclient', NULL, '2018-06-06 05:41:49', NULL),
('698d4d66c95f585b6ad5d886a5bc5b1fd388e3ca', 'testclient', NULL, '2018-06-06 17:09:42', NULL),
('6d4c515141b13631b1504f403539ab071b5aec81', 'testclient', NULL, '2018-06-06 05:55:25', NULL),
('6df2f1dbbe3b67c4f3baf3dd15de715bdff8e2da', 'testclient', NULL, '2018-06-06 17:22:13', NULL),
('6e99542c6bfa31b00d23000f4d9c3477b3184661', 'testclient', NULL, '2018-06-06 06:13:48', NULL),
('70fae74b2825f9b95c3ed8a19f822b4c485eb7a0', 'testclient', NULL, '2018-06-06 06:04:12', NULL),
('712ded6a797fc7023c534c758057521a8df65c89', 'testclient', NULL, '2018-06-06 17:09:39', NULL),
('74127752da140e060ce41bc1919129f3bb06abcf', 'testclient', NULL, '2018-06-06 05:32:32', NULL),
('74903426625f957158c2d4da07ecd10fcb0cd251', 'testclient', NULL, '2018-06-06 05:42:03', NULL),
('75257c1f2bba3f0852fb835affa9c2a7c1a342ed', 'testclient', NULL, '2018-06-05 20:24:54', NULL),
('754df533873284197ad56ccaf1e9ebf5373dd1ab', 'testclient', NULL, '2018-06-06 17:08:38', NULL),
('76de17cfc6453b6e4f93631c4325041780469d1e', 'testclient', NULL, '2018-06-06 05:34:57', NULL),
('789cae64d8a42053df72cfc1c3d28c158be8388b', 'testclient', NULL, '2018-06-05 20:30:33', NULL),
('7ae0ac7b7a34588da30128ad1a5b17a5c2eca31b', 'testclient', NULL, '2018-06-06 17:17:34', NULL),
('7b2b2ab27b314f1c9ddb7d9e85768c09435f1aeb', 'testclient', NULL, '2018-06-06 19:58:25', NULL),
('7bd51d54a189da93ee4bf18a9f85ea6fbc941965', 'testclient', NULL, '2018-06-05 20:22:28', NULL),
('7cc67f37145ad6769510d4ef62378060954a9f6a', 'testclient', NULL, '2018-06-06 06:08:20', NULL),
('7f1f2c4d380ef3f85564ee3230962fb9d187726b', 'testclient', NULL, '2018-06-06 17:10:48', NULL),
('824a67cf5a7e1d64fe0763beb11be97c94a24653', 'testclient', NULL, '2018-06-06 18:27:21', NULL),
('83a986979a6479b4585af60caee0f20fd81f688a', 'testclient', NULL, '2018-06-06 19:40:16', NULL),
('83c8d5fa7fd1cd9236948623cc1cb8025f1a7904', 'testclient', NULL, '2018-06-05 20:24:57', NULL),
('859994805d6b02dafaf0cfdd2851f4fc73f741ea', 'testclient', NULL, '2018-06-05 20:34:25', NULL),
('8671e09cda1d7d2b856d868bf7d4a89cf62ccbb5', 'testclient', NULL, '2018-06-06 05:38:32', NULL),
('86f67a2a9bc91c47ca6448a129a640b94a145cfb', 'testclient', NULL, '2018-06-06 19:58:20', NULL),
('8716e4ee8b18bf01ad2c6bbebe9938231ef519a9', 'testclient', NULL, '2018-06-06 17:22:46', NULL),
('873b951702f149f7ade8e701b0cf254a03693af7', 'testclient', NULL, '2018-06-06 05:31:41', NULL),
('8d1cc355dfc86dc9055a2139c6ab173744caff84', 'testclient', NULL, '2018-06-06 05:33:38', NULL),
('8d1dc05748637b5e08840330bec696093432827a', 'testclient', NULL, '2018-06-06 20:20:37', NULL),
('8d3b5b09c6b4e14576c53ae15b539f1257f0ecf7', 'testclient', NULL, '2018-06-06 18:33:27', NULL),
('8eedc04e7eaaf89571caecf0a9d1e6ee7e4688cc', 'testclient', NULL, '2018-06-06 17:10:18', NULL),
('8f2f214ee3bfdcebffeda4b02fbc95cb878aaf43', 'testclient', NULL, '2018-06-06 05:56:28', NULL),
('907b2b3ee7ab5c7e99983d421f4b33af0e4f6756', 'testclient', NULL, '2018-06-06 05:57:54', NULL),
('91517e73c89c4eec971f9d09920eb35218bb2566', 'testclient', NULL, '2018-06-06 20:27:21', NULL),
('937cc1157063d7bf4262374cf8c45993eaa4c284', 'testclient', NULL, '2018-06-06 05:38:29', NULL),
('93e857ddfb845122798c63467bcd5d08d671f28d', 'testclient', NULL, '2018-06-05 20:59:00', NULL),
('97f76c37a07d0930c95aaef7ade2e5d89f796705', 'testclient', NULL, '2018-06-03 18:07:34', NULL),
('996d978ecc7c1cf500581a73bcaeb2e0afa32697', 'testclient', NULL, '2018-06-05 20:29:31', NULL),
('9adcdc4d979f7b2d2a53ce5fe020184f40ac09df', 'testclient', NULL, '2018-06-07 19:45:16', 'A'),
('9d97790a0baf5533bf9dcc85afbe92209c117727', 'testclient', NULL, '2018-06-06 06:13:46', NULL),
('9eb120d7ce42234738fc2b607c8e350e20b29cb2', 'testclient', NULL, '2018-06-06 06:07:50', NULL),
('a3550c6cfcab24240b80e7dcd6da31b238bd0782', 'testclient', NULL, '2018-06-06 05:37:09', NULL),
('a38cecf19c2cc6343e268930a62287818d75b81e', 'testclient', NULL, '2018-06-06 20:13:51', NULL),
('a56c8d04908fd0995cf22dc644f05fef9f650f04', 'testclient', NULL, '2018-06-06 05:58:48', NULL),
('a6f2ab6c972a016976af481f2bd31d073a2ce808', 'testclient', NULL, '2018-06-06 06:05:24', NULL),
('a8969e8b2b0c4cee1c177c0bbc4d34c1118ad671', 'testclient', NULL, '2018-06-06 05:57:08', NULL),
('a92be9cc4dd22375de19171387b018fe7cd9d9e8', 'testclient', NULL, '2018-06-05 20:21:03', NULL),
('a9879d14c8cfe5d4df9c8a515b6200235f457f43', 'testclient', NULL, '2018-06-07 19:49:54', 'A'),
('aa05e7b9a2f3b70f1aeb92960eded4bcda539461', 'testclient', NULL, '2018-06-06 05:33:41', NULL),
('aa2d8ffdc5959ede6e5d509e25ebf8fc0feec9bc', 'testclient', NULL, '2018-06-06 17:24:03', NULL),
('ab95b1fd60fcab817cd4d72ae704daf79bac9967', 'testclient', NULL, '2018-06-06 05:52:32', NULL),
('abe8b1b0ca5c22d8a32de32625cb8960e4cd4879', 'testclient', NULL, '2018-06-07 20:08:05', 'A'),
('abf70817805a0c2040f954fbe7100bab65665a40', 'testclient', NULL, '2018-06-06 18:13:40', NULL),
('ac94e15bdcd7337bb715a84d27c96a08a7a27c1c', 'testclient', NULL, '2018-06-06 05:30:36', NULL),
('adc21cdf0563e4dd15af086c9028640984ec8f89', 'testclient', NULL, '2018-06-06 17:39:08', NULL),
('b020902cdbba83e1145cf7b82e6f620e1d45008f', 'testclient', NULL, '2018-06-06 05:59:31', NULL),
('b16efb18c57d82652a7239f865f36a98c7041494', 'testclient', NULL, '2018-06-05 20:30:36', NULL),
('b31499571f47adde525cbe13e400adbf78262a9b', 'testclient', NULL, '2018-06-06 05:52:26', NULL),
('b39fd97b23783c82edcd134dcd534834f3a90e01', 'testclient', NULL, '2018-06-06 20:20:40', NULL),
('b4df56273ae1d87356ad50d0c036cfd25a4f543f', 'testclient', NULL, '2018-06-06 06:10:38', NULL),
('b6aa5c8d582b6f448db4db45f486226e6e9ebcca', 'testclient', NULL, '2018-06-07 20:00:03', 'A'),
('b78a7a72e319ea0e629edbe84bbf13be3663a2db', 'testclient', NULL, '2018-06-06 17:19:18', NULL),
('b88cc008395b8dd305cf7de79923dbf54c0ff580', 'testclient', NULL, '2018-06-06 18:33:55', NULL),
('ba1ac2332f74d2bd3913d3eb4f231bc23c2423bf', 'testclient', NULL, '2018-06-06 20:04:28', NULL),
('ba7a08b9cb97e3e5d2dd817327ac0009b6ad05cd', 'testclient', NULL, '2018-06-06 17:10:23', NULL),
('bde6ab8b6346e74c826a34ac5161527c5bdc226d', 'testclient', NULL, '2018-06-06 06:10:34', NULL),
('c0006718086b3423ae1d6b8fa1cb4aab534856f5', 'testclient', NULL, '2018-06-06 18:27:26', NULL),
('c2c66ccad3b4d4e706069877e915516d4613e9b2', 'testclient', NULL, '2018-06-06 17:10:25', NULL),
('c3d9a45011522127d36ccbc14eb3bce8ec7a07de', 'testclient', NULL, '2018-06-06 17:08:44', NULL),
('c6d8dfc10969edd58186bc525973589bd5470bbd', 'testclient', NULL, '2018-06-05 20:30:31', NULL),
('c704d4df3dfb4529f98fd856cf461761235b0ae5', 'testclient', NULL, '2018-06-06 20:19:49', NULL),
('c78f2c8ac032a70f389a4a0c41c37d96fa2b495e', 'testclient', NULL, '2018-06-06 17:10:44', NULL),
('c7f7260ad154da5788885fde8a5653db06275a55', 'testclient', NULL, '2018-06-06 20:29:28', NULL),
('c8d1881e2065e3752c11976688aee756b9b2d294', 'testclient', NULL, '2018-06-05 20:21:57', NULL),
('ca9cbb080c2004b2fff553638ebe1d813629ca1e', 'testclient', NULL, '2018-06-06 17:34:41', NULL),
('cbc75a911464219619bf8434ef3b8ee72b0c431a', 'testclient', NULL, '2018-06-06 05:41:36', NULL),
('cc9632d979e57c9ea756dff059e217ded3f7a3b1', 'testclient', NULL, '2018-06-06 19:40:24', NULL),
('ccca697de68956f256e511b2f047d436111b0b42', 'testclient', NULL, '2018-06-06 06:03:33', NULL),
('ccfb7b010ed149cd88372ba75a578b4113213850', 'testclient', NULL, '2018-06-06 17:12:11', NULL),
('cfc19d2f395f8ad1b69a55484c3a4596fc67b420', 'testclient', NULL, '2018-06-06 17:10:36', NULL),
('d3dbf0da8e0016af05cf5f15fab445f906622c49', 'testclient', NULL, '2018-06-06 20:05:29', NULL),
('d4139d822c49a4bf5a98d2ba205db66118158d46', 'testclient', NULL, '2018-06-06 17:34:32', NULL),
('d484f8cce1d9325d76faffaeb82f01a7049231d1', 'testclient', NULL, '2018-06-06 05:34:52', NULL),
('d78da35f7bb08f05e0a3573ad456c784ff3f7aea', 'testclient', NULL, '2018-06-07 20:11:33', 'A'),
('d7bbe3527f72d84d069fa5073358e2778adf9b1d', 'testclient', NULL, '2018-06-06 19:40:28', NULL),
('d9467e01318549c122fec5e3a8a9a0a70ae92444', 'testclient', NULL, '2018-06-06 17:10:29', NULL),
('d96741dc2fdba2a4035c06b4c412dfcd428ef506', 'testclient', NULL, '2018-06-06 17:10:33', NULL),
('d9fa829f7315bf86d934340676873761c718a246', 'testclient', NULL, '2018-06-06 20:03:53', NULL),
('da08b9605eacadba585ed080e10c580c354c1c8a', 'testclient', NULL, '2018-06-06 05:42:08', NULL),
('dca7bba1ca7b6f961e93442814b4f75b9d05fdb2', 'testclient', NULL, '2018-06-07 19:46:41', 'A'),
('dd1b21cffaa35a72512d6b06ad3ef283e036e2b6', 'testclient', NULL, '2018-06-05 20:22:02', NULL),
('dd3aa82c24b52781ad88d276851ffeb599092272', 'testclient', NULL, '2018-06-06 18:28:39', NULL),
('de797fb24ec5c3be74f990d7c616f0f00d02573a', 'testclient', NULL, '2018-06-06 17:08:28', NULL),
('df04e0fd96d7f26fd4edaf7eb83788f83a1b40f9', 'testclient', NULL, '2018-06-05 20:51:33', NULL),
('df1179d395db9d5cc2d5a335b9d49e19ed069a7d', 'testclient', NULL, '2018-06-07 19:45:45', 'A'),
('df299dff49ba7ca3c49f483eb4285e1cf8a90a72', 'testclient', NULL, '2018-06-05 20:57:14', NULL),
('e185663b93dd520bf31e25e188b793caa2e31ac5', 'testclient', NULL, '2018-06-06 05:57:59', NULL),
('e28d4c4a2ad0862357f5976054fbcdc2424b3751', 'testclient', NULL, '2018-06-06 06:13:52', NULL),
('e2f76b5bf73066fd980a0a32aab02b1ce0599e6c', 'testclient', NULL, '2018-06-07 19:46:09', 'A'),
('e4b6dd3faf27513c863b3c16401f670763561a63', 'testclient', NULL, '2018-06-05 20:59:29', NULL),
('e5487947b833606c28160b16318de95e454ef52d', 'testclient', NULL, '2018-06-06 19:40:19', NULL),
('e90a7fe8f72dfedc36be9c536d3d9ee09c0ec733', 'testclient', NULL, '2018-06-06 06:08:16', NULL),
('ea14a6e63bc72d12227f4c4374a0ba0fe36b2cf1', 'testclient', NULL, '2018-06-06 20:04:24', NULL),
('ea175f73b8c9b576b1e129263fbddf9099b7f47e', 'testclient', NULL, '2018-06-07 20:55:20', 'A'),
('eb6a7382fd4a5809e8253b8bf9087bcd53343267', 'testclient', NULL, '2018-06-07 19:58:08', 'A'),
('ebd1e6205eb13cd20dae2f1f7432a76896f0efe7', 'testclient', NULL, '2018-06-07 19:46:42', 'A'),
('ecc9a94345f6d5c9071b4d9b9b018878e583c05b', 'testclient', NULL, '2018-06-05 20:58:57', NULL),
('f0466a8e4c904433de422e8b0fd2b4ece4640a1b', 'testclient', NULL, '2018-06-06 06:13:02', NULL),
('f2310a5a4c7467d53756b7005e2cfc3f220e6aec', 'testclient', NULL, '2018-06-06 05:39:22', NULL),
('f2639a847002b14d535a0ba921ce1486a9bf41b6', 'testclient', NULL, '2018-06-05 20:59:32', NULL),
('f3bdbb64c896f25318dbbf7ab05062e9b492c696', 'testclient', NULL, '2018-06-06 05:59:35', NULL),
('f4f95009000ed9882ae0e8f7677f3a2c8c6a6cb5', 'testclient', NULL, '2018-06-06 05:56:32', NULL),
('f6562baeaad49aa9b3f25f19f0be6d4d0c3eaddd', 'testclient', NULL, '2018-06-06 17:23:59', NULL),
('f853114195b9f1a526393031077bbbf950612394', 'testclient', NULL, '2018-06-06 06:05:28', NULL),
('fcbf7b1e340c7b295a6c179320563e1eff2f21d4', 'testclient', NULL, '2018-06-06 20:04:58', NULL),
('fe9ca36d4984bb4ab41aed7dfb479c8f33edfdfe', 'testclient', NULL, '2018-06-06 17:22:17', NULL),
('ffab24be9a0beeb8d72475f0e9d71621ed356f49', 'testclient', NULL, '2018-06-06 05:46:32', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `oauth_resources_scope`
--

CREATE TABLE `oauth_resources_scope` (
  `id` int(11) NOT NULL,
  `resource` varchar(40) NOT NULL,
  `scope` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dump dei dati per la tabella `oauth_resources_scope`
--

INSERT INTO `oauth_resources_scope` (`id`, `resource`, `scope`) VALUES
(1, 'resource1', 'A'),
(2, 'resource2', 'B');

-- --------------------------------------------------------

--
-- Struttura della tabella `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` varchar(80) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Struttura della tabella `oauth_users`
--

CREATE TABLE `oauth_users` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indici per le tabelle `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indici per le tabelle `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indici per le tabelle `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indici per le tabelle `oauth_resources_scope`
--
ALTER TABLE `oauth_resources_scope`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
  ADD PRIMARY KEY (`scope`);

--
-- Indici per le tabelle `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `oauth_resources_scope`
--
ALTER TABLE `oauth_resources_scope`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
