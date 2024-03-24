-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dbandroid
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `idCart` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) NOT NULL,
  `nameProduct` varchar(255) NOT NULL,
  `priceProduct` int(11) NOT NULL,
  `imgProduct` varchar(1000) NOT NULL,
  `slProduct` int(3) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`idCart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCart` int(3) NOT NULL,
  `idProduct` int(3) NOT NULL,
  `nameProduct` varchar(200) NOT NULL,
  `priceProduct` int(255) NOT NULL,
  `slProduct` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
INSERT INTO `cart_details` VALUES (1,6,1,'Homestay đà lạt',300,1),(2,7,1,'Homestay đà lạt',300,1),(3,8,1,'Homestay đà lạt',300,1),(4,9,1,'Homestay đà lạt',300,1),(5,10,1,'Homestay đà lạt',300,1),(6,11,1,'Homestay đà lạt',300,1),(7,12,1,'Homestay đà lạt',300,1),(8,13,1,'Homestay đà lạt',300,1),(9,14,1,'Homestay đà lạt',600,2),(10,15,6,'Homestay HCM 3',234,1);
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_login`
--

DROP TABLE IF EXISTS `cart_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `idProduct` int(3) NOT NULL,
  `nameProduct` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `slProduct` int(3) NOT NULL,
  `createAt` date DEFAULT current_timestamp(),
  `updateProduct` date DEFAULT current_timestamp(),
  `status` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_login`
--

LOCK TABLES `cart_login` WRITE;
/*!40000 ALTER TABLE `cart_login` DISABLE KEYS */;
INSERT INTO `cart_login` VALUES (1,'binhbinh@gmail.com',9,'Homestay Đắk Lắk 3',222,1,'2022-05-31','2022-05-31',0),(2,'binhbinh@gmail.com',9,'Homestay Đắk Lắk 3',222,1,'2022-05-31','2022-05-31',0),(3,'binhbinh@gmail.com',9,'Homestay Đắk Lắk 3',222,1,'2022-06-04','2022-06-04',0),(4,'binhbinh@gmail.com',9,'Homestay Đắk Lắk 3',222,1,'2022-09-22','2022-09-22',0),(5,'binhbinh@gmail.com',3,'Homestay italia 2',333,1,'2022-10-08','2022-10-08',0);
/*!40000 ALTER TABLE `cart_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `nameCategory` varchar(255) NOT NULL,
  `imgCategory` varchar(1000) NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Homestay trên cây','https://ezcloud.vn/wp-content/uploads/2019/03/mo-hinh-homestay-doc-dao-tren-cay.jpg'),(2,'Homestay thùng rượu vang','https://ezcloud.vn/wp-content/uploads/2019/03/homestay-thung-ruou-vang-da-lat.jpg'),(3,'Homestay nhà sàn','https://ezcloud.vn/wp-content/uploads/2019/03/homestay-nha-san-1-768x512.jpg'),(4,'Homestay miệt vườn miền Tây','https://ezcloud.vn/wp-content/uploads/2019/03/homestay-miet-vuon-2.jpg'),(5,'Homestay kiến trúc cổ xưa','https://ezcloud.vn/wp-content/uploads/2019/03/homestay-nha-co-768x432.jpg'),(6,'Homestay kiểu container','https://ezcloud.vn/wp-content/uploads/2019/03/homestay-container-1-768x502.jpg'),(7,'Homestay kiểu tổ chim','https://ezcloud.vn/wp-content/uploads/2019/03/homestay-to-chim-1.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_buy`
--

DROP TABLE IF EXISTS `info_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameCustomer` varchar(200) NOT NULL,
  `phoneCustomer` int(11) NOT NULL,
  `emailCustomer` varchar(100) NOT NULL,
  `addressCustomer` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_buy`
--

LOCK TABLES `info_buy` WRITE;
/*!40000 ALTER TABLE `info_buy` DISABLE KEYS */;
INSERT INTO `info_buy` VALUES (5,'thanks',2147483647,'thanks@gmail.com','thanks'),(6,'thanks',2147483647,'thanks@gmail.com','thanks'),(7,'thanks',2147483647,'thanks@gmail.com','thanks'),(8,'thanks',99999999,'hosybinh@gmail.com','bbb'),(9,'thanks',99999999,'hosybinh@gmail.com','bbb'),(10,'thanks',99999999,'hosybinh@gmail.com','bbb'),(11,'thanks',99999999,'hosybinh@gmail.com','bbb'),(12,'thanks',888888888,'thanks@gmail.com','bbbb'),(13,'how sssss',987654321,'bbbb@gmail.com','bbbbbbb'),(14,'sssssssssss',987654321,'bbbbbb@gmaill.com','bbbbbbb'),(15,'ho sy binh',986655179,'hosybinhkog@gmail.com','49/1 buif didnfh tuy');
/*!40000 ALTER TABLE `info_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new`
--

DROP TABLE IF EXISTS `new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new` (
  `idNew` int(11) NOT NULL AUTO_INCREMENT,
  `nameNew` varchar(200) NOT NULL,
  `descriptionNew` varchar(2000) NOT NULL,
  `imgNew` varchar(2000) NOT NULL,
  `authorNew` varchar(200) NOT NULL,
  PRIMARY KEY (`idNew`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new`
