CREATE DATABASE  IF NOT EXISTS `WPO` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `WPO`;
-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: WPO
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

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
-- Table structure for table `T_SYS_CommCode`
--

DROP TABLE IF EXISTS `T_SYS_CommCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_SYS_CommCode` (
  `F_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `F_PID` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `F_Code` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `F_Name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `F_Value` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `F_State` int(11) DEFAULT '0',
  `F_Creator` varchar(45) CHARACTER SET utf8 DEFAULT 'Root',
  `F_CreatTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `F_Updater` varchar(45) CHARACTER SET utf8 DEFAULT 'Root',
  `F_UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_SYS_CommCode`
--

LOCK TABLES `T_SYS_CommCode` WRITE;
/*!40000 ALTER TABLE `T_SYS_CommCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_SYS_CommCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_SYS_Functions`
--

DROP TABLE IF EXISTS `T_SYS_Functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_SYS_Functions` (
  `F_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `F_PID` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `F_Name` varchar(45) COLLATE utf8_bin DEFAULT '',
  `F_URL` varchar(45) COLLATE utf8_bin DEFAULT '',
  `F_ICON` varchar(45) COLLATE utf8_bin DEFAULT '',
  `F_State` int(11) DEFAULT '0',
  `F_Creator` varchar(45) CHARACTER SET utf8 DEFAULT 'Root',
  `F_CreatTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `F_Updater` varchar(45) CHARACTER SET utf8 DEFAULT 'Root',
  `F_UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_SYS_Functions`
--

LOCK TABLES `T_SYS_Functions` WRITE;
/*!40000 ALTER TABLE `T_SYS_Functions` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_SYS_Functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_SYS_Role`
--

DROP TABLE IF EXISTS `T_SYS_Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_SYS_Role` (
  `F_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `F_Name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `F_State` int(11) DEFAULT '0',
  `F_Remark` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `F_Creator` varchar(45) CHARACTER SET utf8 DEFAULT 'Root',
  `F_CreatTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `F_Updater` varchar(45) CHARACTER SET utf8 DEFAULT 'Root',
  `F_UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_SYS_Role`
--

LOCK TABLES `T_SYS_Role` WRITE;
/*!40000 ALTER TABLE `T_SYS_Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_SYS_Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_SYS_RoleFunc`
--

DROP TABLE IF EXISTS `T_SYS_RoleFunc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_SYS_RoleFunc` (
  `F_ID` varchar(36) NOT NULL,
  `F_RoleID` varchar(36) DEFAULT NULL,
  `F_FuncID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_SYS_RoleFunc`
--

LOCK TABLES `T_SYS_RoleFunc` WRITE;
/*!40000 ALTER TABLE `T_SYS_RoleFunc` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_SYS_RoleFunc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_SYS_RoleUser`
--

DROP TABLE IF EXISTS `T_SYS_RoleUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_SYS_RoleUser` (
  `F_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `F_RoleID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `F_UserID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_SYS_RoleUser`
--

LOCK TABLES `T_SYS_RoleUser` WRITE;
/*!40000 ALTER TABLE `T_SYS_RoleUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_SYS_RoleUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_SYS_UserInfo`
--

DROP TABLE IF EXISTS `T_SYS_UserInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_SYS_UserInfo` (
  `F_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `F_LoginName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `F_Name` varchar(45) CHARACTER SET utf8 DEFAULT '',
  `F_PassWord` varchar(45) CHARACTER SET utf8 DEFAULT '',
  `F_State` int(11) DEFAULT '0',
  `F_Creator` varchar(45) CHARACTER SET utf8 DEFAULT 'Root',
  `F_CreatTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `F_Updater` varchar(45) COLLATE utf8_bin DEFAULT 'Root',
  `F_UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `F_LastLoginTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_SYS_UserInfo`
--

LOCK TABLES `T_SYS_UserInfo` WRITE;
/*!40000 ALTER TABLE `T_SYS_UserInfo` DISABLE KEYS */;
INSERT INTO `T_SYS_UserInfo` VALUES ('F963C78E-6914-11E7-8C5B-B8975A0F894D','root','admin','root',0,'root','2017-07-15 12:22:19','root','2017-07-15 12:22:19','2017-07-20 22:14:50');
/*!40000 ALTER TABLE `T_SYS_UserInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `V_UserFuncRole`
--

DROP TABLE IF EXISTS `V_UserFuncRole`;
/*!50001 DROP VIEW IF EXISTS `V_UserFuncRole`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `V_UserFuncRole` AS SELECT 
 1 AS `F_ID`,
 1 AS `F_PID`,
 1 AS `F_Name`,
 1 AS `F_URL`,
 1 AS `F_ICON`,
 1 AS `F_State`,
 1 AS `F_Creator`,
 1 AS `F_CreatTime`,
 1 AS `F_Updater`,
 1 AS `F_UpdateTime`,
 1 AS `F_FuncID`,
 1 AS `F_RoleID`,
 1 AS `RoleState`,
 1 AS `F_UserName`,
 1 AS `F_LoginName`,
 1 AS `F_PassWord`,
 1 AS `F_UserState`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'WPO'
--

--
-- Final view structure for view `V_UserFuncRole`
--

/*!50001 DROP VIEW IF EXISTS `V_UserFuncRole`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `V_UserFuncRole` AS select `A`.`F_ID` AS `F_ID`,`A`.`F_PID` AS `F_PID`,`A`.`F_Name` AS `F_Name`,`A`.`F_URL` AS `F_URL`,`A`.`F_ICON` AS `F_ICON`,`A`.`F_State` AS `F_State`,`A`.`F_Creator` AS `F_Creator`,`A`.`F_CreatTime` AS `F_CreatTime`,`A`.`F_Updater` AS `F_Updater`,`A`.`F_UpdateTime` AS `F_UpdateTime`,`UF`.`F_FuncID` AS `F_FuncID`,`UF`.`F_RoleID` AS `F_RoleID`,`UF`.`RoleState` AS `RoleState`,`UF`.`F_UserName` AS `F_UserName`,`UF`.`F_LoginName` AS `F_LoginName`,`UF`.`F_PassWord` AS `F_PassWord`,`UF`.`F_UserState` AS `F_UserState` from (`WPO`.`T_SYS_Functions` `A` join (select `RF`.`F_FuncID` AS `F_FuncID`,`UserRoleInfo`.`F_RoleID` AS `F_RoleID`,`UserRoleInfo`.`RoleState` AS `RoleState`,`UserRoleInfo`.`F_UserName` AS `F_UserName`,`UserRoleInfo`.`F_LoginName` AS `F_LoginName`,`UserRoleInfo`.`F_PassWord` AS `F_PassWord`,`UserRoleInfo`.`F_UserState` AS `F_UserState` from (`WPO`.`T_SYS_RoleFunc` `RF` join (select `RoleInfo`.`F_ID` AS `F_RoleID`,`RoleInfo`.`F_State` AS `RoleState`,`UR`.`F_Name` AS `F_UserName`,`UR`.`F_LoginName` AS `F_LoginName`,`UR`.`F_PassWord` AS `F_PassWord`,`UR`.`F_UserState` AS `F_UserState` from (`WPO`.`T_SYS_Role` `RoleInfo` join (select `B`.`F_RoleID` AS `F_RoleID`,`C`.`F_Name` AS `F_Name`,`C`.`F_LoginName` AS `F_LoginName`,`C`.`F_PassWord` AS `F_PassWord`,`C`.`F_State` AS `F_UserState` from (`WPO`.`T_SYS_RoleUser` `B` join `WPO`.`T_SYS_UserInfo` `C` on((`B`.`F_UserID` = `C`.`F_ID`)))) `UR` on((`RoleInfo`.`F_ID` = `UR`.`F_RoleID`)))) `UserRoleInfo` on((`RF`.`F_RoleID` = `UserRoleInfo`.`F_RoleID`)))) `UF` on((`A`.`F_ID` = `UF`.`F_FuncID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-06 23:34:44
