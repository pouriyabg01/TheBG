-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_17
-- ------------------------------------------------------
-- Server version	10.11.7-MariaDB-cll-lve

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_customer_id_foreign` (`customer_id`),
  CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES
(1,1,'Maryland','Herzogview',87,'0503 Brett Grove\nKiehnton, VT 51873','1988-04-04 14:51:09','1993-05-31 04:28:34'),
(2,2,'Mississippi','Gerlachville',62173474,'42901 Runte Fort Apt. 137\nDomenicoton, PA 87452-3829','1972-01-14 04:58:26','2008-08-18 14:23:02'),
(3,3,'Montana','North Gregoryshire',1511733,'1362 Matilda Valley Suite 961\nCoreneburgh, SD 50188-0130','2022-12-01 09:13:22','2012-01-29 20:30:21'),
(4,4,'NewMexico','Lake Edwardmouth',0,'877 Erin Fields Suite 762\nNew Kian, GA 78214-6071','1999-08-03 22:21:52','1988-12-12 16:34:08'),
(5,5,'Wyoming','North Meaghanton',7611,'2990 Runolfsson Dale\nOkunevastad, UT 55277','2016-03-23 09:18:37','2017-10-08 21:20:33'),
(6,6,'Illinois','West Jamil',573,'15540 Orval Dam\nNew Andrechester, VA 18888','2009-05-04 13:37:38','2008-09-30 18:18:39'),
(7,7,'WestVirginia','Haneburgh',698471483,'5844 Travis Key\nBartolettifort, KS 17152','2016-09-04 13:51:02','2011-06-03 17:27:21'),
(8,8,'Wyoming','Port Kimstad',127497981,'3442 Moore Point\nDeckowbury, TN 05730-2672','2009-04-23 17:33:19','2005-11-27 06:08:42'),
(9,9,'Massachusetts','Port Breannafurt',43090027,'815 Milo Summit Suite 220\nWilmerport, IA 36355','1984-02-18 15:51:55','2001-09-24 20:32:08'),
(10,10,'Maine','Helgastad',80,'52794 Kayley Prairie Suite 802\nNew Dolly, MT 93719','2022-06-04 11:30:40','1986-02-03 07:37:31'),
(11,11,'Nevada','North Odaville',59,'06233 Nyasia Underpass Suite 010\nNew Oswaldview, DC 20427-3774','2018-07-21 21:16:12','2014-09-22 11:13:30'),
(12,12,'Kansas','East Mireyatown',36513,'0836 Jany Turnpike\nJeffside, MD 17793','1972-08-01 08:49:55','1988-02-15 17:25:27'),
(13,13,'Washington','New General',7700,'214 Hilll Mountain\nDooleychester, NH 50416-9956','2004-04-19 12:38:58','2011-03-20 14:55:35'),
(14,14,'Massachusetts','Milanhaven',2,'3559 Alphonso Mill Suite 554\nJadeton, SC 07771','1981-06-17 18:51:06','1984-08-18 03:13:40'),
(15,15,'Maryland','Emardshire',0,'426 Graham Pass Suite 001\nWest Jaime, MA 71672-1922','1995-11-07 01:33:52','1979-04-05 15:04:30'),
(16,16,'NewMexico','Robertsview',4243209,'50713 Gregoria Manors Suite 974\nWest Janischester, OR 95925','2021-10-16 12:57:48','1971-11-04 21:50:48'),
(17,17,'Wisconsin','New Donavon',0,'083 Cameron Shoals\nPort Craigborough, AZ 16450','1981-01-08 14:34:57','1993-02-19 15:36:32'),
(18,18,'Oklahoma','Wildermanchester',778018462,'3341 Ondricka Harbors Suite 268\nSouth Rebafort, IA 60276-7107','2012-05-24 00:50:50','2016-11-01 16:37:18'),
(19,19,'Idaho','Zboncakside',424941,'01472 Paucek Parks\nKohlerburgh, RI 23589-6027','1971-08-25 07:28:51','2020-04-19 01:34:53'),
(20,20,'Indiana','Port Carolyneview',362726,'23738 Hirthe Springs\nFeestmouth, RI 75497-7813','2006-09-13 13:26:35','2019-11-13 18:49:42'),
(21,21,'Georgia','Frederickstad',0,'561 Gleichner Wells\nRontown, AR 99365','2018-09-05 11:23:22','1999-02-21 21:11:13'),
(22,22,'Utah','South Maxwellville',500143655,'9704 Reichert Road\nPort Katherine, AL 91076-7319','1994-05-16 11:26:04','1987-11-06 09:03:05'),
(23,23,'Florida','North Earlport',3978,'593 Kemmer Inlet\nNew Francescoville, FL 30250-5613','2013-11-05 15:35:44','2004-08-14 06:37:33'),
(24,24,'NewHampshire','Brendaland',762541,'611 Graham Route Apt. 160\nBruenburgh, MS 95667-6797','2017-09-17 13:50:21','1996-08-30 12:53:04'),
(25,25,'Kansas','Port Bartholome',780011,'509 Kelvin Ramp Suite 370\nSouth Ruben, NC 11502-0186','1998-02-16 15:49:04','2016-11-25 10:18:01'),
(26,26,'Arizona','East Eleanora',768,'197 Nathaniel Club Suite 592\nNew Edwina, NV 53823-7879','1995-04-28 05:07:39','2002-11-05 22:11:36'),
(27,27,'Georgia','Alainafort',22767,'4802 Gutmann Lodge\nSouth Velvaton, NE 05126-7896','1972-09-28 07:44:06','1985-05-23 01:01:41'),
(28,28,'NorthDakota','Armstrongland',28928811,'562 Harris Crescent\nChaseview, MA 00982-4778','1983-07-09 21:26:13','1996-11-24 02:33:06'),
(29,29,'Utah','West Jacintoland',6974,'3271 Lueilwitz Radial\nLake Ivaberg, PA 67503','2002-12-29 08:40:03','1991-02-12 12:29:37'),
(30,30,'Washington','South Ferneshire',0,'8884 Leuschke Station\nFilibertofort, MS 86192','1995-05-17 22:50:21','1973-03-24 01:04:26'),
(31,31,'Utah','Earnestineville',93,'901 Brigitte Unions\nSatterfieldfort, HI 26612-9359','1990-01-14 06:01:41','1970-02-09 02:40:06'),
(32,32,'Mississippi','South Albertoshire',60740921,'555 Schimmel Cliffs\nCruickshankside, MN 50613','1978-10-10 20:02:06','1991-04-21 22:20:02'),
(33,33,'Nevada','South Birdieborough',5056931,'78770 Gerlach Field Apt. 909\nKutchmouth, WI 87141','2004-08-05 21:29:58','1994-07-30 17:28:11'),
(34,34,'Wyoming','Gibsonfurt',0,'703 Lehner Locks\nHeaneyfort, MS 91142-2344','1979-04-05 22:25:39','1990-06-11 09:56:05'),
(35,35,'Indiana','Legrosstad',2453,'504 VonRueden Squares\nOndrickaberg, MO 90452','1990-05-13 17:19:56','1981-01-31 23:11:35'),
(36,36,'Mississippi','North Jermaineborough',165759,'729 Kariane Forge Suite 435\nWest London, PA 10149','1991-03-12 09:43:37','2010-01-04 12:47:55'),
(37,37,'RhodeIsland','South Gretchen',6015097,'5045 Tyrel Bypass Apt. 129\nLouveniahaven, SD 22830-9391','1982-03-01 11:17:55','1976-10-29 13:44:04'),
(38,38,'Massachusetts','Lelafort',0,'4446 Johns Ranch Suite 175\nMullerchester, MD 97625-9329','1970-01-12 04:48:26','2021-11-06 23:06:54'),
(39,39,'Massachusetts','South Christ',836172860,'3971 Considine Plains\nLake Candida, ND 06791','2019-10-11 05:21:17','1988-06-02 03:39:10'),
(40,40,'SouthDakota','West Bertha',42963614,'85465 Dana Hills\nNorth Winona, AL 34471-2937','2007-02-18 22:50:55','1998-01-21 13:50:47'),
(41,41,'Minnesota','Satterfieldmouth',0,'81687 Leanne Gardens Apt. 299\nBethanymouth, AK 86466-6628','2010-07-26 17:50:22','2009-08-12 23:04:05'),
(42,42,'Illinois','West Orrin',847604813,'625 Mraz Passage Apt. 635\nDonnellyborough, VA 52438-4216','2022-02-14 19:48:46','2002-05-10 09:54:07'),
(43,43,'District of Columbia','Sanfordhaven',6733730,'996 Vinnie Rest\nSouth Estellaport, TN 19556','2024-03-01 06:59:53','2008-04-22 22:37:49'),
(44,44,'Kansas','Wintheiserberg',267856691,'6308 Lueilwitz Crossroad\nSouth Mohammadhaven, WA 78046','1980-09-15 11:49:43','1989-06-05 13:03:14'),
(45,45,'SouthCarolina','Lake Taylor',27528,'0422 Suzanne Spurs Apt. 797\nWilliamsonton, AK 53455-0472','1986-10-31 20:23:58','2005-09-19 14:31:58'),
(46,46,'Iowa','North Lanceland',917307763,'6327 Simonis Estates\nLake Jacky, OH 06397-4231','1985-07-08 14:04:10','1989-03-09 00:31:20'),
(47,47,'RhodeIsland','Port Kaylie',1989,'50406 Muller Highway Suite 877\nGerlachberg, FL 60788','1991-09-15 06:42:51','2014-06-08 17:38:01'),
(48,48,'Maryland','East Amy',2983854,'449 Elijah Trace\nMannfurt, IA 06964-8015','2016-06-27 10:21:07','1995-07-09 12:44:19'),
(49,49,'Oregon','Coleport',616,'99542 Greenholt Junction\nLake Kadenmouth, WY 96503','1991-08-31 16:52:36','1979-06-17 05:41:30'),
(50,50,'Michigan','North Cleve',28817,'21506 Thaddeus Locks\nNew Laura, NE 20521-7753','1997-06-15 20:29:52','1973-09-18 10:46:22'),
(51,51,'Arkansas','Lake Jackeline',480,'007 Kling Inlet\nNorth Lurline, MS 02624','2009-07-24 11:57:07','1984-10-21 22:23:35'),
(52,52,'NewHampshire','Giovannamouth',12,'244 Fern Heights Suite 956\nGulgowskiton, VA 14081-6190','1980-04-09 17:12:04','2023-03-02 21:20:37'),
(53,53,'Arizona','West Chaddhaven',7245,'588 Hahn Radial\nWest Ambroseberg, IA 53541-7120','2010-04-08 23:27:24','2013-03-31 14:18:05'),
(54,54,'Connecticut','West Kelly',488,'6184 Seth Street\nAbbottburgh, OH 90051-0793','2017-05-16 05:18:08','2002-05-24 01:49:52'),
(55,55,'Maine','Haleychester',0,'8488 Deondre Mill\nNorth Shaniastad, ID 13468','2002-10-21 22:20:28','1986-12-04 21:18:05'),
(56,56,'Montana','West Evie',44014580,'5056 Hettinger Ville\nTessieburgh, ID 17492','1971-10-18 08:08:30','2011-04-18 11:20:09'),
(57,57,'NorthDakota','North Cecil',6605,'8616 Jennings Station\nNorth Theo, AL 52130','2002-06-22 19:03:47','1997-04-22 02:54:23'),
(58,58,'Oregon','South Amparostad',4531,'4390 Conrad Parkway Suite 484\nSanfordhaven, CT 45058','1992-11-03 11:28:01','2016-01-28 13:14:21'),
(59,59,'NewYork','Kuphalshire',6,'66150 Bartholome Stream Apt. 455\nNorth Marionmouth, HI 99172-9182','2016-06-28 20:10:22','1993-05-19 13:03:31'),
(60,60,'Pennsylvania','East Kyleigh',5,'483 Andre Vista Apt. 552\nSouth Damianburgh, OR 84569-0386','1984-12-20 07:20:28','1977-06-28 02:30:03'),
(61,61,'Nevada','North Devontestad',1089672,'14253 Rex Throughway Apt. 139\nChayafort, UT 63170-9197','2011-04-29 23:43:18','2018-01-23 07:26:47'),
(62,62,'Iowa','Adahhaven',6506,'517 Novella Mission\nLarsonborough, TN 47886-3472','1991-12-16 01:55:30','1996-01-13 23:16:25'),
(63,63,'Oregon','North Ginotown',49282682,'3221 Alena Park\nCoralieland, AL 97232-7533','1985-10-11 18:59:59','1998-08-25 05:29:18'),
(64,64,'Oregon','New Adolph',75755,'18520 Mitchell Well Suite 886\nMaidashire, OH 32472','1992-11-12 07:48:48','1998-08-02 21:44:02'),
(65,65,'Nebraska','Garfieldfurt',26,'171 Elsie Plain\nMarcelleburgh, VA 83717','1988-04-15 02:06:45','1999-01-30 01:58:23'),
(66,66,'Wyoming','East Aminabury',5650954,'845 Stokes Spur Apt. 128\nKundeburgh, GA 21090','1981-09-12 20:07:43','1975-06-29 12:20:37'),
(67,67,'Wisconsin','Predovicfurt',267,'8268 Becker Hills\nAdrainville, SC 81650-0784','1998-08-03 11:05:32','1996-05-05 11:21:41'),
(68,68,'Alaska','Biankahaven',6642897,'42436 Ritchie Meadow Apt. 919\nFlatleychester, AK 90874-4695','1996-06-29 09:41:41','1992-06-30 05:45:44'),
(69,69,'District of Columbia','Connellyland',6255757,'93855 Block Passage\nSouth Herminia, IN 21865','2023-06-26 04:41:59','2003-02-02 03:57:32'),
(70,70,'Virginia','Smithburgh',74075,'94336 Otis Shore Suite 652\nLake Xavier, CT 86685','1993-03-22 21:39:03','1993-12-18 18:39:21'),
(71,71,'Ohio','Javonteville',945585047,'83076 Carolyne Island Apt. 877\nMooreshire, NH 62401-3157','2007-12-09 00:57:26','1989-03-28 17:34:22'),
(72,72,'Kansas','Garrisonview',16664,'0748 Mathilde Light\nNew Giuseppe, KY 65019-3362','2021-08-25 07:21:16','2012-04-24 08:56:11'),
(73,73,'Illinois','Linniehaven',3108791,'162 Abshire Walk\nPort Briachester, PA 05426-9512','1992-07-19 21:49:46','2003-03-05 17:36:10'),
(74,74,'Utah','New Dustin',3170795,'24774 Breitenberg Path Apt. 965\nWarrenmouth, UT 69883','2005-08-31 10:56:35','2007-09-21 10:52:32'),
(75,75,'SouthDakota','West Alanisport',148,'873 Ferry Keys Suite 855\nWest Travon, NV 25371','1987-10-21 18:25:35','1985-06-18 21:43:30'),
(76,76,'Mississippi','West Deven',554881616,'4520 Hand Gardens\nSouth Vicentastad, NY 01492','1971-09-04 14:17:59','1994-03-06 18:52:14'),
(77,77,'SouthCarolina','Runteport',2966,'91386 Luigi Mall\nNew Loraineport, MI 74082-9290','1997-04-11 05:46:59','1979-09-01 11:13:28'),
(78,78,'Florida','West Isabelleside',77826,'2463 McLaughlin Knoll Suite 471\nEast Dannie, RI 44324-5605','1970-09-06 11:42:35','2002-02-09 22:13:49'),
(79,79,'Utah','Lake Kayla',691238415,'7929 Leuschke Centers Apt. 257\nLake Oscar, AK 55047','2018-04-04 06:18:37','2017-12-27 06:49:53'),
(80,80,'Idaho','Port Allan',399746016,'33702 Zakary Fords Apt. 304\nNorth Antonina, LA 07376-3346','2002-08-25 07:44:01','2001-01-15 11:13:44'),
(81,81,'Oklahoma','North Allen',48697972,'162 Brielle Key Suite 164\nLake Nicholaus, NM 49370','1997-01-07 12:39:13','1999-01-28 23:48:03'),
(82,82,'Utah','Lake Stefanland',506846,'71838 Ryan Well\nWest Francescatown, WA 94803','2010-10-06 19:50:07','2018-10-28 21:02:02'),
(83,83,'Louisiana','Kalliechester',750,'94990 Brant Lane Apt. 780\nWest Aubree, MA 97724','2011-12-16 12:50:50','2000-05-22 00:02:00'),
(84,84,'Ohio','East Keith',918101092,'613 Monahan Village Apt. 127\nZionport, RI 61237-8031','2017-02-21 12:42:31','1994-05-06 16:11:59'),
(85,85,'Illinois','North Leilanimouth',8,'543 Asha Way\nPort Aylin, CO 76945-0945','1974-12-08 02:57:58','1996-06-05 06:06:11'),
(86,86,'Virginia','North Markmouth',61482185,'94525 Laverne Stravenue\nFramiborough, ID 41924-9436','1970-07-29 03:54:12','1979-07-09 16:45:34'),
(87,87,'Arkansas','Port Eleanoremouth',7,'50288 Gaston Causeway\nPort Collin, NM 77046-8370','1971-07-21 21:45:03','1992-04-24 04:52:47'),
(88,88,'Indiana','Sherwoodchester',0,'0136 Graham Passage\nNicolasbury, MS 49241','1985-12-25 04:38:28','1971-02-07 11:47:07'),
(89,89,'NewHampshire','Aryannaton',437,'880 Ortiz Ramp\nNew Alanna, NC 04365','2016-10-13 14:10:59','2002-01-06 03:33:02'),
(90,90,'Utah','Kimberlyborough',660228178,'485 Leuschke Fords Apt. 557\nWest Janick, NH 23120','1997-01-15 19:21:53','2020-01-25 23:21:45'),
(91,91,'Arkansas','Krismouth',582532713,'9582 Leif Parks\nDoyleborough, MD 11239-3333','2014-06-13 07:55:08','2007-03-29 22:31:51'),
(92,92,'Idaho','Port Titusside',76,'790 Gulgowski Loaf\nEast Jocelynchester, IA 06537-8762','1987-08-28 00:02:27','2009-08-03 21:05:23'),
(93,93,'Georgia','Carmelborough',632883,'195 Grant Street Suite 890\nWest Deshawn, MS 44475','2003-03-18 14:33:14','2011-08-03 23:50:19'),
(94,94,'Virginia','Reannaport',3511240,'12347 Jaylon Spring Apt. 976\nPort Aliceside, DC 84823-2949','2023-05-06 15:45:02','1970-01-23 06:29:16'),
(95,95,'Oklahoma','North Diego',261,'30031 Shanahan Freeway Suite 541\nWebertown, NY 26054-0166','1999-11-25 06:50:46','2005-04-30 18:41:03'),
(96,96,'Iowa','Lake Yadirafurt',18697,'02001 Gaylord Squares\nSouth Emmabury, TX 80693','1987-10-12 05:05:05','1988-07-19 03:46:22'),
(97,97,'NewMexico','East Elfrieda',26,'4270 Kunde Points\nBergnaumtown, FL 15773-6542','1974-09-28 17:53:27','1974-02-28 15:15:11'),
(98,98,'Delaware','Jakubowskimouth',607007,'4347 Beier Court\nJacobsonside, NH 88305-8321','2011-12-30 00:58:56','1993-09-03 17:15:54'),
(99,99,'Indiana','Giovanichester',35499363,'78960 Jaycee Flat Apt. 532\nAntoinettemouth, MN 78887-7815','2020-02-18 05:37:21','1992-06-29 06:31:00'),
(100,100,'Maine','Herminabury',0,'27878 Xander Landing\nIsabellshire, ID 53211-2782','2009-03-05 03:18:13','1982-12-17 08:28:21');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES
(1,'ut','1989-01-09 15:31:35','2023-08-17 02:38:03'),
(2,'quasi','1986-08-25 12:16:49','1994-02-01 11:46:50'),
(3,'vel','1982-12-29 19:22:25','1984-11-24 14:23:28'),
(4,'et','2003-02-01 01:18:35','2003-05-10 21:35:47'),
(5,'adipisci','1976-11-10 11:39:17','2009-12-01 16:45:08'),
(6,'ex','2000-05-19 22:18:01','1996-03-02 19:50:05'),
(7,'ratione','1987-09-17 09:06:23','2021-05-13 22:07:08'),
(8,'eveniet','1999-06-04 08:30:28','1970-07-24 19:41:32'),
(9,'ea','1999-09-01 19:58:26','1978-01-23 01:27:16'),
(10,'qui','2008-12-20 06:56:34','2020-11-27 21:40:26'),
(11,'ut','1998-04-27 20:30:27','2007-04-11 19:30:36'),
(12,'possimus','1972-12-01 05:18:11','1984-04-22 19:16:30'),
(13,'et','2014-03-13 17:56:53','2005-05-11 05:04:36'),
(14,'quos','1977-04-18 06:21:11','1970-01-31 21:37:00'),
(15,'eum','1972-04-14 11:20:22','1993-08-02 15:13:52'),
(16,'quia','1984-02-19 13:40:16','1984-04-08 23:06:28'),
(17,'minus','2002-03-19 01:51:51','2011-08-27 00:34:35'),
(18,'voluptatem','1983-02-16 15:54:19','1988-09-29 19:34:50'),
(19,'illum','1985-01-25 12:50:42','2017-07-14 02:32:48'),
(20,'autem','2004-04-20 05:49:04','2015-01-31 00:02:00');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_brands`
--

DROP TABLE IF EXISTS `category_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_brands_product_category_id_brand_id_unique` (`product_category_id`,`brand_id`),
  KEY `category_brands_brand_id_foreign` (`brand_id`),
  CONSTRAINT `category_brands_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_brands_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_brands`
--

