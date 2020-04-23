-- MySqlBackup.NET 2.0.9.2
-- Dump Time: 2020-04-22 22:07:17
-- --------------------------------------
-- Server version 5.7.26-log MySQL Community Server (GPL)

-- 
-- Create schema chronicle1
-- 

CREATE DATABASE IF NOT EXISTS `chronicle1` /*!40100 DEFAULT CHARACTER SET utf8 */;
Use `chronicle1`;



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of diary
-- 

DROP TABLE IF EXISTS `diary`;
CREATE TABLE IF NOT EXISTS `diary` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofenter` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dayofenter` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeofenter` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Dumping data for table diary
-- 

/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary`(`sno`,`email`,`password`,`dateofenter`,`dayofenter`,`timeofenter`,`content`) VALUES
(18,'ajaiyugenthar@gmail.com','a','2020-04-19','Sunday','06:05:22 pm','Hey buddy'),
(19,'ajaiyugenthar@gmail.com','a','2020-04-19','Sunday','06:21:22 pm','A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.'),
(20,'ajaiyugenthar@gmail.com','a','2020-04-19','Sunday','06:24:39 pm','Hey how are you'),
(21,'kvasan1508@gmail.com','abcd','2020-04-19','Sunday','06:31:46 pm','this was a awesome day!'),
(22,'ajaiyugenthar@gmail.com','ajai','2020-04-21','Tuesday','05:34:51 pm','Hey Yugenthar!!'),
(23,'gamerjack005@gmail.com','jack123','2020-04-21','Tuesday','06:47:08 pm','My name is Jawahar.'),
(24,'jaquarjack007@gmail.com','jawahar','2020-04-21','Tuesday','10:17:38 pm','My name is Jawahar'),
(25,'ajaiyugenthar@gmail.com','ajai','2020-04-21','Tuesday','11:25:01 pm','Hello Naveen Yugenthar'),
(26,'kvasan1508@gmail.com','keerkeer','2020-04-22','Wednesday','12:27:09 am','Hello Everybody i love you all! '),
(27,'gamerjack005@gmail.com','jack123','2020-04-22','Wednesday','10:15:12 am','Hello, this is Jack aka Jawahar.'),
(28,'jaquarjack007@gmail.com','jawahar','2020-04-22','Wednesday','10:15:46 am','Hi again.\r\nTesting the site for two users.'),
(29,'jaquarjack007@gmail.com','jawahar123','2020-04-22','Wednesday','06:30:12 pm','Hello'),
(30,'manisha@gmail.com','cat','2020-04-22','Wednesday','08:16:56 pm','Im little girl manisha'),
(31,'ajaiyugenthar@gmail.com','ajai','2020-04-22','Wednesday','08:54:14 pm','Hi'),
(32,'','','2020-04-22','Wednesday','08:57:44 pm',''),
(33,'keerthi@gmail.com','12345','2020-04-22','Wednesday','08:58:25 pm','Helli'),
(34,'sonauthay@gmail.com','Redrose','2020-04-22','Wednesday','09:50:26 pm','Shit day');
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;

-- 
-- Definition of signup
-- 

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `Sno` int(10) NOT NULL AUTO_INCREMENT,
  `Dateofsignup` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Dumping data for table signup
-- 

/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup`(`Sno`,`Dateofsignup`,`name`,`phone`,`email`,`password`) VALUES
(4,'2020-04-21 09:01:49','a','9095767760','ajaiyugenthar@gmail.com','123'),
(5,'2020-04-21 09:01:49','a','9095767760','ajaiyugenthar@gmail.com','a'),
(6,'2020-04-21 09:01:49','keerthi','9487025755','kvasan1508@gmail.com','abcd'),
(7,'2020-04-21 09:01:49','Naveen Yugenthar','9095767760','ajaiyugenthar@gmail.com','ajai'),
(8,'2020-04-21 09:01:49','Jack','9751490518','gamerjack005@gmail.com','jack123'),
(9,'2020-04-21 10:46:59','Jawahar','9751490518','jaquarjack007@gmail.com','jawahar'),
(10,'2020-04-21 10:55:28','Jawahar','9751490518','jaquarjack007@gmail.com','jawahar'),
(11,'2020-04-21 11:54:18','V. Naveen Yugenthar','9095767760','ajaiyugenthar@gmail.com','ajai'),
(12,'2020-04-21 12:54:51','Keerthivasan ','9487025755','Kvasan1508@gmail.com','abcd'),
(13,'2020-04-21 12:56:18','Keerthi ','9487025755','kvasan1508@gmail.com','keerkeer'),
(14,'2020-04-21 22:44:22','Jack','9003346278','gamerjack005@gmail.com','jack123'),
(15,'2020-04-22 00:25:48','MG Parthasarathy','9742555539','sarathy.mp3@gmail.com','Partha@28'),
(17,'2020-04-22 08:45:28','Krithika lb','9656325232','krithikalb@gnail.com','1234'),
(18,'2020-04-22 08:46:27','Manisha','9677856412','manisha@gmail.com','cat'),
(19,'2020-04-22 09:27:45','Keerthikeerthi','9487025755','keerthi@gmail.com','12345'),
(20,'2020-04-22 10:19:24','Sona Uthay','9080101700','sonauthay@gmail.com','Redrose'),
(21,'2020-04-22 10:40:41','Madhu','7550196887','madhumitha_balaji@yahoo.com','madhu');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2020-04-22 22:07:17
-- Total time: 0:0:0:0:312 (d:h:m:s:ms)
