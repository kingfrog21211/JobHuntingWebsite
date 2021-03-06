-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: jobhunting
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `candidateId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `professionId` int NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `fullName` varchar(45) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `description` text,
  `cityId` int NOT NULL,
  `address` varchar(200) NOT NULL,
  `experienceId` int NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `pathCV` text,
  `describeCV` text,
  PRIMARY KEY (`candidateId`),
  KEY `id_candidate_user_id` (`userId`),
  KEY `id_candidate_city_id` (`cityId`),
  KEY `id_candidate_profession_id` (`professionId`),
  KEY `id_candidate_experience_idx` (`experienceId`),
  CONSTRAINT `id_candidate_city` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_candidate_experience` FOREIGN KEY (`experienceId`) REFERENCES `experience` (`experienceId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_candidate_profession` FOREIGN KEY (`professionId`) REFERENCES `profession` (`professionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_candidate_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,2,7,NULL,'Tran Cam My','female',NULL,1,'Quan Go Vap',1,'0399933589','trancammy2102@gmail.com','2000-02-21','path demo',NULL),(2,5,22,NULL,'My My','female',NULL,1,'Binh Thanh',3,'0123456789','my@gmail.com','2000-02-02','path demo',NULL),(3,16,7,NULL,'Tran Tu','male','????y l?? m?? t??? ???ng vi??n',1,'T??n B??nh',2,'0123456789','tu@gmail.com','2001-01-01','path demo',NULL),(4,17,7,NULL,'Tran Thi My','male','Mo ta ung vien .................................................',2,'Quan Cam',2,'0123456789','my@gmail.com','2001-01-05','path demo',NULL);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_post_resume`
--

DROP TABLE IF EXISTS `candidate_post_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_post_resume` (
  `candidatePostResumeId` int NOT NULL AUTO_INCREMENT,
  `candidateId` int NOT NULL,
  `recruitJobId` int NOT NULL,
  `postDate` date NOT NULL,
  `status` bit(1) NOT NULL,
  `pathFileCV` text NOT NULL,
  PRIMARY KEY (`candidatePostResumeId`),
  KEY `id_candidatePostResume_candidate_id` (`candidateId`),
  KEY `id_candidatePostResume_recruitJob_id` (`recruitJobId`),
  CONSTRAINT `id_candidatePostResume_candidate` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`candidateId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_candidatePostResume_recruitJob` FOREIGN KEY (`recruitJobId`) REFERENCES `recruit_job` (`recruitJobId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_post_resume`
--

LOCK TABLES `candidate_post_resume` WRITE;
/*!40000 ALTER TABLE `candidate_post_resume` DISABLE KEYS */;
INSERT INTO `candidate_post_resume` VALUES (1,1,16,'2022-01-25',_binary '','path demo'),(2,1,11,'2022-05-25',_binary '','path demo'),(3,2,11,'2022-10-10',_binary '','path demo'),(4,2,1,'2022-11-01',_binary '','path demo'),(5,2,11,'2022-12-15',_binary '','path demo'),(6,2,1,'2022-01-17',_binary '','path demo');
/*!40000 ALTER TABLE `candidate_post_resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career` (
  `careerId` int NOT NULL AUTO_INCREMENT,
  `careerName` varchar(45) NOT NULL,
  PRIMARY KEY (`careerId`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
INSERT INTO `career` VALUES (1,'B??n h??ng / Ti???p th???'),(2,'H??ng ti??u d??ng'),(3,'K??? thu???t'),(4,'D???ch v???'),(5,'M??y t??nh / IT'),(6,'Ch??m s??c s???c kh???e'),(7,'S???n xu???t'),(8,'H??nh ch??nh / Nh??n s???'),(9,'K??? to??n / T??i ch??nh'),(10,'Truy???n th??ng / Media'),(11,'X??y d???ng'),(12,'Gi??o d???c / ????o t???o'),(13,'Khoa h???c'),(14,'Kh??ch s???n / Du l???ch'),(15,'Ng??nh kh??c');
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `cityId` int NOT NULL AUTO_INCREMENT,
  `cityName` varchar(45) NOT NULL,
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'H??? Ch?? Minh'),(2,'H?? N???i'),(3,'???? N???ng'),(4,'??BSCL'),(5,'An Giang'),(6,'B?? R???a - V??ng T??u'),(7,'B???c K???n'),(8,'B???c Giang'),(9,'B???c Li??u'),(10,'B???c Ninh'),(11,'B???n Tre'),(12,'Bi??n H??a'),(13,'B??nh ?????nh'),(14,'B??nh D????ng'),(15,'B??nh Ph?????c'),(16,'B??nh Thu???n'),(17,'C?? Mau'),(18,'C???n Th??'),(19,'Cao B???ng'),(20,'?????k L???k'),(21,'??i???n Bi??n'),(22,'?????ng Nai'),(23,'?????ng Th??p'),(24,'Gia Lai'),(25,'H?? Giang'),(26,'H?? Nam'),(27,'H?? T??y'),(28,'H?? T??nh'),(29,'H???i D????ng'),(30,'H???i Ph??ng'),(31,'H??a B??nh'),(32,'Hu???'),(33,'H??ng Y??n'),(34,'Kh??nh H??a'),(35,'Kon Tum'),(36,'Lai Ch??u'),(37,'L??m ?????ng'),(38,'L???ng S??n'),(39,'L??o Cai'),(40,'Long An'),(41,'Nam ?????nh'),(42,'Ngh??? An'),(43,'Ninh B??nh'),(44,'Ninh Thu???n'),(45,'Ph?? Th???'),(46,'Ph?? Y??n'),(47,'Qu???ng B??nh'),(48,'Qu???ng Nam'),(49,'Qu???ng Ng??i'),(50,'Qu???ng Ninh'),(51,'Qu???ng Tr???'),(52,'S??c Tr??ng'),(53,'S??n La'),(54,'T??y Ninh'),(55,'Th??i B??nh'),(56,'Th??i Nguy??n'),(57,'Thanh H??a'),(58,'Th???a Thi??n - Hu???'),(59,'Ti???n Giang'),(60,'Tr?? Vinh'),(61,'Tuy??n Quang'),(62,'Ki??n Giang'),(63,'V??nh Long'),(64,'V??nh Ph??c'),(65,'Y??n B??i'),(66,'Kh??c'),(67,'Qu???c t???'),(68,'H???u Giang'),(69,'????k N??ng');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience` (
  `experienceId` int NOT NULL AUTO_INCREMENT,
  `experienceValue` varchar(45) NOT NULL,
  PRIMARY KEY (`experienceId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (1,'Ch??a c?? kinh nghi???m'),(2,'D?????i 1 n??m'),(3,'T??? 1 ?????n 2 n??m'),(4,'T??? 2 ?????n 3 n??m'),(5,'T??? 3 ?????n 4 n??m'),(6,'T??? 4 ?????n 5 n??m'),(7,'Tr??n 5 n??m');
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession`
--

DROP TABLE IF EXISTS `profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profession` (
  `professionId` int NOT NULL AUTO_INCREMENT,
  `professionName` varchar(45) NOT NULL,
  `careerId` int NOT NULL,
  PRIMARY KEY (`professionId`),
  KEY `id_profession_career_id` (`careerId`),
  CONSTRAINT `id_profession_career` FOREIGN KEY (`careerId`) REFERENCES `career` (`careerId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession`
--

LOCK TABLES `profession` WRITE;
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
INSERT INTO `profession` VALUES (1,'B??n h??ng',1),(2,'B??o ch??/Bi??n t???p vi??n',10),(3,'B???o v???/V??? s??/An ninh',4),(4,'B???t ?????ng s???n',11),(5,'Bi??n d???ch/Phi??n d???ch',8),(6,'B??u ch??nh vi???n th??ng',4),(7,'C??ng ngh??? th??ng tin',5),(8,'C?? kh??/K?? thu???t ???ng d???ng',3),(9,'Ch??m s??c kh??ch h??ng',4),(11,'D???u kh??/?????a ch???t',3),(12,'D???t may',7),(13,'Du l???ch/Nh?? h??ng/Kh??ch s???n',14),(14,'D?????c/H??a ch???t/Sinh h??a',6),(15,'??i???n/??i???n t???/??i???n l???nh',3),(16,'Gi???i tr??/Vui ch??i',10),(17,'Gi??o d???c/????o t???o/Th?? vi???n',12),(18,'Giao th??ng/V???n t???i/Th???y l???i/C???u ???????ng',13),(19,'Gi??y da/Thu???c da',7),(20,'H??nh ch??nh/Th?? k??/Tr??? l??',8),(21,'Ki???n tr??c/N???i th???t',11),(22,'Kinh doanh',1),(23,'Kho v???n/V???t t??/Thu mua',7),(24,'Khu ch??? xu???t/Khu c??ng nghi???p',15),(25,'L??m ?????p/Th??? l???c/Spa',6),(26,'Lao ?????ng ph??? th??ng',15),(27,'Lu???t/Ph??p l??',4),(28,'M??i tr?????ng/X??? l?? ch???t th???i',3),(29,'M??? ph???m/Th???i trang/Trang s???c',7),(30,'N??ng/L??m/Ng?? nghi???p',13),(31,'Ng??n h??ng/Ch???ng kho??n/?????u t??',9),(32,'Ngh??? thu???t/??i???n ???nh',10),(33,'Ngo???i ng???',12),(34,'Nh??n s???',8),(35,'PG/PB/L??? t??n',1),(36,'Ph??t tri???n th??? tr?????ng',1),(37,'Ph???c v???/T???p v???/Gi??p vi???c',15),(38,'Quan h??? ?????i ngo???i',10),(39,'Qu???n l?? ??i???u h??nh',8),(40,'Qu???ng c??o/Marketing/PR',4),(41,'S???n xu???t/V???n h??nh s???n xu???t',7),(42,'Sinh vi??n/M???i t???t nghi???p/Th???c t???p',15),(43,'T??i ch??nh/K??? to??n/Ki???m to??n',9),(44,'T??i x???/L??i xe/Giao nh???n',15),(45,'T?? v???n b???o hi???m',9),(46,'Th???m ?????nh/Gi??m ?????nh/Qu???n l?? ch???t l?????ng',7),(47,'Th??? d???c/Th??? thao',15),(48,'Thi???t k???/M??? thu???t',10),(49,'Th???i v???/B??n th???i gian',15),(50,'Th???c ph???m/DV ??n u???ng',6),(51,'Trang thi???t b??? c??ng nghi???p',15),(52,'Trang thi???t b??? gia d???ng',2),(53,'Trang thi???t b??? v??n ph??ng',7),(54,'X??y d???ng',11),(55,'Xu???t-Nh???p kh???u/Ngo???i th????ng',7),(56,'Y t???',6),(57,'Kh??c',15);
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruit`
--

DROP TABLE IF EXISTS `recruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruit` (
  `recruitId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `cityId` int NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `CompanyName` varchar(500) NOT NULL,
  `About` text NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `CoverImg` varchar(100) DEFAULT NULL,
  `website` text NOT NULL,
  `active` bit(1) NOT NULL,
  `foundedYear` year DEFAULT NULL,
  PRIMARY KEY (`recruitId`),
  KEY `id_recruit_user_id` (`userId`),
  KEY `id_recruit_city_id` (`cityId`),
  CONSTRAINT `id_recruit_city` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_recruit_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruit`
--

LOCK TABLES `recruit` WRITE;
/*!40000 ALTER TABLE `recruit` DISABLE KEYS */;
INSERT INTO `recruit` VALUES (1,18,1,'Qu???n 1','tuyendung@gmail.com','C??ng ty Tuy???n D???ng','C??ng ty chuy??n thi???t k??? ph???n m???m cho c??c doanh nghi???p trong v?? ngo??i n?????c. V???i chuy??n m??n cao v?? ?????i ng?? chuy??n nghi???p, ch??ng t??i tin r???ng ch??ng t??i s??? thay ?????i ?????t n?????c trong th???i gian s???m nh???t',NULL,NULL,'tuyendungcompany.com',_binary '',2000),(2,20,2,'Qu???n Ba ??inh','hr@gmail.com','C??ng ty IT','As a brand of Harvey Nash Group, NashTech has committed to deliver the very best talents, IT solutions and Business Process Services to our international clients in the UK, Europe, Asia Pacific & the US.',NULL,NULL,'itcompany.com',_binary '',2001);
/*!40000 ALTER TABLE `recruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruit_job`
--

DROP TABLE IF EXISTS `recruit_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruit_job` (
  `recruitJobId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `amount` int NOT NULL,
  `require` longtext NOT NULL,
  `description` longtext NOT NULL,
  `workPlace` varchar(255) NOT NULL,
  `benefit` text,
  `postDate` varchar(10) NOT NULL,
  `expirationDate` varchar(10) NOT NULL,
  `emailContact` varchar(50) NOT NULL,
  `nameContact` varchar(45) DEFAULT NULL,
  `phoneContact` varchar(15) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `salaryId` int NOT NULL,
  `experienceId` int NOT NULL,
  `recruitId` int NOT NULL,
  `cityId` int NOT NULL,
  `workTypeId` int NOT NULL,
  `professionId` int NOT NULL,
  PRIMARY KEY (`recruitJobId`),
  KEY `id_recruitJob_recruit_id` (`recruitId`),
  KEY `id_recruitJob_city_id` (`cityId`),
  KEY `id_recruitJob_salary_id` (`salaryId`),
  KEY `id_recruitJob_experience_id` (`experienceId`),
  KEY `id_recruitJob_workType_id` (`workTypeId`),
  KEY `id_recruitJob_profession_id` (`professionId`),
  CONSTRAINT `id_recruitJob_city` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_recruitJob_experience` FOREIGN KEY (`experienceId`) REFERENCES `experience` (`experienceId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_recruitJob_profession` FOREIGN KEY (`professionId`) REFERENCES `profession` (`professionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_recruitJob_recruit` FOREIGN KEY (`recruitId`) REFERENCES `recruit` (`recruitId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_recruitJob_salary` FOREIGN KEY (`salaryId`) REFERENCES `salary` (`salaryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_recruitJob_workType` FOREIGN KEY (`workTypeId`) REFERENCES `work_type` (`workTypeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruit_job`
--

LOCK TABLES `recruit_job` WRITE;
/*!40000 ALTER TABLE `recruit_job` DISABLE KEYS */;
INSERT INTO `recruit_job` VALUES (1,'Tuy???n nh??n vi??n SEO','Nh??n vi??n',2,'????y l?? y??u c???u c??ng vi???c','????y l?? m?? t??? c??ng vi???c nh??n vi??n SEO','T??a nh?? chung c?? b??o nh??n d??n',NULL,'2020-01-27','2020-02-05','tuyendung@gmail.com',NULL,'0123456789',_binary '',6,3,1,1,1,22),(3,'Tuy???n nh??n vi??n th???i v???','Nh??n vi??n',2,'????y l?? y??u c???u c??ng vi???c','????y l?? m?? t??? c??ng vi???c nh??n vi??n th???i v???','T??a nh?? chung c?? b??o nh??n d??n',NULL,'2020-01-26','2020-02-05','tuyendung@gmail.com',NULL,'0123456789',_binary '',6,3,1,1,2,22),(11,'Tuy???n nh??n vi??n SEO','Nh??n vi??n',2,'????y l?? y??u c???u c??ng vi???c','????y l?? m?? t??? c??ng vi???c SEO','T??a nh?? chung c?? b??o nh??n d??n',NULL,'2020-01-26','2020-02-05','tuyendung@gmail.com',NULL,'0123456789',_binary '',6,3,1,1,1,22),(16,'DevOps Engineer ','Nh??n vi??n',1,'The Senior DevOps Engineer is responsible to design, build and maintain the CI/CD solutions for dedicated/ hybrid cloud environments. The Senior DevOps Engineer works with software developers and other production IT staff to oversee code releases.','The Senior DevOps Engineer is responsible to design, build and maintain the CI/CD solutions for dedicated/ hybrid cloud environments. The Senior DevOps Engineer works with software developers and other production IT staff to oversee code releases.',' Xuan Thuy, Hanoi, Vietnam, Cau Giay, Ha Noi','13 month salary per year','2021-01-17','2021-02-17','hr@gmail.com','Mr.An','0123456789',_binary '',7,2,2,2,1,7),(17,'Dev Java','Nh??n vi??n',2,'this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement ','this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description ','123 Hoang Van Thu, Tan Binh, Tp.HCM','Benefit $$$$$$$$$$$$$','2021-01-20','2021-02-20','hr@gmail.com','Ms.My','0123456789',_binary '',7,2,2,2,1,7),(18,'HR Manager','Qu???n l??',1,'this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement ','this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description ','123 Hoang Van Thu, Tan Binh, Tp.HCM','Benefit $$$$$$$$$$$$$','2021-01-20','2021-02-20','hr@gmail.com','Ms.My','0123456789',_binary '',7,2,2,2,1,34);
/*!40000 ALTER TABLE `recruit_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `salaryId` int NOT NULL AUTO_INCREMENT,
  `salaryValue` varchar(45) NOT NULL,
  PRIMARY KEY (`salaryId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (2,'T??? 1 ?????n 3 tri???u'),(3,'T??? 3 ?????n 5 tri???u'),(4,'T??? 5 ?????n 7 tri???u'),(5,'T??? 7 ?????n 10 tri???u'),(6,'Tr??n 10 tri???u'),(7,'M???c l????ng th???a thu???n');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `save_candidate`
--

DROP TABLE IF EXISTS `save_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `save_candidate` (
  `saveCandidateId` int NOT NULL AUTO_INCREMENT,
  `candidateId` int NOT NULL,
  `recruitId` int NOT NULL,
  PRIMARY KEY (`saveCandidateId`),
  KEY `id_saveCandidate_candidate_id` (`candidateId`),
  KEY `id_saveCandidate_recruit_id` (`recruitId`),
  CONSTRAINT `id_saveCandidate_candidate` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`candidateId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_saveCandidate_recruit` FOREIGN KEY (`recruitId`) REFERENCES `recruit` (`recruitId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save_candidate`
--

LOCK TABLES `save_candidate` WRITE;
/*!40000 ALTER TABLE `save_candidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `save_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `save_job`
--

DROP TABLE IF EXISTS `save_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `save_job` (
  `saveJobId` int NOT NULL AUTO_INCREMENT,
  `candidateId` int NOT NULL,
  `recruitJobId` int NOT NULL,
  PRIMARY KEY (`saveJobId`),
  KEY `id_saveJob_candidate_id` (`candidateId`),
  KEY `id_saveJob_recruitJob_id` (`recruitJobId`),
  CONSTRAINT `id_saveJob_candidate` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`candidateId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_saveJob_recruitJob` FOREIGN KEY (`recruitJobId`) REFERENCES `recruit_job` (`recruitJobId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save_job`
--

LOCK TABLES `save_job` WRITE;
/*!40000 ALTER TABLE `save_job` DISABLE KEYS */;
INSERT INTO `save_job` VALUES (11,1,11),(16,1,1),(17,1,1),(21,1,3);
/*!40000 ALTER TABLE `save_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `userRole` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'trancammy212@gmail.com','my1','$2a$10$vIdHOL1y7ncVvIib5eK5SOCnAtQosGCLxNFzP9DWKrgY.R9zWgugS','Tran','My','ROLE_ADMIN'),(2,'trancammy2102@gmail.com','mycandidate','1','My','My My','ROLE_CANDIDATE'),(3,'mymy@gmail.com','myrecruiter','1','Tran','Frog','ROLE_RECRUIT'),(4,'tranmy@gmail.com','itrecruiter','1','Cam','My','ROLE_RECRUIT'),(5,'my@gmail.com','candidate','1','My','My','ROLE_CANDIDATE'),(16,'my@gmail.com','my','$2a$10$Dc9SOwMsm.ohb18gtauvlOkdlz1Ya5/YoF4KBmCDIUzhEZct.4QM2','Tr???n','My','ROLE_CANDIDATE'),(17,'frog@gmail.com','frog','$2a$10$cUB380biVspE2pTkPtXMx.Lzmr2.SPSj/yVw07PVe.faJSOOCM8xi','Tr???n Th???','My','ROLE_CANDIDATE'),(18,'mytuyendung@gmail.com','mytuyendung','$2a$10$fUIAHqZR7QMIhCx5E5XL5.nsrj5i.qZno/Zu/.O9gA5jvJquY2Ar2','M???','My','ROLE_RECRUIT'),(19,'admin@gmail.com','admin','$2a$10$uXOoYtbTIm5Ogzpeu..qhux4eg1kQX7M2AN/5raFLfocO0U/fpRaa','Quan Tri','Vien','ROLE_ADMIN'),(20,'my@gmail.com','myyy','$2a$10$sCCgXjD9tF78IAqbM7eaSO7YgYwKvuz7n7Ra5.NOQwsyEczGfS2j2','Tr???n Th???','My','ROLE_RECRUIT');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_type`
--

DROP TABLE IF EXISTS `work_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_type` (
  `workTypeId` int NOT NULL AUTO_INCREMENT,
  `workTypeName` varchar(45) NOT NULL,
  PRIMARY KEY (`workTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_type`
--

LOCK TABLES `work_type` WRITE;
/*!40000 ALTER TABLE `work_type` DISABLE KEYS */;
INSERT INTO `work_type` VALUES (1,'Nh??n vi??n ch??nh th???c'),(2,'Nh??n vi??n th???i v???'),(3,'B??n th???i gian'),(4,'L??m th??m ngo??i gi???'),(5,'Th???c t???p v?? d??? ??n');
/*!40000 ALTER TABLE `work_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-17 21:42:29
