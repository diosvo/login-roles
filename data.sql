-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 10:54 AM
-- Server version: 10.4.13-MariaDB-log
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login-roles`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `image_3` varchar(255) DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `another_CatName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `image_1`, `image_2`, `image_3`, `description`, `price`, `quantity`, `another_CatName`) VALUES
(1, 'Zoom Freak 2 Naij', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/0fd92b55-e68c-47c7-852b-2ae96fbf6d77/zoom-freak-2-naija-basketball-shoe-sjwP6J.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/aec8be5c-9447-42d7-bea8-e24ce7f187e0/zoom-freak-2-naija-basketball-shoe-sjwP6J.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/374c8228-1bd7-4db2-af0a-507450efdb8a/zoom-freak-2-naija-basketball-shoe-sjwP6J.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/92c6fecd-904c-487f-8fe1-2551a748168d/zoom-freak-2-naija-basketball-shoe-sjwP6J.jpg', 'The Zoom Freak 2 Naija nods to Nigeria—the homeland of Giannis\' parents—where soccer is a uniting force for boundless potential, youthful exuberance and infectious charisma. Giannis’ late father, Charles, bonded with his sons through the beautiful game.', 130, 9, 'Basketball Shoe'),
(2, 'Nike Joyride Dual Run', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/16b7e9ee-7253-4ad0-9515-3d1265867319/joyride-dual-run-mens-running-shoe-8BGXtk.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/ee06e796-f9b6-4724-aa3d-e5961217191c/joyride-dual-run-mens-running-shoe-8BGXtk.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/c25e1554-07a2-4f5f-914f-b3ac9ad84d25/joyride-dual-run-mens-running-shoe-8BGXtk.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/1fa3209b-c593-4eed-bc91-c1aa40d6665e/joyride-dual-run-mens-running-shoe-8BGXtk.jpg', 'The Nike Joyride Dual Run blazes its own route. Tiny foam beads underfoot combined with traditional cushioning in the forefoot give an incredibly smooth feel that conforms to your foot.', 130, 0, 'Men\'s Running Shoe'),
(3, 'Nike Air Zoom Pegasus', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/44297225-bf4c-4dbb-8e8b-a7377b22d05b/air-zoom-pegasus-37-mens-running-shoe-KLvDcj.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/ce6f78e2-2a81-4fe9-8e1e-a20f2a1197f9/air-zoom-pegasus-37-mens-running-shoe-KLvDcj.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/cc4d1cbc-571e-483f-93fc-a4666e683341/air-zoom-pegasus-37-mens-running-shoe-KLvDcj.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/0e4a33d5-a583-4d8d-9b62-e79961aebd51/air-zoom-pegasus-37-mens-running-shoe-KLvDcj.jpg', 'Reinvigorate your stride with the Nike Air Zoom Pegasus 37. Delivering the same fit and feel that runners love, the shoe has an all-new forefoot cushioning unit and foam for maximum responsiveness.', 120, 18, 'Men\'s Running Shoes'),
(4, 'Nike SB Bruin React T', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/7c525417-adf7-494a-84b7-bca3bf56e5e4/sb-bruin-react-t-skate-shoe-CQXCD3.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/a75e54d7-f20f-4f15-bd12-cad7c0174c0b/sb-bruin-react-t-skate-shoe-CQXCD3.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/f2dad362-c33c-4144-af8d-16b8a603eeda/sb-bruin-react-t-skate-shoe-CQXCD3.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/201e2e19-43bb-4a0a-b0a7-b04f184e178c/sb-bruin-react-t-skate-shoe-CQXCD3.jpg', 'Want a lightweight, flexible shoe you can ride in all day? Us, too. That\'s why we built the Nike SB Bruin React T. It\'s a durable low-top with springy, responsive Nike React foam—all in a skate-right design.', 100, 4, 'Skate Shoe'),
(5, 'Nike Zoom Fly 3', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,w_440/5cf59b09-3072-4b8e-a4a9-5b5faae745fa/zoom-fly-3-mens-running-shoe-XhzpPH.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/58a512bd-0833-4c89-8239-dc2fe7ab36b7/zoom-fly-3-mens-running-shoe-XhzpPH.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/974a1b6a-dfb3-4c17-b883-4621dfd25d6a/zoom-fly-3-mens-running-shoe-XhzpPH.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/026f1f35-abf7-45d5-b8bc-6b28a5241a2d/zoom-fly-3-mens-running-shoe-XhzpPH.jpg', 'Inspired by the Vaporfly, the Nike Zoom Fly 3 gives distance runners race-day comfort and durability. The power of a carbon fiber plate keeps you in the running mile after mile.', 160, 22, 'Men\'s Running Shoes'),
(6, 'LeBron 17 Low', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,w_440/0b2ea20b-6da3-4948-8692-ac5ca5a4964f/lebron-17-low-basketball-shoe-fHcqqM.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/5b40a745-da07-4084-9ecd-21be20eba1ed/lebron-17-low-basketball-shoe-fHcqqM.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/f85bb096-a7fd-4c4c-bc00-ce56808ef27b/lebron-17-low-basketball-shoe-fHcqqM.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/656eb099-29aa-4f1d-b0d6-7ecdd6349195/lebron-17-low-basketball-shoe-fHcqqM.jpg', 'Fine-tuned for LeBron\'s ferocious game, the LeBron 17 Low gives the King another sensation to add to his arsenal. The combined cushioning platform provides a balanced mix of impact absorption and responsiveness.', 160, 20, 'Basketball Shoe'),
(7, 'Nike SB Adversary', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,w_440/i1-78a04448-9b14-4101-a7d5-042d295772a0/sb-adversary-skate-shoe-X5Dlbh.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/i1-20e74822-fb2f-49aa-9ce9-19a736156a41/sb-adversary-skate-shoe-X5Dlbh.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/i1-16feefb9-025e-44b4-94c1-6e098c5d2058/sb-adversary-skate-shoe-X5Dlbh.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/i1-70ab8019-4824-443a-8b59-41e32f7a8c3f/sb-adversary-skate-shoe-X5Dlbh.jpg', 'The Nike SB Adversary takes you back to the basics. Suede and textile create a classic look that\'s inspired by the 1982 Nike Adversary, while a combination of traditional lacing and ghillie loops let you dial in the perfect fit.', 80, 17, 'Skate Shoe'),
(8, 'Nike Killshot OG SP\r\n', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,w_440/3c144e28-b63a-453b-82a9-d75677bfae1f/killshot-og-sp-mens-shoe-t4btPQ.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/587fdaa6-27dc-4527-996d-3f7792e75dc8/killshot-og-sp-mens-shoe-t4btPQ.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/87a1a45c-53d2-48d2-af03-054ed50301ed/killshot-og-sp-mens-shoe-t4btPQ.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/baf55fec-74c5-4154-bb21-49e554091391/killshot-og-sp-mens-shoe-t4btPQ.jpg', 'The original low-profile tennis shoe returns with the Nike Killshot OG SP. This 1-to-1 retro highlights a variety of throwback materials, like an upper combining layers of open mesh, foam, soft suede overlays. The open foam tongue and heritage sole add co', 90, 20, 'Men\'s Shoe'),
(9, 'Nike Air Zoom Terra', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,w_440/d699601c-62f8-4b8c-9f02-36e92fa4ee73/air-zoom-terra-kiger-6-womens-trail-running-shoe-CnfDJ2.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/7d1bf4c4-6883-4916-aa43-1ebe52c2b659/air-zoom-terra-kiger-6-womens-trail-running-shoe-CnfDJ2.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/c92f8670-06e1-40ed-8a60-636ef53f89af/air-zoom-terra-kiger-6-womens-trail-running-shoe-CnfDJ2.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/f9bd38f9-f495-4043-a0bd-85ecfc870b1d/air-zoom-terra-kiger-6-womens-trail-running-shoe-CnfDJ2.jpg', 'The Nike Air Zoom Terra Kiger 6 is built to take on wet and rocky trails. Lightweight in design, it features a sleeker look with a woven heel for a secure fit and feel.', 130, 20, 'Women\'s Trail Running Shoe'),
(10, 'Nike Vista Lite', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/52f48b71-967f-4f29-a9a4-a59b1dedf2a0/vista-lite-womens-shoe-f347DR.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/3678b47a-4ef0-4196-81f1-167c7b59bc43/vista-lite-womens-shoe-f347DR.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/6c4d946f-121b-48bb-8e0b-0c67e6ba0526/vista-lite-womens-shoe-f347DR.jpg', 'https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/89ae3fd6-cb09-48a9-8ba2-3a874e95b3fc/vista-lite-womens-shoe-f347DR.jpg', 'The Nike Vista Lite brings you to a bold new place. Using soft foam, this shoe provides comfort you can see in a brand new silhouette.', 100, 20, 'Women\'s Shoe'),
(12, 'Nike Sportswear Swoosh', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/e425b9bb-d388-475f-a646-a44ff62f10f1/sportswear-swoosh-mens-woven-jacket-zwnqMl.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/caff512d-ad85-4382-9637-68b74fb437ee/sportswear-swoosh-mens-woven-jacket-zwnqMl.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/c89ade37-fd6b-4225-b36f-6928ff50475c/sportswear-swoosh-mens-woven-jacket-zwnqMl.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/7b79ca71-4977-49d5-a2a8-1442a4ce16fe/sportswear-swoosh-mens-woven-jacket-zwnqMl.jpg', 'The Nike SportswearJ acket builds on the tried-and-true anorak silhouette. Contrasting color panels and big branding provide a Nike-only look that shows love for Swoosh.', 130, 20, 'Men\'s Woven Jacket'),
(13, 'Nike Dri-FIT Therma\r\n\r\n', 'https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/m9vqjra6ssiud2hgpgpp/dri-fit-therma-mens-training-pants-xV5QHN.jpg', 'https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/h9gk3bheznkj7fwirpcc/dri-fit-therma-mens-training-pants-xV5QHN.jpg', 'https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/rwsctqlo4pvemrysmht7/dri-fit-therma-mens-training-pants-xV5QHN.jpg', 'https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/zrkzftdubogr1xqfjvkw/dri-fit-therma-mens-training-pants-xV5QHN.jpg', 'The Nike Dri-FIT Therma Men\'s Training Pants are made with heat-managing fabric, so you can stay warm when the temperature drops during your workout.', 55, 50, 'Men\'s Training Pants'),
(14, 'Nike Sportswear RPM', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/i1-b27a940b-4922-49a1-bb08-65a0f68437df/sportswear-rpm-backpack-f6pVpb.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/i1-79ac4823-f448-48b9-a225-4651bd48d120/sportswear-rpm-backpack-f6pVpb.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/i1-9f360a92-5c40-4bfe-a357-4f1768ef3976/sportswear-rpm-backpack-f6pVpb.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/i1-04aed28f-a390-4fb0-acc7-55c6016db5c4/sportswear-rpm-backpack-f6pVpb.jpg', 'The Nike Sportswear RPM Backpack is made to hold it all. With a padded back for comfort and a versatile strap system, it\'s ideal for all your on-the-go needs.', 90, 50, 'Backpack'),
(15, 'LeBron 17 MTAA', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/26e4428a-9440-4715-bb36-75d839eed0ff/lebron-17-mtaa-basketball-shoe-qGM3Bv.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/ec15d7df-8ef5-4b6b-9f52-f615d256e913/lebron-17-mtaa-basketball-shoe-qGM3Bv.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/0aa2ac13-7fc1-49fa-a188-5d8584832568/lebron-17-mtaa-basketball-shoe-qGM3Bv.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/b72b96e2-add2-41b4-8abc-361e0ac2b6c6/lebron-17-mtaa-basketball-shoe-qGM3Bv.jpg', '\"More Than An Athlete\" represents the ethos of Uninterrupted and the unfiltered, authentic voices of athletes everywhere. The phrase is a core belief and a constant rallying cry for athletes who aim to impact the game and extend beyond the lines of their respective sport. The LeBron 17 MTAA takes the silhouette to a new space with customizable elements that give you the tools to express your story and celebrate your journey. You are more than.', 97.97, 49, 'Basketball Shoe'),
(16, 'Nike ACG', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/3f4129e3-6b76-4774-9cc5-e02a909692b8/acg-logo-t-shirt-FZ8Dsb.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/403ad04f-4885-40b6-9ae5-44857cb59524/acg-logo-t-shirt-FZ8Dsb.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/167822dd-7626-4bad-be66-9aceaac5885b/acg-logo-t-shirt-FZ8Dsb.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/5f49cde4-a76d-4c07-9279-51ee8a02802f/acg-logo-t-shirt-FZ8Dsb.jpg', 'Durable comfort. Rock-solid stitching. Classic style. The Nike ACG T-Shirt is a must-have staple that’s anything but ordinary.', 40, 49, 'Logo T-Shirt'),
(17, 'Giannis Swoosh Freak', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/ce7bf236-ae9b-4bd1-98ee-c8b8b997ce38/giannis-swoosh-freak-mens-dri-fit-t-shirt-4RtcWf.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/9d45dc1e-dabc-4258-ac8a-5e1d76d6904a/giannis-swoosh-freak-mens-dri-fit-t-shirt-4RtcWf.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/b5f09f86-1e97-4fe0-8c4e-06afd14d5d39/giannis-swoosh-freak-mens-dri-fit-t-shirt-4RtcWf.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/cbd1de72-23a6-4d30-9bdf-7421b35766a8/giannis-swoosh-freak-mens-dri-fit-t-shirt-4RtcWf.jpg', 'Get fluent in Freakish in this season\'s Giannis Swoosh Freak T-Shirt from Nike Basketball. It\'s made from soft, lightweight fabric with printed graphics honoring the MVP.', 35, 50, 'Men\'s Nike Dri-FIT T-Shirt'),
(18, 'Nike Sportswear NSW', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/be49c84e-716a-44c4-b5b9-33ce26e2ac3b/sportswear-nsw-mens-pullover-hoodie-knslnv.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/e1e4c9a5-9444-42eb-bef6-3d609b383e93/sportswear-nsw-mens-pullover-hoodie-knslnv.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/715f711d-0cfa-4ea7-b9bb-3b67bc4d7456/sportswear-nsw-mens-pullover-hoodie-knslnv.jpg', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/b9dbeac7-7230-4352-83f0-7d93d1e7acbf/sportswear-nsw-mens-pullover-hoodie-knslnv.jpg', 'Woven ripstop details at the hood and zippered sleeve pocket give the Nike Sportswear Pullover Hoodie a premium look ready for everyday wear. The chest graphic uses the reverse side of the fleece, adding a unique look and texture to this updated favorite.', 100, 50, 'Men\'s Pullover Hoodie');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `email`, `lastname`, `firstname`, `role`) VALUES
(4, '$2a$10$oWEGRgs6Xx/N9GDNCZTwRe9FgURp6zJzWL3MXlf8dEL2YPXhNHqgG', '1751010102nhung@ou.edu.vn', 'Vo', 'MyNhung', 'Customer'),
(5, '$2a$10$vTFvBUQYGlwEslIEpGB2d.UMf41ObJ5sJCWb0ysWNxUmrs0jGRLjm', 'vtmn1212@gmail.com', 'Vo', 'Nhung', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