LOCK TABLES `category_brands` WRITE;
/*!40000 ALTER TABLE `category_brands` DISABLE KEYS */;
INSERT INTO `category_brands` VALUES
(1,1,1,'1993-03-13 10:27:13','2006-11-04 11:29:05'),
(2,2,2,'2023-02-08 18:46:52','2023-08-23 00:13:09'),
(3,3,3,'2006-07-30 13:25:07','1977-01-27 09:49:38'),
(4,4,4,'2021-07-06 01:05:41','1972-08-22 05:03:30'),
(5,5,5,'1973-03-27 14:03:17','2011-02-25 17:01:39'),
(6,6,6,'2018-03-04 15:45:24','2001-03-31 14:02:34'),
(7,7,7,'2006-08-23 09:31:28','2020-04-15 07:10:05'),
(8,8,8,'1999-05-29 18:22:02','2003-03-20 14:06:51'),
(9,9,9,'1992-12-03 04:35:04','2010-02-24 04:21:32'),
(10,10,10,'1976-01-19 02:16:22','1986-06-20 13:36:37'),
(11,11,11,'1989-05-20 23:27:22','1988-03-26 09:45:41'),
(12,12,12,'2003-12-24 09:55:21','2003-11-06 11:09:31'),
(13,13,13,'2001-10-19 17:26:43','2021-11-27 12:27:59'),
(14,14,14,'2000-07-10 03:25:28','2015-11-18 13:55:11'),
(15,15,15,'2014-11-30 11:57:26','2009-04-19 03:58:45'),
(16,1,16,'2005-12-03 20:29:27','2024-01-04 09:43:14'),
(17,2,17,'1994-03-14 04:44:43','2010-12-25 16:37:06'),
(18,3,18,'1981-01-08 12:57:44','1971-07-24 18:40:03'),
(19,4,19,'1975-03-10 08:37:38','2013-02-28 18:28:30'),
(20,5,20,'1975-04-26 10:31:59','1977-05-06 05:04:52'),
(21,6,1,'1970-06-09 07:24:21','1978-04-21 02:10:28'),
(22,7,2,'1974-07-16 22:28:36','2017-12-01 09:20:47'),
(23,8,3,'1975-06-13 07:16:45','1973-05-04 18:07:02'),
(24,9,4,'1991-11-08 20:34:43','1998-09-23 23:41:32'),
(25,10,5,'1981-12-31 14:22:47','1991-05-01 01:29:35'),
(26,11,6,'2018-12-15 06:42:09','1972-11-14 19:23:39'),
(27,12,7,'2005-10-01 15:20:08','2007-04-29 05:42:56'),
(28,13,8,'1986-07-13 02:59:10','1980-05-13 21:06:51'),
(29,14,9,'2010-03-03 07:40:59','2008-11-08 20:12:54'),
(30,15,10,'1992-08-03 15:17:38','1985-08-25 10:45:22'),
(31,1,11,'1998-08-25 05:09:49','1979-06-28 14:23:55'),
(32,2,12,'2008-04-20 00:04:19','2000-06-06 06:11:09'),
(33,3,13,'2007-10-30 09:43:05','1988-09-28 06:32:58'),
(34,4,14,'2004-09-28 20:03:38','1980-09-12 07:33:58'),
(35,5,15,'1973-12-31 13:47:53','2009-05-26 05:37:59'),
(36,6,16,'2022-12-20 19:49:44','2017-05-03 08:03:38'),
(37,7,17,'1993-11-08 06:22:53','2013-09-25 09:47:43'),
(38,8,18,'1993-02-25 12:05:35','1983-01-22 09:49:57'),
(39,9,19,'1971-09-06 03:38:24','1979-12-04 23:52:04'),
(40,10,20,'1987-09-28 18:43:58','1984-07-25 01:07:28'),
(41,11,1,'1986-03-27 18:29:24','2012-07-15 19:24:44'),
(42,12,2,'1974-12-06 06:43:03','2023-02-20 20:43:15'),
(43,13,3,'1987-05-05 04:13:12','1974-09-28 01:30:49'),
(44,14,4,'2013-10-23 19:26:33','1978-06-30 07:29:07'),
(45,15,5,'1985-01-23 00:56:10','2010-12-19 19:17:49'),
(46,1,6,'2012-12-16 04:54:47','2008-02-14 23:55:41'),
(47,2,7,'1972-12-13 08:02:46','1985-09-06 09:44:21'),
(48,3,8,'2016-02-22 01:14:19','2003-01-01 12:24:41'),
(49,4,9,'1984-05-02 13:32:21','2000-06-07 00:49:53'),
(50,5,10,'1989-07-26 17:40:54','2003-03-24 01:22:20'),
(51,6,11,'1997-05-15 22:24:01','2022-05-16 13:07:51'),
(52,7,12,'1971-01-29 17:20:25','1989-10-04 23:33:46'),
(53,8,13,'2011-04-07 00:48:10','2011-04-13 20:59:45'),
(54,9,14,'1976-02-08 18:50:10','2019-09-23 19:58:12'),
(55,10,15,'2001-12-08 13:07:26','2017-03-31 03:38:17'),
(56,11,16,'1976-04-23 12:07:08','1981-09-05 09:11:55'),
(57,12,17,'1993-11-13 13:41:00','2010-05-28 01:25:41'),
(58,13,18,'1978-12-01 23:19:07','2014-08-26 12:17:21'),
(59,14,19,'1995-04-03 00:18:21','1978-08-14 16:19:00'),
(60,15,20,'2022-08-08 19:03:41','2001-01-08 21:31:58');
/*!40000 ALTER TABLE `category_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES
(1,'molestiae','Corwin','kameron.tromp@example.net','2021-01-27 06:25:24','663.338.8678',NULL,'43f46310210c7bbf1c2c6f6512c8406ad3ce0327',NULL,'1970-09-16 22:38:50','1978-05-22 07:08:30'),
(2,'et','Block','gage30@example.com','2017-04-04 20:50:44','951.111.9467',NULL,'4bb97be0f86580342bc2f4df3e553defc04a688c',NULL,'2022-08-04 14:04:02','1990-06-18 22:39:53'),
(3,'sapiente','Miller','eruecker@example.org','1974-12-26 20:16:24','(139)010-2597x778',NULL,'03c84bd3a816a352e83d9c427e004bee69625db2',NULL,'2016-05-12 22:17:43','1982-03-21 09:24:06'),
(4,'magnam','McLaughlin','myrtle96@example.org','1974-11-24 00:51:01','1-815-422-4679x6413',NULL,'634240244cb4583faf69efa9011c671789c759a8',NULL,'1982-07-19 05:28:38','2017-12-10 18:50:41'),
(5,'facere','McLaughlin','brooks.spinka@example.com','2005-05-03 11:32:28','224.416.9495x726',NULL,'15ab67ad8a0edbaa7bf983d110ee17d82ddc6c82',NULL,'1991-05-31 16:18:21','1989-09-27 06:20:14'),
(6,'ut','Schulist','wauer@example.org','2016-02-05 19:15:22','1-946-396-8053x550',NULL,'d500d95d7f9708321c88688463a6a1b9f8108f3a',NULL,'2004-11-04 11:18:59','1999-01-12 07:04:50'),
(7,'quia','Harvey','florencio22@example.net','2016-02-13 18:54:47','593-954-4478',NULL,'b28021a58ef098463dd9dd9deb5be57433a550da',NULL,'2015-01-29 17:52:18','2015-10-25 10:40:08'),
(8,'velit','Klein','tina59@example.com','1974-07-17 01:31:13','1-973-975-8376x0119',NULL,'a1f32b7b0cf73d53a5abb7862894cb03e2ef133a',NULL,'2023-10-15 09:18:36','1973-02-08 02:02:50'),
(9,'necessitatibus','Tremblay','alejandra.klocko@example.org','1997-03-17 16:56:11','292-219-6256',NULL,'2f0f9afae6ec0040405d10f2ff40677b2eddf924',NULL,'2008-04-29 13:36:42','1979-08-20 23:08:18'),
(10,'fugit','Miller','tblick@example.com','2007-01-07 00:50:03','551-981-8969',NULL,'35b4785a7bfd49c742a6edd765c9856cf25f68fd',NULL,'1985-09-23 15:05:18','1973-08-16 14:34:20'),
(11,'ratione','Rath','xhuels@example.org','2016-01-16 23:54:52','1-280-551-3688',NULL,'920665f6c0a52e366e5c8e8afbc6cda5758e15fa',NULL,'1986-11-15 17:04:49','1994-04-15 03:45:46'),
(12,'possimus','Rodriguez','claud94@example.com','1979-11-24 06:21:51','570.779.5136',NULL,'e42a0aeb69a3dddf1e148a32b7de07a6bd9f64ed',NULL,'2013-06-16 09:25:24','1983-10-23 10:55:05'),
(13,'doloribus','Littel','keebler.malvina@example.org','1970-03-05 01:03:13','+74(9)7002977982',NULL,'639df60c7df3eef0fca106a72f3499a7a0d93869',NULL,'2024-02-20 16:20:38','1978-01-01 07:04:13'),
(14,'odio','Grant','gerlach.hazel@example.com','1985-11-19 16:18:57','334.002.1538x267',NULL,'495089787a18572bdf38b804a2763a26a4d72ba9',NULL,'1992-10-17 10:54:52','2002-08-21 02:00:53'),
(15,'eos','Lehner','wiza.arnulfo@example.org','1995-01-17 14:29:28','+64(2)5529808570',NULL,'066e0a4cdb2d159269bf3be00ed54653a6660e6d',NULL,'1980-11-03 15:07:49','1975-03-15 20:49:00'),
(16,'aut','Welch','opredovic@example.net','1993-02-18 11:11:25','020-554-8952x930',NULL,'65afd7dd5232a7bc759748be189378864867a5f1',NULL,'2017-07-24 14:54:20','2006-02-28 07:57:31'),
(17,'aspernatur','Kris','satterfield.gertrude@example.com','2008-11-25 02:24:25','346.011.6741x516',NULL,'8a54b9d86f9dda81c50d2ec171d055b6a012c962',NULL,'1987-06-18 09:13:48','2008-07-30 01:33:26'),
(18,'reiciendis','Krajcik','htreutel@example.org','1972-01-09 00:18:12','633-691-2853x52207',NULL,'026fbe0c787fb7461fb73368fa5900f058c0dbbd',NULL,'2009-10-10 10:28:08','1975-11-19 18:04:31'),
(19,'voluptates','Steuber','renner.jared@example.net','2023-09-20 20:51:48','131.326.3669x786',NULL,'aca7661722320e20ec1a17cf71bfca3e4b000da5',NULL,'1995-06-05 18:53:12','1993-09-07 16:41:24'),
(20,'et','Breitenberg','tiana69@example.net','1973-05-19 09:28:00','073.302.8909x98251',NULL,'05baccba6d795bc48ab0dac6614f6f5e4b12b970',NULL,'1987-10-07 08:02:44','1989-02-28 14:27:28'),
(21,'vitae','Durgan','price.joanne@example.org','1986-04-02 07:17:26','1-646-825-1803',NULL,'2c479fe4bda690443e6b8d014c0e0bbb3e5a17c4',NULL,'1996-04-08 05:09:02','2011-01-11 07:47:36'),
(22,'quia','Considine','reynolds.adalberto@example.org','2018-01-24 02:42:00','055.574.9587x50904',NULL,'02b2566b2f0607911fd8843b77606923f3d2a092',NULL,'1979-02-14 01:05:41','1997-10-07 14:39:56'),
(23,'voluptatem','Ortiz','morissette.russell@example.net','2020-06-10 21:44:05','337-545-7041x647',NULL,'71bf4534e575d210b1b89f2a5f735d480bab1a00',NULL,'2000-04-11 11:30:41','1992-09-20 00:45:28'),
(24,'qui','Sanford','maxine.toy@example.net','2008-01-15 09:01:29','318.966.6584x063',NULL,'463ca2174f369555fdc52a7d5975293ae8d58928',NULL,'2020-05-23 04:28:18','1988-12-31 02:10:51'),
(25,'dolores','Dicki','elisabeth.bartoletti@example.org','1994-01-07 22:49:45','(955)207-7591x8575',NULL,'8ce4be204a757030a080f155fcfe7f5cc686f65f',NULL,'1995-10-13 16:22:55','2010-11-13 14:20:01'),
(26,'voluptatum','McGlynn','ondricka.roosevelt@example.com','1974-03-28 07:30:35','719-772-3207',NULL,'e3df6b482a023db2a1e24607b4503b2abac2722c',NULL,'1988-09-18 10:35:55','2018-12-22 09:33:17'),
(27,'nisi','Vandervort','roberts.carmine@example.com','1973-06-24 15:20:43','(300)673-0156x25074',NULL,'ccbb8a313f7bd5e7392115343c4ede76a0a26e27',NULL,'1980-09-28 04:38:55','1981-08-23 09:27:55'),
(28,'excepturi','Nader','pbernier@example.com','1983-05-01 22:01:54','1-914-826-6983',NULL,'5d57a5af0ed9d349725366d371bc9d774b2784d2',NULL,'1971-03-27 17:17:53','2013-06-30 08:58:02'),
(29,'sed','Kessler','morar.amina@example.org','1983-07-23 16:58:11','(834)798-2694',NULL,'bd726a26fcfb30bb624808bc9e5d11db297a38a1',NULL,'2012-08-22 23:40:08','1983-12-05 20:10:39'),
(30,'eos','Nicolas','idella27@example.net','1975-08-24 14:52:56','(266)664-7526x19512',NULL,'bff2ca901568d822e19adf433815d9305b11a683',NULL,'1987-03-31 10:58:06','1996-03-12 23:39:14'),
(31,'consequatur','Hirthe','skylar43@example.net','2023-09-09 04:14:49','155-188-2911',NULL,'d4356d7d654dad7c4892a6f8a5b571a00377b50e',NULL,'1972-12-04 04:59:16','2011-10-23 22:07:52'),
(32,'quis','Schuster','qkreiger@example.org','2023-11-16 23:53:37','(589)190-1866x5914',NULL,'8c753aaf136e12505d07c17b9725351dcbf544d7',NULL,'2016-06-08 11:50:00','1997-08-05 00:10:23'),
(33,'earum','Reilly','von.germaine@example.org','2016-08-20 11:10:48','(451)309-4825',NULL,'fd6ddbeb313316f01e2247fde5177becf3303e2f',NULL,'1985-08-20 14:05:17','2011-12-10 08:18:18'),
(34,'voluptatum','Kuhic','leanne80@example.net','1990-10-08 12:53:02','730.614.2908x035',NULL,'6a17def31b2e2892c3b06ca7a58a240a5c52511f',NULL,'1977-04-11 06:06:12','2017-12-22 04:45:36'),
(35,'facere','Mitchell','kcronin@example.net','2001-08-03 11:07:50','1-317-101-5338x6957',NULL,'30254b56e99cbd6c8c044e4930269c1b71a04da4',NULL,'2004-11-21 23:07:37','1982-10-19 11:36:14'),
(36,'fugit','Bartell','aracely65@example.org','2021-11-17 20:28:36','1-573-995-6159x847',NULL,'05867c72af4a8bc72ffd10bff20f6ca2b2776503',NULL,'1979-08-10 11:57:30','1994-02-18 02:58:59'),
(37,'sunt','Hills','wilfredo.metz@example.net','1983-10-22 12:57:31','163.094.3056',NULL,'1c5304c0056b497be718a088606921d05542c3fc',NULL,'1996-11-12 05:28:21','2012-06-30 14:30:01'),
(38,'earum','Stark','ayden.hansen@example.net','2017-05-15 19:33:24','(217)614-9787x5227',NULL,'b23c1d6940a0eb0709ea635c0dc8380480165f87',NULL,'2018-01-23 21:31:13','2007-01-15 17:16:10'),
(39,'facere','Cummings','thomas.schimmel@example.com','1992-05-12 15:25:07','05961292863',NULL,'01a2757d9fa5c2717752e6f441e46b1fd0ebdf88',NULL,'1993-12-04 22:33:52','2004-04-29 11:18:46'),
(40,'error','Luettgen','kailey.brakus@example.org','1978-03-01 07:40:46','1-943-303-5733x6617',NULL,'c2968d7b09ad7a187e3178437175c6c5258bd139',NULL,'1990-03-17 21:29:53','2011-09-17 07:54:42'),
(41,'itaque','Cole','haag.gustave@example.com','2022-12-18 19:17:03','816-305-1423',NULL,'7d2553dcb3c6582bc7c773c676bd8e6b31797a71',NULL,'1985-01-31 16:16:37','2022-01-24 03:05:32'),
(42,'laborum','Rodriguez','ward.lincoln@example.net','2001-06-13 11:17:13','(850)881-2213',NULL,'8e3d1a5cb66e9608c3aced443bcf300371549250',NULL,'1992-03-15 17:52:49','1975-07-11 16:28:14'),
(43,'eos','Doyle','ariel.schimmel@example.org','1986-07-15 06:24:41','512.908.9814x7113',NULL,'386d905ca88f341ad8278af5f529ac317b6b56ae',NULL,'1996-03-29 16:15:24','2008-02-17 15:28:59'),
(44,'commodi','Cummerata','judge.haag@example.org','2002-04-22 13:47:55','09509154005',NULL,'e0093dde0aaf9e36955bc301b5fdde17bdda22a5',NULL,'1973-08-07 19:54:17','1972-10-28 12:25:12'),
(45,'facilis','Lind','hanna.schaefer@example.org','2022-04-30 23:07:47','612-880-5665',NULL,'a469255531eba97605c6bb7559567dfe138e36d2',NULL,'1984-04-30 01:42:12','2007-11-09 09:42:37'),
(46,'facilis','Bosco','vhowell@example.com','1970-01-25 06:32:08','945-833-6059x326',NULL,'b2a68b7033549b36b382fc526ec0c108f5af834f',NULL,'2022-11-11 09:36:04','2006-06-26 03:53:45'),
(47,'officia','Watsica','leonie.murphy@example.net','1984-07-25 04:27:15','1-569-849-2564x392',NULL,'ca9da52c019e6e6160ac55d72634ea35bfe5dfee',NULL,'2010-03-11 20:44:37','2005-06-06 08:18:17'),
(48,'adipisci','Herman','huels.maritza@example.net','1976-05-02 10:01:26','1-198-338-6295x704',NULL,'2082e059ae75fc658e4ac1924944b82aac4e2c67',NULL,'1972-06-07 19:38:31','1981-11-18 02:07:26'),
(49,'tenetur','Jacobi','madelynn.marvin@example.org','1994-02-21 23:17:15','(558)849-5492',NULL,'5bf53661eb0e2d30b37d4f579c972f942fe34de5',NULL,'2006-04-11 15:22:30','2010-04-29 10:42:32'),
(50,'ut','Mitchell','velda.huel@example.com','2023-05-04 23:12:03','1-872-753-4001',NULL,'6a58a41d5b51908431b56ec82ef2e79bb4f407bc',NULL,'1982-11-13 06:28:24','1994-03-27 10:47:30'),
(51,'sit','DuBuque','mikel99@example.com','2006-11-01 12:21:32','305-183-1503x2904',NULL,'fa9378ef07f7db3bef88d745c32a73cb3cbd06d6',NULL,'1999-06-13 05:48:11','2021-02-02 02:24:08'),
(52,'possimus','Kunde','maye.murazik@example.com','1972-09-08 02:33:01','(299)443-3460',NULL,'a3b4948f995c8ccd0fd164460b0d949ba83af161',NULL,'2007-03-04 01:16:36','1995-04-27 00:32:51'),
(53,'velit','Johns','bo.bosco@example.com','2013-07-16 15:11:18','1-723-009-1513',NULL,'c092387ef6948aeb0cfe0b7782e43c69395fc4b5',NULL,'1973-03-27 11:57:31','1981-09-02 04:59:17'),
(54,'molestiae','Stanton','sawayn.eliseo@example.net','1975-04-22 03:23:33','+52(8)5008815396',NULL,'a6f2c0c22136fa00952456659d09cb89b2075ade',NULL,'1984-05-16 13:58:00','1985-12-01 19:09:42'),
(55,'enim','Bergnaum','kevon13@example.com','2017-09-02 15:44:19','640.181.9299',NULL,'26b8d8ccdf1989706251856d20ae939241f93b69',NULL,'1998-01-24 14:30:51','1977-07-11 07:58:22'),
(56,'quo','Baumbach','isom54@example.com','1993-08-06 11:51:06','430.575.4699',NULL,'662a32c231ef17ad6e15e623a50a324cabffbfb1',NULL,'1979-11-26 03:26:21','2001-04-17 22:52:29'),
(57,'nulla','Carter','kailyn51@example.org','2002-04-11 09:40:48','+40(0)3633071617',NULL,'9f0744fdf1fc50fed0d75256d3cf8489d4727746',NULL,'1973-12-14 11:55:17','1998-05-09 03:34:38'),
(58,'cumque','Rolfson','mosciski.katherine@example.com','2020-07-06 02:02:31','(145)602-8943x726',NULL,'99ff3e62573e46cf9387ac7d823d963930b2b066',NULL,'1987-10-02 19:12:38','2018-12-21 21:18:15'),
(59,'et','Cummerata','lstanton@example.net','1980-01-18 10:27:00','308-857-4811',NULL,'b148f468adaa9a366f63bc7144a5905dd78ca794',NULL,'2021-07-21 19:28:42','1989-12-07 07:20:28'),
(60,'voluptatem','Grady','sterling53@example.org','2009-01-16 02:13:39','217-304-2304',NULL,'a50ebfac235bdb05a4f48b649849a7c526820d8b',NULL,'1991-08-19 09:14:58','1981-10-24 18:26:23'),
(61,'velit','Dooley','sporer.yessenia@example.org','1992-07-12 09:56:15','1-405-972-6254',NULL,'3362acacb9715a8007c9faf4f1ed23b2351db394',NULL,'1978-07-05 12:47:51','2004-04-25 09:51:25'),
(62,'pariatur','Torp','parisian.blake@example.net','2002-04-01 16:15:02','1-642-412-1522x616',NULL,'1bf757ee037162c1f336884c99060e15018a3d70',NULL,'2000-03-23 05:22:40','2023-02-18 16:15:44'),
(63,'ut','Emard','christina64@example.net','2005-10-27 13:48:10','384-378-5854x973',NULL,'44467002767b187afbd4e5c0eeba0da8e7464500',NULL,'1998-09-10 10:57:22','2010-09-06 15:36:23'),
(64,'repellendus','Waelchi','allen04@example.net','2016-01-22 08:55:28','937.142.6428x15334',NULL,'c99854ffcaf1d58a5129fc9cb472671f5a1954bd',NULL,'1998-03-27 02:41:00','1978-07-17 01:34:36'),
(65,'accusantium','Grady','bailee.gutmann@example.net','1990-06-23 07:52:55','179-605-3468x07984',NULL,'6ccbdcbd8b0649799dfc258bc23ed261d1dfcb62',NULL,'2015-06-25 12:48:28','1970-11-25 16:13:11'),
(66,'error','Lind','makenzie.hayes@example.net','2011-12-05 10:11:36','(810)455-4760x86836',NULL,'6e9b5de931c395f0b7028583b5b368649d7b8d4d',NULL,'1984-09-07 00:42:39','2012-07-18 14:12:22'),
(67,'qui','Murphy','fay.rashawn@example.com','2003-08-12 20:15:23','654-098-9229x10962',NULL,'af3583b96bba39a3b26abbefae180a9e0af33f9c',NULL,'2013-07-12 22:07:20','1998-05-31 17:16:13'),
(68,'dicta','Heaney','owen73@example.net','1978-11-18 00:30:31','334.689.2857x401',NULL,'e3a5d268e663271d5f4a2b1cde7572a4abb82516',NULL,'2017-11-25 22:20:05','1991-10-05 08:47:57'),
(69,'tempore','Reichel','zwitting@example.org','2018-01-09 01:28:08','566.393.2513x746',NULL,'91ceacb8443f7644a2e782844d382ba43286f33f',NULL,'2017-01-15 07:20:09','1993-10-11 15:35:42'),
(70,'est','Oberbrunner','hadley35@example.org','2022-11-15 16:36:24','462-319-2154',NULL,'68aab71eccf9af04c6f116b84477b0869f54fa55',NULL,'2002-07-13 14:26:57','2018-03-11 09:46:17'),
(71,'aut','Harber','bethany94@example.net','1976-10-07 05:30:44','083.627.5787x1548',NULL,'d6f97b97f36df47b0a8c6f6cdb2b9ed948ab4fa8',NULL,'1993-01-29 02:38:59','1995-07-23 02:41:42'),
(72,'est','Morar','arch.heller@example.org','2019-06-24 18:28:03','09263088665',NULL,'a7c5699bb3ba349608cb9248c2d46debb65027d7',NULL,'1980-05-28 07:11:02','1980-09-13 18:46:22'),
(73,'minima','Koss','gerlach.hazel@example.org','1998-02-22 17:25:11','(727)873-1833',NULL,'8020bff538e36be8f76c7af077a318dbd4c13a74',NULL,'1988-07-18 17:02:15','1993-06-07 06:58:35'),
(74,'odio','Powlowski','gabriella.fahey@example.com','1996-08-02 03:44:33','516-438-6751',NULL,'c61e374b55b9044e7261997ed8e484fec09160d4',NULL,'2015-09-11 21:45:33','2021-09-09 12:39:55'),
(75,'sint','Jaskolski','esperanza.kris@example.net','2018-01-27 06:20:10','07145181703',NULL,'db9f3f2d738c794d1fa69a6f458126b68816fa87',NULL,'1982-01-19 23:34:41','1974-04-27 18:04:43'),
(76,'provident','Collins','mills.luther@example.com','2005-06-01 03:28:43','1-406-501-9045x0959',NULL,'524831c561c13de7d9cffa5130e6d896ee40e2a3',NULL,'1995-12-03 14:24:34','2021-12-03 08:19:18'),
(77,'aut','Bradtke','beier.ralph@example.org','2000-03-10 20:27:36','+24(4)4399713922',NULL,'13ad3bc604bf3547a730c0de63e3c54aa070c6a5',NULL,'2008-06-01 17:05:30','1982-05-23 22:06:44'),
(78,'tempora','Collins','braun.madelyn@example.net','2006-11-25 12:00:33','09419465630',NULL,'353ac36446d01c50f2d627ae16309351288731ac',NULL,'1970-07-31 19:15:27','2018-04-20 07:12:40'),
(79,'sit','Ankunding','o\'conner.eugene@example.org','1971-06-03 09:06:31','(594)166-3333x3205',NULL,'c40330f43b76f8029ac87386d790c6bc1343b011',NULL,'1992-11-15 10:44:08','2012-04-30 23:28:16'),
(80,'voluptatem','Watsica','luisa.kirlin@example.org','2014-06-18 07:40:18','1-970-016-6629',NULL,'77131965f1770160de1e79dd2068ef92c2167a54',NULL,'2007-08-22 19:37:46','1990-09-03 15:25:31'),
(81,'quasi','Padberg','molly33@example.org','1989-12-02 17:09:50','1-574-469-9510',NULL,'c9a3c4fcc2e83389d80f825ca759bad98b380c61',NULL,'1988-01-15 20:00:02','1997-01-02 23:03:59'),
(82,'eaque','Schmidt','katelin35@example.org','1988-12-27 17:01:24','(751)393-2507x501',NULL,'6165b4a25d74328fc9f3f4776823a0f6e4567f3b',NULL,'2018-01-11 19:37:39','1987-08-14 11:09:46'),
(83,'et','Beer','thills@example.com','1975-06-29 18:51:14','1-741-198-7257x245',NULL,'bbfca1b3ec84f6e899d1c68db9703edc0fc71dde',NULL,'1993-08-03 12:36:12','2021-03-30 19:14:37'),
(84,'officia','Johnson','bella27@example.net','1997-03-23 10:36:09','(911)220-9203x1124',NULL,'f22496531cdabf06bacce14a10fa4e6acc7bd68d',NULL,'1994-09-17 12:41:47','2019-11-16 16:03:15'),
(85,'omnis','Thompson','tmacejkovic@example.com','1992-06-17 12:00:32','1-334-336-0619',NULL,'59d8f17a4d5a618a5abcdf78f56737b6a824a797',NULL,'2009-01-04 10:36:40','2020-09-16 02:33:32'),
(86,'perspiciatis','Mueller','pollich.leo@example.net','1980-07-31 17:58:56','+88(2)8958453599',NULL,'eb22ba0de77ec164a31beeda5b0637a8959262d7',NULL,'1993-02-23 22:03:47','2007-01-12 22:01:01'),
(87,'consequuntur','Jakubowski','julie72@example.com','1974-11-25 08:51:17','01548191477',NULL,'a9095441194ee9e832aaade70d9bcc820a83ea65',NULL,'1994-01-09 12:34:57','1996-06-29 02:45:14'),
(88,'cumque','Gutmann','eloy17@example.net','2005-09-25 22:10:32','487-438-9587x0947',NULL,'a675bf1798b09c67e84a682be0772a71d342feb8',NULL,'1978-11-04 20:44:25','1984-10-02 06:27:49'),
(89,'consectetur','Champlin','jeremie92@example.com','2015-06-04 19:32:27','126-125-3673',NULL,'ef6d9212f852771cae7a8632460ccd52d3675cc0',NULL,'2007-03-20 16:33:23','2003-06-07 09:02:31'),
(90,'qui','Hammes','greenfelder.carlee@example.net','2023-02-10 21:45:30','929-429-5598x16698',NULL,'c40d42ed3385645f56b3baae8f45208cafef082d',NULL,'1993-02-22 22:33:54','1973-06-19 04:46:48'),
(91,'natus','Will','antone.bayer@example.com','1977-05-31 04:47:35','657.994.2997x0582',NULL,'3568c092ff1c212f2de2232020381ef635e98762',NULL,'2002-01-08 06:04:58','1976-11-17 11:49:44'),
(92,'quam','Oberbrunner','owolf@example.com','2010-05-21 06:08:38','774.960.8347',NULL,'d47246886cbca99d3367df637cbb9abc7d5e8efc',NULL,'1997-04-05 11:53:22','1976-02-13 01:43:49'),
(93,'dicta','Towne','fo\'keefe@example.com','1976-11-09 12:09:29','148-238-5102x838',NULL,'c03a5740eb888c5f46cec93c559ad9d8de86c701',NULL,'2012-01-13 10:38:55','1986-04-17 20:44:03'),
(94,'autem','King','bbeer@example.net','2010-03-22 13:53:26','273.108.8501x45134',NULL,'413da885fd50e6324dbfdcd12d540edf51385582',NULL,'2002-11-15 19:25:56','2004-08-26 20:37:12'),
(95,'magnam','Konopelski','karley58@example.net','2020-08-12 22:43:18','996-743-1788x913',NULL,'ae7399b461eae5514c2e6a86b5deacd4968d32f1',NULL,'2014-05-23 06:03:53','1994-12-05 12:37:51'),
(96,'nesciunt','Fisher','xheathcote@example.org','1972-11-09 20:06:53','375-908-2201x85526',NULL,'4df4578932ba684b3739307116bdf206e240760f',NULL,'1995-12-29 06:04:02','1972-10-13 13:53:33'),
(97,'sed','Brakus','cprice@example.com','1997-06-03 07:07:05','1-185-186-9145',NULL,'e96e71141f231348c5bdacff317c3feb43c9bb51',NULL,'1986-03-30 05:43:31','2022-06-21 06:07:42'),
(98,'quidem','Greenfelder','sporer.lucinda@example.net','1982-01-14 10:53:48','369.489.2364',NULL,'a06fac0cca71ee8c21833fdf0131437b0430fd37',NULL,'1999-06-27 03:35:44','1988-09-04 02:31:37'),
(99,'nobis','Shields','rbogisich@example.org','2000-01-23 18:41:29','341-385-8146',NULL,'e90b2c6d30d8d54f596a63ca02059cd8dd0502ed',NULL,'1979-04-10 10:55:04','2003-05-21 05:09:22'),
(100,'nulla','Pfeffer','mayert.sadie@example.com','2017-01-10 21:30:53','873-578-0938x694',NULL,'e946415c648022b49bf52ebadb94bff6c060abec',NULL,'2003-05-07 10:37:57','2012-12-27 10:17:51');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_payments`
--

DROP TABLE IF EXISTS `order_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('successful','failed','payback') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_payments_order_id_foreign` (`order_id`),
  CONSTRAINT `order_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_payments`
--

LOCK TABLES `order_payments` WRITE;
/*!40000 ALTER TABLE `order_payments` DISABLE KEYS */;
INSERT INTO `order_payments` VALUES
(1,1,2.22,'failed','2004-12-15 10:54:30','2008-02-26 03:17:41'),
(2,2,305.53,'payback','2003-02-05 14:31:32','2005-08-19 15:06:22'),
(3,3,651.70,'failed','1990-01-10 16:11:11','1993-10-23 21:13:08'),
(4,4,339977.74,'payback','2011-09-10 04:39:32','1998-09-06 21:43:07'),
(5,5,76.00,'payback','2019-12-08 13:53:40','2000-07-26 22:30:03'),
(6,6,183537.00,'failed','1997-11-29 21:57:50','2019-12-01 01:46:37'),
(7,7,44725.05,'successful','1990-03-19 22:37:35','1970-05-25 10:30:04'),
(8,8,6.20,'payback','2023-09-15 17:18:36','1991-10-03 10:26:29'),
(9,9,11.64,'successful','2008-03-06 07:38:49','1983-10-06 02:14:48'),
(10,10,277.18,'successful','1999-06-17 14:15:26','1979-12-06 10:33:37'),
(11,1,7557.21,'failed','1995-01-28 15:43:37','2018-10-29 13:58:35'),
(12,2,226.83,'failed','1985-01-04 13:43:49','2001-05-23 23:31:50'),
(13,3,999999.99,'successful','1985-10-12 02:45:40','2012-04-16 05:11:34'),
(14,4,575656.58,'payback','1975-08-11 22:16:25','2008-06-15 16:53:47'),
(15,5,0.00,'payback','1980-08-24 16:02:55','2018-05-31 04:41:23'),
(16,6,943.12,'failed','2020-06-19 16:31:14','1994-10-28 23:43:44'),
(17,7,0.00,'failed','2001-02-08 19:38:46','1989-11-03 23:38:01'),
(18,8,999999.99,'payback','2003-01-18 22:44:25','1991-10-29 22:48:22'),
(19,9,0.00,'successful','1989-02-16 17:34:58','1976-06-03 00:54:13'),
(20,10,999999.99,'failed','2021-06-15 20:06:47','1988-02-11 10:09:02'),
(21,1,3691.98,'payback','1979-04-05 08:07:44','2012-10-20 15:21:30'),
(22,2,598997.37,'successful','1993-05-20 06:33:13','2017-05-10 07:11:42'),
(23,3,2.50,'failed','2020-04-13 19:47:47','1999-10-08 23:54:47'),
(24,4,35839.83,'successful','1997-08-03 00:45:16','2013-09-19 18:02:12'),
(25,5,999999.99,'failed','1971-12-26 05:46:29','2006-01-20 09:33:05');
/*!40000 ALTER TABLE `order_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_products_customer_id_product_id_unique` (`customer_id`,`product_id`),
  KEY `order_products_product_id_foreign` (`product_id`),
  CONSTRAINT `order_products_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES
(1,1,1,3083,5.95,'1978-08-09 19:05:06','2003-05-21 16:26:16'),
(2,2,2,44912,5.88,'1987-10-14 04:43:06','1972-08-20 19:42:16'),
(3,3,3,0,999999.99,'2009-11-10 09:01:48','2004-03-24 07:10:47'),
(4,4,4,165505,999999.99,'2016-01-30 20:04:10','2007-03-10 11:07:02'),
(5,5,5,36731,0.00,'2010-03-02 19:24:15','2021-05-17 06:07:26'),
(6,6,6,13930859,999999.99,'2001-11-08 06:22:05','1972-09-12 16:43:11'),
(7,7,7,1315,20772.43,'2020-09-05 19:43:21','2023-10-30 17:02:25'),
(8,8,8,176609393,999999.99,'1979-08-12 00:46:21','2014-06-12 11:33:21'),
(9,9,9,446194,314561.11,'2002-05-18 00:34:15','2015-06-18 17:37:39'),
(10,10,10,0,1268.00,'2020-12-07 23:15:25','1971-12-10 14:33:14'),
(11,11,11,0,0.00,'2001-11-16 17:24:48','1994-08-30 05:52:58'),
(12,12,12,215781,61.00,'2013-07-11 14:53:57','2017-05-24 22:40:01'),
(13,13,13,11,0.00,'2019-10-13 18:49:01','2002-04-18 20:47:01'),
(14,14,14,633,9.78,'2009-01-31 18:17:35','1993-04-29 16:39:50'),
(15,15,15,3630,999999.99,'2004-06-29 05:19:48','2014-09-11 18:40:16'),
(16,16,16,30931,609549.06,'2017-02-01 10:57:19','2012-07-17 07:15:34'),
(17,17,17,29,527.80,'1980-05-16 15:38:34','2007-03-18 08:31:18'),
(18,18,18,98395,999999.99,'2016-11-11 19:04:52','2002-11-05 17:14:27'),
(19,19,19,12,999999.99,'2002-04-06 15:16:29','2011-07-20 20:30:56'),
(20,20,20,341216139,7900.44,'2016-09-25 05:55:27','2012-10-16 14:49:35'),
(21,21,21,0,12.60,'2016-03-03 22:59:55','1991-01-18 09:04:02'),
(22,22,22,42,22.62,'1970-01-03 15:31:23','2019-01-27 05:41:47'),
(23,23,23,22125,999999.99,'2011-04-17 08:11:02','1975-01-18 23:39:21'),
(24,24,24,1305,122.70,'1987-09-29 08:47:44','1990-03-15 04:08:11'),
(25,25,25,228170,7908.20,'1982-06-26 16:40:24','2019-11-25 23:24:11'),
(26,26,26,6748434,0.00,'2006-02-14 16:02:41','2013-02-07 08:10:10'),
(27,27,27,88482,357.91,'1991-09-19 12:32:05','2003-07-09 17:19:27'),
(28,28,28,2693111,626.76,'2020-08-10 21:41:20','1972-05-26 04:21:00'),
(29,29,29,7086633,999999.99,'1970-05-01 09:15:46','2011-12-16 05:46:15'),
(30,30,30,37726659,31.60,'2014-07-11 20:37:46','2020-02-23 22:15:20'),
(31,31,31,1631,0.00,'1982-01-05 23:37:49','1986-01-28 14:59:26'),
(32,32,32,7897,19.86,'1980-09-14 09:50:21','2017-08-05 18:41:31'),
(33,33,33,850448,98.59,'1971-03-12 21:05:13','2018-09-14 17:06:36'),
(34,34,34,6297964,27903.48,'1995-02-20 21:57:55','2013-05-19 06:05:17'),
(35,35,35,233,1447.47,'1978-05-01 23:13:25','1972-01-18 03:03:26'),
(36,36,36,26069911,909796.62,'2017-08-27 14:31:43','2004-08-24 13:19:49'),
(37,37,37,35901832,1632.47,'1986-09-17 05:13:56','1994-03-15 23:46:26'),
(38,38,38,0,0.00,'1984-08-13 10:08:18','2020-09-05 10:53:32'),
(39,39,39,93703062,999999.99,'1979-10-11 03:53:23','1976-04-16 16:48:17'),
(40,40,40,606,999999.99,'2016-12-23 04:36:10','1984-05-03 10:09:59'),
(41,41,41,17,36.75,'2018-07-26 06:43:22','1971-04-17 21:36:26'),
(42,42,42,555,999999.99,'1989-04-11 01:40:54','1990-07-30 01:06:21'),
(43,43,43,69,7.86,'2011-11-19 16:43:53','1994-01-01 11:49:12'),
(44,44,44,8042716,473.87,'1971-01-19 20:53:27','2018-05-23 15:06:57'),
(45,45,45,3163868,0.00,'2018-08-04 15:41:09','1974-11-30 01:29:45'),
(46,46,46,203997,10.85,'2014-09-09 12:10:28','1994-01-19 11:39:26'),
(47,47,47,2874,0.00,'1976-02-19 05:05:22','1985-07-28 02:44:03'),
(48,48,48,391418,8.98,'1977-07-19 07:06:25','1974-09-26 15:13:42'),
(49,49,49,48,0.00,'1999-05-17 03:56:22','1975-02-16 08:48:17'),
(50,50,50,6345445,999999.99,'2000-11-28 04:24:42','2002-09-27 00:45:56'),
(51,51,51,67243,96369.91,'1985-08-08 18:02:10','1987-08-29 11:44:03'),
(52,52,52,10,6819.02,'2010-08-24 09:05:03','1992-05-24 02:35:03'),
(53,53,53,14111,52374.86,'2013-03-08 20:38:49','1991-05-15 12:26:02'),
(54,54,54,27076,999999.99,'2013-09-29 03:59:50','1994-08-02 02:02:02'),
(55,55,55,17455234,1387.69,'1983-07-29 19:53:53','1999-11-10 18:53:59'),
(56,56,56,12,3962.80,'2011-12-02 15:16:42','1992-12-11 14:53:07'),
(57,57,57,8615,0.35,'1993-12-12 21:54:34','2000-12-21 05:38:20'),
(58,58,58,0,999999.99,'2021-03-06 22:58:55','2016-12-10 18:55:01'),
(59,59,59,392,489.83,'1972-06-27 02:38:40','2003-03-23 20:55:31'),
(60,60,60,57,3.79,'1997-02-06 01:56:47','1987-07-01 15:03:18'),
(61,61,61,3,28.13,'1982-07-13 20:29:25','1996-11-17 17:38:33'),
(62,62,62,19292,0.81,'1992-07-17 10:11:35','1971-01-17 11:27:53'),
(63,63,63,1,999999.99,'1988-10-12 05:40:46','2023-03-10 10:30:58'),
(64,64,64,0,63.24,'2000-06-22 20:57:09','2020-03-09 08:13:51'),
(65,65,65,115,999999.99,'2017-04-03 16:07:27','2002-06-03 18:06:10'),
(66,66,66,0,999999.99,'1984-11-20 16:03:36','1982-10-11 00:54:25'),
(67,67,67,37678,999999.99,'1995-05-06 14:04:18','1981-01-16 02:35:01'),
(68,68,68,1,69.66,'1989-02-05 15:22:54','1991-02-24 06:12:07'),
(69,69,69,92742096,999999.99,'1993-05-30 18:31:49','1995-05-21 04:36:17'),
(70,70,70,6323592,0.00,'1988-05-22 11:00:45','2017-04-13 06:29:21'),
(71,71,71,6,999999.99,'1987-01-16 14:36:00','2004-09-07 17:39:12'),
(72,72,72,0,999999.99,'2003-06-23 23:25:51','2016-11-22 22:00:38'),
(73,73,73,21,999999.99,'1996-07-16 11:43:55','2000-07-23 11:33:55'),
(74,74,74,12932,20378.34,'2006-06-19 10:09:02','1998-06-21 08:35:33'),
(75,75,75,1325,309754.91,'1977-08-11 22:32:33','2010-05-16 04:13:25'),
(76,76,76,21302,999999.99,'1981-11-14 05:29:33','1993-12-11 21:51:56'),
(77,77,77,52454,999999.99,'1991-07-20 13:31:25','1980-08-25 15:36:39'),
(78,78,78,74783551,41900.63,'2001-08-14 19:36:16','2023-08-02 23:28:50'),
(79,79,79,40256871,233546.00,'1971-11-11 10:59:43','1991-08-12 03:37:43'),
(80,80,80,43159,4.00,'2009-01-09 17:52:32','2015-12-14 11:36:49'),
(81,81,81,130541080,255440.20,'1992-03-09 14:52:43','2004-04-26 13:54:53'),
(82,82,82,0,774857.43,'2015-09-18 10:20:36','1972-12-04 14:52:33'),
(83,83,83,1683,2538.92,'2019-08-21 01:45:51','2004-04-27 19:00:00'),
(84,84,84,52,436.17,'2006-11-18 14:03:12','1976-06-04 03:04:52'),
(85,85,85,90648718,1.94,'2011-04-21 18:53:33','1993-08-07 00:43:50'),
(86,86,86,43,5531.95,'2001-04-24 08:09:02','1995-12-01 12:28:29'),
(87,87,87,155211,3.30,'2001-02-22 16:10:28','1995-05-03 02:20:30'),
(88,88,88,58634653,29861.14,'2016-10-09 17:06:22','2011-03-02 04:16:48'),
(89,89,89,1966247,613073.26,'2015-11-03 23:25:39','1989-01-01 11:56:09'),
(90,90,90,11,999999.99,'2009-07-29 06:22:42','1992-06-03 18:38:02'),
(91,91,91,38200931,0.00,'1993-11-15 13:38:43','1985-07-18 04:27:13'),
(92,92,92,4525912,999999.99,'1993-04-09 13:37:20','1999-05-12 07:15:36'),
(93,93,93,11917485,14.71,'1973-03-01 01:15:34','1993-02-18 23:41:12'),
(94,94,94,749,38.11,'1970-04-06 04:28:05','2010-09-08 12:12:04'),
(95,95,95,2640,598.03,'1982-11-29 20:20:23','2011-12-12 17:26:30'),
(96,96,96,0,801567.00,'1979-09-17 00:32:14','1996-05-16 06:57:35'),
(97,97,97,8180,4.94,'2002-09-22 07:55:39','2011-04-14 07:43:30'),
(98,98,98,3,999999.99,'2009-11-15 13:57:49','1987-04-19 13:39:57'),
(99,99,99,36,376.92,'2023-09-02 09:29:46','2021-03-25 17:43:41'),
(100,100,100,63395684,999999.99,'1974-10-05 19:02:36','1990-05-15 17:39:26');
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `address_id` bigint(20) unsigned NOT NULL,
  `note` longtext DEFAULT NULL,
  `number` bigint(20) NOT NULL,
  `status` enum('completed','pending','delivered','canceled','in-process') NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_customer_id_address_id_unique` (`customer_id`,`address_id`),
  KEY `orders_address_id_foreign` (`address_id`),
  CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(1,1,1,'Debitis porro delectus minima et est aut. Praesentium adipisci explicabo consectetur vel eius omnis minus ipsam. Facere vitae quo impedit quasi. Tempora quia distinctio qui neque quae in.',448380086,'canceled',94.46,'1981-03-19 10:48:51','2012-01-31 13:30:17'),
(2,2,2,'Maxime perspiciatis voluptas laboriosam occaecati. Dolores et similique ratione rerum placeat mollitia rerum. Adipisci necessitatibus omnis molestiae quia soluta. Totam omnis aut ipsa omnis et iure.',593079221,'pending',0.00,'2002-08-05 05:09:27','1989-07-11 14:57:07'),
(3,3,3,'Deleniti officia consequatur eos ipsam consequatur alias architecto. Voluptatibus a mollitia necessitatibus et dignissimos a odit. Vel quo aut tenetur.',45972,'pending',2977.02,'1973-12-22 15:33:13','1979-01-08 00:28:23'),
(4,4,4,'Eos officia asperiores cum tempore dicta aut. Veritatis assumenda sint quam similique animi facere voluptatem vitae. Placeat blanditiis corporis aliquam rerum. Incidunt aspernatur aperiam non.',48,'canceled',999999.99,'1972-03-04 05:29:59','1992-10-14 17:56:58'),
(5,5,5,'Aut enim vitae earum. Sed eum hic molestiae mollitia quia repellendus sunt. Quis non ratione voluptates omnis sunt corporis.',811233121,'pending',785.33,'1981-12-27 07:04:19','1995-03-08 10:55:42'),
(6,6,6,'Consequatur dolorum maxime possimus necessitatibus excepturi quibusdam accusamus. Et quia repellat perferendis incidunt vel quam. Deserunt velit fugit error dicta non.',36286,'canceled',999999.99,'1972-06-23 02:22:45','1975-01-13 01:21:32'),
(7,7,7,'Et labore non facilis praesentium voluptas. Magnam ut nihil nemo. Et eum voluptas atque.',702689728,'completed',65625.65,'2009-12-12 21:41:07','2022-09-22 19:31:01'),
(8,8,8,'Non ex nam aliquam. Autem nisi itaque architecto laboriosam dicta. Ipsa est doloremque maiores commodi velit sunt.',80,'pending',0.00,'1976-02-21 01:30:23','2000-11-17 11:33:37'),
(9,9,9,'Beatae in impedit quod aspernatur inventore consequatur. Voluptas aut cupiditate facere tenetur. Autem est quidem consequuntur excepturi quo aut ad. Et id quia nesciunt id quis sed porro.',206518,'in-process',999999.99,'2013-07-16 04:46:34','2006-06-24 06:56:24'),
(10,10,10,'Tenetur nostrum soluta ut velit at nostrum. A optio alias eveniet aut. Animi deserunt suscipit recusandae sunt et dicta quia beatae. Enim consequatur at similique numquam.',2,'pending',17132.29,'2024-01-04 03:56:56','2021-09-22 07:50:53');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `product_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES
(1,NULL,'dolores','tmp//730f198af8130eb7a04a67dcc071c0a9.jpg','Beatae esse cupiditate omnis dolores voluptas sed repellendus. Voluptate eos sed eligendi amet minus eligendi laboriosam. Qui qui omnis eos magnam quia officia. Nisi assumenda modi enim omnis enim et.','2001-04-30 08:20:44','1992-08-15 16:55:13'),
(2,NULL,'qui','tmp//79b9b1a7ae88e0683c3219cf5faa26b0.jpg','Sunt odio vero commodi voluptates ea autem. Est nam qui dolores vitae. Ratione perferendis dolorem ut vel et et nemo. Voluptas error itaque amet iste officia impedit.','2015-01-14 03:42:33','1997-06-05 20:29:12'),
(3,NULL,'voluptas','tmp//35871a697155b3cd8ec2d68abf867462.jpg','Suscipit ut dicta omnis a quis ea iste. Et tempora voluptas corrupti. Doloribus id officiis a provident placeat enim consectetur odit. Vel vel molestiae asperiores.','2001-09-17 20:05:42','1986-06-30 12:37:05'),
(4,NULL,'enim','tmp//2599c59712fb1cc50952d0760e42e79e.jpg','Ut ratione quo aperiam est quo. Voluptatum quos recusandae est hic. Voluptates sed vero quaerat modi id maxime consequatur. Sed officiis voluptates consequatur molestiae culpa quaerat possimus.','1986-05-27 09:43:53','1973-12-06 06:21:18'),
(5,NULL,'debitis','tmp//ad1c035e84ee2c3c01cd67c05ed44014.jpg','Doloremque consequatur unde id exercitationem nihil. Et quos perspiciatis alias voluptas. Voluptates id corporis nostrum dolorum saepe.','1970-05-21 01:43:47','2018-02-10 01:37:02'),
(6,NULL,'omnis','tmp//a7f574e572fdc78af80df55677ee3089.jpg','Saepe porro nemo cupiditate unde soluta laudantium. Eum enim sit inventore excepturi aspernatur voluptatem. Dolorem est earum quaerat enim ab voluptatem eos.','1983-07-01 12:49:40','1973-08-12 02:16:09'),
(7,NULL,'est','tmp//7817873acd71601ca440269b25307af6.jpg','Sed similique eos sunt in iure suscipit et. Repudiandae veniam architecto non magni qui expedita. Soluta aliquam porro quia hic alias sit et.','2006-02-15 12:26:13','2019-01-20 20:29:18'),
(8,NULL,'numquam','tmp//14aedff75d274943ccda496b3aab260d.jpg','Ipsum amet consequatur nihil voluptatum. In ea commodi repudiandae voluptas. At libero voluptatem molestiae modi ea sit dolor. Praesentium veritatis ut iste. Ut fugit consequatur quidem ducimus voluptates.','1993-02-18 16:17:35','1987-10-27 03:09:48'),
(9,NULL,'dolorem','tmp//2caa8a98fa3534799df0281d17b97252.jpg','Vitae qui rem pariatur sint. Perspiciatis qui qui ex voluptatibus. Magni molestiae ea aut quibusdam qui.','1985-09-03 22:12:21','1970-08-08 14:36:11'),
(10,NULL,'et','tmp//562615ffcb7d31661c98f8e978d66347.jpg','Beatae harum et architecto quae. Vel iste iusto excepturi quo deleniti veniam facere. Aut eos cumque labore ut. Est et sunt aspernatur sunt reprehenderit enim non. Unde eveniet rerum ratione sunt aut.','2002-12-01 21:56:31','2015-02-07 10:16:10'),
(11,NULL,'et','tmp//a5cce4a56673b4859299daae13ba4514.jpg','Debitis et dolorum qui assumenda qui molestiae. Ducimus quia esse inventore et aut. Ab optio natus et. Debitis repellat odit ipsum.','2004-12-03 00:58:03','2003-03-01 21:28:11'),
(12,NULL,'doloremque','tmp//0f37b357955d50806faaf90096a8aad2.jpg','Dolorem laborum molestiae ipsam aut ut hic. Reprehenderit odio veritatis dolores quia quia eligendi nesciunt illo. Omnis molestiae maxime doloremque ad.','1971-08-17 01:09:37','2010-09-16 15:18:43'),
(13,NULL,'expedita','tmp//29b1e9e9a4a0a511bed08a2a9ee21473.jpg','Exercitationem quibusdam et laboriosam doloribus possimus doloribus. Perspiciatis fugit culpa expedita est quaerat. Ipsum quod animi nihil exercitationem. Magni natus harum quaerat.','2013-08-27 01:08:49','1977-06-20 08:03:13'),
(14,NULL,'deserunt','tmp//f3cf0ebf03c94fc2536de213b00cdb88.jpg','Magnam numquam asperiores explicabo molestiae repellat ea culpa et. Necessitatibus blanditiis expedita aut sequi magni et. Quis consectetur non vitae ipsum distinctio.','2001-11-19 00:34:57','2019-03-07 00:29:01'),
(15,NULL,'omnis','tmp//a576193eac912fb420326d4f21825c6a.jpg','Quos nisi neque est enim perspiciatis optio aut. Minima et qui et autem ipsum nemo ab. Provident vitae praesentium est quaerat.','2013-11-05 22:14:46','2018-11-22 14:06:20');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_comment_votes`
--

DROP TABLE IF EXISTS `product_comment_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_comment_votes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `product_comment_id` bigint(20) unsigned NOT NULL,
  `vote` enum('LIKE','DISLIKE') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_comment_votes_customer_id_product_comment_id_unique` (`customer_id`,`product_comment_id`),
  KEY `product_comment_votes_product_comment_id_foreign` (`product_comment_id`),
  CONSTRAINT `product_comment_votes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_comment_votes_product_comment_id_foreign` FOREIGN KEY (`product_comment_id`) REFERENCES `product_comments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_comment_votes`
--

LOCK TABLES `product_comment_votes` WRITE;
/*!40000 ALTER TABLE `product_comment_votes` DISABLE KEYS */;
INSERT INTO `product_comment_votes` VALUES
(1,1,1,'LIKE','1974-09-30 05:42:09','1974-04-08 02:18:05'),
(2,2,2,'DISLIKE','1987-08-09 14:54:16','1999-12-20 22:13:37'),
(3,3,3,'LIKE','1988-05-29 04:59:06','1973-10-21 10:50:22'),
(4,4,4,'DISLIKE','2002-09-02 11:33:46','2020-12-18 04:00:53'),
(5,5,5,'LIKE','1993-08-30 19:00:58','1998-03-29 04:21:33'),
(6,6,6,'LIKE','1984-04-05 14:11:52','2011-05-31 15:59:53'),
(7,7,7,'DISLIKE','1983-12-19 20:18:36','1993-09-09 00:13:24'),
(8,8,8,'DISLIKE','1997-07-29 00:16:13','2017-07-31 04:36:35'),
(9,9,9,'LIKE','1986-04-07 08:25:33','2000-04-26 09:20:28'),
(10,10,10,'DISLIKE','2001-12-20 23:57:11','2005-06-15 09:31:07'),
(11,11,11,'LIKE','1978-10-25 02:07:03','2002-03-31 23:13:50'),
(12,12,12,'DISLIKE','1975-01-11 19:09:43','2000-05-18 20:59:03'),
(13,13,13,'LIKE','1999-04-27 01:27:57','1973-08-07 13:09:47'),
(14,14,14,'LIKE','2008-12-06 09:18:18','2006-11-06 16:32:09'),
(15,15,15,'LIKE','1984-11-06 09:28:47','1988-06-19 23:13:28'),
(16,16,16,'DISLIKE','1992-05-23 00:22:25','2021-03-24 20:16:03'),
(17,17,17,'LIKE','1981-01-23 17:17:41','2014-08-26 11:01:38'),
(18,18,18,'LIKE','1986-07-27 20:33:16','1972-01-24 02:12:36'),
(19,19,19,'LIKE','1974-03-26 02:04:16','1979-10-31 10:34:58'),
(20,20,20,'DISLIKE','2016-07-06 14:01:44','1984-07-17 07:44:08'),
(21,21,21,'LIKE','1972-06-13 23:38:44','2007-06-26 15:07:14'),
(22,22,22,'DISLIKE','2001-11-09 11:35:47','1974-02-25 22:29:09'),
(23,23,23,'LIKE','1986-08-03 02:10:54','2022-08-10 00:51:08'),
(24,24,24,'LIKE','1989-03-19 03:46:21','1974-02-16 13:24:12'),
(25,25,25,'LIKE','1981-12-26 09:26:22','1973-05-13 02:50:50'),
(26,26,26,'DISLIKE','2003-01-30 20:08:23','2018-05-08 04:03:19'),
(27,27,27,'DISLIKE','2002-06-27 21:24:36','2013-08-31 03:57:31'),
(28,28,28,'DISLIKE','2006-09-26 10:33:12','1988-04-13 10:21:30'),
(29,29,29,'DISLIKE','2023-11-21 19:41:58','1993-12-15 18:23:40'),
(30,30,30,'LIKE','2011-09-10 13:53:54','1986-05-20 18:12:06'),
(31,31,31,'LIKE','2010-06-05 03:24:42','2017-07-19 07:41:25'),
(32,32,32,'LIKE','2014-04-17 23:11:39','1997-01-27 00:33:08'),
(33,33,33,'LIKE','1970-08-23 17:47:43','1992-11-23 06:29:12'),
(34,34,34,'DISLIKE','2010-02-24 16:39:22','1979-03-19 03:58:00'),
(35,35,35,'LIKE','2018-11-22 15:33:40','1970-12-04 17:24:13'),
(36,36,36,'DISLIKE','1992-06-02 16:20:23','2015-02-22 00:00:19'),
(37,37,37,'LIKE','1999-01-17 11:28:40','1975-05-25 06:16:01'),
(38,38,38,'DISLIKE','2011-06-03 08:00:44','1972-08-26 18:13:20'),
(39,39,39,'DISLIKE','1981-02-22 17:16:27','2015-09-20 04:01:58'),
(40,40,40,'DISLIKE','1975-10-18 18:36:13','2016-08-06 00:03:07'),
(41,41,41,'DISLIKE','2003-10-31 06:37:04','1980-02-26 14:50:22'),
(42,42,42,'LIKE','2019-11-22 04:49:35','2021-02-14 14:35:28'),
(43,43,43,'DISLIKE','1989-11-12 06:28:44','1973-09-08 17:36:25'),
(44,44,44,'LIKE','2019-03-24 04:08:55','1970-06-10 19:13:38'),
(45,45,45,'DISLIKE','1983-05-17 22:34:56','1977-10-17 02:55:51'),
(46,46,46,'DISLIKE','1971-07-12 07:40:18','2001-03-30 11:27:27'),
(47,47,47,'DISLIKE','2007-11-15 03:08:10','2009-06-07 02:40:59'),
(48,48,48,'DISLIKE','1997-01-21 17:32:57','2018-07-22 09:43:20'),
(49,49,49,'LIKE','2009-05-26 17:44:31','1989-01-02 22:42:09'),
(50,50,50,'LIKE','1995-01-08 13:37:58','1999-06-15 15:53:16'),
(51,51,51,'DISLIKE','2023-11-08 22:18:21','2016-02-17 21:05:51'),
(52,52,52,'DISLIKE','1999-08-14 01:00:25','2003-03-24 05:37:34'),
(53,53,53,'DISLIKE','2017-08-17 12:19:40','1974-05-26 05:52:35'),
(54,54,54,'LIKE','2004-06-01 21:27:21','1979-05-13 00:30:31'),
(55,55,55,'DISLIKE','1992-04-07 01:26:58','1985-12-22 15:03:35'),
(56,56,56,'LIKE','1981-07-06 20:59:39','1992-11-19 18:54:45'),
(57,57,57,'DISLIKE','2022-06-14 15:38:43','1997-02-22 16:07:15'),
(58,58,58,'LIKE','1971-11-22 21:15:54','2018-02-15 05:21:56'),
(59,59,59,'DISLIKE','1979-02-17 02:26:26','2000-10-11 04:20:33'),
(60,60,60,'LIKE','1979-03-26 16:27:57','2000-06-28 15:21:14'),
(61,61,61,'DISLIKE','1976-11-26 18:11:59','2017-10-15 18:32:21'),
(62,62,62,'DISLIKE','1977-07-29 02:29:10','1974-10-03 09:51:33'),
(63,63,63,'LIKE','2007-05-20 04:24:24','1986-12-31 21:15:15'),
(64,64,64,'LIKE','1995-07-29 14:23:37','2003-01-17 12:27:06'),
(65,65,65,'DISLIKE','1994-04-09 13:43:43','1986-07-12 09:53:05'),
(66,66,66,'LIKE','1996-05-29 22:28:57','1974-01-25 01:56:16'),
(67,67,67,'LIKE','2006-05-22 04:49:28','2012-07-06 13:47:38'),
(68,68,68,'LIKE','1970-10-31 16:24:08','1976-05-05 18:59:15'),
(69,69,69,'DISLIKE','1986-03-06 19:06:22','1975-01-12 17:58:58'),
(70,70,70,'DISLIKE','1988-11-26 04:05:27','2016-08-30 16:24:56'),
(71,71,71,'LIKE','1980-06-08 05:10:20','1984-05-18 10:20:23'),
(72,72,72,'LIKE','2021-08-15 05:30:34','1981-05-03 02:52:50'),
(73,73,73,'LIKE','2002-09-05 06:58:09','1971-03-07 09:47:13'),
(74,74,74,'LIKE','1972-12-24 10:23:06','1991-12-24 13:27:05'),
(75,75,75,'DISLIKE','2002-01-31 00:58:38','1996-01-16 03:48:52'),
(76,76,76,'DISLIKE','1994-01-28 13:16:16','1980-10-08 19:43:10'),
(77,77,77,'LIKE','1988-10-27 08:11:58','2008-09-17 16:33:26'),
(78,78,78,'LIKE','2010-05-06 05:33:24','1991-02-06 12:16:20'),
(79,79,79,'DISLIKE','1985-08-13 08:35:13','1972-02-10 00:36:42'),
(80,80,80,'DISLIKE','1996-03-09 13:00:28','1979-12-21 04:00:09'),
(81,81,81,'LIKE','2019-09-06 05:58:34','1994-01-10 23:05:14'),
(82,82,82,'DISLIKE','1974-04-03 18:55:05','1993-09-16 02:21:43'),
(83,83,83,'DISLIKE','2011-10-25 18:33:24','2016-06-28 14:54:47'),
(84,84,84,'DISLIKE','1970-09-16 20:47:55','1994-05-26 14:58:25'),
(85,85,85,'DISLIKE','2020-05-21 17:08:02','1984-03-01 16:05:59'),
(86,86,86,'LIKE','2011-06-30 21:43:31','1976-11-29 07:15:17'),
(87,87,87,'DISLIKE','1978-10-23 03:30:44','2011-05-02 03:09:22'),
(88,88,88,'LIKE','2021-06-19 08:29:59','2022-11-01 05:29:44'),
(89,89,89,'DISLIKE','1985-08-28 11:58:54','2009-02-03 19:08:33'),
(90,90,90,'LIKE','2005-03-20 11:05:03','1993-12-16 01:50:47'),
(91,91,91,'LIKE','2014-10-14 18:04:44','2002-12-05 05:12:27'),
(92,92,92,'LIKE','2002-07-13 03:35:55','2019-01-14 20:32:27'),
(93,93,93,'DISLIKE','1985-12-28 17:37:40','2015-12-08 10:28:18'),
(94,94,94,'DISLIKE','2013-10-07 01:43:42','2006-08-07 16:23:10'),
(95,95,95,'LIKE','1971-10-08 19:38:19','2023-12-05 12:35:07'),
(96,96,96,'DISLIKE','2002-05-30 10:27:37','1989-03-16 07:04:02'),
(97,97,97,'DISLIKE','2004-09-06 14:21:54','1995-09-16 06:34:19'),
(98,98,98,'DISLIKE','2013-06-16 07:01:20','2004-04-04 01:25:42'),
(99,99,99,'DISLIKE','2015-06-27 07:30:36','1979-09-29 20:38:12'),
(100,100,100,'DISLIKE','1984-10-10 13:56:14','1980-09-22 01:18:29');
/*!40000 ALTER TABLE `product_comment_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_comments`
--

DROP TABLE IF EXISTS `product_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `body` longtext NOT NULL,
  `like` int(11) NOT NULL DEFAULT 0,
  `dislike` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_comments_product_id_foreign` (`product_id`),
  KEY `product_comments_customer_id_foreign` (`customer_id`),
  CONSTRAINT `product_comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_comments`
--

LOCK TABLES `product_comments` WRITE;
/*!40000 ALTER TABLE `product_comments` DISABLE KEYS */;
INSERT INTO `product_comments` VALUES
(1,1,1,'Omnis aliquid ut qui sunt cum labore. Cumque et enim et. Nisi molestiae laudantium aliquid beatae et. Natus sunt adipisci quis totam nihil natus cumque.',8,2,'2004-03-27 08:17:38','2008-11-15 06:51:15'),
(2,2,2,'Natus quam porro dolor temporibus est. Dolorem cupiditate quae sit quibusdam sint perferendis accusantium. Consequuntur at itaque qui rerum ad.',2,6,'2004-02-17 10:59:47','2014-07-14 05:19:32'),
(3,3,3,'Repellendus voluptatem accusamus incidunt enim doloribus. Earum et ex soluta omnis animi. Fuga quos est quo voluptatem voluptate. Sit consequatur nihil hic rem.',9,5,'2017-09-07 07:14:03','1983-08-29 07:26:13'),
(4,4,4,'Maiores et et odit dolores ut dolore. Dolorum est quidem aut ab eius dolores quia suscipit. Asperiores dolor fugit ipsum quam magni ut natus dolorem.',7,5,'2001-09-04 07:15:19','1995-11-11 23:46:08'),
(5,5,5,'Illum voluptatibus aliquam dolor voluptates quis adipisci. Quasi rerum ipsam maxime qui exercitationem expedita. Incidunt adipisci unde et voluptates iusto quod nihil. Dignissimos est qui debitis id.',2,2,'1975-12-01 05:22:33','2016-05-28 19:19:40'),
(6,6,6,'Illum excepturi sit saepe enim. Qui aut sequi impedit nihil deserunt voluptatem maxime. Voluptatem nemo dolores et consequuntur sit praesentium.',8,6,'1973-10-03 16:02:10','2003-09-17 00:58:33'),
(7,7,7,'Similique quos asperiores consequuntur at velit. Corrupti nihil voluptatem ut sit. Eius ut quos rem a recusandae eligendi.',7,6,'1995-03-25 21:17:58','1970-12-19 18:47:40'),
(8,8,8,'Ab rerum aut voluptate fugit iusto. Et accusamus molestiae ipsa nemo. Iste quis odio ut aut quod ut aut. Aut earum quam impedit nostrum ipsam dolor.',2,4,'1994-04-17 07:46:21','1972-11-24 13:15:01'),
(9,9,9,'Ipsam quo iusto maiores quisquam a facilis omnis vel. Dolor tenetur nulla consequuntur ab aut sit odit. Facere in et fugiat quia nostrum labore. Ex ipsa temporibus modi modi voluptas est quis.',1,8,'1992-11-11 13:13:33','2020-10-30 05:51:26'),
(10,10,10,'Quis ea officia velit enim error sint dolorum. Et quia et odio vel fugiat. Enim consequatur dignissimos temporibus sapiente molestias accusantium. Excepturi aliquam exercitationem aut.',0,6,'1979-02-06 19:53:04','2004-12-24 02:15:13'),
(11,11,11,'Sed iste omnis aliquam qui quisquam ut. Dolores occaecati itaque occaecati quo nostrum.',7,1,'2023-04-04 00:42:20','2022-05-23 22:24:40'),
(12,12,12,'Quia soluta autem non tenetur. Reiciendis laborum ipsum sit animi. Voluptas temporibus reprehenderit qui sed. Ipsam occaecati sed in laudantium perferendis in ea.',7,9,'2006-07-31 21:26:31','1990-08-09 10:08:22'),
(13,13,13,'Et rem magni natus voluptatum dolores. Quisquam necessitatibus eveniet voluptatem earum voluptatum rem assumenda. Nostrum eaque quas eveniet earum in atque.',1,6,'1985-07-24 22:16:34','1988-10-20 04:57:47'),
(14,14,14,'Aut corrupti et nostrum quis consequatur facere. Dolore earum sed non qui ut et. Alias nam aliquid consequatur asperiores modi aliquid ipsa.',0,2,'2005-04-30 04:23:00','1979-12-19 18:59:02'),
(15,15,15,'Incidunt non consectetur ducimus repudiandae repellendus animi. Ut eos et laudantium aspernatur deleniti dolorum. Quo mollitia dignissimos et necessitatibus pariatur blanditiis quasi voluptate. Dolorum error eveniet qui officia eos.',4,1,'2004-10-11 06:04:04','2023-06-13 06:17:14'),
(16,16,16,'Ullam consectetur accusamus maiores nisi voluptatibus porro. Sint ut architecto explicabo quam et ullam suscipit ipsam. Est labore cum eos perferendis. Eligendi amet nulla sunt ipsam officia sunt.',3,7,'1994-11-30 23:15:03','1999-11-27 16:24:48'),
(17,17,17,'At tempora quod pariatur molestias. Animi qui sequi est a voluptas. Omnis accusantium ab sint et dolorem. Est doloribus animi omnis quam nihil.',7,2,'1986-05-12 18:47:21','2011-12-16 07:22:10'),
(18,18,18,'Eaque sed sapiente odio. Placeat temporibus consequatur doloremque harum aut. Numquam culpa cumque qui corrupti sit nisi.',8,5,'1980-01-05 04:25:46','1988-10-25 00:15:04'),
(19,19,19,'Voluptates molestias magnam ipsa. Quisquam quas et iusto.',3,2,'2000-06-09 19:11:04','2021-09-03 06:39:15'),
(20,20,20,'Laudantium alias nostrum voluptatem temporibus autem velit iusto accusamus. Dicta delectus quo laudantium. Soluta nam doloremque ipsa.',7,8,'2019-11-05 14:25:17','2007-07-13 02:38:23'),
(21,21,21,'Temporibus tempora delectus optio. Ipsum quia a molestias assumenda rerum consequatur. Ipsum incidunt iure aut asperiores modi libero quasi qui. Similique ullam qui a iure consequatur maiores earum.',0,7,'2001-03-31 07:03:35','1989-04-05 15:11:32'),
(22,22,22,'Ut est quia error recusandae eos dignissimos. Sunt modi ab est blanditiis non rem. Aliquam placeat quia voluptatem eum aut repellendus corrupti est.',6,3,'2014-04-11 11:14:43','1999-03-11 23:52:30'),
(23,23,23,'Quo omnis consequatur rerum eum nulla quia esse. Aspernatur velit optio aut optio. Et dolores corporis incidunt earum aut omnis pariatur tempore.',5,0,'1979-06-26 12:14:40','2002-05-24 18:00:15'),
(24,24,24,'Et facere tempore ducimus nostrum. Et esse veritatis quod voluptatem. Praesentium aperiam quos esse rerum perferendis perferendis tenetur.',5,2,'2000-08-31 22:46:12','2007-12-10 06:05:17'),
(25,25,25,'Odio id doloremque repellat non nihil. Ipsum earum possimus vitae nemo et.',1,7,'1987-10-07 14:01:23','2021-01-06 01:51:20'),
(26,26,26,'Consequatur eum reiciendis ut laudantium animi consectetur aspernatur. Provident ut sit eius fugiat corrupti sed. Quasi sit recusandae consectetur.',6,1,'1995-08-17 07:31:45','1971-09-08 00:20:30'),
(27,27,27,'Iure qui ullam minus sit iusto sunt. Perspiciatis laborum quia voluptatem velit cupiditate tempora facilis. Cupiditate quis vero tempora dolores accusamus soluta. Saepe enim ducimus amet impedit quis.',4,7,'1980-08-26 17:12:34','1997-04-09 08:48:07'),
(28,28,28,'Quo dolore provident voluptas alias et officia nihil. Placeat commodi deserunt qui esse unde. Suscipit quia ducimus ut omnis facere id voluptatibus.',6,8,'1984-10-27 12:41:22','2001-02-08 15:55:02'),
(29,29,29,'Dolorum nemo accusamus omnis excepturi non ab iste dicta. Porro in non perferendis aut ducimus officia minus. Placeat sed optio quia odit. Quam reprehenderit illum dolorum dolore libero animi delectus.',3,1,'1986-06-20 06:56:53','1995-05-28 23:13:27'),
(30,30,30,'Repudiandae omnis ratione earum ducimus et maxime. Magnam nam dolores nobis enim qui sed sed totam. Enim omnis totam quam totam illo.',5,3,'2009-04-01 14:52:00','2012-07-08 04:53:12'),
(31,31,31,'Eum maiores exercitationem sapiente ea iure atque. Nihil corrupti non qui perspiciatis voluptatem non exercitationem. Repellat animi necessitatibus ipsum rerum qui autem impedit et. Molestiae ipsam tempore enim mollitia non et fugiat.',6,0,'1981-02-27 14:24:29','1982-04-19 22:44:07'),
(32,32,32,'Nobis qui nihil quis eum. Doloribus temporibus porro quis maiores. Est sapiente vel aut illo eos. Delectus aut necessitatibus ratione iusto.',0,5,'1986-04-12 02:54:05','2015-02-23 13:54:12'),
(33,33,33,'Itaque accusantium itaque nihil nostrum asperiores. Quisquam cupiditate maxime nobis quidem laborum sit quia. Repellat est enim excepturi natus laboriosam.',9,7,'2000-05-06 03:57:56','1972-03-29 08:46:43'),
(34,34,34,'Et soluta sit repudiandae qui. Optio sapiente sit dolores porro consequatur nulla molestiae. Quo magnam cupiditate doloremque impedit eaque voluptatem quasi magni.',7,0,'1994-07-29 10:55:15','1999-06-27 13:16:16'),
(35,35,35,'Officiis suscipit ipsam rerum at. Aut illum dolor adipisci eum fuga est. Temporibus sint incidunt repudiandae nostrum hic nisi. Sapiente perspiciatis hic rerum quidem voluptas aut.',9,1,'1994-06-29 15:41:48','2000-02-14 01:08:55'),
(36,36,36,'Error ut aliquam sit est facere consequatur nulla. Est unde voluptate eum eveniet sequi nesciunt occaecati nemo. Minima sint aliquam enim veniam voluptatem deserunt in omnis.',7,0,'2014-11-19 05:57:31','1971-10-12 16:53:17'),
(37,37,37,'Quia eius porro et quae enim reprehenderit. Inventore consequuntur alias nihil dolores ullam voluptas corrupti numquam.',6,6,'1990-05-22 23:33:07','1989-04-15 05:03:45'),
(38,38,38,'Alias totam corrupti et. Distinctio voluptate nisi est aut. Suscipit maiores totam aut possimus et nam nobis. Odit at voluptas sed sit.',2,9,'1990-03-02 15:20:44','1976-06-05 11:05:05'),
(39,39,39,'Dignissimos numquam ad deleniti voluptas. Et error dolor quia cupiditate ducimus. Impedit dignissimos animi vel nemo dolores quisquam perspiciatis. Aut architecto et aliquam sint numquam molestiae.',5,7,'2002-11-14 03:03:18','1998-01-30 00:29:13'),
(40,40,40,'Et facere magni nemo doloribus tenetur consectetur aliquam. Quas illum quia et rem in corrupti quas. Deleniti tempore incidunt dolores et. Quibusdam ut distinctio facilis recusandae omnis consectetur et.',4,9,'1995-06-18 14:50:25','2023-05-08 11:10:21'),
(41,41,41,'Reiciendis magni totam fuga sint saepe quam. Ipsam qui hic qui nisi animi occaecati est. Ab quod ut voluptatem rem cupiditate debitis nam accusantium.',1,5,'2002-08-23 13:15:34','1971-08-31 10:01:34'),
(42,42,42,'Maxime et nesciunt a quas qui quis eum a. Perspiciatis eos blanditiis sit et sed quia. Vel sed cum maxime fugiat rerum quia.',6,3,'2017-06-05 23:37:55','2021-01-15 23:59:27'),
(43,43,43,'Laboriosam ratione provident doloribus est omnis doloribus enim. Quis eos sint omnis voluptate aut numquam atque nihil.',2,5,'1971-10-27 18:37:25','1981-04-17 04:17:00'),
(44,44,44,'Non aut natus rerum sit. Ipsum quos neque perspiciatis illo vel. Officia itaque alias nihil.',4,7,'1997-01-05 23:46:05','2006-12-16 05:15:50'),
(45,45,45,'Quia accusamus eum dolorum voluptas temporibus illum et minus. Repellat at nihil qui debitis quis. A nisi soluta animi deserunt natus vero aut. Numquam ea quia dolor. Voluptatem nam dicta dignissimos officia repellendus corrupti.',4,9,'1978-10-19 15:34:11','2017-01-07 06:58:32'),
(46,46,46,'Nulla exercitationem eum labore nostrum et. Est aut magnam earum quis eius.',6,8,'1976-01-19 23:54:09','2009-09-01 09:13:26'),
(47,47,47,'Voluptatibus odit et explicabo voluptatibus sit. Quia et sed est voluptas porro excepturi architecto. Earum ut minus dolores doloremque aut enim mollitia. Sunt laudantium enim blanditiis cum omnis nihil.',0,2,'2019-11-12 16:39:15','2019-01-27 07:31:26'),
(48,48,48,'Omnis nesciunt suscipit harum sit. Qui sit qui beatae ut. Et perferendis placeat sunt nam sit. Qui tempora et aliquam eum.',6,3,'2014-09-26 11:37:43','1975-03-02 19:41:12'),
(49,49,49,'Aspernatur incidunt voluptates laudantium quia qui. Odio itaque aut id.',1,9,'1986-03-02 03:00:53','1979-07-25 02:28:11'),
(50,50,50,'Sunt necessitatibus saepe nobis. Vel eius est reiciendis laboriosam iure. Expedita nesciunt temporibus quisquam rerum sed non. Molestiae omnis voluptatum voluptatem quae et.',1,0,'1978-02-13 10:57:14','1982-11-18 03:15:44'),
(51,51,51,'Quaerat ea placeat et harum corrupti omnis. Et nihil dolorem totam velit repellat enim. Eos veritatis et omnis eum ullam. Praesentium tempora ipsam nisi accusamus est eos.',6,1,'1986-11-09 15:37:43','1988-09-06 21:13:59'),
(52,52,52,'Cumque similique nihil delectus. Libero quidem aliquam blanditiis quod. Porro odio impedit velit aut quam. Molestiae officiis tempore rerum corrupti.',6,9,'1991-01-25 00:24:01','2009-11-08 16:24:34'),
(53,53,53,'Numquam atque modi beatae quidem fugiat. Qui omnis non commodi autem vitae. Tenetur maiores dolores libero aut asperiores nisi.',8,2,'1994-06-03 07:49:26','1972-05-12 06:05:00'),
(54,54,54,'Architecto ipsum consequatur corporis non. Ad perferendis ex non facilis modi quasi et. Maxime et vitae distinctio provident.',1,0,'2020-03-14 04:27:51','1980-03-05 17:40:05'),
(55,55,55,'Nostrum tenetur libero distinctio non necessitatibus. Est sed natus quas blanditiis. Odit dolorum amet a enim libero est accusamus. Ut unde et in doloribus illum dolor.',2,9,'2010-02-21 17:42:00','2005-09-04 00:19:17'),
(56,56,56,'Asperiores repellat doloribus adipisci qui eum magni ab. Voluptatem expedita rerum velit illo sunt labore beatae. Quaerat sapiente temporibus cumque tempora minus exercitationem omnis. Non adipisci ex voluptatum.',8,0,'1989-12-09 15:42:52','2000-10-24 02:13:00'),
(57,57,57,'Cupiditate sit quaerat rem ab asperiores dolorem. Iure sequi et sed aut. Libero cumque maxime necessitatibus nihil blanditiis consequatur. Sunt nemo asperiores voluptas architecto libero laudantium quos. Quia qui sint iusto officiis occaecati aut rerum voluptatem.',0,8,'2001-11-22 08:33:24','2006-06-13 22:45:57'),
(58,58,58,'Sequi molestiae harum ut est corporis. Quo non nulla qui non consectetur ipsa nobis enim. In quis beatae aliquam qui. Eum hic dignissimos dolore voluptas beatae beatae eveniet porro.',1,2,'1984-11-22 19:28:55','1979-11-25 22:53:11'),
(59,59,59,'Eaque in aut non vel delectus in repellat. Vel eligendi quae excepturi eligendi magnam. Deserunt quibusdam cupiditate et culpa amet quo quia rem.',3,1,'1993-09-02 06:22:08','2016-08-06 01:21:12'),
(60,60,60,'Vel possimus adipisci consequuntur molestias veritatis. Et doloremque non ipsa quis excepturi. Libero rerum reprehenderit sed voluptatem nihil. In in molestiae vitae voluptatum praesentium.',2,9,'1994-06-19 04:53:17','2003-03-31 08:28:50'),
(61,61,61,'Consequatur veniam voluptatem ut similique eius unde. Numquam atque et in suscipit provident modi rerum. Repellendus reiciendis unde rerum eaque vel voluptatem commodi.',7,0,'1984-07-04 17:50:28','1989-05-07 00:28:51'),
(62,62,62,'Molestias suscipit quos natus consectetur tenetur dolor. Quos qui autem architecto corrupti consequatur sunt voluptatem. Vel consectetur libero quo. Delectus aut minima recusandae error suscipit est harum. Voluptatum in qui excepturi dolores repellat aut velit.',7,2,'1988-12-01 05:11:40','1999-01-30 10:39:15'),
(63,63,63,'Deleniti consequatur ut laborum aperiam amet. Excepturi adipisci et illo aut ab. Dolores similique ratione aut dolorum expedita repellendus ut.',0,0,'1987-02-21 03:54:19','1999-06-24 15:36:28'),
(64,64,64,'Odit natus et adipisci eveniet. Nobis omnis placeat neque nesciunt sit porro temporibus. Architecto et voluptatibus earum corporis earum. Perspiciatis eius quo omnis corrupti quasi hic.',4,3,'2020-01-22 19:44:20','1978-10-18 21:00:14'),
(65,65,65,'Libero nostrum provident provident non dolores. Hic quod animi praesentium quae. Voluptatibus beatae porro ut nihil ducimus. Itaque aspernatur ipsum et. Eum ea est repellendus voluptate est iusto beatae.',2,4,'1974-07-26 19:41:16','1971-01-04 08:13:01'),
(66,66,66,'Sint rerum est dolor quia nisi. Veniam et voluptate enim rerum. Earum velit est ut nostrum. Ea eveniet assumenda rerum odit excepturi.',2,9,'2007-04-20 17:47:55','1979-11-24 10:22:32'),
(67,67,67,'Voluptatem nam non odit. Neque repellendus assumenda ab totam. Consequatur illo corrupti facilis. Maxime et laudantium impedit inventore pariatur.',2,6,'1997-01-11 16:27:07','1995-08-12 00:36:23'),
(68,68,68,'Qui doloribus dolores sed quo quod voluptatem. Et et debitis cumque blanditiis cumque. Nulla distinctio tenetur magni alias. Eos qui accusamus ut rerum et qui saepe ratione.',7,5,'2013-09-21 16:03:33','1989-09-20 00:37:56'),
(69,69,69,'Voluptatem necessitatibus nemo possimus exercitationem totam tenetur et optio. Enim aut a inventore. Sint officia consequatur esse optio voluptates tempora.',4,2,'1974-02-04 18:36:44','2005-07-02 05:35:47'),
(70,70,70,'Sit eveniet quibusdam ratione natus sint. Iure sunt quidem error consectetur. Suscipit et non eveniet voluptas maxime voluptates sequi.',8,4,'2008-08-02 04:31:37','2021-08-25 05:05:04'),
(71,71,71,'Sed beatae autem laudantium sed quae laborum ipsa modi. Sunt atque et recusandae et nisi suscipit. Eveniet necessitatibus omnis natus eos maxime impedit.',0,8,'2004-02-02 21:32:39','2017-10-05 20:04:27'),
(72,72,72,'Ex ad aliquam sit. Voluptas excepturi minima mollitia aut. At totam ratione ut ut saepe. Minima non sunt fugit incidunt.',2,6,'1991-11-03 19:11:26','1999-03-11 09:57:45'),
(73,73,73,'Culpa autem rerum eum mollitia voluptas. Tempore sed ex velit ut impedit. Doloribus alias dolorum qui minima. Et quasi qui debitis itaque sunt et.',7,4,'2016-08-25 00:02:35','2022-08-02 16:27:03'),
(74,74,74,'Quia mollitia iste libero temporibus aperiam quos eum. Labore qui minima eius nemo ex iure. Aut qui fuga pariatur corrupti. Est et rerum temporibus omnis.',4,8,'1975-10-31 18:55:09','1984-10-08 08:34:59'),
(75,75,75,'Omnis repellendus quo enim corrupti dignissimos voluptate. Alias non laborum labore molestias sunt. Laudantium consequatur suscipit veritatis autem. Quia sed excepturi sunt autem.',8,3,'2009-07-06 11:17:40','1981-10-31 13:18:08'),
(76,76,76,'Omnis nemo velit officiis nihil. Dolor aut dolore rerum. Quos voluptatem omnis ut corporis alias. Sint cumque explicabo fugit vero libero. Dicta eius suscipit repellat sit natus cumque.',7,7,'1994-10-25 13:06:02','1996-05-22 02:09:40'),
(77,77,77,'Et omnis placeat atque voluptatem. Quam sint sed rerum eum dicta et. Quis fugiat expedita odio voluptatem molestiae rem quasi deleniti.',6,4,'2001-05-28 04:43:17','2022-06-29 23:53:10'),
(78,78,78,'Molestiae omnis molestiae est voluptates minima sequi similique odit. Ullam in et iste praesentium. Dignissimos voluptatibus eligendi nam sit sint voluptas.',3,9,'2017-07-31 04:53:15','2014-11-11 15:05:20'),
(79,79,79,'Quisquam itaque in molestias consequatur perferendis laboriosam voluptatem. Itaque dicta cum explicabo commodi eos eveniet eaque. Eos cumque nobis dolor distinctio. Repellendus minima facere delectus. Autem id amet error debitis expedita nostrum maiores.',1,0,'2021-08-06 19:43:09','1992-10-22 19:31:43'),
(80,80,80,'A placeat id omnis quia. Inventore corporis voluptatem ad illo molestias ab beatae magni. Et magnam voluptates laborum dolores eum. In aut dignissimos suscipit.',1,0,'2017-12-28 23:52:25','2021-12-12 12:03:56'),
(81,81,81,'Quasi natus iusto error. Et blanditiis dolorem mollitia dignissimos accusamus eligendi. Et aut quaerat dolorem.',7,3,'2004-04-04 17:30:48','1998-03-18 09:22:40'),
(82,82,82,'Sint et aut et temporibus rerum dolores labore. Ipsa qui fugiat reiciendis iste voluptatem facere. Ea mollitia dolores in adipisci quam sequi. Adipisci dolorum nulla quia animi.',6,1,'2018-06-15 06:38:58','2023-07-01 11:25:11'),
(83,83,83,'Et non rem qui iusto quisquam earum mollitia. Laborum repudiandae id nihil corporis nulla qui. Est voluptatem earum error impedit eos dolorem at odio.',2,2,'2009-09-14 18:29:01','1988-12-19 21:52:12'),
(84,84,84,'Minima et ut nulla incidunt architecto dolor tenetur. Pariatur quia illum non at et aut autem. Repudiandae suscipit praesentium dignissimos. Omnis quo iste ut commodi a doloremque.',4,3,'2016-02-01 13:40:49','1991-09-30 21:46:11'),
(85,85,85,'Qui laboriosam vero cum ut voluptas perferendis velit. Iste eos impedit error ducimus. Repellendus autem quo distinctio ducimus sed omnis enim. Numquam qui ea cumque.',0,7,'1976-01-10 13:42:33','2020-06-23 22:09:25'),
(86,86,86,'Adipisci ratione cumque autem nihil asperiores dolores vel. Ut ipsum sint qui non aut ipsam hic. Ut numquam quod quaerat ut quia natus illo.',6,2,'2016-04-15 11:23:32','2021-12-25 10:30:58'),
(87,87,87,'Provident enim maiores ipsa sequi. Molestias consectetur aut et voluptas. Veritatis recusandae qui sit labore. Dicta quia velit quo. Rerum excepturi dolorem libero id.',8,7,'2023-03-25 02:09:11','1978-05-09 17:06:36'),
(88,88,88,'Labore occaecati velit distinctio. Qui architecto aliquid sed. Fugiat accusamus eligendi et impedit cupiditate. Voluptas et reiciendis consequatur beatae aliquid in.',0,5,'1979-02-21 06:23:17','1980-04-06 08:24:50'),
(89,89,89,'Est iusto esse sequi eum est dignissimos. Ipsa nam rerum culpa neque possimus labore ducimus.',0,1,'1996-05-08 07:44:39','2019-12-29 23:50:34'),
(90,90,90,'Dolorem molestiae dolorum accusamus quis numquam. Sapiente enim placeat in ipsam iste provident.',1,7,'1977-07-13 05:25:56','2010-01-05 10:08:11'),
(91,91,91,'Dolorem numquam a repellat ratione. Consequatur impedit esse velit.',5,4,'1998-12-05 07:17:21','2014-11-28 22:26:10'),
(92,92,92,'Sit ea est enim est ipsa reiciendis. Omnis possimus eligendi ullam asperiores. Praesentium ipsam aut aut repudiandae sint quis.',8,8,'1992-02-14 21:30:09','1977-07-22 23:23:27'),
(93,93,93,'Officia aut modi est est. Nihil eum minima sed non assumenda nisi. Laboriosam sed iure sapiente et et omnis ab.',5,6,'1996-08-17 20:10:38','2019-01-20 23:26:50'),
(94,94,94,'Qui et asperiores blanditiis modi. Fugiat incidunt exercitationem dicta eaque et et. Sed voluptatibus aspernatur et atque sed. Atque eos maiores officiis vel. Qui mollitia aut debitis omnis.',2,8,'2017-11-28 01:58:42','1989-01-14 12:08:54'),
(95,95,95,'Non animi hic quisquam similique nemo cupiditate quia. Eius et non similique dolorem aut recusandae omnis ut. Quo modi alias optio quibusdam est sed beatae.',9,8,'2021-12-09 16:08:58','2000-03-11 15:17:44'),
(96,96,96,'Amet officia consectetur quis repudiandae occaecati dolorem dolores at. Similique et voluptatem labore. Sint dicta quisquam cupiditate tenetur. Incidunt officia ullam numquam.',0,9,'2022-12-18 13:54:36','2011-01-05 06:32:20'),
(97,97,97,'Expedita itaque modi adipisci et illo sunt. Et assumenda suscipit et aut voluptatum. In iste deserunt ipsam.',0,7,'1974-03-23 02:24:47','1985-03-05 12:58:55'),
(98,98,98,'Doloremque quam sint non error quae. Aut minus quam sed beatae dolor. Veniam quis repellendus animi voluptatum facilis.',9,8,'1972-08-02 14:51:03','2019-09-26 11:38:17'),
(99,99,99,'Qui totam rerum et nesciunt odio et. Dolorum minima iste enim eaque sequi et. Ut minima tempora at voluptatem. Qui distinctio asperiores rerum pariatur ullam et. Ullam laudantium nisi aut itaque corrupti.',4,5,'2020-12-14 11:56:45','1970-09-22 23:11:10'),
(100,100,100,'Officiis assumenda dolorum ducimus ut. Sint eos laborum quo iusto eveniet et doloribus. Accusantium praesentium magni ducimus voluptatem unde consequatur et sint. Quo id vitae voluptatem consequuntur pariatur occaecati ex delectus.',4,6,'1992-03-25 00:52:59','2013-03-16 08:09:31');
/*!40000 ALTER TABLE `product_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(8,2) NOT NULL,
  `type` enum('thumbnail','catalog') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`),
  CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_offers`
--

DROP TABLE IF EXISTS `product_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_offers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `percent` int(11) NOT NULL,
  `validity` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_offers_product_id_foreign` (`product_id`),
  CONSTRAINT `product_offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_offers`
--

LOCK TABLES `product_offers` WRITE;
/*!40000 ALTER TABLE `product_offers` DISABLE KEYS */;
INSERT INTO `product_offers` VALUES
(1,1,6,'1992-05-29 18:48:06','2011-12-02 21:28:15','1974-04-25 22:26:55'),
(2,2,0,'2005-12-30 05:32:04','2022-03-15 20:05:16','1981-07-04 13:32:47'),
(3,3,7,'1981-08-24 21:53:30','2000-12-27 19:12:20','1986-01-26 18:47:29'),
(4,4,9,'2004-01-24 11:22:15','1988-11-04 19:54:25','1989-09-11 02:04:26'),
(5,5,8,'1979-12-18 17:30:06','1985-01-30 00:12:23','2020-08-31 22:23:00'),
(6,6,8,'1993-03-24 09:56:39','1999-07-30 11:15:33','2009-09-20 02:47:11'),
(7,7,6,'1971-12-25 02:08:30','2004-07-27 07:45:42','2009-08-10 14:46:55'),
(8,8,6,'2002-05-28 01:27:45','2019-05-13 11:38:02','1982-07-30 17:46:31'),
(9,9,0,'1998-11-27 03:43:43','1986-01-24 18:25:46','2017-03-05 05:34:53'),
(10,10,2,'2020-04-24 19:01:20','2006-07-10 13:53:07','2008-03-30 06:30:25'),
(11,11,7,'2000-06-04 02:32:00','1996-05-01 02:26:38','2001-06-30 18:13:11'),
(12,12,5,'2016-07-28 07:07:43','1983-01-04 21:32:01','1980-10-30 15:58:02'),
(13,13,4,'1995-04-03 17:11:01','1984-12-09 22:45:36','2016-08-07 09:43:40'),
(14,14,8,'1997-11-05 05:29:45','2022-06-07 16:57:47','2020-12-10 12:39:11'),
(15,15,9,'2004-09-27 14:04:22','2002-07-24 06:33:51','1990-10-23 17:57:30'),
(16,16,9,'1990-11-17 17:00:20','2015-08-07 03:01:48','2017-06-23 06:27:17'),
(17,17,7,'1992-04-12 01:30:16','2009-07-24 01:31:44','1981-10-01 18:00:19'),
(18,18,3,'1970-08-19 10:23:00','1995-10-22 09:35:33','1991-07-08 20:50:08'),
(19,19,9,'1970-08-24 08:15:06','1998-10-01 17:47:51','1971-04-04 13:09:13'),
(20,20,9,'2017-07-18 06:36:01','2007-11-06 14:38:41','2003-04-29 07:18:22');
/*!40000 ALTER TABLE `product_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_rates`
--

DROP TABLE IF EXISTS `product_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_rates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_rates_customer_id_product_id_unique` (`customer_id`,`product_id`),
  KEY `product_rates_product_id_foreign` (`product_id`),
  CONSTRAINT `product_rates_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_rates_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_rates`
--

LOCK TABLES `product_rates` WRITE;
/*!40000 ALTER TABLE `product_rates` DISABLE KEYS */;
INSERT INTO `product_rates` VALUES
(1,1,1,9,'2020-05-13 16:01:45','1998-10-11 06:50:44'),
(2,2,2,2,'2001-08-15 14:03:47','1974-06-27 14:21:52'),
(3,3,3,5,'1993-04-25 19:09:56','2011-03-28 20:12:31'),
(4,4,4,7,'1987-01-24 12:26:53','1987-06-16 17:51:12'),
(5,5,5,8,'1981-02-26 08:24:33','1972-11-05 16:25:17'),
(6,6,6,0,'2011-12-26 05:52:14','1977-03-30 18:35:19'),
(7,7,7,2,'2015-11-27 17:04:21','2000-09-07 01:09:36'),
(8,8,8,2,'1973-04-20 00:33:08','2020-09-12 20:29:54'),
(9,9,9,3,'1981-03-14 17:32:10','2005-11-04 12:08:51'),
(10,10,10,7,'2005-04-30 03:52:48','2011-11-21 16:04:44'),
(11,11,11,5,'1988-03-07 16:22:47','1981-11-11 03:38:04'),
(12,12,12,6,'2023-06-28 04:55:27','2005-09-27 02:56:57'),
(13,13,13,1,'2011-12-28 03:34:51','1994-08-28 15:46:30'),
(14,14,14,6,'2014-11-13 16:37:55','2006-06-06 04:23:12'),
(15,15,15,6,'2005-05-07 17:37:19','2010-10-22 23:49:11'),
(16,16,16,9,'1978-09-03 21:21:18','1982-03-25 06:51:58'),
(17,17,17,3,'1993-07-03 13:11:37','1997-08-16 00:34:17'),
(18,18,18,6,'1999-03-09 22:58:20','2014-12-16 04:25:02'),
(19,19,19,9,'1977-03-07 21:23:17','2000-02-20 19:03:11'),
(20,20,20,8,'1974-10-11 20:27:19','2000-10-24 00:31:04'),
(21,21,21,2,'1977-07-26 10:28:00','2016-07-18 18:24:43'),
(22,22,22,4,'2016-07-13 08:34:59','2007-12-19 01:44:58'),
(23,23,23,4,'1991-08-28 06:25:47','1991-04-08 04:30:57'),
(24,24,24,5,'2004-10-17 22:50:52','1978-09-19 18:24:23'),
(25,25,25,6,'1991-01-11 00:30:28','1993-01-27 00:56:48'),
(26,26,26,8,'1981-11-18 06:23:41','1975-10-27 20:14:11'),
(27,27,27,0,'2001-06-21 07:30:37','2004-06-18 14:20:41'),
(28,28,28,8,'1973-07-29 15:23:44','2001-01-20 12:59:26'),
(29,29,29,1,'2014-02-20 14:01:03','2008-12-20 00:07:43'),
(30,30,30,2,'1990-09-04 21:31:35','1989-05-31 10:47:41'),
(31,31,31,4,'1994-12-04 16:19:26','2020-01-14 10:42:06'),
(32,32,32,9,'1983-01-11 06:59:33','1972-01-30 06:49:14'),
(33,33,33,2,'2002-06-03 20:31:53','1990-01-27 12:53:54'),
(34,34,34,3,'2001-04-01 02:42:29','2011-06-11 06:27:42'),
(35,35,35,7,'2009-10-16 07:08:32','1994-08-06 10:47:43'),
(36,36,36,8,'2003-03-01 02:03:45','1984-12-16 03:30:02'),
(37,37,37,2,'1973-01-05 22:51:00','2000-11-19 20:55:58'),
(38,38,38,8,'2000-10-26 15:52:29','2014-04-01 03:25:00'),
(39,39,39,4,'2011-04-30 02:02:31','1992-07-11 07:01:41'),
(40,40,40,4,'1975-10-14 18:54:19','2016-05-05 17:46:49'),
(41,41,41,2,'1976-08-22 23:18:05','2006-11-20 06:35:46'),
(42,42,42,0,'1991-11-02 15:15:01','1990-11-07 08:16:39'),
(43,43,43,0,'2011-08-01 08:06:58','2021-07-20 02:35:20'),
(44,44,44,6,'2004-01-15 15:47:39','2019-09-16 14:55:20'),
(45,45,45,4,'1991-08-16 03:05:03','1973-12-04 13:47:30'),
(46,46,46,1,'1973-11-10 08:55:12','2001-01-23 02:19:33'),
(47,47,47,0,'1997-05-26 15:35:54','1988-06-22 03:14:40'),
(48,48,48,8,'2006-02-18 17:10:35','2003-08-19 19:56:28'),
(49,49,49,4,'2016-11-21 02:26:19','1992-08-02 11:26:07'),
(50,50,50,6,'1993-04-29 19:42:39','2022-08-04 12:41:46'),
(51,51,51,5,'2006-10-05 02:29:01','2014-06-21 06:58:22'),
(52,52,52,6,'2005-08-25 12:12:48','1973-11-06 21:23:06'),
(53,53,53,2,'2009-04-29 22:04:08','1985-08-24 18:34:15'),
(54,54,54,2,'1978-09-02 16:04:24','1989-05-06 13:21:09'),
(55,55,55,7,'2021-04-10 10:12:20','1975-05-22 08:33:38'),
(56,56,56,7,'2002-01-09 22:40:31','2022-04-29 04:56:38'),
(57,57,57,2,'2012-11-09 00:10:13','1994-09-29 22:46:23'),
(58,58,58,6,'1991-05-12 01:31:45','2013-07-21 12:34:35'),
(59,59,59,7,'2016-08-26 17:45:41','2005-03-26 07:33:17'),
(60,60,60,3,'1978-12-09 14:37:30','2005-07-09 22:39:04');
/*!40000 ALTER TABLE `product_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_specification_keys`
--

DROP TABLE IF EXISTS `product_specification_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_specification_keys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `spec_type_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_specification_keys_spec_type_id_foreign` (`spec_type_id`),
  CONSTRAINT `product_specification_keys_spec_type_id_foreign` FOREIGN KEY (`spec_type_id`) REFERENCES `product_specification_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specification_keys`
--

LOCK TABLES `product_specification_keys` WRITE;
/*!40000 ALTER TABLE `product_specification_keys` DISABLE KEYS */;
INSERT INTO `product_specification_keys` VALUES
(1,1,'zobv','1996-03-18 09:58:47','1974-12-21 12:58:50'),
(2,2,'clnl','1977-09-11 22:06:22','1991-07-30 19:06:32'),
(3,3,'vpxn','2011-12-20 02:11:01','1970-04-27 06:18:51'),
(4,4,'wywe','1988-01-09 10:08:23','1978-01-22 22:22:03'),
(5,5,'yjhp','2003-05-10 21:23:41','1991-05-27 05:38:54'),
(6,6,'vign','1994-04-30 10:33:12','2014-06-24 15:09:42'),
(7,7,'zojz','1983-06-25 03:09:22','1994-05-31 00:11:06'),
(8,8,'vtup','2001-04-12 19:24:03','2017-04-07 08:14:50'),
(9,9,'uhsx','2020-10-05 06:47:32','1990-07-28 14:36:27'),
(10,10,'xmvf','2020-11-20 22:30:26','2016-06-11 02:23:43'),
(11,11,'brxg','1977-03-05 22:32:06','1979-10-07 16:18:36'),
(12,12,'zaub','1980-07-19 23:20:18','1971-05-06 01:23:18'),
(13,13,'fieo','1995-06-17 10:41:26','1984-06-11 11:49:38'),
(14,14,'etgf','1988-10-03 13:48:50','2023-07-09 20:58:16'),
(15,15,'qnpr','1994-02-06 20:21:10','2021-07-31 21:15:07'),
(16,16,'kuum','1971-12-27 05:37:41','2016-04-16 10:34:58'),
(17,17,'dbac','2003-09-15 17:48:57','2005-03-17 19:46:05'),
(18,18,'rnjn','1970-03-22 06:39:40','1992-05-19 00:28:12'),
(19,19,'btmn','1993-09-07 19:12:52','2001-02-27 12:36:53'),
(20,20,'ffws','1982-03-20 05:16:29','1997-10-09 13:11:39');
/*!40000 ALTER TABLE `product_specification_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_specification_types`
--

DROP TABLE IF EXISTS `product_specification_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_specification_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_specification_types_product_category_id_foreign` (`product_category_id`),
  CONSTRAINT `product_specification_types_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specification_types`
--

LOCK TABLES `product_specification_types` WRITE;
/*!40000 ALTER TABLE `product_specification_types` DISABLE KEYS */;
INSERT INTO `product_specification_types` VALUES
(1,1,'zunq','1995-05-19 05:22:05','1992-04-13 10:40:15'),
(2,2,'srlb','1980-01-22 15:08:10','1995-12-09 16:36:07'),
(3,3,'sghx','1995-08-28 04:30:21','1982-01-20 01:41:52'),
(4,4,'hzik','2009-10-27 23:32:37','2010-04-10 22:17:16'),
(5,5,'ugky','2020-07-15 09:27:45','2000-10-10 01:28:47'),
(6,6,'nygz','1997-04-16 05:47:17','2004-11-09 03:52:14'),
(7,7,'idhn','2006-01-16 19:56:47','1994-12-25 03:55:51'),
(8,8,'iveq','1999-01-28 05:34:43','2007-06-24 12:30:45'),
(9,9,'kzek','1977-12-27 19:09:01','2012-10-17 07:01:51'),
(10,10,'vlzl','1988-07-02 22:19:57','2006-06-10 04:29:19'),
(11,11,'wcpq','1980-11-26 08:44:25','2007-08-05 22:04:53'),
(12,12,'qxpk','2011-05-27 13:04:15','1989-03-13 23:55:03'),
(13,13,'cvmq','1980-07-13 07:39:58','2003-05-14 22:37:18'),
(14,14,'bsgf','1991-01-26 11:42:59','2015-12-06 05:21:09'),
(15,15,'sqrc','1974-02-26 00:04:38','2020-12-03 23:37:27'),
(16,1,'ycgj','1995-04-01 10:29:32','2022-10-16 06:51:48'),
(17,2,'vssw','1996-04-25 01:49:57','2008-01-09 08:22:44'),
(18,3,'ylpd','2015-04-21 09:51:21','2003-10-24 11:54:58'),
(19,4,'gvjr','1994-12-17 12:51:36','2010-08-24 15:29:42'),
(20,5,'wdct','2020-05-19 12:35:38','1992-01-29 00:40:05');
/*!40000 ALTER TABLE `product_specification_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_specifications`
--

DROP TABLE IF EXISTS `product_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_specifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_specification_key_id` bigint(20) unsigned NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_spec_key_unique` (`product_id`,`product_specification_key_id`),
  KEY `product_specifications_product_specification_key_id_foreign` (`product_specification_key_id`),
  CONSTRAINT `product_specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_specifications_product_specification_key_id_foreign` FOREIGN KEY (`product_specification_key_id`) REFERENCES `product_specification_keys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specifications`
--

LOCK TABLES `product_specifications` WRITE;
/*!40000 ALTER TABLE `product_specifications` DISABLE KEYS */;
INSERT INTO `product_specifications` VALUES
(1,1,1,'virj','1994-01-09 11:38:05','1979-12-28 06:04:38'),
(2,2,2,'ksgs','1988-12-04 12:14:48','1996-04-18 08:46:34'),
(3,3,3,'yolb','1991-06-25 23:16:49','2022-03-18 22:16:47'),
(4,4,4,'zwzg','2021-07-06 20:37:27','2003-06-26 00:24:22'),
(5,5,5,'txhk','1970-02-19 09:16:52','2013-03-13 12:21:02'),
(6,6,6,'ptpu','1990-09-14 10:12:13','2012-07-21 15:55:28'),
(7,7,7,'nfpd','2000-05-13 05:57:02','2021-08-05 01:08:46'),
(8,8,8,'dwji','1984-02-03 09:27:02','2014-08-20 16:29:40'),
(9,9,9,'cnwx','1979-03-31 16:43:27','2019-07-03 12:28:16'),
(10,10,10,'byfq','2010-12-08 01:23:23','1971-07-24 22:45:19'),
(11,11,11,'lbhp','2013-03-14 02:15:15','1988-05-18 01:44:23'),
(12,12,12,'uoks','1977-11-12 03:27:07','2015-05-16 02:02:11'),
(13,13,13,'qety','1977-03-10 06:41:17','2002-11-20 23:05:24'),
(14,14,14,'arpu','1997-07-23 07:13:40','1975-12-11 13:35:22'),
(15,15,15,'hyxf','2011-06-27 07:43:59','1999-11-01 23:40:08'),
(16,16,16,'thwj','1982-12-13 02:05:34','1995-08-06 11:05:52'),
(17,17,17,'xvmu','1998-06-11 04:24:16','1999-06-16 03:35:03'),
(18,18,18,'adsi','1971-04-29 13:17:52','2005-11-06 01:19:07'),
(19,19,19,'hlku','1975-06-26 03:55:01','2011-02-07 08:40:14'),
(20,20,20,'xtml','1972-05-31 12:18:23','1998-01-09 15:06:03'),
(21,21,1,'nyaz','2005-10-01 18:52:24','2020-03-14 09:03:23'),
(22,22,2,'shzb','1999-11-13 09:08:54','1977-10-31 17:18:20'),
(23,23,3,'pczi','1999-08-08 02:49:52','1998-07-27 01:26:18'),
(24,24,4,'inku','2020-08-29 02:30:46','2006-01-16 13:59:12'),
(25,25,5,'kmfl','2018-10-03 08:23:27','2005-03-01 14:26:32'),
(26,26,6,'imlw','1993-12-06 19:52:42','1979-11-21 01:08:46'),
(27,27,7,'eixb','1982-11-13 11:55:03','2009-06-26 16:17:13'),
(28,28,8,'pplg','2013-02-22 08:56:05','1998-11-27 14:06:01'),
(29,29,9,'eisw','2005-01-29 20:16:29','1984-03-04 16:16:48'),
(30,30,10,'yqaf','1995-06-02 03:44:25','1970-10-03 05:01:57'),
(31,31,11,'iily','2021-08-20 19:13:33','2023-11-30 10:46:40'),
(32,32,12,'nuzp','2023-08-10 06:55:27','1978-10-18 17:33:18'),
(33,33,13,'segx','2016-03-28 12:00:08','1979-09-28 09:55:00'),
(34,34,14,'mrcn','1974-12-29 10:16:58','2000-06-27 10:20:38'),
(35,35,15,'bdld','2009-11-05 22:05:57','2011-04-23 13:08:25'),
(36,36,16,'obdp','1976-05-25 08:32:21','2021-06-16 02:12:51'),
(37,37,17,'xymb','1995-09-21 18:42:20','1987-02-16 00:21:44'),
(38,38,18,'pajp','1995-03-23 15:43:37','1983-08-07 12:43:08'),
(39,39,19,'riac','1976-05-05 13:30:10','1978-12-12 19:34:16'),
(40,40,20,'cita','1989-10-19 16:51:53','2001-05-20 11:04:04'),
(41,41,1,'nszg','1977-10-18 08:21:45','2011-02-17 05:04:54'),
(42,42,2,'drng','1973-06-17 07:32:38','1993-08-23 03:58:28'),
(43,43,3,'mvgd','2002-03-20 21:27:48','1984-02-26 21:28:28'),
(44,44,4,'qzpc','1975-08-03 06:41:24','1992-04-08 19:39:20'),
(45,45,5,'ofjy','2015-07-08 14:10:30','2019-10-22 13:29:44'),
(46,46,6,'jwqu','2022-11-12 12:25:11','1991-11-13 18:54:35'),
(47,47,7,'qkfy','1978-06-13 20:19:36','1980-09-20 15:18:21'),
(48,48,8,'ejhk','2000-09-23 13:21:35','1992-03-10 05:09:45'),
(49,49,9,'drvl','2006-11-17 10:31:35','2020-05-18 00:51:16'),
(50,50,10,'osvc','2023-08-01 09:30:46','2021-10-26 15:17:17'),
(51,51,11,'jnom','2020-06-18 23:38:58','2004-06-11 17:00:35'),
(52,52,12,'boch','1994-08-09 14:07:48','1999-04-30 07:37:29'),
(53,53,13,'usra','1985-08-27 18:10:44','2010-07-31 07:59:18'),
(54,54,14,'ribx','1994-07-19 12:56:56','2017-06-09 13:26:23'),
(55,55,15,'qvcj','2004-06-18 19:31:50','2017-03-02 19:34:47'),
(56,56,16,'soeu','2021-01-21 12:55:11','1983-02-24 03:49:54'),
(57,57,17,'tndj','2010-03-05 00:27:07','2017-09-24 12:03:00'),
(58,58,18,'zjvm','1983-04-08 18:31:56','1972-12-24 04:24:58'),
(59,59,19,'xprf','2019-03-11 09:25:10','1974-12-04 21:56:24'),
(60,60,20,'nhhc','2023-03-06 16:31:14','1989-12-06 13:43:16'),
(61,61,1,'skqm','1983-10-29 14:45:59','2017-08-17 08:12:16'),
(62,62,2,'mfzn','1987-06-06 05:13:40','1989-01-27 17:07:54'),
(63,63,3,'fxjf','2023-12-16 01:16:33','2009-08-20 13:25:19'),
(64,64,4,'dhjo','1979-11-12 00:55:02','2012-12-29 02:21:16'),
(65,65,5,'rsow','1992-02-08 20:53:09','2014-03-25 02:44:22'),
(66,66,6,'tnza','1999-01-08 07:16:06','2019-06-09 14:00:34'),
(67,67,7,'rqhh','2010-12-07 02:43:56','1993-04-03 09:45:25'),
(68,68,8,'zvdz','1993-01-19 09:04:46','1992-04-17 00:35:34'),
(69,69,9,'pvwj','2004-07-16 18:35:36','1975-06-07 20:37:44'),
(70,70,10,'jaeb','2016-04-19 20:11:44','1980-10-07 19:18:20'),
(71,71,11,'rqbl','2017-06-23 12:05:25','1994-08-17 21:41:30'),
(72,72,12,'jyfv','1990-06-16 06:07:56','1976-08-05 20:59:38'),
(73,73,13,'youx','2015-11-11 03:14:27','1991-12-08 01:25:27'),
(74,74,14,'zxqq','1989-10-13 14:36:40','2014-05-09 14:40:07'),
(75,75,15,'wque','1972-03-10 12:05:36','1985-05-14 03:04:37'),
(76,76,16,'ycns','1994-03-15 08:28:26','1975-09-05 09:12:41'),
(77,77,17,'rvin','1985-07-10 11:03:33','1986-07-12 13:00:11'),
(78,78,18,'fxoi','1979-04-20 21:10:49','1990-02-24 21:01:27'),
(79,79,19,'zvfj','2007-02-14 01:36:02','1996-05-25 22:48:16'),
(80,80,20,'oaaj','1997-07-30 08:55:51','1979-11-06 19:18:43'),
(81,81,1,'tfcn','2020-05-26 21:58:22','2005-11-08 10:16:31'),
(82,82,2,'vzht','2006-10-15 22:19:26','1979-07-23 14:12:32'),
(83,83,3,'jaoq','1993-08-25 06:16:48','1989-11-30 09:03:47'),
(84,84,4,'cybj','1981-05-01 15:39:29','1986-02-28 03:41:10'),
(85,85,5,'qehh','2023-02-23 10:01:22','1972-01-21 22:58:56'),
(86,86,6,'hzbx','2009-12-18 17:16:53','2007-01-05 12:23:58'),
(87,87,7,'haia','2006-04-23 02:57:03','2004-09-05 07:32:01'),
(88,88,8,'nhco','2008-11-12 00:47:15','1983-04-14 21:56:57'),
(89,89,9,'kmcb','1984-02-27 03:41:05','2005-09-14 13:37:13'),
(90,90,10,'hlhh','2001-11-13 00:26:38','1970-07-15 10:22:27'),
(91,91,11,'haxl','1971-05-22 20:10:57','1980-09-25 18:16:24'),
(92,92,12,'qikm','2003-11-08 22:48:55','2004-02-04 11:04:19'),
(93,93,13,'eifk','1976-03-05 23:04:35','1980-03-13 19:55:21'),
(94,94,14,'jyao','1994-12-18 10:19:04','1970-11-10 11:41:19'),
(95,95,15,'mfus','1972-03-02 17:29:35','1986-09-19 16:34:56'),
(96,96,16,'pazf','1993-05-27 09:19:21','1976-04-10 09:50:27'),
(97,97,17,'drsd','2017-08-18 02:13:12','1992-03-26 16:10:59'),
(98,98,18,'wwuk','1977-03-07 22:02:43','1989-02-09 02:52:50'),
(99,99,19,'fpmv','1975-06-22 21:16:30','2003-01-27 23:17:28'),
(100,100,20,'lnnd','2008-10-15 21:42:45','1996-01-28 13:47:53');
/*!40000 ALTER TABLE `product_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_wishlists`
--

DROP TABLE IF EXISTS `product_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_wishlists_customer_id_product_id_unique` (`customer_id`,`product_id`),
  KEY `product_wishlists_product_id_foreign` (`product_id`),
  CONSTRAINT `product_wishlists_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_wishlists`
--

LOCK TABLES `product_wishlists` WRITE;
/*!40000 ALTER TABLE `product_wishlists` DISABLE KEYS */;
INSERT INTO `product_wishlists` VALUES
(1,1,1,'2019-05-12 09:28:24','1985-10-09 19:50:45'),
(2,2,2,'1993-10-26 00:08:06','1989-01-29 00:41:06'),
(3,3,3,'2022-02-28 22:04:55','1988-12-24 05:25:41'),
(4,4,4,'2004-08-26 18:14:29','2008-11-11 07:04:40'),
(5,5,5,'1971-08-21 14:54:11','1972-03-19 00:41:09'),
(6,6,6,'1981-04-15 21:06:41','1985-05-14 15:04:17'),
(7,7,7,'1997-12-08 15:25:55','1988-05-09 07:41:49'),
(8,8,8,'1973-02-10 04:03:05','2015-08-15 04:05:30'),
(9,9,9,'2010-07-22 03:50:37','2005-07-13 04:43:37'),
(10,10,10,'2017-09-24 05:48:19','2002-08-16 03:39:59'),
(11,11,11,'2002-08-27 11:56:57','1985-12-02 07:18:48'),
(12,12,12,'1973-03-24 04:45:49','1987-06-26 03:41:10'),
(13,13,13,'2021-03-28 06:29:08','1997-09-30 05:15:32'),
(14,14,14,'1998-01-01 02:26:59','2005-12-17 12:41:27'),
(15,15,15,'2001-03-19 05:01:36','1972-05-02 13:47:39'),
(16,16,16,'2002-08-08 05:28:35','1992-04-12 12:16:54'),
(17,17,17,'1992-03-09 06:08:57','1991-09-01 10:00:23'),
(18,18,18,'1975-09-27 20:47:05','1995-12-25 00:47:53'),
(19,19,19,'2009-10-07 06:57:38','2024-01-29 05:41:46'),
(20,20,20,'2012-10-17 06:49:28','1980-06-19 09:36:28');
/*!40000 ALTER TABLE `product_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `existence` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `product_category_id` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_category_id_foreign` (`product_category_id`),
  KEY `products_brand_id_foreign` (`brand_id`),
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(1,'Aut repudiandae aspernatur cumque soluta porro quo nulla.','','izcq',2.26,0,'Ab ut et nulla natus autem voluptates mollitia. Eum ut natus ipsum consequatur atque laboriosam. Qui ea nesciunt qui numquam numquam.',1,1,'2015-05-02 16:00:48','1986-04-20 00:24:45'),
(2,'Eius repudiandae quas non occaecati sunt.','','nwew',476459.06,0,'Voluptate eum natus odit et sed adipisci. Dignissimos nesciunt vel et nostrum omnis dolorum. Iusto repudiandae dolorum consequatur inventore rerum dicta dignissimos a. Consequatur et suscipit et sunt iste autem iure. Qui consequatur qui ea consectetur quia ducimus.',2,2,'2017-01-11 09:24:57','2001-06-21 08:23:45'),
(3,'Aliquam alias vitae perspiciatis.','','xwdw',999999.99,0,'Tempora minima officia repudiandae iusto. Voluptatem voluptatum eos est. Aliquid nobis error quidem dolorum est.',3,3,'2018-10-20 13:19:00','1996-06-30 12:13:23'),
(4,'Rem qui error quis esse.','','kbje',0.00,0,'Veniam quae aut quia nihil ex saepe minima. Incidunt rerum aperiam ipsa quia harum rem. Omnis beatae ex et maxime voluptas. Esse hic dolores perspiciatis ducimus consequuntur.',4,4,'1980-08-22 00:30:15','1976-06-16 04:46:14'),
(5,'Fugiat omnis eos molestias alias id sed.','','avxz',32.31,0,'Dolorum hic dolores totam rerum nobis pariatur qui. Magnam fuga beatae quasi. Iusto molestias officia et explicabo exercitationem. Nam saepe molestiae eos voluptas delectus voluptatem et autem.',5,5,'1996-05-28 19:25:09','1976-06-06 23:38:11'),
(6,'Et dolore animi tempore commodi cupiditate quo.','','nhzi',299.58,0,'Laboriosam sit ea alias incidunt deserunt. Quidem soluta quo minima labore. Neque id alias aut minus ut ut consequatur.',6,6,'1989-12-11 13:40:37','1974-06-02 02:36:08'),
(7,'Non quae quo ducimus et voluptatem.','','djua',376.99,0,'Et voluptas ex placeat neque facilis. Culpa nostrum et vel ea laboriosam aut veniam eum.',7,7,'2017-03-27 22:10:09','1974-04-06 10:30:24'),
(8,'Ea aut iusto sit aliquid laboriosam cupiditate.','','epcj',0.00,0,'Aperiam placeat aut quis iusto cumque. Magnam ea voluptatem perferendis necessitatibus. Hic ullam qui a et a. Dolor est facere quo repudiandae sequi voluptate nostrum. Libero repellendus qui explicabo qui.',8,8,'2020-07-04 17:49:14','1988-01-15 05:43:28'),
(9,'Pariatur aperiam sed ut sit cum quam.','','rpgi',68.90,0,'Dolores suscipit fugiat sed quod doloremque qui. Explicabo amet placeat dignissimos quisquam ut. Esse veniam est atque ipsam enim ut magni. Animi eligendi ut ea dicta voluptas ut.',9,9,'2008-01-23 00:37:25','2013-09-01 05:41:42'),
(10,'Rerum voluptas doloremque impedit.','','whsf',0.00,0,'Est laudantium inventore eos laudantium sunt provident. Sint quasi enim nihil ut. Ut minus necessitatibus dolores asperiores ut temporibus quidem. Qui et non ipsa magni ea recusandae.',10,10,'2018-09-16 00:28:09','2008-09-29 14:17:46'),
(11,'Eaque et est ea ratione quia nisi dolor.','','vbuw',966.33,0,'Eum sunt cumque totam. Sit officiis ipsam illo occaecati nemo. Aut soluta sint vero qui. Omnis odit suscipit nulla ratione omnis.',11,11,'1972-12-15 00:30:09','2023-10-26 19:07:18'),
(12,'Similique est a dignissimos accusantium.','','nhcx',1093.81,0,'Rem ut commodi vel provident est impedit et delectus. Vero voluptatem aliquid at ducimus qui omnis. Ipsum qui explicabo doloremque dolor consequatur consequuntur. Enim placeat sequi voluptas rerum magni.',12,12,'2005-06-26 07:02:10','2003-09-11 09:02:33'),
(13,'Eaque nam suscipit enim voluptatem culpa.','','ggcr',0.60,0,'Ratione a voluptas eum tempore. Sint sed sit tempora aut sequi enim. Saepe et aliquid rerum. Qui nisi in dolorem eaque iste.',13,13,'1991-07-06 17:10:33','2000-10-16 16:32:18'),
(14,'Adipisci et eum impedit ea consequatur temporibus.','','pbyd',999999.99,0,'Quam alias nobis qui facilis est perferendis et nihil. Magnam fugiat et ducimus aliquid. Culpa sunt quasi sequi et reiciendis qui. Unde est ex quaerat officiis consequatur in.',14,14,'1993-01-08 13:07:59','1971-09-29 23:34:13'),
(15,'Rem veritatis quis quia modi sed.','','yhaf',999999.99,0,'Qui illum quia dolor sed omnis. Aliquam aperiam ex ducimus voluptatem sed et. Quam quasi et recusandae distinctio.',15,15,'1980-05-22 01:54:22','2018-04-11 18:49:42'),
(16,'Voluptas eius ut quo soluta quia minima.','','rems',39742.75,0,'Voluptatem neque tenetur excepturi iusto maxime. Architecto animi ab ea sit voluptatem ab. Porro exercitationem numquam totam dolorem doloremque necessitatibus.',1,16,'2009-08-19 02:36:20','2005-01-13 09:32:37'),
(17,'Aliquam excepturi qui ut minus error voluptatum deleniti qui.','','mwup',1185.57,0,'Fugiat quae deserunt aliquam. Eius placeat amet corrupti eos. Aliquam veritatis iusto ullam eligendi et eius dolorum. Perspiciatis nostrum autem aut enim officia pariatur. Impedit veritatis non ipsam nisi occaecati iure exercitationem.',2,17,'1977-03-05 14:41:24','1997-05-16 17:34:05'),
(18,'Id mollitia asperiores qui nihil.','','hhgn',999999.99,0,'Dolores eveniet ea et at. Vel cupiditate est consectetur est non incidunt. Quibusdam tempora recusandae in omnis aut. Quidem rerum aliquam voluptatem minima omnis.',3,18,'2001-08-17 09:01:01','2011-11-01 02:33:31'),
(19,'Voluptatem odio qui rem consequatur.','','msga',0.00,0,'Sed quis ipsum non rerum labore. Accusamus tenetur dicta dolorum asperiores quisquam eos. Id quod eaque veritatis natus. Atque qui iste necessitatibus rerum corporis quam.',4,19,'1996-05-17 09:32:03','1977-09-22 01:29:36'),
(20,'Unde itaque aliquid id et ut est.','','wyui',0.00,0,'Quae vero non quo est consequatur et perferendis. Dolores placeat voluptatem impedit veniam alias consequatur veritatis rerum. Dignissimos similique culpa eligendi earum adipisci assumenda harum. Non unde corporis debitis nulla ipsa ut quas. Saepe laudantium voluptatem vitae qui.',5,20,'1988-04-12 20:27:05','2010-07-11 19:51:01'),
(21,'Temporibus placeat et amet non facilis dolor.','','gjkw',745864.00,0,'Animi nulla corporis laudantium inventore. Eum doloremque eum tempore sit eius aut. Tempore molestiae eligendi tenetur autem. Voluptatum dolorem dolorem fuga.',6,1,'1991-03-31 00:30:14','1975-08-21 13:02:14'),
(22,'Laboriosam quibusdam molestias magnam.','','bckw',74.43,0,'Nihil reprehenderit qui laboriosam cupiditate tenetur occaecati animi delectus. Perferendis voluptatem totam veritatis perferendis veritatis dolor. Omnis et suscipit dolor atque. Animi repellendus quia et adipisci placeat.',7,2,'2011-03-14 23:06:35','1977-12-09 14:21:37'),
(23,'Molestiae sint quaerat atque fugit.','','sbni',173.85,0,'Et adipisci distinctio nihil possimus. Eveniet pariatur aliquid nam eum et adipisci. Fuga qui labore doloribus voluptatum error cum.',8,3,'1986-07-28 10:52:43','2014-05-08 07:01:31'),
(24,'Modi quaerat labore a voluptate voluptates tempora neque.','','wewc',81655.00,0,'Velit animi expedita ea doloribus rerum delectus. Et autem aut sint. Est animi ducimus non aut nulla quod quos. Sunt consequatur nesciunt consequatur iure qui.',9,4,'2015-11-04 09:46:36','1976-10-29 04:51:37'),
(25,'Vel ducimus explicabo corrupti sed eaque culpa nihil.','','bkdd',0.00,0,'Facilis provident qui et. Commodi adipisci vero voluptates a. Quisquam tenetur et hic quia dignissimos quod quia. Nisi ut ex deleniti aut illum id.',10,5,'1986-04-02 17:28:07','2000-01-14 07:30:40'),
(26,'Vitae minima ducimus illum voluptate voluptates quibusdam.','','snhd',0.00,0,'Odit ullam tenetur facilis dicta ex quisquam accusamus harum. Dolores qui numquam optio. Ducimus voluptatibus aut libero quia non et velit.',11,6,'1971-09-14 09:34:17','1990-04-10 14:51:11'),
(27,'Dolorum non ut recusandae eveniet explicabo.','','whyk',45245.78,0,'Facilis recusandae possimus quia sint velit libero labore itaque. Sunt incidunt consequatur molestiae quo at. Neque omnis et est quis iste vitae voluptatibus dignissimos. Saepe rem fuga doloremque sed quis dolorem quia qui.',12,7,'1988-09-16 14:43:29','2012-12-19 10:55:12'),
(28,'Officiis consequatur aut harum consequuntur.','','ncnv',999999.99,0,'Fuga aut qui ad qui dolor voluptatem. Nihil et ut et. Sapiente voluptatem officiis voluptatem odio soluta asperiores.',13,8,'2022-11-15 13:33:16','1970-05-24 19:44:12'),
(29,'Et ut est quos sit ut soluta tempore.','','ypfs',31987.44,0,'Corrupti aspernatur laudantium eaque aut optio adipisci qui id. Et numquam excepturi incidunt saepe. Ut et rerum quia ut quia.',14,9,'1971-03-15 22:37:56','1985-12-31 19:03:31'),
(30,'Dolores nihil numquam ut enim deleniti laborum aut.','','blec',42015.06,0,'Asperiores asperiores voluptatem non odio id aut corporis. Sit ipsum deserunt odio voluptas quod similique dolores velit. Magnam sequi earum alias necessitatibus vitae. Veritatis id soluta natus aliquam placeat odio.',15,10,'2016-03-29 14:01:27','1994-02-05 08:49:00'),
(31,'Earum ullam est non quo.','','jetz',736.70,0,'Nisi quia provident ipsam fugit ut consequatur voluptatem. Consectetur quos quisquam quis. Et possimus sunt dolor eveniet officiis. Illum aliquam exercitationem cupiditate est.',1,11,'1979-12-07 04:22:01','1973-10-19 08:07:31'),
(32,'Facilis officia consequuntur eum est consectetur rerum.','','ytxj',999999.99,0,'Iste repellendus in itaque accusamus ut suscipit minus. Perspiciatis iure ducimus aut voluptas. Officiis pariatur autem sint eius atque debitis totam in.',2,12,'1983-01-16 13:09:47','2002-03-18 01:36:39'),
(33,'Amet voluptatem vero numquam qui quasi deserunt error.','','vvbh',0.00,0,'Iure et totam est et. Nisi rerum occaecati rerum sed ab et. Perferendis quis nihil sunt amet reiciendis labore. Praesentium et ipsum omnis aspernatur dolorem odio.',3,13,'1999-11-28 03:15:13','2021-08-04 16:05:46'),
(34,'Eos magni eum quia voluptatum atque animi blanditiis.','','debi',660979.71,0,'Quia illum aut odit quas omnis placeat et. Voluptas quae quis accusamus asperiores est eaque quas. Nesciunt labore quia omnis. Mollitia consequatur eveniet quia dignissimos blanditiis.',4,14,'2003-06-16 18:28:45','1975-05-05 09:45:41'),
(35,'Aut rerum voluptate magni nobis odio saepe est.','','utqo',999999.99,0,'Quae delectus laudantium quia consequatur qui. Non qui in quia rerum est tempore. Qui odio laboriosam tempora velit qui id. Totam quasi sint quasi voluptatibus aliquam.',5,15,'2009-08-06 00:11:44','1981-09-30 13:28:15'),
(36,'Soluta aspernatur eos omnis rerum iusto minima nisi.','','cgvi',62.09,0,'Qui quia harum quas sit fugit culpa. Velit possimus vel repudiandae in eaque asperiores aut. Ea illum est et ut possimus a tempora. Aperiam consequatur culpa eos assumenda voluptas. Aut non et voluptatum sint voluptatum deleniti.',6,16,'1985-03-12 21:30:36','1987-02-10 01:15:17'),
(37,'Quod quia accusamus quia.','','ecpj',999999.99,0,'Consequatur aut laborum voluptates possimus consequatur distinctio quisquam. Illum aut autem fuga ut porro ipsum enim est. Rerum velit sed rerum dolores.',7,17,'1977-04-27 23:56:15','1979-11-22 05:51:02'),
(38,'Ipsam enim velit in incidunt et non.','','insk',77644.39,0,'Voluptas dolores non sit ut deserunt molestiae aut. Omnis molestiae qui hic nemo ad quisquam nihil. Suscipit hic quae iste quia a beatae corrupti voluptatibus. Earum nostrum consequatur unde rerum et dolorum.',8,18,'1997-12-28 10:28:16','1977-06-29 13:21:07'),
(39,'Doloribus quis commodi ea.','','fjgr',4.59,0,'Explicabo dolorem consequatur consequuntur ipsam. Occaecati deserunt iusto veritatis quis omnis. Autem quo quas assumenda cum facilis dolores itaque magnam. Distinctio repellendus aut alias dolores.',9,19,'2010-11-17 05:12:15','2023-02-07 22:03:04'),
(40,'Ea similique hic sequi numquam dolore ut illo.','','vdqi',3006.00,0,'Voluptatem aliquam aut quo debitis consequatur ullam. Debitis repellendus velit facilis labore quis velit. Omnis sapiente ut ea doloremque et quas omnis. Et et enim debitis.',10,20,'2020-05-10 22:00:28','1978-08-19 21:26:15'),
(41,'Labore nam minus magni aspernatur occaecati eos voluptatem sed.','','jiuw',4006.00,0,'Porro fuga architecto est voluptatem repudiandae nihil rerum. Voluptas rerum aut eligendi dolorem nihil. Doloremque consectetur vel qui molestias. Est aut cupiditate ut deleniti.',11,1,'1997-09-25 04:05:54','1975-03-27 03:29:37'),
(42,'Blanditiis odit omnis qui beatae accusamus dolorum aliquam.','','xqca',999999.99,0,'Occaecati assumenda amet minus laboriosam quisquam est. Non pariatur expedita qui quod officiis amet. Ipsum rerum sunt dolor sit quis doloremque aliquam. Et sed omnis et delectus sunt.',12,2,'1989-02-24 19:41:16','2010-01-09 22:47:10'),
(43,'Ullam impedit quas molestiae autem non beatae ut magnam.','','jnpa',655.11,0,'Necessitatibus ratione rem enim ipsam vitae veritatis et id. Nam quia sed rem nam exercitationem sit rem labore. Velit cumque debitis qui expedita labore mollitia. Repellendus autem ut qui itaque.',13,3,'2003-03-11 15:26:44','1981-10-31 12:58:52'),
(44,'Odio et error nihil ea nostrum nihil autem sint.','','lrpk',6.10,0,'Odio aspernatur magnam velit accusamus ab. Voluptates nisi rerum quia eum. Nam praesentium vel quos voluptatem laboriosam animi amet.',14,4,'1997-06-15 12:13:06','1986-09-20 11:42:12'),
(45,'Nesciunt tempora cumque quia possimus et quia.','','xhkq',0.00,0,'Cum optio vel accusantium error. Laboriosam et atque libero cupiditate accusantium ratione. Rerum vitae distinctio aut magni ipsa provident nisi.',15,5,'2017-07-06 16:05:37','2021-03-11 19:06:13'),
(46,'Reiciendis animi tempore in nihil quo.','','aboe',999999.99,0,'Corporis nisi sunt perferendis alias nesciunt. Deleniti facere aperiam voluptatum esse harum sunt quia et. Illo est quis odio veritatis ut omnis commodi in. Vero harum rerum consequatur voluptate expedita.',1,6,'1985-10-08 16:04:12','1974-05-17 13:08:52'),
(47,'Praesentium quia qui qui.','','krbt',2.83,0,'Modi consectetur rerum ipsam. Reprehenderit consequatur et dolore omnis nobis similique. Et dolores nostrum odit inventore. Explicabo voluptatem excepturi ut.',2,7,'1980-10-26 22:24:43','1988-11-05 04:50:09'),
(48,'Magni et quia alias molestiae ipsa.','','vahn',58052.41,0,'Molestiae similique eaque facilis debitis occaecati. Nostrum reiciendis sapiente rerum hic vel tenetur consequuntur. Eligendi velit voluptas perspiciatis. Culpa ea quidem qui quam consequuntur labore.',3,8,'1970-03-29 15:25:27','2009-11-29 07:43:17'),
(49,'Voluptatem voluptas id quibusdam quis non.','','uzwk',0.00,0,'Dicta eligendi dolor inventore est quasi placeat. Aliquid voluptatum voluptatem veritatis quae. Velit expedita excepturi eaque doloribus. Eligendi non laudantium nihil deserunt. Sunt inventore quod id enim quia.',4,9,'2017-08-05 05:49:00','1984-05-21 19:44:55'),
(50,'Ad unde quos occaecati et.','','qovg',999999.99,0,'Non exercitationem unde qui quod debitis sit molestiae. At placeat magnam et repudiandae ea. Earum eaque alias id est ducimus.',5,10,'1992-10-07 17:19:44','2008-11-18 22:05:48'),
(51,'Id illum in aut dolorem nihil sit.','','kxob',51062.46,0,'Repudiandae ratione non laboriosam in. Illo iusto rerum hic nam sunt sapiente. Qui occaecati numquam modi vel.',6,11,'1976-10-10 17:07:30','1972-09-16 13:11:28'),
(52,'Et rerum iusto illo recusandae fugiat.','','ojjc',211.52,0,'Sint tempore ea aut ea quo. Et est facere magnam vero qui sapiente. Nemo enim modi fugiat eaque rerum.',7,12,'2016-05-08 17:00:10','2018-07-01 15:02:52'),
(53,'Rem voluptates dolores aliquam rem quasi et omnis ut.','','xphz',6.42,0,'Itaque vitae at est reiciendis ut. Quas officiis enim debitis quasi temporibus. Qui a dolorem molestiae cumque doloremque est saepe.',8,13,'1996-10-27 21:50:25','1972-06-20 16:08:14'),
(54,'Ipsum ex voluptatem libero eum id fugiat cumque dolorem.','','fcaq',999999.99,0,'Ex cumque consequuntur qui inventore magni et non. Fuga est sunt est sit. Veniam sed corporis et facilis. Magnam nesciunt earum velit praesentium nostrum. Necessitatibus consectetur saepe reprehenderit assumenda commodi non ut veniam.',9,14,'2006-01-30 07:38:15','2019-06-17 18:55:21'),
(55,'Consectetur dolorum aspernatur reiciendis et nihil hic.','','wlos',0.00,0,'Unde inventore illo ipsam assumenda soluta dolorem ad. Vel placeat consequatur sit architecto voluptatibus sit. Qui ex molestiae aut sunt.',10,15,'1995-03-16 15:52:05','1976-10-14 07:43:28'),
(56,'Eos eum vitae sint omnis.','','zgtc',999999.99,0,'Est totam et dolorum nihil eaque non. Voluptatem quas officiis totam labore. Quia et quaerat omnis et non explicabo est.',11,16,'1999-10-07 10:48:45','2019-01-21 17:06:05'),
(57,'Praesentium veniam voluptatibus praesentium qui ea.','','bfig',55.64,0,'Ullam ab quia ducimus illum eveniet aut voluptas. Id voluptatem quo doloremque et nam. Velit necessitatibus non quos ducimus.',12,17,'2005-12-08 14:19:35','2008-10-28 04:25:19'),
(58,'Ducimus necessitatibus molestias qui consectetur.','','gxws',999999.99,0,'Eligendi atque et tempore temporibus quisquam voluptatem. Consequuntur perferendis harum saepe fuga quo maxime iusto quas. Pariatur accusamus eveniet rem. Corporis error repudiandae cupiditate.',13,18,'2016-06-29 07:43:46','1998-05-26 02:46:39'),
(59,'Quas sint consequatur voluptatem laborum nobis nemo in.','','mhlu',719539.80,0,'Iusto similique ex aut necessitatibus ut tenetur voluptatibus. Minima sed provident dignissimos in voluptatem saepe quasi quia. Et illum dolor cum aperiam quisquam optio quas amet.',14,19,'2020-04-05 06:15:31','2012-10-05 06:53:34'),
(60,'Consectetur cum doloremque qui repudiandae excepturi voluptas molestiae.','','biti',3.35,0,'Temporibus corporis autem neque vel. Ut et repudiandae consectetur. Animi eveniet mollitia eveniet molestiae voluptatibus.',15,20,'2002-03-25 12:37:20','2005-11-04 09:18:32'),
(61,'Eius eum pariatur explicabo ut voluptatem voluptatem.','','lpyj',0.00,0,'Sit et quia itaque praesentium. Harum adipisci dolores autem illo laudantium debitis sed. Rerum dolorem sed corrupti ut sed debitis.',1,1,'2002-02-01 13:54:17','1985-11-13 01:04:43'),
(62,'Ab nihil ut non nulla consequatur earum aut.','','ytfy',3294.49,0,'Quaerat fugit quia vel eligendi. Ut vero quos adipisci. Qui reiciendis magnam quo minus quod sequi dicta ut.',2,2,'2002-12-11 17:43:41','1981-07-08 11:22:59'),
(63,'Nihil nihil nostrum distinctio deserunt.','','cuyg',31.34,0,'Nisi at voluptatum fugit rem. Pariatur dolores et debitis. Nihil consectetur ratione quisquam. Fugit et ut dolor hic aut.',3,3,'2014-03-28 15:05:36','2005-08-13 23:57:49'),
(64,'Quod velit nisi ab sint possimus atque nihil.','','bxbt',77.00,0,'Repudiandae nulla totam est voluptatibus maiores tenetur aperiam ut. Quas cupiditate quia voluptatem quo. Sit dolore nihil et maiores sequi assumenda officiis.',4,4,'1989-08-04 04:25:09','1976-03-07 03:53:14'),
(65,'Voluptas illo eos et nihil et.','','evyg',22944.00,0,'Aut et aut dignissimos harum alias at. Sed ut incidunt ipsum pariatur dolor consequatur ut magnam. Consequuntur a est et officiis quibusdam accusamus.',5,5,'1993-02-26 07:33:53','2019-11-01 21:22:24'),
(66,'Deleniti at nam et fuga quis eius.','','gumm',0.00,0,'Magnam ipsa beatae est reiciendis aut at. A iusto iure dolorem voluptas voluptas excepturi quisquam. Vel maxime ea aut suscipit debitis fugit.',6,6,'1978-05-24 03:33:44','2019-10-19 04:28:15'),
(67,'Tempore quo eligendi alias.','','npwz',35094.52,0,'Rerum ut atque eligendi dolores temporibus. Perferendis dolorem quidem repellendus labore velit. Adipisci hic deleniti facere maiores. Aliquam ipsa voluptates autem aut.',7,7,'2019-05-04 13:05:48','1974-09-05 22:58:27'),
(68,'Quibusdam facilis enim dolorem earum expedita deleniti.','','cite',2.67,0,'Fuga iure eius aliquam nesciunt similique voluptatem ex voluptatibus. Alias omnis ea totam. Est qui nihil vel dolores eos harum. Dolorem repellendus veritatis perferendis fugiat id. Voluptatum minima libero in iure error ut alias.',8,8,'2020-11-05 10:04:47','2016-01-26 08:40:01'),
(69,'Voluptatibus vero iure minus ea.','','emxl',147236.00,0,'Voluptas quasi ipsum odit blanditiis suscipit vero dolorem. Inventore fugiat eos asperiores dolores debitis explicabo ad quod. Non quia distinctio qui non vel ea. Sapiente illum laboriosam sunt ullam vitae ipsa perferendis.',9,9,'2013-06-22 14:30:52','1989-06-06 07:04:53'),
(70,'Atque incidunt et facere in possimus.','','kzqs',1.35,0,'Sequi itaque ex consequatur exercitationem aut alias ipsum soluta. Amet ad sunt cupiditate eos quos.',10,10,'2004-12-04 15:18:46','2000-05-04 03:16:57'),
(71,'Quibusdam fugiat et ipsum in ipsa sequi.','','ifvx',0.00,0,'Sed ratione quis aliquam libero ut perferendis. Velit fugit repellendus aut provident eum eum. Eius consequuntur maiores iusto consequatur.',11,11,'2005-06-27 12:09:50','2013-06-09 13:42:59'),
(72,'Magni sint cupiditate vitae fugiat quaerat expedita.','','dqnw',0.03,0,'Vel ut corporis nisi occaecati error. Dolor repellat nobis illo voluptate. Aut beatae sit et facilis repudiandae. Dignissimos ad necessitatibus modi repellat tenetur numquam recusandae eos.',12,12,'2003-09-06 02:53:55','1981-02-22 05:51:17'),
(73,'Quisquam omnis fugiat earum.','','iwmj',18.20,0,'Fugit a accusantium qui maxime iste quod. In repellat voluptates omnis laboriosam tempore velit sit. A in in aut accusamus dolor rerum.',13,13,'2003-08-12 08:30:05','1989-11-17 23:20:17'),
(74,'Perspiciatis quibusdam ipsa eveniet ab.','','tcmx',999999.99,0,'Et cupiditate ea similique est. Molestiae eligendi maxime hic. Quidem nihil enim assumenda dolore doloremque quidem molestiae.',14,14,'1990-09-29 10:08:52','2013-08-20 03:50:11'),
(75,'Sint omnis ratione et dicta quia temporibus.','','gyjk',3406.22,0,'Qui enim labore totam ab autem aut ut. Est blanditiis officia voluptas ducimus in magnam. Cum nisi dicta repudiandae ratione est omnis nulla.',15,15,'2014-04-21 17:36:17','2008-11-16 02:08:16'),
(76,'Vel atque ratione inventore autem pariatur non.','','stee',1368.56,0,'Dolor hic doloremque aliquam laboriosam quod voluptatem sunt. Aperiam voluptatem nemo fugiat placeat facere et et atque. Soluta aut quae consequatur molestiae saepe exercitationem dolores. Placeat natus nam sunt tempora et cumque.',1,16,'1983-04-14 05:17:38','1980-09-11 13:33:48'),
(77,'Quas aut quis iure quia libero.','','exhm',126.49,0,'Vero molestias sint possimus magni labore. Et magni fuga praesentium. Non doloremque vero mollitia quos excepturi.',2,17,'1982-10-23 23:05:24','2018-05-17 03:13:59'),
(78,'Incidunt ipsam maiores iure.','','yfuq',0.00,0,'Veritatis illum saepe eos doloremque quidem excepturi molestiae. Voluptates alias quo enim qui ut culpa non. Omnis iste doloribus suscipit voluptatem assumenda. Corporis sequi itaque reiciendis repellat aspernatur beatae fuga.',3,18,'1983-04-01 00:56:50','1977-07-27 15:02:17'),
(79,'Sed repellat saepe eos.','','mzfe',3.13,0,'Unde consequatur deleniti modi ipsa praesentium eveniet eveniet est. Iure nostrum voluptas dolorum earum ratione est. Et modi culpa eum vel est.',4,19,'1971-03-03 06:47:06','1981-03-23 05:09:35'),
(80,'Nemo quibusdam sed qui repudiandae qui.','','lxol',70412.78,0,'Id eveniet illum perspiciatis explicabo qui. Magni reiciendis porro natus sit consequatur est qui. Quod tempore vitae numquam facere fugit.',5,20,'1995-06-21 17:16:53','1982-02-17 21:12:28'),
(81,'Quia cupiditate perferendis fuga.','','rhpg',999999.99,0,'Ut quibusdam blanditiis rerum molestiae doloremque non temporibus. Dolor qui vel quia libero beatae.',6,1,'2001-09-10 06:14:55','1987-12-27 11:44:45'),
(82,'Et itaque debitis consequatur nihil optio voluptatem maxime.','','wcmm',999999.99,0,'Corporis nemo dolores consequatur beatae. Et qui a dolorem porro natus ipsam. Consequatur sit nesciunt qui similique.',7,2,'2018-12-12 17:16:31','2023-11-10 09:46:39'),
(83,'Nihil architecto nisi cumque.','','uwvm',0.00,0,'Repellendus sint voluptatum quia perspiciatis et. Dolor harum eligendi omnis et eos molestias asperiores. Consequuntur quia molestiae quis officia eius nam accusantium esse. Consectetur nobis quibusdam ducimus error.',8,3,'2007-04-18 00:43:56','2018-10-26 05:53:08'),
(84,'Delectus quasi tenetur itaque saepe aut voluptas dolorum.','','azes',999999.99,0,'Et ea eveniet qui totam et deserunt. Dolores ut est accusamus et. Sed molestiae eveniet aut eveniet.',9,4,'1971-08-04 08:18:57','1999-08-28 07:21:51'),
(85,'Enim eveniet eos eaque qui.','','vocs',999999.99,0,'Expedita aut omnis sint minima repellat. Ut harum iure praesentium adipisci nihil. Et ut consequuntur qui quas. Et magni asperiores officia.',10,5,'1980-06-03 15:30:03','1987-02-09 18:38:28'),
(86,'Facere ad sed et commodi id.','','xfez',1653.64,0,'Esse illum eum atque aut maxime maxime repellat. Ducimus aut dolores laboriosam commodi nobis dolorem. Delectus eos dolor velit quia est qui placeat quidem.',11,6,'2009-12-09 12:28:30','1976-03-03 16:15:16'),
(87,'Ducimus laboriosam sit blanditiis exercitationem.','','ofgx',1554.23,0,'Ut dolores et sit libero quia doloribus. Ut accusamus quia aliquid aperiam voluptatem repellendus. Laborum minus aut optio itaque quia architecto qui quo. Qui omnis quis doloremque dolorem voluptatem.',12,7,'1997-06-23 02:53:02','2022-06-14 17:30:03'),
(88,'Autem qui iusto tempora quisquam necessitatibus eum nulla.','','dcmr',999999.99,0,'Voluptates dolores nobis sint id eius. Voluptas temporibus aut optio et eos dignissimos et in. Aut porro qui in sint et sit.',13,8,'1992-08-03 18:56:31','1992-09-13 18:58:17'),
(89,'Est omnis totam laboriosam.','','eeyv',4.46,0,'Aut facere aut sint et qui tenetur sunt. Et autem maiores porro tenetur amet. Quisquam et dolorum aut illo quis est temporibus sint.',14,9,'1997-11-24 09:53:06','1979-05-12 10:34:48'),
(90,'Sint mollitia est blanditiis.','','pehk',10.85,0,'Et doloremque nulla est vitae atque et debitis. Est temporibus qui rerum dolor vero. Officiis quibusdam sed adipisci voluptatem.',15,10,'1979-10-10 21:34:17','2011-02-04 01:20:17'),
(91,'Totam voluptas earum accusantium dolores doloremque.','','irgt',8636.89,0,'Autem omnis ea ut reprehenderit consectetur. Hic officiis dolore facilis deleniti fugit sit. Commodi repudiandae praesentium consequuntur quod omnis quasi voluptatem. Explicabo ut fugiat reiciendis nam.',1,11,'1987-04-25 15:06:15','1998-08-20 03:40:44'),
(92,'Ratione ut necessitatibus dolorem in.','','bfhx',3.00,0,'Reiciendis odit autem ex eum. Harum ut eos maxime inventore. Vitae sed eius sunt. Dolorem aut molestiae nemo.',2,12,'2003-12-27 08:09:01','2013-08-19 04:28:26'),
(93,'In est modi rerum hic impedit impedit.','','yefa',1.20,0,'Veritatis non amet quo sunt sit dicta. Consectetur rerum voluptatibus accusantium quia quasi. Consectetur aperiam labore reprehenderit.',3,13,'2006-02-19 18:30:40','1971-10-12 08:07:45'),
(94,'Autem ea inventore perspiciatis nisi.','','oazw',999999.99,0,'Velit aliquam deserunt dignissimos illum. Perspiciatis odit occaecati ut a molestiae. Incidunt iste asperiores asperiores natus. Blanditiis necessitatibus quos deleniti sit voluptatem.',4,14,'1971-09-25 16:27:18','1971-12-25 09:14:08'),
(95,'Voluptates architecto quos qui consequatur.','','aati',0.00,0,'Quia voluptate asperiores blanditiis et rerum aut expedita. Animi iste et consequatur necessitatibus eveniet id enim nihil. Eveniet explicabo eveniet aspernatur ab dolores.',5,15,'2019-04-28 01:23:50','2005-02-10 04:22:01'),
(96,'Quisquam itaque officiis dicta.','','ovva',999999.99,0,'Delectus eveniet consequuntur aut quia neque qui. Animi necessitatibus saepe culpa doloribus similique est fugiat. Modi quis porro voluptatem unde sit.',6,16,'1971-09-27 05:36:04','2021-04-23 07:28:17'),
(97,'Rerum omnis nesciunt mollitia et voluptatem et illo.','','zmwk',351155.10,0,'Minima distinctio cupiditate omnis quos recusandae dolores ex. Modi est officiis asperiores pariatur praesentium eligendi iusto. Nesciunt perferendis tempore iure sed occaecati.',7,17,'1982-03-31 04:56:57','2003-03-21 02:11:54'),
(98,'Non molestias excepturi eveniet dolorem consectetur dolorum.','','ypxe',1272.41,0,'Nam dolorum similique quasi corporis autem aliquid. Est quod aut enim voluptate. Nostrum dolorem maxime et consectetur aliquid consequatur ut. Quis fugiat totam non praesentium.',8,18,'1977-10-16 11:22:20','1977-08-09 18:19:12'),
(99,'Dolorem est quasi suscipit est magnam rerum quo.','','aszh',533671.71,0,'Et esse sit a voluptatibus quo qui iusto. Quae autem id voluptatem tempore natus. Veritatis animi repellat dolores qui minima saepe quis. Perferendis quisquam id voluptatem sunt dicta rem qui.',9,19,'1984-02-14 16:42:29','2002-02-15 03:00:02'),
(100,'Consequatur non sequi voluptatem natus.','','xkoo',2.84,0,'Nesciunt et autem neque error natus. Eum impedit beatae explicabo autem. Ab consequatur temporibus nihil repellendus ut esse alias eius. Architecto facilis commodi aut facilis sed.',10,20,'1996-05-04 15:45:20','2010-07-09 15:07:35'),
(101,'Quis corrupti molestiae corrupti dolore ullam.','','fozu',0.73,0,'Ut eum sit quae. Quis inventore dicta quo quisquam officiis et nisi. Omnis aut quod perspiciatis recusandae est.',11,1,'1992-03-23 10:50:15','2020-02-11 15:14:09'),
(102,'Ut temporibus eum autem ut fugit.','','vfxb',999999.99,0,'Est nihil sed totam provident deserunt nihil sunt. Est quaerat voluptas officia dicta. Velit blanditiis culpa harum. Ducimus dolores ipsa illum enim maxime sunt.',12,2,'1990-05-10 21:33:19','2024-01-18 09:14:54'),
(103,'Est et et laborum quaerat omnis.','','ulgo',12367.82,0,'Non dolorum vero amet sunt ipsum quia consectetur quas. Provident animi omnis quae possimus rerum a voluptatem. Quidem animi laudantium repudiandae.',13,3,'2013-12-08 19:46:15','2013-03-28 07:03:39'),
(104,'Optio eos omnis maiores sit voluptatem corporis unde.','','tkle',9002.25,0,'Iure hic omnis quam. Amet esse enim deserunt incidunt perferendis repellendus. Aperiam inventore fuga harum. Amet accusantium ut ullam est accusamus voluptatem.',14,4,'2021-09-18 17:08:45','1996-02-28 00:49:04'),
(105,'Facilis incidunt ullam dolor voluptas omnis.','','tpmi',9.02,0,'Molestiae occaecati eos sapiente sit enim voluptas. Nostrum unde earum libero. Voluptatum temporibus amet cupiditate aut perspiciatis officia. Eveniet ut sint et totam temporibus ratione at consequatur.',15,5,'1994-03-06 01:30:50','2001-09-22 04:35:56'),
(106,'Doloremque delectus sunt molestias impedit aperiam rem qui debitis.','','bxoo',597.80,0,'Rerum qui ipsam aut. Eligendi provident occaecati aut ut quae. Qui nesciunt nemo exercitationem doloremque dolores iste.',1,6,'2014-07-22 00:28:30','1971-01-05 00:02:21'),
(107,'Dicta voluptas cum repellat repellat dolores.','','fykl',77.00,0,'Cumque sunt repellat ipsum aut aut. Nihil ex dolorum tenetur sint.',2,7,'2022-08-04 12:47:10','1988-03-27 04:11:57'),
(108,'Ut labore optio vero ut quia.','','ynuo',999999.99,0,'Iste et in sequi minima ut. Ut qui et modi quia. Officia magni eos nisi. Aut ad alias eligendi et quis. Suscipit fugit nihil dolores saepe voluptatem quidem facere.',3,8,'1998-02-27 00:55:15','2022-05-12 10:34:19'),
(109,'Nobis sit aut ex officiis et commodi.','','hujk',82606.77,0,'Beatae quia ut totam provident. Enim praesentium optio reiciendis. Et reprehenderit sed odit et error.',4,9,'1986-10-14 04:47:03','1974-06-07 10:16:28'),
(110,'Dicta dolore consectetur doloremque numquam amet qui.','','jmky',5386.09,0,'At excepturi commodi dolore facere. Cupiditate totam enim velit qui ex. Unde voluptate commodi veniam exercitationem suscipit.',5,10,'2020-11-07 00:07:02','1989-10-19 00:21:50'),
(111,'Aliquid voluptas libero cupiditate omnis nam quis.','','xzlr',8510.81,0,'Soluta ea quo accusamus in. Mollitia atque a id omnis id autem quidem. Blanditiis sit corporis quia dolorum ipsam hic.',6,11,'2019-02-27 13:22:50','1996-11-11 23:05:02'),
(112,'Veniam eum ut occaecati consequuntur provident accusamus dolores.','','kvmk',999999.99,0,'Dolores officiis necessitatibus voluptas consequatur doloremque ducimus. Nesciunt id rem id et nisi. Qui ab voluptas praesentium reprehenderit qui. Aut et commodi suscipit error error ab eligendi.',7,12,'1971-09-03 15:50:20','1987-10-17 13:20:01'),
(113,'Atque error eligendi voluptatem et at voluptatem.','','wybk',999999.99,0,'Magni odit perferendis autem modi qui. Deserunt neque sit et aliquid qui vel voluptatem dolores. Et placeat magnam et deleniti debitis.',8,13,'2009-06-06 20:08:53','1980-12-27 11:50:11'),
(114,'Dolorum culpa architecto quis animi libero dolor consectetur ea.','','tent',3008.18,0,'Qui velit dolores et eum. Minus ullam qui et qui. Magnam delectus nulla voluptates deleniti et at placeat. Iusto consequatur distinctio quidem quia molestiae sapiente tempora voluptatibus.',9,14,'1983-12-08 01:56:42','2002-03-05 14:34:17'),
(115,'Quas qui voluptatem quisquam eos est hic id libero.','','mrqr',999999.99,0,'Voluptas ut provident maiores nihil nostrum nostrum eos. Maiores in libero vel voluptates ut. Iure sit aut minima numquam. Sed debitis excepturi quo culpa magnam dolores.',10,15,'1989-10-14 05:03:51','2002-05-22 13:11:59'),
(116,'Similique vero omnis quos in reprehenderit eum voluptatem.','','xrum',999999.99,0,'Voluptatum quaerat sed sed autem dolorem sit. Quis sit cupiditate dignissimos. Deleniti dicta et vel nesciunt ad non. Magnam asperiores vero autem quas qui. Odit sit consequatur ab repellat dolor et sit.',11,16,'1982-09-14 16:54:56','2018-01-28 13:32:46'),
(117,'Dignissimos aspernatur animi minus sit quia sed.','','adxg',999999.99,0,'Quae ad et autem magnam voluptatem voluptatem. Mollitia vero accusantium blanditiis autem. Non exercitationem quia itaque praesentium nulla occaecati. Qui quasi nobis consequatur.',12,17,'2019-04-30 11:46:12','2020-12-28 08:44:03'),
(118,'Et qui nostrum aut animi eligendi.','','wuob',103822.66,0,'Libero sed illo dolorem maxime et iusto. Est in iure quas non dolores ut mollitia. Voluptas ut est est debitis totam.',13,18,'1978-05-06 11:09:20','2002-03-14 19:20:25'),
(119,'Dolor culpa quas aut itaque.','','neir',0.00,0,'Vel ipsa et est molestiae asperiores dolor iusto. Incidunt est et voluptas inventore eum. Minima harum magnam sed mollitia doloribus.',14,19,'2014-07-25 09:45:18','1991-05-14 02:07:23'),
(120,'Quo recusandae aut qui quam autem ut optio.','','dyrn',999999.99,0,'Ad quisquam repellendus sapiente non quisquam pariatur cumque. Aspernatur illo voluptatibus adipisci doloribus ea aliquam cum. Sit sunt harum dignissimos eos quia ut voluptatem. Qui totam cumque explicabo aut et provident voluptatem.',15,20,'1994-04-25 08:43:02','1977-05-13 14:45:16'),
(121,'Qui distinctio alias ut.','','wcgf',0.00,0,'Et et sint repellendus exercitationem corrupti. Aspernatur sunt ab adipisci et iusto debitis eos. Dolorem qui minima ea rerum accusantium ad. Quia aut dolor deserunt deleniti ipsam voluptatem.',1,1,'1983-01-07 15:54:48','1998-03-18 07:50:10'),
(122,'Animi hic ut cumque eum adipisci.','','vdpk',1.66,0,'Atque esse ad repellat. Tempora quaerat nihil expedita esse accusantium et natus. Necessitatibus eum minima autem at.',2,2,'1995-11-23 14:58:19','2017-10-04 04:12:08'),
(123,'Unde quia eligendi distinctio qui ex asperiores.','','tmhs',10049.56,0,'Inventore iste a est minima unde facere. Praesentium dolorum nesciunt ab expedita quos. Vitae natus nemo delectus.',3,3,'1980-03-25 10:53:30','1975-05-21 12:37:18'),
(124,'Dignissimos ut velit dolorem veritatis accusantium cumque.','','ulsd',999999.99,0,'Sunt veritatis fugiat numquam aspernatur. Ipsam natus maxime id id consequatur. Harum ut tempora odit et culpa voluptas.',4,4,'1998-08-21 08:31:32','2001-07-29 08:01:35'),
(125,'Non eius qui excepturi et qui eveniet consequatur.','','eypj',20.41,0,'Illum omnis eos enim praesentium. Est aut adipisci qui vel. Aperiam quaerat consequuntur labore nobis est.',5,5,'2006-07-11 09:00:56','2009-01-24 19:06:50'),
(126,'Eaque possimus repellat ea velit in quia.','','rdja',16195.67,0,'Id dicta deleniti non. Debitis dignissimos sint maxime exercitationem voluptatem commodi quis aperiam. Recusandae error assumenda consectetur harum itaque. Nihil quasi maxime adipisci illo et.',6,6,'1991-07-01 17:57:04','1987-07-16 09:55:19'),
(127,'Fugit eos ducimus doloribus minus exercitationem illo.','','lyzi',10.25,0,'Pariatur delectus amet voluptatum. Nulla quia culpa vel sed. Sed a commodi cumque voluptatem. Nulla nam molestiae mollitia consectetur placeat ab.',7,7,'2003-06-14 11:44:16','1972-05-14 00:01:05'),
(128,'Corrupti ut distinctio fugit aut quo at.','','jxnh',385308.96,0,'Illo illo et ipsam suscipit voluptatibus quidem aliquid ullam. Fugit ipsum ut ut possimus quo laboriosam ipsam a. Nemo dignissimos velit omnis distinctio ut enim ipsum.',8,8,'2022-02-10 13:56:13','2015-06-29 08:36:36'),
(129,'Rem omnis esse et nostrum sapiente rerum repellendus.','','kuij',605689.85,0,'Necessitatibus ea ut vel magnam odit omnis pariatur. Laudantium totam natus non sequi enim excepturi quia. Quam esse at facere consequatur laborum.',9,9,'1999-09-26 09:46:34','2018-05-03 03:18:26'),
(130,'Perferendis aspernatur qui dolor modi exercitationem.','','emiy',446069.37,0,'Blanditiis nobis non totam omnis reiciendis distinctio rerum. Et repudiandae ut dolorem voluptatem.',10,10,'2012-11-18 19:46:17','2019-03-26 20:17:37'),
(131,'Fuga blanditiis qui qui quo omnis sit quia.','','zief',398.00,0,'Esse dicta at enim quas. Ut odit et eos in quis voluptas. Ipsa fuga eligendi voluptatem dolorem aut tempora. Blanditiis perspiciatis nostrum mollitia repellat voluptatem est in.',11,11,'1977-09-16 00:46:39','1977-04-27 11:16:00'),
(132,'Soluta porro at in ad iure atque.','','gasf',544.22,0,'Fugit odit praesentium cum sit non. Delectus praesentium ut cum ratione debitis et hic. Sunt et at id.',12,12,'2001-10-15 18:00:11','2011-01-16 01:06:31'),
(133,'Sunt quidem nemo accusamus ut.','','ocmt',104921.30,0,'Assumenda dolor laboriosam velit vel magni autem. Quidem vitae sed repellat est quod. Consequatur ex tempore quo voluptatem perspiciatis.',13,13,'2001-05-25 11:13:00','1994-07-17 15:25:36'),
(134,'Explicabo maxime ut vero nihil tempora.','','lcee',0.00,0,'At quam excepturi tenetur quas. Aperiam eum nam repellat nemo debitis et. Sequi dolore consequatur adipisci et qui omnis nostrum. Aut voluptas ad et temporibus inventore corrupti voluptas. Quod ullam tempore ut sed unde.',14,14,'1979-10-15 06:12:08','1990-05-22 10:16:48'),
(135,'Ut esse accusantium magnam aut illum dolores.','','afks',999999.99,0,'In quam aperiam et quo qui repellat. Possimus et voluptatem et commodi. Ut doloremque ab enim et consequatur tenetur modi amet. Nobis ratione expedita ducimus distinctio ut maxime.',15,15,'1991-02-03 06:40:46','2004-10-31 13:06:32'),
(136,'Sint explicabo velit voluptas culpa.','','emfp',999999.99,0,'Quis delectus iusto et quasi consectetur consequatur. Nihil aspernatur consequatur sequi nemo ullam exercitationem. Atque rem ratione omnis. Exercitationem illum et sed molestiae.',1,16,'2018-03-31 04:04:09','2006-06-05 06:53:08'),
(137,'Ut tempore et sit magni natus.','','wovl',999999.99,0,'Ipsa velit molestiae praesentium at. Nesciunt ut tenetur debitis quibusdam dolor. Neque dolor eos natus ea quasi est.',2,17,'1990-05-01 02:33:19','2009-09-04 12:15:25'),
(138,'Sit quasi velit molestiae neque ut sequi.','','ygsc',848169.00,0,'Aut maiores cumque quidem et nam illum dolor ut. Expedita voluptas vitae eius ratione sit consectetur. Voluptatibus error nulla et autem labore voluptatem molestiae.',3,18,'2009-07-04 10:36:32','2022-07-19 19:20:34'),
(139,'Et voluptas nobis possimus possimus saepe alias tenetur.','','luix',3030.82,0,'Iure enim quidem itaque quos excepturi dolorem. Eum ut ab ea reprehenderit vel accusamus sint. Repellat omnis corrupti enim ut beatae eos et. Deserunt neque error magni ut sed.',4,19,'1977-03-05 21:08:53','2021-02-15 17:45:59'),
(140,'Repellendus nostrum autem tenetur eveniet accusamus fugit.','','beqd',14171.00,0,'Soluta et ut incidunt perferendis suscipit. Fugiat et ut culpa nisi mollitia facilis. Et aliquam quo ab sed libero at tempore.',5,20,'1999-05-19 17:59:07','1993-11-08 19:30:43'),
(141,'Odio enim aut consequuntur facilis.','','minb',557130.21,0,'Ut ratione dolores et quae in reiciendis at. Quis aperiam officiis dolorem eligendi dolorem. Eius ut hic rem ab sed ea officia. Ut et rem velit commodi ducimus.',6,1,'2017-10-23 09:43:52','1972-11-21 14:36:28'),
(142,'Corrupti sint debitis nulla ipsa provident.','','yifv',2266.60,0,'Fuga officia temporibus aut voluptas atque. Adipisci necessitatibus aut vel neque pariatur. Reprehenderit nihil nobis nulla et nostrum. Omnis qui et aut.',7,2,'1992-11-23 07:21:41','2005-08-17 23:13:36'),
(143,'Officia ut est nesciunt fugit.','','gllk',999999.99,0,'Aut rerum provident quo eveniet. Voluptatem eum autem aperiam. Eum quia ipsam quo eum quia. Rerum itaque corporis alias sit qui.',8,3,'1974-06-12 23:20:58','1976-05-01 07:29:42'),
(144,'Qui amet nihil nulla asperiores tenetur ut consequatur nulla.','','hnzn',999999.99,0,'Consequatur veritatis aut sit. Et distinctio velit sapiente rerum. Natus natus omnis corporis eos.',9,4,'2018-12-02 15:28:54','1973-12-19 15:17:14'),
(145,'Qui dicta qui eligendi aut et sit.','','ptnc',999999.99,0,'Et pariatur accusamus explicabo cum repudiandae corrupti. Veritatis eveniet saepe porro laborum. Temporibus quia aut itaque et eos. Laudantium consequatur velit hic ducimus et ratione.',10,5,'2021-04-18 16:04:38','1990-02-20 13:11:34'),
(146,'Veniam facilis sint aut illum.','','wrdx',999999.99,0,'Amet dolores quae nobis nobis. Aliquam aspernatur quasi pariatur laudantium eum ut. Et temporibus voluptatibus ut in.',11,6,'1997-02-21 06:46:31','1986-08-02 17:19:46'),
(147,'Maiores reprehenderit occaecati libero officiis dolor et labore.','','mhnq',187.72,0,'Molestiae nisi in at aut molestiae sint. Eveniet ducimus aut ut et ad cum iste. Quos ipsum ad totam rerum. Quaerat exercitationem dolores quia assumenda debitis magni.',12,7,'2018-06-15 06:30:08','1991-07-20 21:20:07'),
(148,'Deserunt facilis ex consequuntur et eveniet.','','ddcd',0.00,0,'Similique et quidem quis non non et. Ex corporis modi consequatur. Minima aut placeat id voluptatum quia non possimus expedita. Officia dolorem autem vel itaque.',13,8,'1997-05-08 20:14:54','1984-07-13 04:59:29'),
(149,'Dolorem unde nobis id sequi sapiente incidunt.','','trwy',167.68,0,'Voluptatum sed eveniet ducimus consequatur at reprehenderit. Culpa consequatur eius ducimus est temporibus. Et ab sed eos labore ullam molestias vero. Et est aliquam quisquam saepe tenetur.',14,9,'1978-02-28 09:30:36','1988-03-28 13:58:07'),
(150,'Harum esse nulla impedit occaecati vel aut placeat harum.','','evtu',63782.83,0,'Quos vitae aut enim in. Aperiam ut vel fugiat.',15,10,'1990-08-05 18:36:50','2003-08-23 03:30:27'),
(151,'Repellendus accusamus ut et.','','jiiv',8133.09,0,'Sint rem rerum debitis et eveniet est magni. Ut rem iure qui enim perspiciatis. Qui voluptatem est libero quas eius voluptatem corporis. Alias quia eos blanditiis autem.',1,11,'2013-05-30 20:54:58','1971-12-09 17:53:29'),
(152,'Voluptatem natus aut molestias delectus recusandae eum et voluptas.','','fmai',999999.99,0,'Officia eveniet non temporibus ut vero id. Reprehenderit velit ut iusto ut. Non voluptatem qui maiores porro cupiditate consequatur cupiditate.',2,12,'2021-12-08 17:11:56','1971-12-17 02:07:25'),
(153,'Et sit est quasi consectetur repudiandae dolor hic in.','','huaz',999999.99,0,'Ut error cumque autem iusto et aspernatur. Odit vitae quis maiores dolorum pariatur quos eum.',3,13,'2003-06-24 02:37:14','2011-04-15 22:58:39'),
(154,'Excepturi maxime ut beatae odio itaque veniam voluptatem.','','kvjl',248.32,0,'In sunt error amet aperiam pariatur. Sed minima corporis sit qui ipsam autem. Dolor porro est ea voluptatem. Aperiam qui dolores ipsam necessitatibus repellat.',4,14,'2002-04-25 23:57:59','2021-02-02 17:14:57'),
(155,'Et ut ipsa consequatur expedita facere.','','lyzw',174.60,0,'Facere laudantium voluptatem ut. Sed sed quia omnis sed quisquam fugit. Quis officiis minima ut eligendi dicta inventore. Fugit repudiandae in ullam impedit soluta repellat nisi.',5,15,'1982-09-23 20:21:51','1990-07-21 00:28:14'),
(156,'Aut natus tenetur qui sit facilis rerum.','','hhay',529245.02,0,'Dolore iusto quo nobis quisquam. Aliquam et est facilis voluptatem error tempore est. Cumque nihil numquam et consequatur et quia nulla.',6,16,'1970-05-18 13:10:14','1980-02-21 18:21:28'),
(157,'Voluptas aut in omnis quis tempora iure quia.','','xalv',999999.99,0,'Aut distinctio enim ea veniam facere sunt quos est. Nemo perferendis vel atque eligendi est numquam distinctio iusto. Nostrum et ut consequatur ipsa nostrum autem qui.',7,17,'2015-05-24 20:05:03','1999-09-25 00:00:51'),
(158,'Eos dolorem aliquam vel voluptates voluptatem enim fuga.','','vyjd',1034.06,0,'Voluptas tempore error voluptas atque. Et rerum eum sunt velit eligendi facilis beatae maxime. Molestiae dolorum magni officia sed veniam quo nihil.',8,18,'2016-01-02 11:04:30','1973-06-30 08:16:25'),
(159,'Quia repellendus eum laudantium et.','','bdot',221586.24,0,'Natus illum animi quas magnam qui. Vero maxime quia doloremque velit beatae dolores. Laboriosam dicta in et id id. Nesciunt cumque nihil aut rerum earum odit.',9,19,'1986-08-26 08:01:52','1983-09-10 04:36:09'),
(160,'Fuga ipsam tempora nulla amet doloribus similique.','','nfeu',999999.99,0,'Non laudantium quas harum doloremque modi eum quam. Voluptatibus repudiandae et consequatur necessitatibus officiis. Qui illum nisi consequatur autem sit error.',10,20,'1993-10-09 08:15:06','1974-12-08 21:11:40'),
(161,'Quia quos modi reiciendis.','','ryxo',999999.99,0,'Facilis ab explicabo odio vel dicta eveniet sed. Et tempore atque alias et cupiditate rerum a quod. Consequatur deleniti assumenda et et delectus. Facilis earum aut ut culpa est ratione.',11,1,'1980-08-16 01:44:01','2005-07-05 20:04:31'),
(162,'Nisi quisquam nihil et a ut soluta blanditiis.','','izkn',357.38,0,'Odio ducimus inventore ea. Nesciunt iusto quibusdam dolores eum deleniti vero enim. Nihil accusamus aliquid sit sit exercitationem ipsam. Cum facere non reiciendis aspernatur harum quaerat et.',12,2,'1979-08-10 06:40:39','2018-12-22 18:25:02'),
(163,'At accusamus nulla necessitatibus ullam quaerat repudiandae.','','rwml',23.74,0,'Fugiat qui dignissimos amet magni maxime eos. Modi incidunt odit et voluptatibus sequi id ut.',13,3,'1998-06-06 22:14:23','1998-01-15 00:53:25'),
(164,'Et ipsa tempore neque sit sint non ut ad.','','yiev',990564.10,0,'Id dolore distinctio mollitia quia nesciunt. Aliquam eligendi repudiandae vel. Dolorem sed animi molestiae quidem.',14,4,'1970-03-24 07:40:50','1993-04-26 13:54:13'),
(165,'Animi voluptas provident aut rerum enim.','','cpon',999999.99,0,'Expedita optio neque itaque similique non rem maxime. Dolorem repudiandae delectus facilis. Nam accusamus fugiat illo.',15,5,'1999-02-01 16:19:17','1972-12-26 19:08:40'),
(166,'Fugiat ut dicta autem dignissimos eligendi.','','bjzm',66529.18,0,'Voluptas saepe consectetur quo labore voluptatem tempore ea. Quaerat aut error asperiores. Ut suscipit assumenda officia. Nisi ipsam eveniet molestiae.',1,6,'1995-11-24 11:03:12','2017-04-06 12:54:10'),
(167,'Ut qui minus iusto aliquam quam sit.','','acqs',999999.99,0,'Consequatur et ad molestiae sed. Dicta quaerat ea possimus atque quis quos sed. Et facilis eligendi similique id laboriosam et quo. Est tenetur quia quia illo et magni debitis.',2,7,'1981-05-13 10:43:03','2000-04-05 01:25:59'),
(168,'Et consectetur eos recusandae iste quia adipisci harum.','','rqln',0.00,0,'Ut autem totam officiis voluptatem. Labore nam expedita veniam in natus repellendus. Dolor dolor officiis qui corporis autem commodi mollitia. Aut provident eum molestiae laboriosam est laborum.',3,8,'1978-10-10 03:40:00','1992-05-21 15:22:12'),
(169,'Ut sed quos illum sunt in iusto labore.','','aric',7702.89,0,'Vel est velit nesciunt porro voluptatum. Eum qui cumque ex consequatur maiores alias saepe veritatis. Quaerat aliquid totam enim aperiam ullam modi expedita. Porro qui nemo quod blanditiis et cupiditate ad eligendi.',4,9,'1981-12-25 03:40:12','2010-07-15 14:00:04'),
(170,'Assumenda illum dolor enim quia voluptas.','','savw',10.33,0,'Voluptatem et facilis sit vitae rem dolores et. Sapiente quia ut et esse consequatur accusantium. Iste vero ut aut eum voluptas ut.',5,10,'2020-09-19 07:05:39','1997-01-25 12:42:28'),
(171,'Voluptates nihil corrupti alias explicabo ipsa quod optio veniam.','','jcgz',17.16,0,'Molestiae exercitationem enim mollitia aperiam perferendis. Iure temporibus quidem adipisci nesciunt. Consequatur mollitia at sit a architecto neque. Eum amet mollitia corporis dignissimos quas quis.',6,11,'2006-12-16 18:02:06','1977-01-04 20:23:36'),
(172,'Eum modi necessitatibus cupiditate odit provident et qui.','','zxbb',971.60,0,'Eaque nam reprehenderit sit est dolorem. Sunt ut commodi similique sequi in. Quas sunt cumque quaerat cupiditate voluptas. Dolorem inventore dolorem dignissimos et labore ullam voluptatem.',7,12,'2012-05-16 00:31:25','2004-10-27 10:05:35'),
(173,'Iusto voluptas expedita quaerat nihil dolor.','','eqww',558890.35,0,'Illo qui sed nesciunt in veniam nisi. Ut maiores porro distinctio et maiores. Sunt et laudantium deleniti repellendus. Odio laborum dicta eum illum incidunt.',8,13,'1982-11-19 17:40:07','1982-08-01 19:15:38'),
(174,'Cupiditate tempora perferendis occaecati minima ex.','','ynvr',879858.91,0,'Voluptas atque quia voluptatibus animi maxime sunt molestias hic. Sunt dignissimos error aut incidunt laudantium quia id aut.',9,14,'1998-03-01 09:35:06','1983-06-15 03:51:50'),
(175,'Sint possimus animi dolor fuga.','','qgxc',27.85,0,'Eveniet velit accusantium animi ad. Rem est et deleniti quo quae fuga. Consequuntur aperiam similique ut libero.',10,15,'2004-09-03 04:59:07','1987-05-08 14:19:29'),
(176,'Dolorem delectus debitis eum.','','lxcn',0.00,0,'Quae nisi reiciendis quo. Libero animi nam enim totam. Nihil assumenda animi laborum quasi est officiis sit. Architecto tempore ea molestiae sint voluptate omnis ut.',11,16,'2007-07-17 07:50:09','1986-12-02 17:47:10'),
(177,'Omnis hic qui ut reiciendis quasi.','','bnce',211135.59,0,'Nam sit adipisci ratione explicabo. Porro soluta qui sed sed eum et voluptatem. Perspiciatis cupiditate omnis praesentium exercitationem maiores voluptates.',12,17,'2006-12-27 14:00:13','1979-02-17 17:38:21'),
(178,'Excepturi vero et aliquid et sit accusamus blanditiis.','','yfzj',46630.12,0,'Qui dolorum quae blanditiis fugiat qui labore enim perferendis. Recusandae suscipit quo omnis cum dignissimos vel sunt. Id perspiciatis fugiat dolorem unde vitae.',13,18,'1998-07-21 04:45:18','1979-10-05 08:36:32'),
(179,'Nostrum harum dolorum dolore rerum.','','yyfk',725406.71,0,'Magni quisquam hic officia. Dolor repudiandae molestias et nobis minus. Sed quod et beatae ut enim. Et expedita rerum non.',14,19,'1983-08-01 00:18:08','1992-07-05 23:42:43'),
(180,'Voluptatem ut commodi quia culpa quod sit.','','iwyy',23699.26,0,'Inventore repudiandae cupiditate in maxime eveniet. Et debitis qui rerum sit. Consequatur suscipit iusto ut quia similique et quidem. Labore asperiores omnis dolorem expedita ad.',15,20,'1995-04-21 08:38:25','1981-12-26 12:01:01'),
(181,'Alias repudiandae consequatur et voluptas velit deleniti optio.','','vdfe',180.51,0,'Expedita sint molestiae vitae optio. Dolorem quos quod ipsum laboriosam sint architecto. Voluptatem explicabo adipisci consequatur voluptatem itaque harum. Modi error rerum suscipit facere voluptates eum.',1,1,'2021-10-06 14:06:41','1982-12-11 09:15:21'),
(182,'Voluptatibus cumque ut in molestiae fugiat.','','kcap',999999.99,0,'Necessitatibus eius expedita accusamus non laboriosam vitae et. Et repellat aperiam ipsam ut odit necessitatibus culpa. A culpa quo sit molestias non non quia. Et eius omnis est non.',2,2,'2017-07-04 10:19:13','2019-10-24 17:06:13'),
(183,'Ad optio placeat placeat voluptas temporibus.','','rzik',999999.99,0,'Qui itaque ad iste ipsam qui ut voluptas numquam. Voluptates excepturi quisquam aut officiis et ut. Quasi dolor nostrum in numquam.',3,3,'1987-02-04 18:13:30','2016-09-01 14:46:26'),
(184,'Sapiente ea dolores provident ut.','','yxmo',797.57,0,'Repellat et recusandae minus qui officia magnam cumque. Aut quis inventore enim dolorum ratione et consequatur. Fuga dicta explicabo dolor possimus quia harum in neque.',4,4,'2012-12-06 04:28:46','1981-04-06 20:02:15'),
(185,'Beatae cum quia sed corrupti.','','spet',14924.15,0,'Facere facilis officiis officiis quibusdam consequatur sint et. Optio id alias perspiciatis illo tempora aut. Asperiores eius iure voluptas impedit omnis et.',5,5,'2001-06-17 03:33:40','1989-09-10 05:13:22'),
(186,'Quisquam ut sit quae et excepturi.','','hdpn',0.00,0,'Molestiae rem quasi velit nisi ipsum libero. Iusto sunt harum quod vel rerum dicta. Voluptas nesciunt ipsam sapiente asperiores.',6,6,'1986-12-06 05:42:17','2010-08-15 01:29:19'),
(187,'Dignissimos ipsam quia ipsam nobis.','','oknf',439.04,0,'Voluptatem doloremque omnis nemo consequatur ad. Reprehenderit quia dicta voluptatum et delectus eos eum voluptas. Est adipisci dicta quis quia itaque eos.',7,7,'1986-05-14 00:46:15','2009-07-07 07:43:15'),
(188,'Sunt voluptas nobis sit modi deserunt voluptatem.','','brjw',0.00,0,'Placeat dolor sed asperiores minus voluptatibus. Ipsam modi repellendus amet qui autem inventore aut.',8,8,'2016-06-27 10:50:58','1984-03-04 22:41:21'),
(189,'Sed enim excepturi animi perspiciatis pariatur ut.','','mexy',1.90,0,'Cupiditate facere aperiam praesentium sed exercitationem dolorem dolores. Vel debitis vero soluta et. Est sint corrupti dolorem blanditiis aut.',9,9,'1996-07-23 09:18:41','2020-02-11 00:17:24'),
(190,'Ut sint tempora soluta ipsam ut.','','uybh',0.00,0,'Rerum alias dolor amet. Fugit animi adipisci eveniet sequi quisquam. Quia sunt id maiores amet. Autem dolorem mollitia voluptate qui provident.',10,10,'1970-12-09 01:46:23','1997-06-12 02:16:55'),
(191,'Ea eveniet sint aut aut libero earum.','','pmwo',0.52,0,'Incidunt veritatis maxime ut voluptatem nihil. Et quo soluta ratione sunt nostrum fuga dolorum. Similique harum iusto laborum ex asperiores molestiae.',11,11,'2021-10-17 13:07:30','1976-03-30 00:01:36'),
(192,'Molestias id harum sed.','','ndej',5531.54,0,'Velit voluptatem voluptates est dolores aliquam minima dolorem. Quibusdam omnis cupiditate sunt atque. Quam culpa tenetur nobis optio vero.',12,12,'2005-03-28 07:44:51','2000-07-31 04:02:59'),
(193,'Ut nesciunt in quia eveniet officia enim velit quo.','','fbcl',70118.08,0,'Fugiat officia placeat natus enim dolorem dicta. Ipsa laudantium quas itaque sit quia. Error officiis voluptatum eum voluptatem.',13,13,'1980-02-20 19:50:11','1973-10-22 05:03:17'),
(194,'Molestiae qui quam ut consectetur sed.','','qbfw',2735.10,0,'Quibusdam praesentium et illo tempora. Consequatur excepturi fugiat neque molestiae culpa.',14,14,'1995-02-20 06:14:08','2000-04-20 10:59:13'),
(195,'Velit dolores aut ipsam eaque voluptatem numquam aut.','','ligr',302.50,0,'Voluptas dignissimos deserunt quaerat magnam ea pariatur nihil. Ut aut consequatur aut sed quia beatae quis. Quia dolorem accusamus dolor voluptatum odit a reiciendis. Rerum sed placeat iure ut iusto.',15,15,'1971-12-05 02:27:06','1990-03-17 01:39:59'),
(196,'Dolores in est accusantium.','','whwq',442667.40,0,'Sunt inventore ab architecto nulla officia cupiditate magni. Ad error eos tenetur temporibus. Sed nobis saepe cupiditate necessitatibus iste rerum voluptatem. Quia ea ducimus qui quisquam.',1,16,'1985-01-20 22:18:46','2004-01-08 18:25:19'),
(197,'Itaque molestiae aut quasi sint sit.','','ukve',2231.40,0,'Ipsam ducimus molestiae aliquid aut similique harum. At qui est voluptates omnis magni ut. Omnis ipsa et unde aut sit et.',2,17,'1999-05-05 04:04:52','2002-03-11 00:31:02'),
(198,'Assumenda quaerat distinctio ex quia sit laboriosam consequuntur.','','gvbr',4665.83,0,'Delectus et quaerat et aliquid rem. Tempora quod sed et rem assumenda eligendi dolor. Quia quo rerum corporis doloremque.',3,18,'1978-09-18 06:52:24','1970-11-04 21:02:11'),
(199,'Aperiam enim omnis reprehenderit et quo.','','mvuw',0.23,0,'Voluptatem dolores dolores est et porro sint et. Nam sapiente magni nihil ratione. Iste consequatur ut nisi occaecati quia.',4,19,'2019-10-04 06:56:54','2000-03-10 12:48:14'),
(200,'Vitae occaecati a facere dolore sit et saepe.','','hseo',999999.99,0,'Dolores iure eum qui molestiae non. Aut facilis voluptatum labore at optio. Et autem perspiciatis blanditiis ut eos.',5,20,'1987-11-02 05:51:14','1999-09-23 11:05:20');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_carts`
--

DROP TABLE IF EXISTS `shopping_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping_carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shopping_carts_customer_id_product_id_unique` (`customer_id`,`product_id`),
  KEY `shopping_carts_product_id_foreign` (`product_id`),
  CONSTRAINT `shopping_carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `shopping_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_carts`
--

LOCK TABLES `shopping_carts` WRITE;
/*!40000 ALTER TABLE `shopping_carts` DISABLE KEYS */;
INSERT INTO `shopping_carts` VALUES
(1,1,1,6972814,'1985-10-27 19:01:53','1981-08-12 21:16:52'),
(2,2,2,0,'1990-02-18 04:07:29','1976-07-28 08:45:46'),
(3,3,3,0,'2005-07-02 18:56:38','1994-08-25 02:54:24'),
(4,4,4,604,'1992-08-14 20:54:55','2019-10-25 02:21:41'),
(5,5,5,22841658,'2019-10-18 03:48:25','1972-07-18 03:38:13'),
(6,6,6,945512,'2007-09-07 17:10:27','1986-05-16 08:56:56'),
(7,7,7,10241905,'2014-06-06 19:54:22','2015-10-07 17:14:32'),
(8,8,8,4340118,'2021-05-03 06:13:10','1977-12-19 02:00:39'),
(9,9,9,310,'2019-11-29 18:57:05','1995-01-22 13:48:57'),
(10,10,10,112637435,'2011-04-18 17:58:56','1983-11-23 00:48:09'),
(11,11,11,2,'1978-08-11 09:03:28','2011-10-20 05:12:31'),
(12,12,12,3204459,'2013-07-04 16:35:47','1976-09-26 01:24:56'),
(13,13,13,374182770,'2004-10-28 01:34:24','1972-08-24 03:34:35'),
(14,14,14,780,'1974-01-21 09:40:40','2013-10-07 00:36:20'),
(15,15,15,53,'2020-01-24 16:59:42','2019-05-09 16:51:11'),
(16,16,16,915,'2014-12-12 20:34:21','2003-05-30 00:09:25'),
(17,17,17,18982738,'1970-07-09 05:38:41','1999-05-23 14:23:27'),
(18,18,18,263911419,'2020-11-12 11:22:12','1982-11-26 13:19:42'),
(19,19,19,593322,'1972-04-23 17:53:54','2001-08-21 04:59:11'),
(20,20,20,208212,'1975-05-10 14:32:42','2010-01-29 00:13:02'),
(21,21,21,4,'1992-03-29 08:03:18','2022-11-05 08:11:15'),
(22,22,22,5,'1996-07-17 05:47:22','1971-08-11 06:17:56'),
(23,23,23,32915011,'1974-08-23 02:59:36','2015-12-09 12:44:16'),
(24,24,24,6969414,'2016-11-13 01:35:39','1985-06-23 17:48:14'),
(25,25,25,771,'1980-06-13 12:59:00','1971-09-23 01:25:43'),
(26,26,26,18306,'2007-08-25 13:44:30','2003-11-29 17:26:05'),
(27,27,27,570832662,'2004-09-28 16:40:03','2008-09-02 20:38:12'),
(28,28,28,105098706,'1978-08-21 18:30:03','1987-02-23 22:12:15'),
(29,29,29,0,'1972-10-18 11:53:58','2015-09-05 12:40:55'),
(30,30,30,6814,'2004-11-07 10:58:30','2004-01-10 16:34:34'),
(31,31,31,1240962,'2000-02-16 07:51:29','1983-03-13 05:14:50'),
(32,32,32,82,'2002-11-05 01:54:59','2014-04-06 18:04:58'),
(33,33,33,40188942,'1970-04-12 21:56:32','2011-05-07 16:35:46'),
(34,34,34,4887730,'2011-03-01 14:03:23','2012-04-27 03:06:49'),
(35,35,35,0,'1986-08-14 21:32:30','1995-02-10 10:53:25'),
(36,36,36,7268,'2012-10-07 05:22:36','1980-11-28 02:43:07'),
(37,37,37,23336,'1989-08-18 06:11:05','2020-12-05 00:27:20'),
(38,38,38,1300,'2013-05-26 09:48:34','1976-11-02 15:53:18'),
(39,39,39,2,'2017-09-19 02:48:24','2018-08-22 00:21:36'),
(40,40,40,108590668,'1975-10-15 22:55:56','1980-10-24 13:33:12');
/*!40000 ALTER TABLE `shopping_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `last-name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('customer','admin') NOT NULL DEFAULT 'customer',
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'modi','nam','icie95@example.org','admin',NULL,'2004-09-13 03:11:51','340748a19f4b024dcefbacb4fb8a0365315e12ee',NULL,'2015-03-03 02:06:05','2010-11-08 07:40:49'),
(2,'accusamus','alias','bergnaum.isadore@example.org','customer',NULL,'1996-05-06 00:43:23','4824ccf79ac3a174aab26f4f1b5e17d9e0b0afda',NULL,'1998-03-31 05:27:16','2014-04-10 00:08:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15  9:48:34
