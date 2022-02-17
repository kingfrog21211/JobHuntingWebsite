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
INSERT INTO `candidate` VALUES (1,2,7,NULL,'Tran Cam My','female',NULL,1,'Quan Go Vap',1,'0399933589','trancammy2102@gmail.com','2000-02-21','path demo',NULL),(2,5,22,NULL,'My My','female',NULL,1,'Binh Thanh',3,'0123456789','my@gmail.com','2000-02-02','path demo',NULL),(3,16,7,NULL,'Tran Tu','male','Đây là mô tả ứng viên',1,'Tân Bình',2,'0123456789','tu@gmail.com','2001-01-01','path demo',NULL),(4,17,7,NULL,'Tran Thi My','male','Mo ta ung vien .................................................',2,'Quan Cam',2,'0123456789','my@gmail.com','2001-01-05','path demo',NULL);
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
INSERT INTO `career` VALUES (1,'Bán hàng / Tiếp thị'),(2,'Hàng tiêu dùng'),(3,'Kỹ thuật'),(4,'Dịch vụ'),(5,'Máy tính / IT'),(6,'Chăm sóc sức khỏe'),(7,'Sản xuất'),(8,'Hành chính / Nhân sự'),(9,'Kế toán / Tài chính'),(10,'Truyền thông / Media'),(11,'Xây dựng'),(12,'Giáo dục / Đào tạo'),(13,'Khoa học'),(14,'Khách sạn / Du lịch'),(15,'Ngành khác');
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
INSERT INTO `city` VALUES (1,'Hồ Chí Minh'),(2,'Hà Nội'),(3,'Đà Nẵng'),(4,'ĐBSCL'),(5,'An Giang'),(6,'Bà Rịa - Vũng Tàu'),(7,'Bắc Kạn'),(8,'Bắc Giang'),(9,'Bạc Liêu'),(10,'Bắc Ninh'),(11,'Bến Tre'),(12,'Biên Hòa'),(13,'Bình Định'),(14,'Bình Dương'),(15,'Bình Phước'),(16,'Bình Thuận'),(17,'Cà Mau'),(18,'Cần Thơ'),(19,'Cao Bằng'),(20,'Đắk Lắk'),(21,'Điện Biên'),(22,'Đồng Nai'),(23,'Đồng Tháp'),(24,'Gia Lai'),(25,'Hà Giang'),(26,'Hà Nam'),(27,'Hà Tây'),(28,'Hà Tĩnh'),(29,'Hải Dương'),(30,'Hải Phòng'),(31,'Hòa Bình'),(32,'Huế'),(33,'Hưng Yên'),(34,'Khánh Hòa'),(35,'Kon Tum'),(36,'Lai Châu'),(37,'Lâm Đồng'),(38,'Lạng Sơn'),(39,'Lào Cai'),(40,'Long An'),(41,'Nam Định'),(42,'Nghệ An'),(43,'Ninh Bình'),(44,'Ninh Thuận'),(45,'Phú Thọ'),(46,'Phú Yên'),(47,'Quảng Bình'),(48,'Quảng Nam'),(49,'Quảng Ngãi'),(50,'Quảng Ninh'),(51,'Quảng Trị'),(52,'Sóc Trăng'),(53,'Sơn La'),(54,'Tây Ninh'),(55,'Thái Bình'),(56,'Thái Nguyên'),(57,'Thanh Hóa'),(58,'Thừa Thiên - Huế'),(59,'Tiền Giang'),(60,'Trà Vinh'),(61,'Tuyên Quang'),(62,'Kiên Giang'),(63,'Vĩnh Long'),(64,'Vĩnh Phúc'),(65,'Yên Bái'),(66,'Khác'),(67,'Quốc tế'),(68,'Hậu Giang'),(69,'Đăk Nông');
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
INSERT INTO `experience` VALUES (1,'Chưa có kinh nghiệm'),(2,'Dưới 1 năm'),(3,'Từ 1 đến 2 năm'),(4,'Từ 2 đến 3 năm'),(5,'Từ 3 đến 4 năm'),(6,'Từ 4 đến 5 năm'),(7,'Trên 5 năm');
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
INSERT INTO `profession` VALUES (1,'Bán hàng',1),(2,'Báo chí/Biên tập viên',10),(3,'Bảo vệ/Vệ sĩ/An ninh',4),(4,'Bất động sản',11),(5,'Biên dịch/Phiên dịch',8),(6,'Bưu chính viễn thông',4),(7,'Công nghệ thông tin',5),(8,'Cơ khí/Kĩ thuật ứng dụng',3),(9,'Chăm sóc khách hàng',4),(11,'Dầu khí/Địa chất',3),(12,'Dệt may',7),(13,'Du lịch/Nhà hàng/Khách sạn',14),(14,'Dược/Hóa chất/Sinh hóa',6),(15,'Điện/Điện tử/Điện lạnh',3),(16,'Giải trí/Vui chơi',10),(17,'Giáo dục/Đào tạo/Thư viện',12),(18,'Giao thông/Vận tải/Thủy lợi/Cầu đường',13),(19,'Giày da/Thuộc da',7),(20,'Hành chính/Thư ký/Trợ lý',8),(21,'Kiến trúc/Nội thất',11),(22,'Kinh doanh',1),(23,'Kho vận/Vật tư/Thu mua',7),(24,'Khu chế xuất/Khu công nghiệp',15),(25,'Làm đẹp/Thể lực/Spa',6),(26,'Lao động phổ thông',15),(27,'Luật/Pháp lý',4),(28,'Môi trường/Xử lý chất thải',3),(29,'Mỹ phẩm/Thời trang/Trang sức',7),(30,'Nông/Lâm/Ngư nghiệp',13),(31,'Ngân hàng/Chứng khoán/Đầu tư',9),(32,'Nghệ thuật/Điện ảnh',10),(33,'Ngoại ngữ',12),(34,'Nhân sự',8),(35,'PG/PB/Lễ tân',1),(36,'Phát triển thị trường',1),(37,'Phục vụ/Tạp vụ/Giúp việc',15),(38,'Quan hệ đối ngoại',10),(39,'Quản lý điều hành',8),(40,'Quảng cáo/Marketing/PR',4),(41,'Sản xuất/Vận hành sản xuất',7),(42,'Sinh viên/Mới tốt nghiệp/Thực tập',15),(43,'Tài chính/Kế toán/Kiểm toán',9),(44,'Tài xế/Lái xe/Giao nhận',15),(45,'Tư vấn bảo hiểm',9),(46,'Thẩm định/Giám định/Quản lý chất lượng',7),(47,'Thể dục/Thể thao',15),(48,'Thiết kế/Mỹ thuật',10),(49,'Thời vụ/Bán thời gian',15),(50,'Thực phẩm/DV ăn uống',6),(51,'Trang thiết bị công nghiệp',15),(52,'Trang thiết bị gia dụng',2),(53,'Trang thiết bị văn phòng',7),(54,'Xây dựng',11),(55,'Xuất-Nhập khẩu/Ngoại thương',7),(56,'Y tế',6),(57,'Khác',15);
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
INSERT INTO `recruit` VALUES (1,18,1,'Quận 1','tuyendung@gmail.com','Công ty Tuyển Dụng','Công ty chuyên thiết kế phần mềm cho các doanh nghiệp trong và ngoài nước. Với chuyên môn cao và đội ngũ chuyên nghiệp, chúng tôi tin rằng chúng tôi sẽ thay đổi đất nước trong thời gian sớm nhất',NULL,NULL,'tuyendungcompany.com',_binary '',2000),(2,20,2,'Quận Ba Đinh','hr@gmail.com','Công ty IT','As a brand of Harvey Nash Group, NashTech has committed to deliver the very best talents, IT solutions and Business Process Services to our international clients in the UK, Europe, Asia Pacific & the US.',NULL,NULL,'itcompany.com',_binary '',2001);
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
INSERT INTO `recruit_job` VALUES (1,'Tuyển nhân viên SEO','Nhân viên',2,'Đây là yêu cầu công việc','Đây là mô tả công việc nhân viên SEO','Tòa nhà chung cư báo nhân dân',NULL,'2020-01-27','2020-02-05','tuyendung@gmail.com',NULL,'0123456789',_binary '',6,3,1,1,1,22),(3,'Tuyển nhân viên thời vụ','Nhân viên',2,'Đây là yêu cầu công việc','Đây là mô tả công việc nhân viên thời vụ','Tòa nhà chung cư báo nhân dân',NULL,'2020-01-26','2020-02-05','tuyendung@gmail.com',NULL,'0123456789',_binary '',6,3,1,1,2,22),(11,'Tuyển nhân viên SEO','Nhân viên',2,'Đây là yêu cầu công việc','Đây là mô tả công việc SEO','Tòa nhà chung cư báo nhân dân',NULL,'2020-01-26','2020-02-05','tuyendung@gmail.com',NULL,'0123456789',_binary '',6,3,1,1,1,22),(16,'DevOps Engineer ','Nhân viên',1,'The Senior DevOps Engineer is responsible to design, build and maintain the CI/CD solutions for dedicated/ hybrid cloud environments. The Senior DevOps Engineer works with software developers and other production IT staff to oversee code releases.','The Senior DevOps Engineer is responsible to design, build and maintain the CI/CD solutions for dedicated/ hybrid cloud environments. The Senior DevOps Engineer works with software developers and other production IT staff to oversee code releases.',' Xuan Thuy, Hanoi, Vietnam, Cau Giay, Ha Noi','13 month salary per year','2021-01-17','2021-02-17','hr@gmail.com','Mr.An','0123456789',_binary '',7,2,2,2,1,7),(17,'Dev Java','Nhân viên',2,'this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement ','this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description ','123 Hoang Van Thu, Tan Binh, Tp.HCM','Benefit $$$$$$$$$$$$$','2021-01-20','2021-02-20','hr@gmail.com','Ms.My','0123456789',_binary '',7,2,2,2,1,7),(18,'HR Manager','Quản lý',1,'this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement this is job requirement ','this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description this is job description ','123 Hoang Van Thu, Tan Binh, Tp.HCM','Benefit $$$$$$$$$$$$$','2021-01-20','2021-02-20','hr@gmail.com','Ms.My','0123456789',_binary '',7,2,2,2,1,34);
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
INSERT INTO `salary` VALUES (2,'Từ 1 đến 3 triệu'),(3,'Từ 3 đến 5 triệu'),(4,'Từ 5 đến 7 triệu'),(5,'Từ 7 đến 10 triệu'),(6,'Trên 10 triệu'),(7,'Mức lương thỏa thuận');
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
INSERT INTO `user` VALUES (1,'trancammy212@gmail.com','my1','$2a$10$vIdHOL1y7ncVvIib5eK5SOCnAtQosGCLxNFzP9DWKrgY.R9zWgugS','Tran','My','ROLE_ADMIN'),(2,'trancammy2102@gmail.com','mycandidate','1','My','My My','ROLE_CANDIDATE'),(3,'mymy@gmail.com','myrecruiter','1','Tran','Frog','ROLE_RECRUIT'),(4,'tranmy@gmail.com','itrecruiter','1','Cam','My','ROLE_RECRUIT'),(5,'my@gmail.com','candidate','1','My','My','ROLE_CANDIDATE'),(16,'my@gmail.com','my','$2a$10$Dc9SOwMsm.ohb18gtauvlOkdlz1Ya5/YoF4KBmCDIUzhEZct.4QM2','Trần','My','ROLE_CANDIDATE'),(17,'frog@gmail.com','frog','$2a$10$cUB380biVspE2pTkPtXMx.Lzmr2.SPSj/yVw07PVe.faJSOOCM8xi','Trần Thị','My','ROLE_CANDIDATE'),(18,'mytuyendung@gmail.com','mytuyendung','$2a$10$fUIAHqZR7QMIhCx5E5XL5.nsrj5i.qZno/Zu/.O9gA5jvJquY2Ar2','Mỳ','My','ROLE_RECRUIT'),(19,'admin@gmail.com','admin','$2a$10$uXOoYtbTIm5Ogzpeu..qhux4eg1kQX7M2AN/5raFLfocO0U/fpRaa','Quan Tri','Vien','ROLE_ADMIN'),(20,'my@gmail.com','myyy','$2a$10$sCCgXjD9tF78IAqbM7eaSO7YgYwKvuz7n7Ra5.NOQwsyEczGfS2j2','Trần Thị','My','ROLE_RECRUIT');
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
INSERT INTO `work_type` VALUES (1,'Nhân viên chính thức'),(2,'Nhân viên thời vụ'),(3,'Bán thời gian'),(4,'Làm thêm ngoài giờ'),(5,'Thực tập và dự án');
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
