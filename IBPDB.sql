/*
Navicat MySQL Data Transfer

Source Server         : IBP
Source Server Version : 50543
Source Host           : 182.50.133.79:3306
Source Database       : testdb

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2016-07-25 12:08:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for APPLICATION
-- ----------------------------
DROP TABLE IF EXISTS `APPLICATION`;
CREATE TABLE `APPLICATION` (
  `ApplicationID` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `CycleNo` int(11) NOT NULL,
  `MasterID` int(11) NOT NULL,
  `MasterSubject` varchar(30) DEFAULT NULL,
  `MasterUniversityID` int(11) NOT NULL,
  `MasterCGPAID` int(11) NOT NULL,
  `MasterCGPAOBT` varchar(10) DEFAULT NULL,
  `MasterTotalMarks` varchar(10) DEFAULT NULL,
  `MasterMarksOBT` varchar(10) DEFAULT NULL,
  `MasterPercentage` varchar(10) DEFAULT NULL,
  `MasterDateDeclare` date DEFAULT NULL,
  `BachelorID` int(11) NOT NULL,
  `BachelorSubject` varchar(30) DEFAULT NULL,
  `BachelorUniversityID` int(11) NOT NULL,
  `BachelorCGPAID` int(11) NOT NULL,
  `BachelorCGPAOBT` varchar(10) DEFAULT NULL,
  `BachelorTotalMarks` varchar(10) DEFAULT NULL,
  `BachelorMarksOBT` varchar(10) DEFAULT NULL,
  `BachelorPercentage` varchar(10) DEFAULT NULL,
  `BachelorDateDeclare` date NOT NULL,
  `IntermediateID` int(11) NOT NULL,
  `IntermediateSubject` varchar(30) DEFAULT NULL,
  `IntermediateBoardID` int(11) NOT NULL,
  `IntermediateTotalMarks` varchar(10) NOT NULL,
  `IntermediateMarksOBT` varchar(10) NOT NULL,
  `IntermediatePercentage` varchar(10) NOT NULL,
  `IntermediateDateDeclare` date NOT NULL,
  `MatricID` int(11) NOT NULL,
  `MatricSubject` varchar(30) DEFAULT NULL,
  `MatricBoardID` int(11) NOT NULL,
  `MatricTotalMarks` varchar(10) NOT NULL,
  `MatricMarksOBT` varchar(10) NOT NULL,
  `MatricPercentage` varchar(10) NOT NULL,
  `MatricDateDeclare` date NOT NULL,
  `OtherID` int(11) NOT NULL,
  `OtherSubject` varchar(30) DEFAULT NULL,
  `OtherUniversityID` int(11) NOT NULL,
  `OtherCGPAID` int(11) NOT NULL,
  `OtherCGPAOBT` varchar(10) DEFAULT NULL,
  `OtherTotalMarks` varchar(10) DEFAULT NULL,
  `OtherMarksOBT` varchar(10) DEFAULT NULL,
  `OtherPercentage` varchar(10) DEFAULT NULL,
  `OtherDateDeclare` date DEFAULT NULL,
  `PreferenceID` int(11) NOT NULL,
  `EligibleFlag` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of APPLICATION
-- ----------------------------
INSERT INTO `APPLICATION` VALUES ('201452-11', 'umair@yahoo.com', '1', '1', '2', '', '2', '2', '3.0', '', '', '', '2003-12-01', '1', '', '2', '2', '3.1', '', '', '', '2002-06-30', '1', '', '1', '1100', '880', '80', '1999-06-29', '1', '', '1', '850', '672', '79.1', '1997-05-31', '1', '', '1', '1', '', '', '', '', null, '1', '0');
INSERT INTO `APPLICATION` VALUES ('20160425142501', 'shariq@skillorbit.com', '1', '1', '1', '', '1', '1', '', '', '', '', null, '1', '', '2', '2', '3.2', '', '', '', '1999-04-05', '1', '', '1', '1100', '850', '80', '1997-04-14', '1', '', '1', '850', '720', '79.1', '1995-04-03', '1', '', '1', '1', '', '', '', '', null, '1', '0');
INSERT INTO `APPLICATION` VALUES ('20160607011504', 'testtt@yahoo.com', '1', '1', '2', 'khlhbou;;v', '2', '2', '3.5', '', '', '', '2008-06-05', '1', 'b;gbob', '2', '3', '4.5', '', '', '', '2004-06-17', '2', 'g;g;o;lb', '1', '', '', '', '2010-06-08', '2', '', '1', '', '', '', '2013-06-06', '1', '', '1', '1', '', '', '', '', null, '1', '0');
INSERT INTO `APPLICATION` VALUES ('20160620023051', 'mumar_10@outlook.com', '1', '1', '1', '', '1', '1', '', '', '', '', null, '1', 'test', '2', '2', '3.5', '', '', '', '2006-06-21', '1', 'test', '1', '1150', '850', '80', '2004-06-01', '1', 'test', '1', '850', '770', '82', '2002-06-10', '1', '', '1', '1', '', '', '', '', null, '1', '0');
INSERT INTO `APPLICATION` VALUES ('20160712103739', 'mateen1@hotmail.com', '1', '1', '2', '123', '2', '2', '3.5', '190', '180', '98', '2016-07-06', '1', '345', '2', '2', '3.5', '190', '180', '98', '2016-07-12', '1', '456', '1', '190', '180', '98', '2016-07-12', '1', '123', '1', '190', '180', '98', '2016-07-12', '2', '123', '2', '2', '3.5', '190', '180', '98', '2016-07-12', '1', '0');
INSERT INTO `APPLICATION` VALUES ('20160712103807', 'mateen1@hotmail.com', '1', '1', '2', '123', '2', '2', '3.5', '190', '180', '98', '2016-07-06', '1', '345', '2', '2', '3.5', '190', '180', '98', '2016-07-12', '1', '456', '1', '190', '180', '98', '2016-07-12', '1', '123', '1', '190', '180', '98', '2016-07-12', '2', '123', '2', '2', '3.5', '190', '180', '98', '2016-07-12', '1', '0');
INSERT INTO `APPLICATION` VALUES ('20160714023142', 'mateen_ul_haq@yahoo.com', '1', '1', '2', 'abc', '2', '2', '4', '200', '192', '98', '2016-07-02', '1', 'abc', '2', '2', '4', '200', '192', '98', '2016-07-14', '1', 'abc', '1', '200', '192', '98', '2016-07-14', '1', 'abc', '1', '200', '192', '98', '2016-07-14', '2', 'abc', '2', '2', '3.5', '190', '180', '98', '2016-07-25', '2', '0');

-- ----------------------------
-- Table structure for APPLICATIONREMARKS
-- ----------------------------
DROP TABLE IF EXISTS `APPLICATIONREMARKS`;
CREATE TABLE `APPLICATIONREMARKS` (
  `ApplicationID` varchar(30) NOT NULL,
  `FinRemarks` varchar(200) NOT NULL,
  `FinApprove` varchar(1) NOT NULL,
  `ExRemarks` varchar(200) NOT NULL,
  `ExApprove` varchar(1) NOT NULL,
  `ExMRemarks` varchar(200) NOT NULL,
  `ExMApprove` varchar(1) NOT NULL DEFAULT 'P'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of APPLICATIONREMARKS
-- ----------------------------
INSERT INTO `APPLICATIONREMARKS` VALUES ('20160425142501', '', 'Y', '', 'P', '', 'P');
INSERT INTO `APPLICATIONREMARKS` VALUES ('201452-11', '', '', '', '', '', '');
INSERT INTO `APPLICATIONREMARKS` VALUES ('20160607011504', '', 'P', '', 'P', '', 'P');
INSERT INTO `APPLICATIONREMARKS` VALUES ('20160620023051', '', 'P', '', 'P', '', 'P');
INSERT INTO `APPLICATIONREMARKS` VALUES ('20160712103739', '', 'P', '', 'P', '', 'P');
INSERT INTO `APPLICATIONREMARKS` VALUES ('20160712103807', '', 'Y', '', 'Y', '', 'Y');
INSERT INTO `APPLICATIONREMARKS` VALUES ('20160714023142', '', 'Y', '', 'Y', '', 'Y');

-- ----------------------------
-- Table structure for BACHELORDEGREE
-- ----------------------------
DROP TABLE IF EXISTS `BACHELORDEGREE`;
CREATE TABLE `BACHELORDEGREE` (
  `ID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BACHELORDEGREE
-- ----------------------------
INSERT INTO `BACHELORDEGREE` VALUES ('1', 'BCS');

-- ----------------------------
-- Table structure for BOARD
-- ----------------------------
DROP TABLE IF EXISTS `BOARD`;
CREATE TABLE `BOARD` (
  `ID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BOARD
-- ----------------------------
INSERT INTO `BOARD` VALUES ('1', 'AKU');

-- ----------------------------
-- Table structure for CGPA
-- ----------------------------
DROP TABLE IF EXISTS `CGPA`;
CREATE TABLE `CGPA` (
  `ID` int(11) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of CGPA
-- ----------------------------
INSERT INTO `CGPA` VALUES ('1', 'N/A');
INSERT INTO `CGPA` VALUES ('2', '4.0');
INSERT INTO `CGPA` VALUES ('3', '5.0');

-- ----------------------------
-- Table structure for COURSE
-- ----------------------------
DROP TABLE IF EXISTS `COURSE`;
CREATE TABLE `COURSE` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `CycleNo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of COURSE
-- ----------------------------
INSERT INTO `COURSE` VALUES ('1', 'SCBCourse', '1');

-- ----------------------------
-- Table structure for COURSECHECKLIST
-- ----------------------------
DROP TABLE IF EXISTS `COURSECHECKLIST`;
CREATE TABLE `COURSECHECKLIST` (
  `ID` int(11) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `CourseID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of COURSECHECKLIST
-- ----------------------------
INSERT INTO `COURSECHECKLIST` VALUES ('1', 'CNIC', '1');
INSERT INTO `COURSECHECKLIST` VALUES ('2', 'Form', '1');
INSERT INTO `COURSECHECKLIST` VALUES ('3', 'FeeChallan', '1');

-- ----------------------------
-- Table structure for DOMICILECITY
-- ----------------------------
DROP TABLE IF EXISTS `DOMICILECITY`;
CREATE TABLE `DOMICILECITY` (
  `Code` varchar(3) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `RegionCode` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of DOMICILECITY
-- ----------------------------
INSERT INTO `DOMICILECITY` VALUES ('KHI', 'Karachi', 'SU');
INSERT INTO `DOMICILECITY` VALUES ('HYD', 'Hyderabad', 'SU');
INSERT INTO `DOMICILECITY` VALUES ('BDN', 'Badin', 'SR');
INSERT INTO `DOMICILECITY` VALUES ('LRK', 'Larkana', 'SR');

-- ----------------------------
-- Table structure for DOMICILEREGION
-- ----------------------------
DROP TABLE IF EXISTS `DOMICILEREGION`;
CREATE TABLE `DOMICILEREGION` (
  `Code` varchar(2) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of DOMICILEREGION
-- ----------------------------
INSERT INTO `DOMICILEREGION` VALUES ('SU', 'SINDH (U)');
INSERT INTO `DOMICILEREGION` VALUES ('SR', 'SINDH (R)');

-- ----------------------------
-- Table structure for ELIGIBILITY
-- ----------------------------
DROP TABLE IF EXISTS `ELIGIBILITY`;
CREATE TABLE `ELIGIBILITY` (
  `ApplicationID` varchar(30) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Reason` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ELIGIBILITY
-- ----------------------------
INSERT INTO `ELIGIBILITY` VALUES ('20160712103739', 'YES', 'Very Good');
INSERT INTO `ELIGIBILITY` VALUES ('345', 'NO', 'Very BAd');

-- ----------------------------
-- Table structure for INTERMEDIATE
-- ----------------------------
DROP TABLE IF EXISTS `INTERMEDIATE`;
CREATE TABLE `INTERMEDIATE` (
  `ID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of INTERMEDIATE
-- ----------------------------
INSERT INTO `INTERMEDIATE` VALUES ('1', 'HSC');
INSERT INTO `INTERMEDIATE` VALUES ('2', 'A-Levels');

-- ----------------------------
-- Table structure for MASTERDEGREE
-- ----------------------------
DROP TABLE IF EXISTS `MASTERDEGREE`;
CREATE TABLE `MASTERDEGREE` (
  `ID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of MASTERDEGREE
-- ----------------------------
INSERT INTO `MASTERDEGREE` VALUES ('1', 'N/A');
INSERT INTO `MASTERDEGREE` VALUES ('2', 'MCS');

-- ----------------------------
-- Table structure for MATRICULATION
-- ----------------------------
DROP TABLE IF EXISTS `MATRICULATION`;
CREATE TABLE `MATRICULATION` (
  `ID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of MATRICULATION
-- ----------------------------
INSERT INTO `MATRICULATION` VALUES ('1', 'Matriculation');
INSERT INTO `MATRICULATION` VALUES ('2', 'O-Levels');

-- ----------------------------
-- Table structure for MENU
-- ----------------------------
DROP TABLE IF EXISTS `MENU`;
CREATE TABLE `MENU` (
  `PageID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of MENU
-- ----------------------------
INSERT INTO `MENU` VALUES ('1', '1');
INSERT INTO `MENU` VALUES ('2', '1');
INSERT INTO `MENU` VALUES ('3', '1');
INSERT INTO `MENU` VALUES ('4', '1');
INSERT INTO `MENU` VALUES ('5', '1');
INSERT INTO `MENU` VALUES ('6', '5');
INSERT INTO `MENU` VALUES ('7', '5');
INSERT INTO `MENU` VALUES ('8', '5');
INSERT INTO `MENU` VALUES ('9', '4');
INSERT INTO `MENU` VALUES ('10', '4');
INSERT INTO `MENU` VALUES ('11', '3');
INSERT INTO `MENU` VALUES ('12', '3');
INSERT INTO `MENU` VALUES ('13', '2');
INSERT INTO `MENU` VALUES ('14', '2');
INSERT INTO `MENU` VALUES ('15', '2');
INSERT INTO `MENU` VALUES ('16', '2');
INSERT INTO `MENU` VALUES ('17', '2');
INSERT INTO `MENU` VALUES ('18', '2');
INSERT INTO `MENU` VALUES ('19', '6');
INSERT INTO `MENU` VALUES ('20', '4');
INSERT INTO `MENU` VALUES ('21', '5');

-- ----------------------------
-- Table structure for OTHERQUALIFICATION
-- ----------------------------
DROP TABLE IF EXISTS `OTHERQUALIFICATION`;
CREATE TABLE `OTHERQUALIFICATION` (
  `ID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of OTHERQUALIFICATION
-- ----------------------------
INSERT INTO `OTHERQUALIFICATION` VALUES ('1', 'N/A');
INSERT INTO `OTHERQUALIFICATION` VALUES ('2', 'ACCA');

-- ----------------------------
-- Table structure for PAGES
-- ----------------------------
DROP TABLE IF EXISTS `PAGES`;
CREATE TABLE `PAGES` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Path` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PAGES
-- ----------------------------
INSERT INTO `PAGES` VALUES ('10', 'FView Applications', 'FinView.aspx');
INSERT INTO `PAGES` VALUES ('2', 'Application', 'Application.aspx');
INSERT INTO `PAGES` VALUES ('3', 'Generate Admit Card', 'AdmitCard.pdf');
INSERT INTO `PAGES` VALUES ('5', 'View Result', 'ViewResult.aspx');
INSERT INTO `PAGES` VALUES ('7', 'Add User', 'AddUser.aspx');
INSERT INTO `PAGES` VALUES ('8', 'Mail Credentails', 'MailPassword.aspx');
INSERT INTO `PAGES` VALUES ('4', 'View Eligibility', 'ViewEligibility.aspx');
INSERT INTO `PAGES` VALUES ('9', 'Finance Verify', 'FinVerify.aspx');
INSERT INTO `PAGES` VALUES ('11', 'EO Verify', 'ExVerify.aspx');
INSERT INTO `PAGES` VALUES ('16', 'Generate Roll No', 'GenerateRollNo.aspx');
INSERT INTO `PAGES` VALUES ('18', 'Upload Result', 'UploadResult.aspx');
INSERT INTO `PAGES` VALUES ('14', 'Rejected Applications', 'ExMRejected.aspx');
INSERT INTO `PAGES` VALUES ('6', 'Rights Management', 'EditRole.aspx');
INSERT INTO `PAGES` VALUES ('12', 'EView Applications', 'ExView.aspx');
INSERT INTO `PAGES` VALUES ('13', 'EM Verify', 'ExMVerify.aspx');
INSERT INTO `PAGES` VALUES ('15', 'EMView Applications', 'ExMView.aspx');
INSERT INTO `PAGES` VALUES ('17', 'Upload Eligibility', 'UploadEligibility.aspx');
INSERT INTO `PAGES` VALUES ('19', 'Customer View', 'CustomerView.aspx');
INSERT INTO `PAGES` VALUES ('20', 'Fin Bulk Verify', 'FinBulkVerify.aspx');
INSERT INTO `PAGES` VALUES ('21', 'Block/Unblock User', 'BlockUser.aspx');

-- ----------------------------
-- Table structure for PREFERENCES
-- ----------------------------
DROP TABLE IF EXISTS `PREFERENCES`;
CREATE TABLE `PREFERENCES` (
  `ID` int(11) NOT NULL,
  `Description` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PREFERENCES
-- ----------------------------
INSERT INTO `PREFERENCES` VALUES ('1', 'Karachi');
INSERT INTO `PREFERENCES` VALUES ('2', 'Lahore');
INSERT INTO `PREFERENCES` VALUES ('3', 'Islamabad');

-- ----------------------------
-- Table structure for RELIGION
-- ----------------------------
DROP TABLE IF EXISTS `RELIGION`;
CREATE TABLE `RELIGION` (
  `ID` int(11) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of RELIGION
-- ----------------------------
INSERT INTO `RELIGION` VALUES ('1', 'Islam');

-- ----------------------------
-- Table structure for RESULT
-- ----------------------------
DROP TABLE IF EXISTS `RESULT`;
CREATE TABLE `RESULT` (
  `ApplicationID` varchar(30) NOT NULL,
  `RollNo` varchar(20) NOT NULL,
  `Venue` varchar(200) NOT NULL,
  `SectionI` int(11) NOT NULL,
  `SectionII` int(11) NOT NULL,
  `SectionIII` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of RESULT
-- ----------------------------
INSERT INTO `RESULT` VALUES ('201452-11', '5001', 'XYZ venue', '25', '25', '35', '85', 'Q');
INSERT INTO `RESULT` VALUES ('201433-11', '5002', 'XYZ venue', '22', '25', '35', '82', 'Q');
INSERT INTO `RESULT` VALUES ('201431-11', '5003', 'XYZ venue', '24', '21', '36', '81', 'Q');
INSERT INTO `RESULT` VALUES ('201421-11', '5004', 'XYZ venue', '26', '28', '31', '85', 'Q');

-- ----------------------------
-- Table structure for ROLE
-- ----------------------------
DROP TABLE IF EXISTS `ROLE`;
CREATE TABLE `ROLE` (
  `ID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ROLE
-- ----------------------------
INSERT INTO `ROLE` VALUES ('1', 'STUDENT');
INSERT INTO `ROLE` VALUES ('2', 'EXAMMANAGER');
INSERT INTO `ROLE` VALUES ('3', 'EXAMOFFICER');
INSERT INTO `ROLE` VALUES ('4', 'FINANCE');
INSERT INTO `ROLE` VALUES ('5', 'ADMIN');
INSERT INTO `ROLE` VALUES ('6', 'CUSTOMER');

-- ----------------------------
-- Table structure for RollNumber
-- ----------------------------
DROP TABLE IF EXISTS `RollNumber`;
CREATE TABLE `RollNumber` (
  `ApplicationID` varchar(30) NOT NULL,
  `RollNo` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of RollNumber
-- ----------------------------
INSERT INTO `RollNumber` VALUES ('20160425142501', '000001');
INSERT INTO `RollNumber` VALUES ('201452-11', '000001');

-- ----------------------------
-- Table structure for STUDENT_DETAIL
-- ----------------------------
DROP TABLE IF EXISTS `STUDENT_DETAIL`;
CREATE TABLE `STUDENT_DETAIL` (
  `Email` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `FatherName` varchar(50) NOT NULL,
  `CNIC` varchar(15) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `DOB` date NOT NULL,
  `Telephone` varchar(15) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `CityCode` varchar(3) NOT NULL,
  `DomicileRegionCode` varchar(2) NOT NULL,
  `DomicileCityCode` varchar(3) NOT NULL,
  `ReligionID` int(11) NOT NULL,
  `PostalAddress` varchar(200) NOT NULL,
  `SBP` tinyint(4) DEFAULT NULL,
  `SbpCityCode` varchar(4) DEFAULT NULL,
  `SbpPinNo` varchar(50) DEFAULT NULL,
  `SbpGrade` varchar(50) DEFAULT NULL,
  `SbpDesig` varchar(50) DEFAULT NULL,
  `ImagePath` varchar(100) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of STUDENT_DETAIL
-- ----------------------------
INSERT INTO `STUDENT_DETAIL` VALUES ('umair@yahoo.com', 'Umair Ahmed Hassan', 'Bashir Ahmed Naim', '42101-5555555-5', 'M', '1981-11-10', '3624555', '032415856232', 'LRK', 'SR', 'KHI', '1', 'B6 XyZ', '1', 'KHI', null, null, null, '~/StudentDocs/IMG_1473_2.jpeg');
INSERT INTO `STUDENT_DETAIL` VALUES ('shariq@skillorbit.com', 'Shariq', 'Muhammad', '43344-98877887-', 'M', '1978-05-16', '4353454', '+9233334755555', 'KHI', 'SU', 'KHI', '1', '75970', '1', 'KHI', null, null, null, '~/StudentDocs/nz.jpg');
INSERT INTO `STUDENT_DETAIL` VALUES ('testing112@gmail.com', 'test', 'test', '42222-2222222-2', 'M', '2016-05-12', '', '+92333-3333333', 'HYD', 'SR', 'KHI', '1', 'fdhdkhhdlfljfljljcd', null, null, null, null, null, '');
INSERT INTO `STUDENT_DETAIL` VALUES ('testtt@yahoo.com', 'Test', 'Test', '42220212323613', 'M', '1982-06-10', '146841316', '1654514684846', 'KHI', 'SU', 'KHI', '1', 'jhflsahglshl', null, null, null, null, null, '');
INSERT INTO `STUDENT_DETAIL` VALUES ('mumar_10@outlook.com', 'Umar', 'TestUmar', '42101-45025145-', 'M', '1983-06-06', '0513213', '+92201455', 'KHI', 'SU', 'KHI', '1', 'Test address 1', '1', 'KHI', null, null, null, '');
INSERT INTO `STUDENT_DETAIL` VALUES ('mateen@hotmail.com', 'MAteen-ul-haq', 'MAteen-ul-haq', 'MAteen-ul-haq', 'M', '2016-07-08', '', '', 'KHI', 'SU', 'KHI', '1', '12233', '1', 'KHI', '1234', '1223434', '4321', '');
INSERT INTO `STUDENT_DETAIL` VALUES ('mateen_ul_haq@yahoo.com', 'Mateen-ul-haq', 'Muti-Ul-Haq', '42101-1234567-1', 'M', '1991-03-01', '0300-8262050', '0300-8262050', 'KHI', 'SU', 'KHI', '1', '629/block 15', '1', 'KHI', '12345', 'A', 'ISI', '');
INSERT INTO `STUDENT_DETAIL` VALUES ('mateen1@hotmail.com', 'Mateen-ul-haq', 'Muti-Ul-Haq', '42101-1234567-1', 'F', '2016-07-07', '1234', '1234', 'KHI', 'SU', 'KHI', '1', '123', '1', 'KHI', '', '', '', '');

-- ----------------------------
-- Table structure for STUDENT_MASTER
-- ----------------------------
DROP TABLE IF EXISTS `STUDENT_MASTER`;
CREATE TABLE `STUDENT_MASTER` (
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Counter` int(11) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of STUDENT_MASTER
-- ----------------------------
INSERT INTO `STUDENT_MASTER` VALUES ('umair@yahoo.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('syedshariq.muhammad@gmail.com', 'cyber2003', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('test@gmail.com', 'testing', '4');
INSERT INTO `STUDENT_MASTER` VALUES ('faisal.hussain@ibp.org.pk', 'abc123-', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('umair@umair.com', 'house123', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('shariq@skillorbit.com', 'sh1234', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testing@gmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('test1@gmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testing1@gmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testing123@yahoo.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testt@gmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('tt@gmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testing1@yahoo.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('test@outlook.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testingg@yahoo.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testing55@gmail.com', '321654', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testing555@ibp.org.pk', '321654', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testing112@gmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('test1@ymail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('test11@ymail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('test@ymail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testing9@ymail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('te@ymail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('tes@ymail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('saim.zafar@ibp.org.pk', '890789', '1');
INSERT INTO `STUDENT_MASTER` VALUES ('testt@ymail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testtt@yahoo.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('test101@gmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('test02@gmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('test103@gmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('mumar_10@outlook.com', 'house123', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('mateen1@hotmail.com', '123456', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('mateen_ul_haq@yahoo.com', '1march1991', '0');
INSERT INTO `STUDENT_MASTER` VALUES ('testing09@gmail.com', '123456', '0');

-- ----------------------------
-- Table structure for STUDENTDOCS
-- ----------------------------
DROP TABLE IF EXISTS `STUDENTDOCS`;
CREATE TABLE `STUDENTDOCS` (
  `ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Path` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of STUDENTDOCS
-- ----------------------------
INSERT INTO `STUDENTDOCS` VALUES ('1', 'umairahmed77@yahoo.com', 'NIC', '/StudentDocs/role.png');
INSERT INTO `STUDENTDOCS` VALUES ('1', 'shariq@skillorbit.com', 'NIC', '/StudentDocs/asan.png');
INSERT INTO `STUDENTDOCS` VALUES ('2', 'shariq@skillorbit.com', 'Domicile', '/StudentDocs/Blood.jpg');
INSERT INTO `STUDENTDOCS` VALUES ('1', 'mumar_10@outlook.com', 'NIC', '/StudentDocs/manhe.png');
INSERT INTO `STUDENTDOCS` VALUES ('2', 'mumar_10@outlook.com', 'MarkSheet', '/StudentDocs/manhe.png');

-- ----------------------------
-- Table structure for UNIVERSITY
-- ----------------------------
DROP TABLE IF EXISTS `UNIVERSITY`;
CREATE TABLE `UNIVERSITY` (
  `ID` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of UNIVERSITY
-- ----------------------------
INSERT INTO `UNIVERSITY` VALUES ('1', 'N/A');
INSERT INTO `UNIVERSITY` VALUES ('2', 'University of Karachi');

-- ----------------------------
-- Table structure for USER
-- ----------------------------
DROP TABLE IF EXISTS `USER`;
CREATE TABLE `USER` (
  `Email` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Counter` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of USER
-- ----------------------------
INSERT INTO `USER` VALUES ('admin@hotmail.com', 'Admin', '123456', '5', '0');
INSERT INTO `USER` VALUES ('umair@hotmail.com', 'UAH', 'GBQE08', '3', '0');
INSERT INTO `USER` VALUES ('shariq@skillorbit.com', 'shariq', 'PJHPRF', '4', '0');
INSERT INTO `USER` VALUES ('mateen@hotmail.com', 'MATEEN', '123456', '1', '0');
INSERT INTO `USER` VALUES ('faisal.hussain@ibp.org.pk', 'Faisal', 'ED8VD0', '4', '0');
INSERT INTO `USER` VALUES ('test@test.com', 'Test', 'ZQ0OBL', '2', '0');
INSERT INTO `USER` VALUES ('FO@hotmail.com', 'Finance Officer', '123456', '4', '0');
INSERT INTO `USER` VALUES ('EO@hotmail.com', 'Exam Officer', '123456', '3', '0');
INSERT INTO `USER` VALUES ('EM@hotmail.com', 'Exam Manager', '123456', '2', '0');
INSERT INTO `USER` VALUES ('testing@ibp.org.pk', 'testing', '07UA2M', '5', '0');
INSERT INTO `USER` VALUES ('customer@hotmail.com', 'Customer', '123456', '6', '0');
