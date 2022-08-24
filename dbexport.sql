-- MySQL dump 10.13  Distrib 8.0.30, for macos12.4 (x86_64)
--
-- Host: localhost    Database: perpus
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anggota`
--

DROP TABLE IF EXISTS `anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anggota` (
  `id_anggota` int NOT NULL AUTO_INCREMENT,
  `nm_anggota` varchar(32) DEFAULT NULL,
  `alamat` text,
  `ttl_anggota` text,
  `status_anggota` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggota`
--

LOCK TABLES `anggota` WRITE;
/*!40000 ALTER TABLE `anggota` DISABLE KEYS */;
INSERT INTO `anggota` VALUES (2,'achmad','bandar jaya','bandar jaya, 17 juni 1993','1'),(3,'Solihin','tanjung bintang','tanjung bintang, 1 januari 1993\r\n','1'),(4,'joko','blitang','blitang 2 februari 1992','1'),(5,'nelwan','bandar lampung ','bandar lampung 22 juni 1990','1'),(6,'dodi','metro','metro, 11 januari 1993','1'),(7,'doni','pringsewu','pringsewu, 30 januari 1990','1'),(8,'abang','nunyai','kotabumi, 1 januari 1990','1'),(9,'Ichwan Maulana','Jl. rawa selatan II','20 Oktober 1990','1'),(40,'Adit','Sawangan','Depok, 20 Juli 1995','1'),(10,'Adrian','Jakarta','Jogja, 20 Juli 1991','1');
/*!40000 ALTER TABLE `anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buku`
--

DROP TABLE IF EXISTS `buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buku` (
  `kd_buku` int NOT NULL,
  `judul_buku` varchar(32) DEFAULT NULL,
  `pengarang` varchar(32) DEFAULT NULL,
  `jenis_buku` varchar(32) DEFAULT NULL,
  `penerbit` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`kd_buku`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buku`
--

LOCK TABLES `buku` WRITE;
/*!40000 ALTER TABLE `buku` DISABLE KEYS */;
INSERT INTO `buku` VALUES (23,'sistem penjualan','solihin','Tugas Akhir','yudhistira'),(12,'sistem perpustakaan','wahyudi','TA','yudhistira'),(123,'basis data','badianto','Ilmu','yudhistira'),(34,'android','karyono','Ilmu','yudhistira'),(200,'bahasa arab','solihin','Ilmu','yudistira'),(40,'Game Of Thrones','R.R George','Fiksi','Gramedia'),(412,'Dasar Pemprograman','Agus Najib','Ilmu','Gramedia'),(221,'C++ Untuk Pemula','Dadang Rahyanp','Ilmu','Elexmedia'),(121,'TRading Crypto','Targaryen','Ilmu','Elexmedia'),(1,'Doraemon Full','Fujiko F Fujio','Fiksi','Gramedia');
/*!40000 ALTER TABLE `buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meminjam`
--

DROP TABLE IF EXISTS `meminjam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meminjam` (
  `id_pinjam` int NOT NULL AUTO_INCREMENT,
  `tgl_pinjam` date DEFAULT NULL,
  `jumlah_pinjam` int DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `id_anggota` int DEFAULT NULL,
  `kd_buku` varchar(5) DEFAULT NULL,
  `kembali` int NOT NULL,
  PRIMARY KEY (`id_pinjam`),
  KEY `id_anggota` (`id_anggota`),
  KEY `kd_buku` (`kd_buku`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meminjam`
--

LOCK TABLES `meminjam` WRITE;
/*!40000 ALTER TABLE `meminjam` DISABLE KEYS */;
INSERT INTO `meminjam` VALUES (1,'2015-02-03',1,'2015-02-04',2,'12',2),(3,'2015-02-03',1,'2015-02-02',4,'23',2),(12,'2015-02-02',1,'2015-02-02',3,'23',2),(11,'2015-02-02',1,'2015-02-02',6,'12',2),(10,'2015-02-02',1,'2015-02-02',6,'34',2),(9,'2015-02-02',1,'2015-02-03',5,'123',2),(13,'2015-02-03',1,'2015-02-03',3,'34',2),(14,'2015-02-03',1,'2015-02-03',3,'23',2),(15,'2015-02-03',1,'2015-02-03',4,'123',2),(16,'2015-02-17',1,'2015-02-17',8,'200',2),(17,'2015-04-28',1,'2015-04-28',4,'12',2),(18,'2015-04-28',1,'2015-04-28',5,'12',2),(19,'2015-05-11',1,'2015-05-11',3,'34',2),(20,'2022-08-04',1,'2022-08-04',2,'12',2),(21,'2022-08-04',1,'2022-08-04',2,'12',2),(22,'2022-08-04',1,'2022-08-04',2,'23',2),(23,'2022-08-04',1,'2022-08-04',2,'12',2),(24,'2022-08-11',1,'2022-08-11',3,'23',2);
/*!40000 ALTER TABLE `meminjam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24 10:28:24
