-- MySQL dump 10.11
--
-- Host: localhost    Database: auth_any
-- ------------------------------------------------------
-- Server version	5.0.51a-24+lenny5

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user` (
  `UID` int(11) NOT NULL auto_increment,
  `username` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `active` tinyint(1) default NULL,
  `timeout` int(11) default NULL,
  `firstName` tinytext,
  `lastName` tinytext,
  PRIMARY KEY  (`UID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (164,'babbage','2011-01-17 16:23:52',1,30,'Charles','Babbage'),(165,'turing','2011-01-17 20:40:21',1,120,'Alan','Turing');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userAACookie`
--

DROP TABLE IF EXISTS `userAACookie`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `userAACookie` (
  `PID` varchar(100) NOT NULL,
  `SID` tinytext,
  `authId` varchar(100) default NULL,
  `authProvider` varchar(100) default NULL,
  `last` int(11) default NULL,
  `created` datetime NOT NULL,
  `state` enum('logged_out','recognized','authenticated') NOT NULL default 'logged_out',
  `logoutKey` tinytext NOT NULL,
  PRIMARY KEY  (`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `userAACookie`
--

LOCK TABLES `userAACookie` WRITE;
/*!40000 ALTER TABLE `userAACookie` DISABLE KEYS */;
INSERT INTO `userAACookie` VALUES ('0257682d03bee509c98df8eba48abc10','0f867d18bf8c0d4f21af10f3af1981e6','aatest3','basic',1299612418,'2011-02-10 10:09:33','recognized','639ae4fb44d92ff26b2554f1456aaac4'),('5d5acf85adfbbc586bafac708b86f732','7705f3abfc18e247ffc918c83b68321b','kgoldov@gmail.com','google',1300744804,'2011-02-11 16:41:02','recognized','5d0fd094d071a89080a98615e1fdd0c3'),('08b67157b014f549542b4ec7a988dace','d2ee2dc4bdaa83a8ea84efb0f82427b9',NULL,NULL,1297525070,'2011-02-12 07:37:50','logged_out','25e54aeaba081d5c1b6cc10b4c786329'),('344f9e4f8d58c0c0c593a3e719055adf','22877eda5ebe2bfa07b451f2a669a77d',NULL,NULL,1297566679,'2011-02-12 19:11:19','logged_out','55bbb7a45584a5ecc49ae6c3dc5c1b65'),('39113817f80d4f903ad4eed00cbb63e4','2d2cd6f123a392b2c1b6e81ee13f5eab',NULL,NULL,1297638816,'2011-02-13 15:13:36','logged_out','f46608d1c6b02d91c97b992ca10bea50'),('57be7efbc47a88c888adef5722bd8ef6','d049dd933a48431e8e940fa3c587843f',NULL,NULL,1297798778,'2011-02-15 11:39:38','logged_out','bad5aab9b63386b040413d4f8cb93fa6'),('4ac84506dfe40e70975202a31377ce02','73970869d1d03292cab471e6dc6395c5',NULL,NULL,1297798993,'2011-02-15 11:43:13','logged_out','900389de53ffeaf3a1f2171fb6303357'),('664c4f0f980796d0d03650415bc263ec','8475bc1e631a4d5ef1d42cab29594a63',NULL,NULL,1297799103,'2011-02-15 11:45:03','logged_out','9fd92f771be47ec9a33d63869c700bfc'),('63014e253c0e3f9960a349a57ba8f3f3','6eb940168c72b94204b0153c36e543ff',NULL,NULL,1297809249,'2011-02-15 14:34:09','logged_out','bbd51fe30c27a27107c073463ff9b767'),('9387cfa289a0580611a0ff4d838a04c9','0ff41263a5e397fffbc07a90dfb8ea4e',NULL,NULL,1297822412,'2011-02-15 18:13:32','logged_out','1112648e539f2d544ef10a076181ffdd'),('9231170c1e28f66695e0d1fcebc4c4af','7872afa92c6275d1d3c5e39684d3fe38',NULL,NULL,1297824082,'2011-02-15 18:41:22','logged_out','c74e0e6ad14db8cdc0bfc63a04a18898'),('a4ea00a4554e817e4ed3346c8b078711','8eef86788bb239313955b86e8fa44f1c',NULL,NULL,1297908709,'2011-02-16 18:11:49','logged_out','a17f4fe0b7ea2042716dd7adb6ddab0a'),('6982a146987d062f4d3852121fd7427a','368ed873d30e07b76834d9193e27a396',NULL,NULL,1297950390,'2011-02-17 05:46:30','logged_out','560ddf05cf54e488ff5a8d9c0187befb'),('4fcba869eedad90f3b9c78840b62f481','bdae3e5280a247da57f54d9d705939a3',NULL,NULL,1298028943,'2011-02-18 03:35:43','logged_out','49e57dcabca4ca9af8a1b447e1d50db6'),('9d8b6449a7d16c0a885197843cfbb103','6b5258150125f19b9e737c9db412c56f',NULL,NULL,1298029179,'2011-02-18 03:39:39','logged_out','68f5f402a69b84d5ebbfe31373eb5621'),('d8b760cb09ce72f62820f29a15f7ecfa','3512fee45fbef6abb05cdcb8dadbd94d',NULL,NULL,1298029526,'2011-02-18 03:45:26','logged_out','4158e72053c135fb0d22249dfd2d74fe'),('a28d972338da1ebbe464e4994d699eef','4e3d84caf3a5d5249ec0b8069ba5f056',NULL,NULL,1298029875,'2011-02-18 03:51:15','logged_out','ecaf47c17a747db4c4ceeb714a810a2f'),('d2cb13434fa11cebe2015781a4a77af3','77d7d6b5da562aa1f2edb9e8fcd74abd',NULL,NULL,1298030221,'2011-02-18 03:57:01','logged_out','92162d12d86329cc5ef174617572f8e8'),('39e844fc36ef52cc175467b92a649cc2','b2ed5f013d1d51243fc3fceac1f7faa6',NULL,NULL,1298030556,'2011-02-18 04:02:36','logged_out','c8d1e23db53835b28c2f41c6d8b15276'),('9fca1fc1ede60ec301edf2d41e595b47','a615a5b6ec937748e82f9cd11bccf6f3',NULL,NULL,1298030912,'2011-02-18 04:08:32','logged_out','3e5c6ed4fb2b22609461188117a29d5d'),('b9a580bc42bbb461315005914947b618','3445927655f5a2c72d98286ce3af8325',NULL,NULL,1298064408,'2011-02-18 13:26:48','logged_out','58a0725a9a42e125a7bf51cc12807f3a'),('0e23f23c9dbe0198a49c6a8896c1ed08','59fea9008695cb290f8348d5f4167587',NULL,NULL,1298078088,'2011-02-18 17:14:48','logged_out','99f1eeaab349f999d55c1ff72c444f01'),('20e2e47a0cb4c162b9037665b3966436','9171006c19570759f41d11d5fb576069',NULL,NULL,1298141461,'2011-02-19 10:51:01','logged_out','291ac9281946ad90a5d0098d8e1e6f9b'),('c02abc1412787e3f484e2e74127161a5','a2534f8296af569f92457eb8b0ec4f02',NULL,NULL,1298162559,'2011-02-19 16:42:39','logged_out','316ab77ddc6e90171dc504b48f118b70'),('9f00130d3fd16de232770ea76bcc0a9b','8a5ebe1660db2605a72e13df0d54ffdf',NULL,NULL,1298219363,'2011-02-20 08:29:23','logged_out','af7393d478e960f5b175f6b64c10069c'),('47df2833afe32f2733e97c41a2f0d180','2f7e323cc78e01378c85946cb1c99a12',NULL,NULL,1298333522,'2011-02-21 16:12:02','logged_out','cb65c2c5977a3cb45eed7a86a29b0d57'),('eaf832a1c24626c7eef4740fbe61e5be','28a08abe5992816910c721928c7ead76',NULL,NULL,1298418750,'2011-02-22 15:52:30','logged_out','8c6c7c6ce42945bcdd47aa57ccc2d281'),('bf23aa105f7fdf6035b02fea8a47f893','50c5efadbc35c0f4028e52b8ff894f6a',NULL,NULL,1298532265,'2011-02-23 23:24:25','logged_out','8c7c5bcc256df25c4e4a9e01d2bbadd3'),('37ced84f2ab9c3da83ba49da376459fe','076c030297e1b53fd29494e523d6bfe1',NULL,NULL,1298546800,'2011-02-24 03:26:40','logged_out','3a14a483229124db8ecdec8ce003b667'),('d74877b579808e8655aaa205a8536f4d','a8c1b50bbf43b5bbba6f7f80b210269e',NULL,NULL,1298738835,'2011-02-26 08:47:15','logged_out','40fdca32c72651a225b86daf6ec843a6'),('fef086c906c588e153f69c828cd0cbe5','c75654def0da5d064cc30d79669c864c',NULL,NULL,1298760856,'2011-02-26 14:54:16','logged_out','166bde1e04cc17be9d7e9e5a188c412d'),('ffbc775aafe58ede723fa3c3fc85881f','02056acd4ddf6bcdb7ae4d492b83d37b',NULL,NULL,1298848058,'2011-02-27 15:07:38','logged_out','c061ad6c0aea2b36f578159813da0966'),('bf0bdd87b1a377128b6a77ef507f6e87','f973f068e690caa348bedd6d3794ca8c',NULL,NULL,1298851068,'2011-02-27 15:57:48','logged_out','6aab3b6492fdc2b8b18b354101696346'),('7304a8a2e5971028cfb87d86afc69374','e76ffe48fcf0deb46458b83b4c33f318',NULL,NULL,1299058773,'2011-03-02 01:39:33','logged_out','fb0a7e512ea0383df4efff6500de87dd'),('205c8d3ed10ec30f89f25f55df0914be','996c6e4c9d8e121413a5f4d583abae2f',NULL,NULL,1299583612,'2011-03-08 03:26:52','logged_out','1614d189c4cb52a5cd1b66e9a80f5aef'),('22de1d5295693176f74cdf837b163ba4','6aae4b6a5626f2b2b9b9a6536eadb4ca',NULL,NULL,1299617180,'2011-03-08 12:46:20','logged_out','b384d584b063cbb64d98ff6f5003df88'),('c125e2f4a8982be1933afb2e5db52135','b7a824c8e133eba91ca68323c1f05747',NULL,NULL,1299618039,'2011-03-08 13:00:39','logged_out','a51e823f8e858ab8bd3fc3035d326759'),('9b9a1674803539cfa5842f4cc766175d','d2dee369fb1032295271c5f51c4f2489',NULL,NULL,1299620225,'2011-03-08 13:37:05','logged_out','6fb583c0d25cf5303de3bc358c159087'),('7f83f59ceb828678b38eafab332e5781','188114a36dab6fad8f696310a06a164d',NULL,NULL,1299702737,'2011-03-09 12:32:17','logged_out','919ef1aef4f14f394cc9b1d89eb76789'),('d205a4f730c17765cc9c730059feb3aa','762ae9bcf261c7c5e21fd54cbf707388',NULL,NULL,1299743489,'2011-03-09 23:51:29','logged_out','2d108f23ab972130996cee6d92239a51'),('0ffc3576fd57941d209ed7375e2110bb','67676e897735305ca6229e1689d449ff',NULL,NULL,1299789754,'2011-03-10 12:42:34','logged_out','18cf920389ab3de124c7a5745ace632b'),('6fbb18737ad40a5169d151ca3bfd46df','c66f0a62e7edf51fe7e4bef214161975',NULL,NULL,1299829432,'2011-03-10 23:43:52','logged_out','21cd59b9adab27ba112a570d301e969e'),('fc4be059afd2cfffc4bd5a8ffe6458e2','c36df83658c73a0bb7fb23e77642f3d5',NULL,NULL,1299927877,'2011-03-12 03:04:37','logged_out','35492d2047e0e805e7d3abdb27fe2096'),('9890795b2a1d7c3e112234d1196976e4','2a161d10ac792d9cb8c5ca8a3df63dd1',NULL,NULL,1299974111,'2011-03-12 15:55:11','logged_out','d657a22735a9b4a495fa80335b160de9'),('221f7ad5ea92a4cf353c3669f0e14d04','6223b2629468f81eb7d8bd68f56597a1',NULL,NULL,1300060327,'2011-03-13 16:52:07','logged_out','95a02795d58255e71e0d2a7d381d44ee'),('a7e8a4158ae77f46c22e8995100bc80e','b5238b82162d2075812ad16d70dea10f',NULL,NULL,1300069049,'2011-03-13 19:17:29','logged_out','d398cfca3cb86ea7be1e633d22f5508d'),('dea7ae69f1d4a2ee1ceec65916a33e67','e7de655139ecb1c3dbb79c29015b5354',NULL,NULL,1300142861,'2011-03-14 15:47:41','logged_out','02bb4e813f769aa12bd028f594052b25'),('8fd70c437bb43e6e8d19a5128edc94d4','a0ecd6fa78aa4b60ab49c6dad6983c0c',NULL,NULL,1300144473,'2011-03-14 16:14:33','logged_out','977d5f340fd97573309d3787e69dcffe'),('7173e4869b2f9f048414f21f4f410bc0','6bd9fa562704a715e227a0229806fa66',NULL,NULL,1300144473,'2011-03-14 16:14:33','logged_out','fe4eb338f7d465d89b8b03cccaee3421'),('117c0230b62378ae4ce36c2741c2e661','3e00e3071c919ed57bdd5ab8837d1ce3',NULL,NULL,1300144473,'2011-03-14 16:14:33','logged_out','497250bfd02260d7094d261d94d043c7'),('4236b9f9a4f97bba2ac0503532c1f95b','bf399c8bb6cfc32a4411ba4004690b04',NULL,NULL,1300914320,'2011-03-23 14:05:20','logged_out','009000b89d189600489d24133f7adeca'),('db2e54a273fc9d0f7c12bacca2698315','0dff36a35f378c4f057e91df28f48bd3',NULL,NULL,1300925496,'2011-03-23 17:11:36','logged_out','f220d9e202182c937c50a8be7bffc978'),('33da72ca8bafa6c1fc8d3b0fafc08bde','d69460b28351aa5aaea7e750f21370cf','aatest2','basic',1300943897,'2011-03-23 22:11:28','authenticated','faf685e737156c040ae0d2bf08ba0304'),('e9725b8ed066ffb520019b70effd9235','812447082f5178c0a6bbcca39c4b5efa',NULL,NULL,1300955062,'2011-03-24 01:24:22','logged_out','ccad780a76b87f86a30a12e27194a427'),('ddc7164244929e7cb7a10ea6caac3eef','9455e277c7e6c4c6483435ee263a6b51',NULL,NULL,1300980035,'2011-03-24 08:20:35','logged_out','1d2a09e4850be3850c91ae643f4fc484'),('f3c9b7e33b5161bbffae8108a94f6e1c','6560bf77d59c4e40b96db372ca8c9d6a',NULL,NULL,1300984768,'2011-03-24 09:39:28','logged_out','215c96e14b76238a9e4453c3d76aab05'),('d9508581b30bd547816087861237d6d6','0527565279b0925ad3ab223f9979327d',NULL,NULL,1301322500,'2011-03-28 07:28:20','logged_out','2042764f3d25e384676aedf0e9377a0b'),('124a7c14fdc53bd72dc8264c2b9b70d6','1c9292d2bdbe9b9788fa9b19bbe4eb01',NULL,NULL,1301322500,'2011-03-28 07:28:20','logged_out','7e909cd7b226eecf3a2b5446619ec49e'),('bedbe93a84c0b1caadeac0389c5507af','b9ac87061cba2d22c9e12e1830767503',NULL,NULL,1301322500,'2011-03-28 07:28:20','logged_out','72c1f4fe967e180907acecc498fe9319'),('3f2bde4bde0c39955345c03bebe3a0f1','a954884293b5630c7621d9295204c2b9',NULL,NULL,1301322500,'2011-03-28 07:28:20','logged_out','e7f556de402334f2bfce836e34cdc828'),('71c84c54c1cb3dd761ba89772c8a52cd','12a6c5d2c30599698ea5cd973e09fa20',NULL,NULL,1301322501,'2011-03-28 07:28:21','logged_out','085885da567f2bcb1168efb1b1884bf8'),('3da7c925470ae0674b3412be2c83a6b2','1518a38441f724882926fbe9d0008541',NULL,NULL,1301322501,'2011-03-28 07:28:21','logged_out','827dbc2c9b42712d11501e952b578a7e'),('90f508ec12f14c454dc66e03c0ff461e','0315672d63319be93d8cf370a45961c9',NULL,NULL,1301322501,'2011-03-28 07:28:21','logged_out','204a228baec79084c2a9aef9280ee8de'),('a4116fdbe6c82ac2a2df0280844c74de','d42c72c8e585977ab1a4e69c37fcb00b',NULL,NULL,1301333626,'2011-03-28 10:33:46','logged_out','ea78602faba5279b11c3e7c64b5485f8');
/*!40000 ALTER TABLE `userAACookie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userIdent`
--

DROP TABLE IF EXISTS `userIdent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `userIdent` (
  `UID` int(10) unsigned NOT NULL,
  `authId` varchar(100) NOT NULL,
  `authProvider` varchar(100) NOT NULL,
  PRIMARY KEY  (`authId`,`authProvider`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `userIdent`
--

LOCK TABLES `userIdent` WRITE;
/*!40000 ALTER TABLE `userIdent` DISABLE KEYS */;
INSERT INTO `userIdent` VALUES (164,'aatest2','basic'),(165,'aatest4','basic'),(164,'aatest3','basic'),(164,'kgoldov@gmail.com','google');
/*!40000 ALTER TABLE `userIdent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userRole`
--

DROP TABLE IF EXISTS `userRole`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `userRole` (
  `UID` int(11) NOT NULL,
  `role` varchar(200) NOT NULL,
  UNIQUE KEY `UID_2` (`UID`,`role`),
  KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `userRole`
--

LOCK TABLES `userRole` WRITE;
/*!40000 ALTER TABLE `userRole` DISABLE KEYS */;
INSERT INTO `userRole` VALUES (164,'admin'),(164,'scientist'),(165,'scientist');
/*!40000 ALTER TABLE `userRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userRoleChoice`
--

DROP TABLE IF EXISTS `userRoleChoice`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `userRoleChoice` (
  `UID` int(11) NOT NULL,
  `role` varchar(200) NOT NULL,
  UNIQUE KEY `UID` (`UID`,`role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `userRoleChoice`
--

LOCK TABLES `userRoleChoice` WRITE;
/*!40000 ALTER TABLE `userRoleChoice` DISABLE KEYS */;
INSERT INTO `userRoleChoice` VALUES (165,'scientist');
/*!40000 ALTER TABLE `userRoleChoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-03-28 21:05:47