--

LOCK TABLES `new` WRITE;
/*!40000 ALTER TABLE `new` DISABLE KEYS */;
INSERT INTO `new` VALUES (1,'Khách sạn được mọi người yêu thích nhất!','Khách sạn được mọi người yêu thích nhất!','https://www.tphcm.city/wp-content/uploads/2021/10/dau-tu-homestay-1.jpg','Json Hash'),(2,'Khách sạn được mọi người yêu thích nhất!','Khách sạn được mọi người yêu thích nhất!','https://www.tphcm.city/wp-content/uploads/2021/10/dau-tu-homestay-1.jpg','Json Hash'),(5,'Homestay Da lat','Rats Dep binh data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUUFBcVFRUXGBcaGx4bHBobGxwbHh4bGxwdGxsbGx0bICwkGx0pIBobJTYlKS8wMzMzGyI5PjkxPSwyMzABCwsLEA4QHhISHjUpJCkyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQMGAAECBwj/xABIEAABAgMEBwQGCAMGBgMAAAABAhEAAyEEEjFBBSJRYXGBkRMyobEGQlLB0fAjM2JygpKy4aLC8QcUg7PS4hYkNHPD0xVTY//EABsBAAIDAQEBAAAAAAAAAAAAAAIDAAEEBQYH/8QALxEAAgIBAwIEBgIBBQAAAAAAAAECEQMSITEEQRMiUWEFMnGBkaEUFSMzQlLB0f/aAAwDAQACEQMRAD8A1LLEF8/KD1rvWck0dL8yS/vhdgBBa516zuH7nxbwIjm43s0dDIt0ykybUAkMW1T4FhBKbcXLbd584QJnZNUBv4nMTItB3f1LwbiUpFgl2snEwwlTH/rFbk2k7fKDZVoJ9bwGcIlsOiMlqIzHH55RsTboNd3UU8PKAVzGDkv8/wBIjkzq5dHhUkNiHLtJag+d7cI0i0kYjnz6QOuZT5+dny8QdpWA02HYzRanOXPJswd1fCD5a9XNhgNm6hdwH/EvbCWTOCmyOWVdu4NHSLYRqjA4HbWh5VLZk7orQTUG6QtI7Mg1OAbI4kDcMN8DyLUFEXyQpx9IKqBHtD1/PeRSAZinJyOFcmy3f1jpAwb5+dsNxylj3TFTip7MNtCFSynC4p2WmqSDiE0y9k1bECBZ9pLE3QQQKlm57TuguzWu4kgsUlrySxSriMzsOIehEaNjSt1ykqUPWlmqg+aCPrE5XaKyF7GHOcZ7tbiVBw27AUqxzJneUbpagoCwyGJZ8cngmyWeXLmKAcO1HJSCA1Ukm9+52QyCQpKVIUCkuCRkXDAjI53RhnAFoYKZqg3TRtYUq2RL4bYTKcuBqjENSt3VedyHcPgKP9qndFBygW0rUAWdnAVswzIww7uT8Y5SSlKSl+L1q4ywLeqHZ6mAlzS79GxwZuNMgTjWFU2wqB9IsyVg1HkXzhYK4YfNW+MM5yHcE/PDxgJMpnfHZ5095jRjdRBktzgJrHVypB4PHQIxOeB/fFXKkQKWzH9oPdlECksohOIPPlERo741iacgu7Yh4jKHKRiTgBj+5hyFMwLb4w69DtG9taAtSSZUvXObqB1EniXPBJiKzej0+Zins0nNZbwx6tFv9FLKiy3pV+8pZCsGqAzAY4Z1EMxOOpWxOdyUHpH16u0GoPugeYhjTDLdtHAwUtGY6REsvHVOMBrFTHBMdzBUxE8GkVZGpEZHUZFaAvEBpE4KlhfqlAWDua9ElpWBJYYFNPy/0hboj/pSl7xlpKVatGKbyWGYuqSMnYwRpRd2VLBzYfw/Fo4CWmR3m7R5vaJ11ahsUR4xqXaaxHaqzF09ZXmYZ2W1hCUS1Se0dLtiXc4JauEbdKoRdEUq1DbB8m3AZnlEC5ciaFqlaikoKyk3gQEgOBQpUDXNLPmzQJKEIyY0Mhk9BrNthUC1Ma/tEctSsyesRoTljj5RJJr8/CE0khttkgS+fz87YinrUhiDyJghIb5HmPIRHPS6d7u3TnFRe+5bJ5NqB+B/fKCHKmfHaKPsb3dTCgS2IOePDhBkm0uK8/f89XaBnBcoKEuzDydv7HeN2G2sdomAhgK+e6BZait0hzXHjtO/fDCzWUAu1QauPDD5bCFPYYcyJb1+a+UMpEtgFB3GIcim7Yc4is0tql/Ej9sIYougVzwbo39YU7sKgecL2ulZRM9pu81DfA72AFNbflCy02x1MtJSs+rik+0pB2EvQV2tDKe','data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUUFBcVFRUXGBcaGx4bHBobGxwbHh4bGxwdGxsbGx0bICwkGx0pIBobJTYlKS8wMzMzGyI5PjkxPSwyMzABCwsLEA4QHhISHjUpJCkyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQMGAAECBwj/xABIEAABAgMEBwQGCAMGBgMAAAABAhEAAyEEEjFBBSJRYXGBkRMyobEGQlLB0fAjM2JygpKy4aLC8QcUg7PS4hYkNHPD0xVTY//EABsBAAIDAQEBAAAAAAAAAAAAAAIDAAEEBQYH/8QALxEAAgIBAwIEBgIBBQAAAAAAAAECEQMSITEEQRMiUWEFMnGBkaEUFSMzQlLB0f/aAAwDAQACEQMRAD8A1LLEF8/KD1rvWck0dL8yS/vhdgBBa516zuH7nxbwIjm43s0dDIt0ykybUAkMW1T4FhBKbcXLbd584QJnZNUBv4nMTItB3f1LwbiUpFgl2snEwwlTH/rFbk2k7fKDZVoJ9bwGcIlsOiMlqIzHH55RsTboNd3UU8PKAVzGDkv8/wBIjkzq5dHhUkNiHLtJag+d7cI0i0kYjnz6QOuZT5+dny8QdpWA02HYzRanOXPJswd1fCD5a9XNhgNm6hdwH/EvbCWTOCmyOWVdu4NHSLYRqjA4HbWh5VLZk7orQTUG6QtI7Mg1OAbI4kDcMN8DyLUFEXyQpx9IKqBHtD1/PeRSAZinJyOFcmy3f1jpAwb5+dsNxylj3TFTip7MNtCFSynC4p2WmqSDiE0y9k1bECBZ9pLE3QQQKlm57TuguzWu4kgsUlrySxSriMzsOIehEaNjSt1ykqUPWlmqg+aCPrE5XaKyF7GHOcZ7tbiVBw27AUqxzJneUbpagoCwyGJZ8cngmyWeXLmKAcO1HJSCA1Ukm9+52QyCQpKVIUCkuCRkXDAjI53RhnAFoYKZqg3TRtYUq2RL4bYTKcuBqjENSt3VedyHcPgKP9qndFBygW0rUAWdnAVswzIww7uT8Y5SSlKSl+L1q4ywLeqHZ6mAlzS79GxwZuNMgTjWFU2wqB9IsyVg1HkXzhYK4YfNW+MM5yHcE/PDxgJMpnfHZ5095jRjdRBktzgJrHVypB4PHQIxOeB/fFXKkQKWzH9oPdlECksohOIPPlERo741iacgu7Yh4jKHKRiTgBj+5hyFMwLb4w69DtG9taAtSSZUvXObqB1EniXPBJiKzej0+Zins0nNZbwx6tFv9FLKiy3pV+8pZCsGqAzAY4Z1EMxOOpWxOdyUHpH16u0GoPugeYhjTDLdtHAwUtGY6REsvHVOMBrFTHBMdzBUxE8GkVZGpEZHUZFaAvEBpE4KlhfqlAWDua9ElpWBJYYFNPy/0hboj/pSl7xlpKVatGKbyWGYuqSMnYwRpRd2VLBzYfw/Fo4CWmR3m7R5vaJ11ahsUR4xqXaaxHaqzF09ZXmYZ2W1hCUS1Se0dLtiXc4JauEbdKoRdEUq1DbB8m3AZnlEC5ciaFqlaikoKyk3gQEgOBQpUDXNLPmzQJKEIyY0Mhk9BrNthUC1Ma/tEctSsyesRoTljj5RJJr8/CE0khttkgS+fz87YinrUhiDyJghIb5HmPIRHPS6d7u3TnFRe+5bJ5NqB+B/fKCHKmfHaKPsb3dTCgS2IOePDhBkm0uK8/f89XaBnBcoKEuzDydv7HeN2G2sdomAhgK+e6BZait0hzXHjtO/fDCzWUAu1QauPDD5bCFPYYcyJb1+a+UMpEtgFB3GIcim7Yc4is0tql/Ej9sIYougVzwbo39YU7sKgecL2ulZRM9pu81DfA72AFNbflCy02x1MtJSs+rik+0pB2EvQV2tDKeQnOhfluO7rwiXS','Admin binh binh');
/*!40000 ALTER TABLE `new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `nameProduct` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `imgProduct` varchar(1000) NOT NULL,
  `_idCategory` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'Homestay italia 2',333,'Homestay italia','https://media.istockphoto.com/photos/mae-kampong-village-in-chiang-mai-thailand-picture-id1323459165?b=1&k=20&m=1323459165&s=170667a&w=0&h=zpZO9BNpL9UOflrECLsUpWCfHtq7tn7S81-XuCO6_wI=',1,'Italia'),(4,'Homestay HCM 1',123,'Homestay đẹp nhất sài gòn hiện tại.........','https://www.tphcm.city/wp-content/uploads/2021/10/dau-tu-homestay-1.jpg',2,'HCM'),(5,'Homestay HCM 2',212,'Homestay đẹp nhất sài gòn hiện tại.........','https://chefjob.vn/wp-content/uploads/2020/04/homestay-duoc-nhieu-du-khach-lua-chon.jpg',123,'HCM'),(6,'Homestay HCM 3',234,'Homestay đẹp nhất sài gòn hiện tại.........Đầy đủ các trang thiết bị hiện đại','https://giathuecanho.com/wp-content/uploads/2020/07/homestay-3-1.jpg',3,'HCM'),(7,'Homestay Đắk Lắk 1',444,'Homestay đẹp nhất Đắk Lấk thời điểm hiện tại bận có thể tìm thấy','https://hoangnam.com.vn/wp-content/uploads/2021/05/4-sai-lam-phai-tranh-khi-kinh-doanh-homestay_609caaf407d20.jpeg',5,'Đắk Lắk '),(8,'Homestay Đắk Lắk 2',452,'Homestay đẹp nhất Đắk Lấk thời điểm hiện tại bận có thể tìm thấy','https://homestayreview.vn/wp-content/uploads/2021/01/homestay-cao-bang-17.jpg',5,'Đắk Lắk '),(9,'Homestay Đắk Lắk 3',222,'Homestay đẹp nhất Đắk Lấk thời điểm hiện tại bận có thể tìm thấy','https://motogo.vn/wp-content/uploads/2020/08/homestay-sa-pa.jpg',5,'Đắk Lắk ');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `displayUrl` varchar(1000) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `passswordHash` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ngueyntheanh',NULL,'nguyentheanh@gmail.com','805b346dd6c0d595ecb74f28e323afe3'),(19,'binhbinh',NULL,'binhbinh@gmail.com','805b346dd6c0d595ecb74f28e323afe3'),(20,'linhlinh',NULL,'linhlinh@gmail.com','805b346dd6c0d595ecb74f28e323afe3'),(21,'binhbinhh',NULL,'binhbinh@gmamil.com','805b346dd6c0d595ecb74f28e323afe3'),(22,'binhbinh',NULL,'binhbinh','33e4ee4cf65c4c0a53be89c807518ab4'),(23,'binhbinh',NULL,'binhbinh11','33e4ee4cf65c4c0a53be89c807518ab4'),(24,'binhbinh',NULL,'binhbinh1@gmail.com','33e4ee4cf65c4c0a53be89c807518ab4'),(25,'binhbinh211',NULL,'binhbinhq1@gmail.com','33e4ee4cf65c4c0a53be89c807518ab4'),(26,'binhbinhbibnh',NULL,'binhbinhbinh','eccb4e6a6e2c9a40973efbaf13f73c7c'),(27,'ninhvanphong',NULL,'ninhvanphong@gmail.com','805b346dd6c0d595ecb74f28e323afe3');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-08 15:27:16
