-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `Address_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Pincode` varchar(10) NOT NULL,
  PRIMARY KEY (`Address_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'Delhi','Delhi','110001'),(2,2,'Mumbai','Maharashtra','400001'),(3,3,'Bengaluru','Karnataka','560001'),(4,4,'Hyderabad','Telangana','500001'),(5,5,'Chennai','Tamil Nadu','600001'),(6,6,'Kolkata','West Bengal','700001'),(7,7,'Pune','Maharashtra','411001'),(8,8,'Ahmedabad','Gujarat','380001'),(9,9,'Jaipur','Rajasthan','302001'),(10,10,'Lucknow','Uttar Pradesh','226001'),(11,11,'Bhopal','Madhya Pradesh','462001'),(12,12,'Patna','Bihar','800001'),(13,13,'Chandigarh','Chandigarh','160001'),(14,14,'Surat','Gujarat','395001'),(15,15,'Nagpur','Maharashtra','440001'),(16,16,'Indore','Madhya Pradesh','452001'),(17,17,'Kanpur','Uttar Pradesh','208001'),(18,18,'Visakhapatnam','Andhra Pradesh','530001'),(19,19,'Coimbatore','Tamil Nadu','641001'),(20,20,'Kochi','Kerala','682001'),(21,21,'Thiruvananthapuram','Kerala','695001'),(22,22,'Bhubaneswar','Odisha','751001'),(23,23,'Ranchi','Jharkhand','834001'),(24,24,'Raipur','Chhattisgarh','492001'),(25,25,'Dehradun','Uttarakhand','248001'),(26,26,'Shimla','Himachal Pradesh','171001'),(27,27,'Panaji','Goa','403001'),(28,28,'Guwahati','Assam','781001'),(29,29,'Agra','Uttar Pradesh','282001'),(30,30,'Varanasi','Uttar Pradesh','221001'),(31,31,'Noida','Uttar Pradesh','201301'),(32,32,'Gurugram','Haryana','122001'),(33,33,'Faridabad','Haryana','121001'),(34,34,'Jodhpur','Rajasthan','342001'),(35,35,'Udaipur','Rajasthan','313001'),(36,36,'Mysuru','Karnataka','570001'),(37,37,'Madurai','Tamil Nadu','625001'),(38,38,'Salem','Tamil Nadu','636001'),(39,39,'Amritsar','Punjab','143001'),(40,40,'Ludhiana','Punjab','141001'),(41,41,'Jalandhar','Punjab','144001'),(42,42,'Srinagar','Jammu and Kashmir','190001'),(43,43,'Jammu','Jammu and Kashmir','180001'),(44,44,'Meerut','Uttar Pradesh','250001'),(45,45,'Aligarh','Uttar Pradesh','202001'),(46,46,'Nashik','Maharashtra','422001'),(47,47,'Aurangabad','Maharashtra','431001'),(48,48,'Vijayawada','Andhra Pradesh','520001'),(49,49,'Tirupati','Andhra Pradesh','517501'),(50,50,'Cuttack','Odisha','753001');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `Cart_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Cart_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,8,1),(2,2,3,2),(3,3,15,1),(4,4,6,3),(5,5,20,2),(6,6,9,1),(7,7,12,4),(8,8,25,1),(9,9,18,2),(10,10,2,1),(11,11,30,3),(12,12,5,2),(13,13,14,1),(14,14,22,2),(15,15,7,1),(16,16,35,1),(17,17,10,2),(18,18,27,3),(19,19,4,1),(20,20,16,2),(21,21,40,1),(22,22,13,2),(23,23,24,1),(24,24,45,2),(25,25,1,1),(26,26,33,3),(27,27,11,2),(28,28,37,1),(29,29,19,2),(30,30,28,1),(31,31,42,2),(32,32,17,1),(33,33,48,2),(34,34,21,3),(35,35,26,1),(36,36,39,2),(37,37,23,1),(38,38,50,1),(39,39,31,2),(40,40,29,1),(41,41,44,3),(42,42,34,2),(43,43,47,1),(44,44,32,2),(45,45,36,1),(46,46,43,2),(47,47,41,1),(48,48,46,3),(49,49,38,2),(50,50,49,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Category_ID` int NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Mobiles'),(2,'Laptops'),(3,'Headphones'),(4,'Televisions'),(5,'Home Appliances'),(6,'Footwear'),(7,'Clothing'),(8,'Watches'),(9,'Stationery'),(10,'Furniture'),(11,'Beauty & Personal Care'),(12,'Groceries'),(13,'Sports'),(14,'Books'),(15,'Automotive'),(16,'Fitness'),(17,'Cameras');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `Coupon_ID` int NOT NULL AUTO_INCREMENT,
  `Code` varchar(20) NOT NULL,
  `Discount` decimal(5,2) NOT NULL,
  `Expiry` date NOT NULL,
  PRIMARY KEY (`Coupon_ID`),
  UNIQUE KEY `Code` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'SAVE10',10.00,'2026-12-31'),(2,'WELCOME15',15.00,'2026-11-30'),(3,'NEWUSER20',20.00,'2026-10-31'),(4,'FESTIVE25',25.00,'2026-12-15'),(5,'MEGA30',30.00,'2026-09-30'),(6,'SHOP5',5.00,'2026-08-31'),(7,'FIRST50',50.00,'2026-07-31'),(8,'SUPER12',12.00,'2026-11-15'),(9,'BIGSALE18',18.00,'2026-12-10'),(10,'FLASH22',22.00,'2026-08-20'),(11,'SAVE8',8.00,'2026-09-25'),(12,'DEAL14',14.00,'2026-10-15'),(13,'WINTER16',16.00,'2026-12-20'),(14,'SUMMER20',20.00,'2026-08-10'),(15,'SPRING10',10.00,'2026-09-05'),(16,'MONSOON18',18.00,'2026-10-05'),(17,'HOLIDAY25',25.00,'2026-12-28'),(18,'BONUS30',30.00,'2026-11-20'),(19,'SHOPMORE15',15.00,'2026-09-18'),(20,'EXTRA12',12.00,'2026-08-25'),(21,'FREEDOM20',20.00,'2026-08-15'),(22,'REPUBLIC25',25.00,'2027-01-26'),(23,'LUCKY10',10.00,'2026-09-12'),(24,'SMART15',15.00,'2026-10-08'),(25,'OFFER18',18.00,'2026-11-08'),(26,'EXCLUSIVE22',22.00,'2026-12-08'),(27,'VIP30',30.00,'2026-12-31'),(28,'PREMIUM35',35.00,'2026-11-25'),(29,'SPECIAL40',40.00,'2026-12-05'),(30,'MAX50',50.00,'2026-12-31'),(31,'SAVE11',11.00,'2026-10-10'),(32,'SAVE13',13.00,'2026-10-20'),(33,'SAVE17',17.00,'2026-11-10'),(34,'SAVE19',19.00,'2026-12-01'),(35,'SAVE21',21.00,'2026-09-21'),(36,'SAVE23',23.00,'2026-08-18'),(37,'SAVE24',24.00,'2026-10-28'),(38,'SAVE26',26.00,'2026-11-18'),(39,'SAVE28',28.00,'2026-12-18'),(40,'SAVE32',32.00,'2026-09-29'),(41,'SAVE34',34.00,'2026-10-29'),(42,'SAVE36',36.00,'2026-11-29'),(43,'SAVE38',38.00,'2026-12-29'),(44,'SAVE42',42.00,'2026-12-24'),(45,'SAVE45',45.00,'2026-11-27'),(46,'SAVE48',48.00,'2026-12-26'),(47,'ULTIMATE50',50.00,'2026-12-31'),(48,'YEAREND25',25.00,'2026-12-31'),(49,'FINAL15',15.00,'2026-12-30'),(50,'LASTCHANCE10',10.00,'2026-12-31');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `Created_At` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Customer_ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Phone` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Aarav Sharma','aarav.sharma@gmail.com','9876500001','1999-05-12','Male','2026-07-02 08:44:55'),(2,'Priya Verma','priya.verma@gmail.com','9876500002','2000-08-21','Female','2026-07-02 08:44:55'),(3,'Rohan Gupta','rohan.gupta@gmail.com','9876500003','1998-03-17','Male','2026-07-02 08:44:55'),(4,'Sneha Kapoor','sneha.kapoor@gmail.com','9876500004','2001-11-09','Female','2026-07-02 08:44:55'),(5,'Aditya Singh','aditya.singh@gmail.com','9876500005','1997-07-25','Male','2026-07-02 08:44:55'),(6,'Ananya Patel','ananya.patel@gmail.com','9876500006','2002-02-14','Female','2026-07-02 08:44:55'),(7,'Karan Mehta','karan.mehta@gmail.com','9876500007','1996-09-30','Male','2026-07-02 08:44:55'),(8,'Neha Joshi','neha.joshi@gmail.com','9876500008','2001-01-05','Female','2026-07-02 08:44:55'),(9,'Rahul Yadav','rahul.yadav@gmail.com','9876500009','1999-06-11','Male','2026-07-02 08:44:55'),(10,'Pooja Nair','pooja.nair@gmail.com','9876500010','2000-12-18','Female','2026-07-02 08:44:55'),(11,'Vikram Rao','vikram.rao@gmail.com','9876500011','1998-10-08','Male','2026-07-02 08:44:55'),(12,'Isha Malhotra','isha.malhotra@gmail.com','9876500012','2003-04-27','Female','2026-07-02 08:44:55'),(13,'Manish Kumar','manish.kumar@gmail.com','9876500013','1995-05-15','Male','2026-07-02 08:44:55'),(14,'Kavya Reddy','kavya.reddy@gmail.com','9876500014','2002-09-19','Female','2026-07-02 08:44:55'),(15,'Arjun Das','arjun.das@gmail.com','9876500015','1997-02-10','Male','2026-07-02 08:44:55'),(16,'Simran Kaur','simran.kaur@gmail.com','9876500016','2001-07-07','Female','2026-07-02 08:44:55'),(17,'Nikhil Jain','nikhil.jain@gmail.com','9876500017','1998-11-24','Male','2026-07-02 08:44:55'),(18,'Meera Shah','meera.shah@gmail.com','9876500018','1999-01-30','Female','2026-07-02 08:44:55'),(19,'Harsh Agarwal','harsh.agarwal@gmail.com','9876500019','2000-03-13','Male','2026-07-02 08:44:55'),(20,'Divya Mishra','divya.mishra@gmail.com','9876500020','1996-08-29','Female','2026-07-02 08:44:55'),(21,'Sahil Arora','sahil.arora@gmail.com','9876500021','1999-10-16','Male','2026-07-02 08:44:55'),(22,'Ritika Sinha','ritika.sinha@gmail.com','9876500022','2002-06-20','Female','2026-07-02 08:44:55'),(23,'Yash Bansal','yash.bansal@gmail.com','9876500023','1997-12-02','Male','2026-07-02 08:44:55'),(24,'Nisha Chawla','nisha.chawla@gmail.com','9876500024','2001-05-28','Female','2026-07-02 08:44:55'),(25,'Abhishek Tiwari','abhishek.tiwari@gmail.com','9876500025','1998-04-09','Male','2026-07-02 08:44:55'),(26,'Shreya Ghosh','shreya.ghosh@gmail.com','9876500026','2000-09-14','Female','2026-07-02 08:44:55'),(27,'Mohit Soni','mohit.soni@gmail.com','9876500027','1997-01-22','Male','2026-07-02 08:44:55'),(28,'Tanvi Desai','tanvi.desai@gmail.com','9876500028','2003-08-03','Female','2026-07-02 08:44:55'),(29,'Akash Pandey','akash.pandey@gmail.com','9876500029','1995-11-11','Male','2026-07-02 08:44:55'),(30,'Riya Kulkarni','riya.kulkarni@gmail.com','9876500030','2002-02-26','Female','2026-07-02 08:44:55'),(31,'Deepak Sharma','deepak.sharma@gmail.com','9876500031','1996-06-18','Male','2026-07-02 08:44:55'),(32,'Aditi Saxena','aditi.saxena@gmail.com','9876500032','1999-12-07','Female','2026-07-02 08:44:55'),(33,'Varun Malhotra','varun.malhotra@gmail.com','9876500033','1998-03-01','Male','2026-07-02 08:44:55'),(34,'Payal Arora','payal.arora@gmail.com','9876500034','2001-10-12','Female','2026-07-02 08:44:55'),(35,'Ritesh Yadav','ritesh.yadav@gmail.com','9876500035','1997-07-29','Male','2026-07-02 08:44:55'),(36,'Komal Sharma','komal.sharma@gmail.com','9876500036','2000-05-06','Female','2026-07-02 08:44:55'),(37,'Aman Verma','aman.verma@gmail.com','9876500037','1999-09-27','Male','2026-07-02 08:44:55'),(38,'Muskan Jain','muskan.jain@gmail.com','9876500038','2002-01-17','Female','2026-07-02 08:44:55'),(39,'Nitin Kapoor','nitin.kapoor@gmail.com','9876500039','1998-08-05','Male','2026-07-02 08:44:55'),(40,'Sakshi Gupta','sakshi.gupta@gmail.com','9876500040','2001-03-23','Female','2026-07-02 08:44:55'),(41,'Shivam Mishra','shivam.mishra@gmail.com','9876500041','1996-10-31','Male','2026-07-02 08:44:55'),(42,'Anjali Singh','anjali.singh@gmail.com','9876500042','2000-04-15','Female','2026-07-02 08:44:55'),(43,'Rohit Choudhary','rohit.choudhary@gmail.com','9876500043','1997-06-09','Male','2026-07-02 08:44:55'),(44,'Preeti Patel','preeti.patel@gmail.com','9876500044','2003-12-20','Female','2026-07-02 08:44:55'),(45,'Hemant Joshi','hemant.joshi@gmail.com','9876500045','1995-02-28','Male','2026-07-02 08:44:55'),(46,'Swati Nair','swati.nair@gmail.com','9876500046','1999-07-13','Female','2026-07-02 08:44:55'),(47,'Gaurav Bhatia','gaurav.bhatia@gmail.com','9876500047','1998-11-04','Male','2026-07-02 08:44:55'),(48,'Bhavna Reddy','bhavna.reddy@gmail.com','9876500048','2002-09-22','Female','2026-07-02 08:44:55'),(49,'Kunal Srivastava','kunal.srivastava@gmail.com','9876500049','1996-01-08','Male','2026-07-02 08:44:55'),(50,'Pallavi Sharma','pallavi.sharma@gmail.com','9876500050','2001-06-30','Female','2026-07-02 08:44:55');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Employee_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Aarav Sharma','Sales',45000.00),(2,'Priya Verma','Customer Support',38000.00),(3,'Rohan Gupta','IT',65000.00),(4,'Sneha Kapoor','HR',50000.00),(5,'Aditya Singh','Finance',62000.00),(6,'Ananya Patel','Marketing',55000.00),(7,'Karan Mehta','Warehouse',40000.00),(8,'Neha Joshi','Operations',48000.00),(9,'Rahul Yadav','IT',70000.00),(10,'Pooja Nair','Sales',46000.00),(11,'Vikram Rao','Warehouse',42000.00),(12,'Isha Malhotra','HR',51000.00),(13,'Manish Kumar','Finance',68000.00),(14,'Kavya Reddy','Marketing',54000.00),(15,'Arjun Das','Customer Support',39000.00),(16,'Simran Kaur','Operations',50000.00),(17,'Nikhil Jain','IT',72000.00),(18,'Meera Shah','Sales',47000.00),(19,'Harsh Agarwal','Warehouse',41000.00),(20,'Divya Mishra','Finance',64000.00),(21,'Sahil Arora','Marketing',53000.00),(22,'Ritika Sinha','HR',52000.00),(23,'Yash Bansal','IT',69000.00),(24,'Nisha Chawla','Sales',44000.00),(25,'Abhishek Tiwari','Warehouse',43000.00),(26,'Shreya Ghosh','Customer Support',39500.00),(27,'Mohit Soni','Finance',66000.00),(28,'Tanvi Desai','Marketing',56000.00),(29,'Akash Pandey','Operations',49500.00),(30,'Riya Kulkarni','HR',51500.00),(31,'Deepak Sharma','IT',71000.00),(32,'Aditi Saxena','Sales',45500.00),(33,'Varun Malhotra','Warehouse',42500.00),(34,'Payal Arora','Finance',67500.00),(35,'Ritesh Yadav','Marketing',54500.00),(36,'Komal Sharma','Customer Support',38500.00),(37,'Aman Verma','Operations',49000.00),(38,'Muskan Jain','HR',52500.00),(39,'Nitin Kapoor','IT',73500.00),(40,'Sakshi Gupta','Sales',46500.00),(41,'Shivam Mishra','Warehouse',43500.00),(42,'Anjali Singh','Finance',65500.00),(43,'Rohit Choudhary','Marketing',53500.00),(44,'Preeti Patel','Customer Support',40000.00),(45,'Hemant Joshi','Operations',50500.00),(46,'Swati Nair','HR',53000.00),(47,'Gaurav Bhatia','IT',72500.00),(48,'Bhavna Reddy','Sales',47500.00),(49,'Kunal Srivastava','Warehouse',44000.00),(50,'Pallavi Sharma','Finance',68500.00);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `Inventory_ID` int NOT NULL AUTO_INCREMENT,
  `Product_ID` int NOT NULL,
  `Warehouse_ID` int NOT NULL,
  `Stock` int NOT NULL,
  PRIMARY KEY (`Inventory_ID`),
  KEY `Product_ID` (`Product_ID`),
  KEY `Warehouse_ID` (`Warehouse_ID`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`Warehouse_ID`) REFERENCES `warehouses` (`Warehouse_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,1,120),(2,2,2,95),(3,3,3,80),(4,4,4,60),(5,5,5,110),(6,6,6,90),(7,7,7,250),(8,8,8,130),(9,9,9,70),(10,10,10,55),(11,11,11,65),(12,12,12,100),(13,13,13,85),(14,14,14,75),(15,15,15,50),(16,16,16,180),(17,17,17,140),(18,18,18,160),(19,19,19,220),(20,20,20,210),(21,21,21,170),(22,22,22,125),(23,23,23,145),(24,24,24,115),(25,25,25,350),(26,26,26,500),(27,27,27,280),(28,28,28,45),(29,29,29,70),(30,30,30,35),(31,31,31,400),(32,32,32,380),(33,33,33,360),(34,34,34,190),(35,35,35,175),(36,36,36,600),(37,37,37,130),(38,38,38,240),(39,39,39,150),(40,40,40,90),(41,41,41,210),(42,42,42,180),(43,43,43,140),(44,44,44,260),(45,45,45,120),(46,46,46,170),(47,47,47,150),(48,48,48,40),(49,49,49,30),(50,50,50,25);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `Order_Item_ID` int NOT NULL AUTO_INCREMENT,
  `Order_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Order_Item_ID`),
  KEY `Order_ID` (`Order_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,1,79999.00),(2,2,2,1,74999.00),(3,3,3,2,54999.00),(4,4,4,1,114999.00),(5,5,5,1,58999.00),(6,6,6,1,62999.00),(7,7,7,2,1499.00),(8,8,8,1,22999.00),(9,9,9,1,29999.00),(10,10,10,1,36999.00),(11,11,11,1,41999.00),(12,12,12,2,29999.00),(13,13,13,1,38999.00),(14,14,14,1,45999.00),(15,15,15,1,31999.00),(16,16,16,2,6999.00),(17,17,17,1,8999.00),(18,18,18,3,4999.00),(19,19,19,2,2499.00),(20,20,20,4,1299.00),(21,21,21,1,1899.00),(22,22,22,2,5999.00),(23,23,23,1,2499.00),(24,24,24,1,7999.00),(25,25,25,5,120.00),(26,26,26,3,80.00),(27,27,27,2,250.00),(28,28,28,1,15999.00),(29,29,29,2,6999.00),(30,30,30,1,28999.00),(31,31,31,4,299.00),(32,32,32,3,199.00),(33,33,33,2,249.00),(34,34,34,1,499.00),(35,35,35,2,399.00),(36,36,36,10,30.00),(37,37,37,1,2499.00),(38,38,38,2,899.00),(39,39,39,1,1599.00),(40,40,40,1,3499.00),(41,41,41,2,599.00),(42,42,42,1,450.00),(43,43,43,1,1799.00),(44,44,44,3,399.00),(45,45,45,1,2499.00),(46,46,46,2,999.00),(47,47,47,2,1999.00),(48,48,48,1,45999.00),(49,49,49,1,42999.00),(50,50,50,1,54999.00),(51,1,1,1,79999.00),(52,2,2,1,74999.00),(53,3,3,2,54999.00),(54,4,4,1,114999.00),(55,5,5,1,58999.00),(56,6,6,1,62999.00),(57,7,7,2,1499.00),(58,8,8,1,22999.00),(59,9,9,1,29999.00),(60,10,10,1,36999.00),(61,11,11,1,41999.00),(62,12,12,2,29999.00),(63,13,13,1,38999.00),(64,14,14,1,45999.00),(65,15,15,1,31999.00),(66,16,16,2,6999.00),(67,17,17,1,8999.00),(68,18,18,3,4999.00),(69,19,19,2,2499.00),(70,20,20,4,1299.00),(71,21,21,1,1899.00),(72,22,22,2,5999.00),(73,23,23,1,2499.00),(74,24,24,1,7999.00),(75,25,25,5,120.00),(76,26,26,3,80.00),(77,27,27,2,250.00),(78,28,28,1,15999.00),(79,29,29,2,6999.00),(80,30,30,1,28999.00),(81,31,31,4,299.00),(82,32,32,3,199.00),(83,33,33,2,249.00),(84,34,34,1,499.00),(85,35,35,2,399.00),(86,36,36,10,30.00),(87,37,37,1,2499.00),(88,38,38,2,899.00),(89,39,39,1,1599.00),(90,40,40,1,3499.00),(91,41,41,2,599.00),(92,42,42,1,450.00),(93,43,43,1,1799.00),(94,44,44,3,399.00),(95,45,45,1,2499.00),(96,46,46,2,999.00),(97,47,47,2,1999.00),(98,48,48,1,45999.00),(99,49,49,1,42999.00),(100,50,50,1,54999.00);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `Order_Date` date NOT NULL,
  `Total_Amount` decimal(10,2) NOT NULL,
  `Status` enum('Pending','Processing','Shipped','Delivered','Cancelled') NOT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2026-06-01',79999.00,'Delivered'),(2,2,'2026-06-02',74999.00,'Delivered'),(3,3,'2026-06-03',54999.00,'Shipped'),(4,4,'2026-06-04',114999.00,'Delivered'),(5,5,'2026-06-05',58999.00,'Pending'),(6,6,'2026-06-06',62999.00,'Delivered'),(7,7,'2026-06-07',1499.00,'Delivered'),(8,8,'2026-06-08',22999.00,'Delivered'),(9,9,'2026-06-09',29999.00,'Processing'),(10,10,'2026-06-10',36999.00,'Delivered'),(11,11,'2026-06-11',41999.00,'Delivered'),(12,12,'2026-06-12',29999.00,'Cancelled'),(13,13,'2026-06-13',38999.00,'Delivered'),(14,14,'2026-06-14',45999.00,'Delivered'),(15,15,'2026-06-15',31999.00,'Shipped'),(16,16,'2026-06-16',6999.00,'Delivered'),(17,17,'2026-06-17',8999.00,'Delivered'),(18,18,'2026-06-18',4999.00,'Pending'),(19,19,'2026-06-19',2499.00,'Delivered'),(20,20,'2026-06-20',1299.00,'Delivered'),(21,21,'2026-06-21',1899.00,'Delivered'),(22,22,'2026-06-22',5999.00,'Delivered'),(23,23,'2026-06-23',2499.00,'Delivered'),(24,24,'2026-06-24',7999.00,'Shipped'),(25,25,'2026-06-25',120.00,'Delivered'),(26,26,'2026-06-26',80.00,'Delivered'),(27,27,'2026-06-27',250.00,'Delivered'),(28,28,'2026-06-28',15999.00,'Processing'),(29,29,'2026-06-29',6999.00,'Delivered'),(30,30,'2026-06-30',28999.00,'Delivered'),(31,31,'2026-07-01',299.00,'Delivered'),(32,32,'2026-07-01',199.00,'Delivered'),(33,33,'2026-07-01',249.00,'Delivered'),(34,34,'2026-07-01',499.00,'Delivered'),(35,35,'2026-07-01',399.00,'Cancelled'),(36,36,'2026-07-01',30.00,'Delivered'),(37,37,'2026-07-02',2499.00,'Delivered'),(38,38,'2026-07-02',899.00,'Delivered'),(39,39,'2026-07-02',1599.00,'Delivered'),(40,40,'2026-07-02',3499.00,'Delivered'),(41,41,'2026-07-02',599.00,'Delivered'),(42,42,'2026-07-02',450.00,'Processing'),(43,43,'2026-07-03',1799.00,'Delivered'),(44,44,'2026-07-03',399.00,'Delivered'),(45,45,'2026-07-03',2499.00,'Delivered'),(46,46,'2026-07-03',999.00,'Pending'),(47,47,'2026-07-03',1999.00,'Delivered'),(48,48,'2026-07-03',45999.00,'Shipped'),(49,49,'2026-07-03',42999.00,'Delivered'),(50,50,'2026-07-03',54999.00,'Delivered');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Order_ID` int NOT NULL,
  `Method` enum('UPI','Credit Card','Debit Card','Net Banking','Cash on Delivery') NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Status` enum('Pending','Success','Failed','Refunded') NOT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'UPI',79999.00,'Success'),(2,2,'Credit Card',74999.00,'Success'),(3,3,'Debit Card',54999.00,'Success'),(4,4,'Net Banking',114999.00,'Success'),(5,5,'Cash on Delivery',58999.00,'Pending'),(6,6,'UPI',62999.00,'Success'),(7,7,'Debit Card',1499.00,'Success'),(8,8,'Credit Card',22999.00,'Success'),(9,9,'UPI',29999.00,'Success'),(10,10,'Net Banking',36999.00,'Success'),(11,11,'Credit Card',41999.00,'Success'),(12,12,'UPI',29999.00,'Refunded'),(13,13,'Debit Card',38999.00,'Success'),(14,14,'Credit Card',45999.00,'Success'),(15,15,'Net Banking',31999.00,'Success'),(16,16,'UPI',6999.00,'Success'),(17,17,'Debit Card',8999.00,'Success'),(18,18,'Cash on Delivery',4999.00,'Pending'),(19,19,'Credit Card',2499.00,'Success'),(20,20,'UPI',1299.00,'Success'),(21,21,'Net Banking',1899.00,'Success'),(22,22,'Debit Card',5999.00,'Success'),(23,23,'Credit Card',2499.00,'Success'),(24,24,'UPI',7999.00,'Success'),(25,25,'Cash on Delivery',120.00,'Success'),(26,26,'UPI',80.00,'Success'),(27,27,'Debit Card',250.00,'Success'),(28,28,'Credit Card',15999.00,'Success'),(29,29,'Net Banking',6999.00,'Success'),(30,30,'UPI',28999.00,'Success'),(31,31,'Debit Card',299.00,'Success'),(32,32,'Credit Card',199.00,'Success'),(33,33,'UPI',249.00,'Success'),(34,34,'Net Banking',499.00,'Success'),(35,35,'Credit Card',399.00,'Refunded'),(36,36,'UPI',30.00,'Success'),(37,37,'Debit Card',2499.00,'Success'),(38,38,'Credit Card',899.00,'Success'),(39,39,'UPI',1599.00,'Success'),(40,40,'Net Banking',3499.00,'Success'),(41,41,'Credit Card',599.00,'Success'),(42,42,'UPI',450.00,'Success'),(43,43,'Debit Card',1799.00,'Success'),(44,44,'Cash on Delivery',399.00,'Success'),(45,45,'Credit Card',2499.00,'Success'),(46,46,'UPI',999.00,'Pending'),(47,47,'Debit Card',1999.00,'Success'),(48,48,'Net Banking',45999.00,'Success'),(49,49,'Credit Card',42999.00,'Success'),(50,50,'UPI',54999.00,'Success');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Category_ID` int NOT NULL,
  `Supplier_ID` int NOT NULL,
  `Product_Name` varchar(150) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Brand` varchar(100) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  KEY `Category_ID` (`Category_ID`),
  KEY `Supplier_ID` (`Supplier_ID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `categories` (`Category_ID`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`Supplier_ID`) REFERENCES `suppliers` (`Supplier_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,'iPhone 15',79999.00,'Apple'),(2,1,2,'Galaxy S24',74999.00,'Samsung'),(3,1,3,'OnePlus 13',54999.00,'OnePlus'),(4,2,4,'MacBook Air M3',114999.00,'Apple'),(5,2,5,'Inspiron 15',58999.00,'Dell'),(6,2,6,'ThinkPad E14',62999.00,'Lenovo'),(7,3,7,'Boat Rockerz 450',1499.00,'boAt'),(8,3,8,'AirPods Pro',22999.00,'Apple'),(9,3,9,'Sony WH-1000XM5',29999.00,'Sony'),(10,4,10,'LG Smart TV 43\"',36999.00,'LG'),(11,4,11,'Samsung Crystal TV',41999.00,'Samsung'),(12,4,12,'Mi X Series TV',29999.00,'Xiaomi'),(13,5,13,'Voltas AC 1.5 Ton',38999.00,'Voltas'),(14,5,14,'LG Refrigerator',45999.00,'LG'),(15,5,15,'IFB Washing Machine',31999.00,'IFB'),(16,6,16,'Nike Air Max',6999.00,'Nike'),(17,6,17,'Adidas Ultraboost',8999.00,'Adidas'),(18,6,18,'Puma Runner',4999.00,'Puma'),(19,7,19,'Levis Jeans',2499.00,'Levis'),(20,7,20,'US Polo T-Shirt',1299.00,'US Polo'),(21,7,21,'Allen Solly Shirt',1899.00,'Allen Solly'),(22,8,22,'Titan Watch',5999.00,'Titan'),(23,8,23,'Fastrack Watch',2499.00,'Fastrack'),(24,8,24,'Casio G-Shock',7999.00,'Casio'),(25,9,25,'Classmate Notebook',120.00,'Classmate'),(26,9,26,'Cello Pen Pack',80.00,'Cello'),(27,9,27,'Camlin Geometry Box',250.00,'Camlin'),(28,10,28,'Dining Table',15999.00,'Home Centre'),(29,10,29,'Office Chair',6999.00,'Green Soul'),(30,10,30,'Wooden Bed',28999.00,'Wakefit'),(31,11,31,'Dove Shampoo',299.00,'Dove'),(32,11,32,'Nivea Face Wash',199.00,'Nivea'),(33,11,33,'Lakme Kajal',249.00,'Lakme'),(34,12,34,'Horlicks 1kg',499.00,'Horlicks'),(35,12,35,'Bournvita',399.00,'Cadbury'),(36,12,36,'Tata Salt',30.00,'Tata'),(37,13,37,'Cricket Bat',2499.00,'SS'),(38,13,38,'Football',899.00,'Nivia'),(39,13,39,'Badminton Racket',1599.00,'Yonex'),(40,14,40,'Harry Potter Set',3499.00,'Bloomsbury'),(41,14,41,'Atomic Habits',599.00,'Penguin'),(42,14,42,'Rich Dad Poor Dad',450.00,'Plata'),(43,15,43,'Car Vacuum Cleaner',1799.00,'Agaro'),(44,15,44,'Car Perfume',399.00,'Godrej'),(45,15,45,'Bike Helmet',2499.00,'Steelbird'),(46,16,46,'Yoga Mat',999.00,'Boldfit'),(47,16,47,'Dumbbell 10kg',1999.00,'Kore'),(48,16,48,'Treadmill',45999.00,'PowerMax'),(49,17,49,'Canon EOS 1500D',42999.00,'Canon'),(50,17,50,'Nikon D5600',54999.00,'Nikon');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returns` (
  `Return_ID` int NOT NULL AUTO_INCREMENT,
  `Order_ID` int NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `Refund` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Return_ID`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` VALUES (1,1,'Damaged Product',79999.00),(2,2,'Wrong Item Delivered',74999.00),(3,3,'Product Defective',54999.00),(4,4,'Changed Mind',114999.00),(5,5,'Late Delivery',58999.00),(6,6,'Product Defective',62999.00),(7,7,'Wrong Size',1499.00),(8,8,'Damaged Product',22999.00),(9,9,'Changed Mind',29999.00),(10,10,'Late Delivery',36999.00),(11,11,'Wrong Item Delivered',41999.00),(12,12,'Product Defective',29999.00),(13,13,'Damaged Product',38999.00),(14,14,'Changed Mind',45999.00),(15,15,'Late Delivery',31999.00),(16,16,'Wrong Size',6999.00),(17,17,'Product Defective',8999.00),(18,18,'Damaged Product',4999.00),(19,19,'Changed Mind',2499.00),(20,20,'Late Delivery',1299.00),(21,21,'Wrong Item Delivered',1899.00),(22,22,'Damaged Product',5999.00),(23,23,'Changed Mind',2499.00),(24,24,'Product Defective',7999.00),(25,25,'Late Delivery',120.00),(26,26,'Wrong Item Delivered',80.00),(27,27,'Damaged Product',250.00),(28,28,'Changed Mind',15999.00),(29,29,'Late Delivery',6999.00),(30,30,'Product Defective',28999.00),(31,31,'Wrong Size',299.00),(32,32,'Damaged Product',199.00),(33,33,'Changed Mind',249.00),(34,34,'Late Delivery',499.00),(35,35,'Product Defective',399.00),(36,36,'Wrong Item Delivered',30.00),(37,37,'Damaged Product',2499.00),(38,38,'Changed Mind',899.00),(39,39,'Late Delivery',1599.00),(40,40,'Product Defective',3499.00),(41,41,'Wrong Size',599.00),(42,42,'Damaged Product',450.00),(43,43,'Changed Mind',1799.00),(44,44,'Late Delivery',399.00),(45,45,'Wrong Item Delivered',2499.00),(46,46,'Damaged Product',999.00),(47,47,'Product Defective',1999.00),(48,48,'Changed Mind',45999.00),(49,49,'Late Delivery',42999.00),(50,50,'Wrong Item Delivered',54999.00);
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `Review_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Rating` int NOT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Review_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`),
  CONSTRAINT `reviews_chk_1` CHECK ((`Rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,5,'Excellent product!'),(2,2,2,4,'Very good quality.'),(3,3,3,5,'Worth every rupee.'),(4,4,4,3,'Average performance.'),(5,5,5,4,'Satisfied with the purchase.'),(6,6,6,5,'Highly recommended.'),(7,7,7,4,'Nice product.'),(8,8,8,5,'Amazing experience.'),(9,9,9,3,'Could be better.'),(10,10,10,4,'Good value for money.'),(11,11,11,5,'Excellent build quality.'),(12,12,12,2,'Not as expected.'),(13,13,13,4,'Works perfectly.'),(14,14,14,5,'Loved it.'),(15,15,15,4,'Very useful.'),(16,16,16,5,'Excellent performance.'),(17,17,17,3,'Decent product.'),(18,18,18,4,'Looks premium.'),(19,19,19,5,'Fantastic purchase.'),(20,20,20,3,'Average quality.'),(21,21,21,4,'Good overall.'),(22,22,22,5,'Five stars!'),(23,23,23,4,'Happy with it.'),(24,24,24,5,'Best in this price range.'),(25,25,25,4,'Useful product.'),(26,26,26,5,'Excellent service.'),(27,27,27,3,'Packaging could improve.'),(28,28,28,5,'Very impressive.'),(29,29,29,4,'Quality is good.'),(30,30,30,5,'Highly satisfied.'),(31,31,31,4,'Nice features.'),(32,32,32,3,'Okay product.'),(33,33,33,5,'Excellent choice.'),(34,34,34,4,'Met expectations.'),(35,35,35,2,'Received a defective item.'),(36,36,36,5,'Great value.'),(37,37,37,4,'Fast delivery and good quality.'),(38,38,38,5,'Perfect purchase.'),(39,39,39,4,'Very comfortable to use.'),(40,40,40,5,'Outstanding.'),(41,41,41,3,'Needs improvement.'),(42,42,42,4,'Pretty good.'),(43,43,43,5,'Exceeded expectations.'),(44,44,44,4,'Nice design.'),(45,45,45,5,'Would buy again.'),(46,46,46,3,'Average experience.'),(47,47,47,5,'Excellent quality.'),(48,48,48,4,'Satisfied.'),(49,49,49,5,'Premium product.'),(50,50,50,4,'Recommended.'),(51,1,1,5,'Excellent product!'),(52,2,2,4,'Very good quality.'),(53,3,3,5,'Worth every rupee.'),(54,4,4,3,'Average performance.'),(55,5,5,4,'Satisfied with the purchase.'),(56,6,6,5,'Highly recommended.'),(57,7,7,4,'Nice product.'),(58,8,8,5,'Amazing experience.'),(59,9,9,3,'Could be better.'),(60,10,10,4,'Good value for money.'),(61,11,11,5,'Excellent build quality.'),(62,12,12,2,'Not as expected.'),(63,13,13,4,'Works perfectly.'),(64,14,14,5,'Loved it.'),(65,15,15,4,'Very useful.'),(66,16,16,5,'Excellent performance.'),(67,17,17,3,'Decent product.'),(68,18,18,4,'Looks premium.'),(69,19,19,5,'Fantastic purchase.'),(70,20,20,3,'Average quality.'),(71,21,21,4,'Good overall.'),(72,22,22,5,'Five stars!'),(73,23,23,4,'Happy with it.'),(74,24,24,5,'Best in this price range.'),(75,25,25,4,'Useful product.'),(76,26,26,5,'Excellent service.'),(77,27,27,3,'Packaging could improve.'),(78,28,28,5,'Very impressive.'),(79,29,29,4,'Quality is good.'),(80,30,30,5,'Highly satisfied.'),(81,31,31,4,'Nice features.'),(82,32,32,3,'Okay product.'),(83,33,33,5,'Excellent choice.'),(84,34,34,4,'Met expectations.'),(85,35,35,2,'Received a defective item.'),(86,36,36,5,'Great value.'),(87,37,37,4,'Fast delivery and good quality.'),(88,38,38,5,'Perfect purchase.'),(89,39,39,4,'Very comfortable to use.'),(90,40,40,5,'Outstanding.'),(91,41,41,3,'Needs improvement.'),(92,42,42,4,'Pretty good.'),(93,43,43,5,'Exceeded expectations.'),(94,44,44,4,'Nice design.'),(95,45,45,5,'Would buy again.'),(96,46,46,3,'Average experience.'),(97,47,47,5,'Excellent quality.'),(98,48,48,4,'Satisfied.'),(99,49,49,5,'Premium product.'),(100,50,50,4,'Recommended.'),(101,1,1,5,'Excellent product!'),(102,2,2,4,'Very good quality.'),(103,3,3,5,'Worth every rupee.'),(104,4,4,3,'Average performance.'),(105,5,5,4,'Satisfied with the purchase.'),(106,6,6,5,'Highly recommended.'),(107,7,7,4,'Nice product.'),(108,8,8,5,'Amazing experience.'),(109,9,9,3,'Could be better.'),(110,10,10,4,'Good value for money.'),(111,11,11,5,'Excellent build quality.'),(112,12,12,2,'Not as expected.'),(113,13,13,4,'Works perfectly.'),(114,14,14,5,'Loved it.'),(115,15,15,4,'Very useful.'),(116,16,16,5,'Excellent performance.'),(117,17,17,3,'Decent product.'),(118,18,18,4,'Looks premium.'),(119,19,19,5,'Fantastic purchase.'),(120,20,20,3,'Average quality.'),(121,21,21,4,'Good overall.'),(122,22,22,5,'Five stars!'),(123,23,23,4,'Happy with it.'),(124,24,24,5,'Best in this price range.'),(125,25,25,4,'Useful product.'),(126,26,26,5,'Excellent service.'),(127,27,27,3,'Packaging could improve.'),(128,28,28,5,'Very impressive.'),(129,29,29,4,'Quality is good.'),(130,30,30,5,'Highly satisfied.'),(131,31,31,4,'Nice features.'),(132,32,32,3,'Okay product.'),(133,33,33,5,'Excellent choice.'),(134,34,34,4,'Met expectations.'),(135,35,35,2,'Received a defective item.'),(136,36,36,5,'Great value.'),(137,37,37,4,'Fast delivery and good quality.'),(138,38,38,5,'Perfect purchase.'),(139,39,39,4,'Very comfortable to use.'),(140,40,40,5,'Outstanding.'),(141,41,41,3,'Needs improvement.'),(142,42,42,4,'Pretty good.'),(143,43,43,5,'Exceeded expectations.'),(144,44,44,4,'Nice design.'),(145,45,45,5,'Would buy again.'),(146,46,46,3,'Average experience.'),(147,47,47,5,'Excellent quality.'),(148,48,48,4,'Satisfied.'),(149,49,49,5,'Premium product.'),(150,50,50,4,'Recommended.'),(151,1,1,5,'Excellent product!'),(152,2,2,4,'Very good quality.'),(153,3,3,5,'Worth every rupee.'),(154,4,4,3,'Average performance.'),(155,5,5,4,'Satisfied with the purchase.'),(156,6,6,5,'Highly recommended.'),(157,7,7,4,'Nice product.'),(158,8,8,5,'Amazing experience.'),(159,9,9,3,'Could be better.'),(160,10,10,4,'Good value for money.'),(161,11,11,5,'Excellent build quality.'),(162,12,12,2,'Not as expected.'),(163,13,13,4,'Works perfectly.'),(164,14,14,5,'Loved it.'),(165,15,15,4,'Very useful.'),(166,16,16,5,'Excellent performance.'),(167,17,17,3,'Decent product.'),(168,18,18,4,'Looks premium.'),(169,19,19,5,'Fantastic purchase.'),(170,20,20,3,'Average quality.'),(171,21,21,4,'Good overall.'),(172,22,22,5,'Five stars!'),(173,23,23,4,'Happy with it.'),(174,24,24,5,'Best in this price range.'),(175,25,25,4,'Useful product.'),(176,26,26,5,'Excellent service.'),(177,27,27,3,'Packaging could improve.'),(178,28,28,5,'Very impressive.'),(179,29,29,4,'Quality is good.'),(180,30,30,5,'Highly satisfied.'),(181,31,31,4,'Nice features.'),(182,32,32,3,'Okay product.'),(183,33,33,5,'Excellent choice.'),(184,34,34,4,'Met expectations.'),(185,35,35,2,'Received a defective item.'),(186,36,36,5,'Great value.'),(187,37,37,4,'Fast delivery and good quality.'),(188,38,38,5,'Perfect purchase.'),(189,39,39,4,'Very comfortable to use.'),(190,40,40,5,'Outstanding.'),(191,41,41,3,'Needs improvement.'),(192,42,42,4,'Pretty good.'),(193,43,43,5,'Exceeded expectations.'),(194,44,44,4,'Nice design.'),(195,45,45,5,'Would buy again.'),(196,46,46,3,'Average experience.'),(197,47,47,5,'Excellent quality.'),(198,48,48,4,'Satisfied.'),(199,49,49,5,'Premium product.'),(200,50,50,4,'Recommended.');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `Shipping_ID` int NOT NULL AUTO_INCREMENT,
  `Order_ID` int NOT NULL,
  `Courier` varchar(100) NOT NULL,
  `Tracking_No` varchar(25) NOT NULL,
  `Delivery_Date` date NOT NULL,
  `Status` enum('Processing','Shipped','Out for Delivery','Delivered','Returned') NOT NULL,
  PRIMARY KEY (`Shipping_ID`),
  UNIQUE KEY `Tracking_No` (`Tracking_No`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1,1,'Blue Dart','BD100001','2026-06-04','Delivered'),(2,2,'Delhivery','DL100002','2026-06-05','Delivered'),(3,3,'DTDC','DT100003','2026-06-07','Shipped'),(4,4,'Ecom Express','EC100004','2026-06-07','Delivered'),(5,5,'XpressBees','XB100005','2026-06-10','Processing'),(6,6,'Blue Dart','BD100006','2026-06-09','Delivered'),(7,7,'Delhivery','DL100007','2026-06-10','Delivered'),(8,8,'DTDC','DT100008','2026-06-11','Delivered'),(9,9,'Ecom Express','EC100009','2026-06-13','Shipped'),(10,10,'XpressBees','XB100010','2026-06-13','Delivered'),(11,11,'Blue Dart','BD100011','2026-06-14','Delivered'),(12,12,'Delhivery','DL100012','2026-06-15','Returned'),(13,13,'DTDC','DT100013','2026-06-16','Delivered'),(14,14,'Ecom Express','EC100014','2026-06-17','Delivered'),(15,15,'XpressBees','XB100015','2026-06-19','Shipped'),(16,16,'Blue Dart','BD100016','2026-06-20','Delivered'),(17,17,'Delhivery','DL100017','2026-06-21','Delivered'),(18,18,'DTDC','DT100018','2026-06-23','Processing'),(19,19,'Ecom Express','EC100019','2026-06-24','Delivered'),(20,20,'XpressBees','XB100020','2026-06-25','Delivered'),(21,21,'Blue Dart','BD100021','2026-06-26','Delivered'),(22,22,'Delhivery','DL100022','2026-06-27','Delivered'),(23,23,'DTDC','DT100023','2026-06-28','Delivered'),(24,24,'Ecom Express','EC100024','2026-06-30','Shipped'),(25,25,'XpressBees','XB100025','2026-07-01','Delivered'),(26,26,'Blue Dart','BD100026','2026-07-02','Delivered'),(27,27,'Delhivery','DL100027','2026-07-03','Delivered'),(28,28,'DTDC','DT100028','2026-07-05','Out for Delivery'),(29,29,'Ecom Express','EC100029','2026-07-06','Delivered'),(30,30,'XpressBees','XB100030','2026-07-07','Delivered'),(31,31,'Blue Dart','BD100031','2026-07-08','Delivered'),(32,32,'Delhivery','DL100032','2026-07-08','Delivered'),(33,33,'DTDC','DT100033','2026-07-08','Delivered'),(34,34,'Ecom Express','EC100034','2026-07-09','Delivered'),(35,35,'XpressBees','XB100035','2026-07-09','Returned'),(36,36,'Blue Dart','BD100036','2026-07-09','Delivered'),(37,37,'Delhivery','DL100037','2026-07-10','Delivered'),(38,38,'DTDC','DT100038','2026-07-10','Delivered'),(39,39,'Ecom Express','EC100039','2026-07-10','Delivered'),(40,40,'XpressBees','XB100040','2026-07-11','Delivered'),(41,41,'Blue Dart','BD100041','2026-07-11','Delivered'),(42,42,'Delhivery','DL100042','2026-07-11','Out for Delivery'),(43,43,'DTDC','DT100043','2026-07-12','Delivered'),(44,44,'Ecom Express','EC100044','2026-07-12','Delivered'),(45,45,'XpressBees','XB100045','2026-07-12','Delivered'),(46,46,'Blue Dart','BD100046','2026-07-13','Processing'),(47,47,'Delhivery','DL100047','2026-07-13','Delivered'),(48,48,'DTDC','DT100048','2026-07-14','Shipped'),(49,49,'Ecom Express','EC100049','2026-07-14','Delivered'),(50,50,'XpressBees','XB100050','2026-07-15','Delivered');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `Supplier_ID` int NOT NULL AUTO_INCREMENT,
  `Company_Name` varchar(100) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  PRIMARY KEY (`Supplier_ID`),
  UNIQUE KEY `Phone` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'ABC Electronics','9000000001'),(2,'XYZ Traders','9000000002'),(3,'Tech World','9000000003'),(4,'Prime Distributors','9000000004'),(5,'Global Supply','9000000005'),(6,'Elite Electronics','9000000006'),(7,'Smart Deals','9000000007'),(8,'Future Tech','9000000008'),(9,'Bright India','9000000009'),(10,'Digital Hub','9000000010'),(11,'NextGen Supplies','9000000011'),(12,'Universal Traders','9000000012'),(13,'Mega Retail','9000000013'),(14,'Super Wholesale','9000000014'),(15,'Sunrise Suppliers','9000000015'),(16,'Moonlight Traders','9000000016'),(17,'City Distributors','9000000017'),(18,'National Supply','9000000018'),(19,'Apex Electronics','9000000019'),(20,'Infinity Trade','9000000020'),(21,'Vision Retail','9000000021'),(22,'Royal Suppliers','9000000022'),(23,'Nova Distributors','9000000023'),(24,'Sigma Traders','9000000024'),(25,'Pioneer Supply','9000000025'),(26,'Express Electronics','9000000026'),(27,'Starline Traders','9000000027'),(28,'Orbit Supplies','9000000028'),(29,'Platinum Wholesale','9000000029'),(30,'BlueSky Distributors','9000000030'),(31,'Crystal Trade','9000000031'),(32,'Zenith Suppliers','9000000032'),(33,'Dynamic Retail','9000000033'),(34,'Power Electronics','9000000034'),(35,'Urban Trade','9000000035'),(36,'Skyline Distributors','9000000036'),(37,'Vertex Supply','9000000037'),(38,'Maxwell Traders','9000000038'),(39,'Alpha Electronics','9000000039'),(40,'Beta Distributors','9000000040'),(41,'Gamma Retail','9000000041'),(42,'Delta Wholesale','9000000042'),(43,'Omega Suppliers','9000000043'),(44,'Evergreen Trade','9000000044'),(45,'Phoenix Electronics','9000000045'),(46,'Rapid Supply','9000000046'),(47,'Core Distributors','9000000047'),(48,'Fusion Traders','9000000048'),(49,'Smart Solutions','9000000049'),(50,'FutureMart Supply','9000000050');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `Warehouse_ID` int NOT NULL AUTO_INCREMENT,
  `City` varchar(100) NOT NULL,
  `Capacity` int NOT NULL,
  PRIMARY KEY (`Warehouse_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'Delhi',5000),(2,'Mumbai',4500),(3,'Bengaluru',4000),(4,'Hyderabad',4200),(5,'Chennai',3800),(6,'Kolkata',3600),(7,'Pune',3500),(8,'Ahmedabad',3400),(9,'Jaipur',3200),(10,'Lucknow',3100),(11,'Bhopal',3000),(12,'Patna',2900),(13,'Chandigarh',2800),(14,'Surat',2700),(15,'Nagpur',2600),(16,'Indore',2500),(17,'Kanpur',2400),(18,'Visakhapatnam',2300),(19,'Coimbatore',2200),(20,'Kochi',2100),(21,'Noida',5000),(22,'Gurugram',4800),(23,'Faridabad',3000),(24,'Mysuru',2200),(25,'Madurai',2100),(26,'Nashik',2500),(27,'Aurangabad',2400),(28,'Amritsar',2600),(29,'Ludhiana',2700),(30,'Jalandhar',2000),(31,'Varanasi',2300),(32,'Agra',2200),(33,'Meerut',2100),(34,'Dehradun',2000),(35,'Shimla',1800),(36,'Panaji',1700),(37,'Guwahati',2600),(38,'Ranchi',2400),(39,'Raipur',2500),(40,'Bhubaneswar',2600),(41,'Cuttack',2300),(42,'Vijayawada',2400),(43,'Tirupati',2100),(44,'Salem',2000),(45,'Udaipur',1900),(46,'Jodhpur',2200),(47,'Srinagar',1800),(48,'Jammu',1700),(49,'Thiruvananthapuram',2500),(50,'Aligarh',1900);
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `Wishlist_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  PRIMARY KEY (`Wishlist_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1,5),(2,2,8),(3,3,12),(4,4,2),(5,5,18),(6,6,25),(7,7,10),(8,8,15),(9,9,7),(10,10,20),(11,11,3),(12,12,28),(13,13,11),(14,14,30),(15,15,9),(16,16,22),(17,17,35),(18,18,17),(19,19,40),(20,20,13),(21,21,6),(22,22,26),(23,23,19),(24,24,45),(25,25,1),(26,26,33),(27,27,14),(28,28,37),(29,29,24),(30,30,42),(31,31,16),(32,32,29),(33,33,48),(34,34,21),(35,35,4),(36,36,39),(37,37,23),(38,38,50),(39,39,31),(40,40,27),(41,41,44),(42,42,34),(43,43,47),(44,44,32),(45,45,36),(46,46,43),(47,47,41),(48,48,46),(49,49,38),(50,50,49);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-08 11:43:38
