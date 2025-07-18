-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_data
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Current Database: `hospital_data`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hospital_data` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hospital_data`;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointment_id` text,
  `patient_id` text,
  `doctor_id` text,
  `appointment_date` text,
  `appointment_time` text,
  `status` text,
  `reason` text,
  `notes` text,
  `suggest` text,
  `fees` int DEFAULT NULL,
  `payment_method` text,
  `discount` int DEFAULT NULL,
  `diagnosis` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES ('APP001','P001','D001','2023-05-14','10:00:00','Completed','Chest Pain','Patient complained of chest pain',' prescribed medication',800,'Cash',0,'Heart attack'),('APP002','P002','D004','2023-05-17','11:30:00','Completed','Regular Checkup','Regular gynecological checkup',' all normal',700,'Credit Card',0,'menstrual disorders'),('APP003','P003','D007','2023-05-19','14:00:00','Completed','Stomach Pain','Patient has chronic gastritis',' advised diet change',850,'Insurance',0,'Acid reflux'),('APP004','P004','D006','2023-06-01','09:30:00','Completed','Skin Rash','Allergic reaction',' prescribed antihistamines',650,'Cash',50,'Acne'),('APP005','P005','D003','2023-06-04','13:00:00','Completed','Back Pain','Lumbar strain',' physiotherapy recommended',800,'Insurance',0,'joint replacement'),('APP006','P006','D009','2023-06-09','16:30:00','Completed','Ear Infection','Ear infection diagnosed',' prescribed antibiotics',700,'Credit Card',0,'Sinusitis'),('APP007','P007','D002','2023-06-14','10:00:00','Completed','Severe Headache','Possible migraine',' further tests needed',850,'Insurance',0,'Stroke'),('APP008','P008','D010','2023-06-17','11:30:00','Completed','Anxiety Issues','Patient suffering from anxiety',' therapy recommended',900,'Cash',100,'Depression'),('APP009','P009','D011','2023-06-19','14:00:00','Completed','Urinary Issues','UTI diagnosed',' prescribed antibiotics',750,'Credit Card',0,'Kidney stones,'),('APP010','P010','D005','2023-06-30','09:30:00','Completed','Child Fever','Child has viral fever',' prescribed medication',600,'Insurance',0,'Growth issues'),('APP011','P011','D013','2023-07-04','13:00:00','Completed','Kidney Pain','Kidney stones suspected',' tests ordered',900,'Cash',0,'Chronic kidney disease'),('APP012','P012','D006','2023-07-09','16:30:00','Completed','Acne Treatment','Severe acne',' prescribed medication',650,'Credit Card',50,'skin infections'),('APP013','P013','D015','2023-07-14','10:00:00','Completed','Cancer Screening','Routine cancer screening',' tests ordered',1200,'Insurance',200,'Kidney stones'),('APP014','P014','D008','2023-07-17','11:30:00','Completed','Vision Problem','Vision deterioration',' new glasses prescribed',700,'Cash',0,'Cataracts'),('APP015','P015','D001','2023-07-19','14:00:00','Completed','Heart Palpitations','Heart arrhythmia suspected',' ECG performed',850,'Insurance',0,'high blood pressure'),('APP016','P016','D012','2023-07-31','09:30:00','Completed','Diabetes Check','Routine diabetes checkup',' medication adjusted',800,'Credit Card',0,'Diabetes'),('APP017','P017','D014','2023-08-04','13:00:00','Completed','Breathing Difficulty','COPD exacerbation',' treatment intensified',900,'Cash',100,'lung infections'),('APP018','P018','D004','2023-08-09','16:30:00','Completed','Pregnancy Confirmation','Pregnancy confirmed',' scheduled followup',700,'Insurance',0,'uterine fibroids'),('APP019','P019','D007','2023-08-14','10:00:00','Completed','Liver Function','Abnormal liver function',' diet change advised',850,'Credit Card',0,'hepatitis'),('APP020','P020','D003','2023-08-19','11:30:00','Completed','Joint Pain','Arthritis diagnosed',' medication prescribed',800,'Cash',0,'spinal disorders'),('APP021','P021','D002','2023-08-31','09:30:00','Completed','Stroke Symptoms','TIA suspected',' hospitalization recommended',950,'Insurance',0,'Parkinsonâ€™s disease'),('APP022','P022','D005','2023-09-04','13:00:00','Completed','Child Vaccination','Routine vaccination',' next appointment scheduled',500,'Credit Card',0,'infections'),('APP023','P023','D013','2023-09-09','16:30:00','Completed','Renal Checkup','Renal function deteriorating',' admission advised',900,'Cash',0,'dialysis management'),('APP024','P024','D009','2023-09-14','10:00:00','Completed','Hearing Loss','Mild hearing loss',' hearing aid recommended',750,'Insurance',50,'ear infections'),('APP025','P025','D011','2023-09-19','11:30:00','Completed','Prostate Examination','Enlarged prostate',' medication prescribed',800,'Credit Card',0,'Kidney stones,'),('APP026','P026','D010','2023-09-30','09:30:00','Completed','Depression','Clinical depression diagnosed',' therapy started',900,'Cash',0,'anxiety'),('APP027','P027','D015','2023-10-04','13:00:00','Completed','Cancer Followup','Cancer in remission',' monitoring continued',1200,'Insurance',200,'prostate issues'),('APP028','P028','D006','2023-10-09','16:30:00','Completed','Eczema','Eczema flare-up',' topical steroids prescribed',650,'Credit Card',0,'psoriasis'),('APP029','P029','D014','2023-10-14','10:00:00','Completed','Pneumonia Symptoms','Pneumonia confirmed',' hospitalization recommended',900,'Cash',0,'lung infections'),('APP030','P030','D008','2023-10-19','11:30:00','Completed','Cataract Examination','Cataract diagnosed',' surgery recommended',800,'Insurance',0,'eye infections');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beds` (
  `bed_id` text,
  `room_id` text,
  `status` text,
  `patient_id` text,
  `occupied_from` text,
  `occupied_till` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
INSERT INTO `beds` VALUES ('B001','R001','Available',NULL,NULL,NULL),('B002','R001','Available',NULL,NULL,NULL),('B003','R001','Occupied','P007','2023-06-15',NULL),('B004','R001','Occupied','P010','2023-07-01',NULL),('B005','R002','Occupied','P013','2023-07-15',NULL),('B006','R003','Available',NULL,NULL,NULL),('B007','R004','Available',NULL,NULL,NULL),('B008','R004','Available',NULL,NULL,NULL),('B009','R004','Occupied','P017','2023-08-05',NULL),('B010','R004','Available',NULL,NULL,NULL),('B011','R005','Occupied','P020','2023-08-20',NULL),('B012','R006','Available',NULL,NULL,NULL),('B013','R007','Available',NULL,NULL,NULL),('B014','R007','Available',NULL,NULL,NULL),('B015','R007','Occupied','P023','2023-09-10',NULL),('B016','R007','Available',NULL,NULL,NULL),('B017','R008','Occupied','P026','2023-10-01',NULL),('B018','R009','Available',NULL,NULL,NULL),('B019','R010','Available',NULL,NULL,NULL),('B020','R010','Available',NULL,NULL,NULL),('B021','R010','Occupied','P029','2023-10-15',NULL),('B022','R010','Available',NULL,NULL,NULL),('B023','R011','Occupied','P001','2023-05-15','2023-05-20'),('B024','R012','Available',NULL,NULL,NULL),('B025','R013','Available',NULL,NULL,NULL);
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` text,
  `name` text,
  `floor` int DEFAULT NULL,
  `head_doctor_id` text,
  `total_staff` int DEFAULT NULL,
  `phone_extension` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('DEPT001','Cardiology',3,'D001',15,1001),('DEPT002','Neurology',4,'D002',12,1002),('DEPT003','Orthopedics',2,'D003',18,1003),('DEPT004','Gynecology',5,'D004',14,1004),('DEPT005','Pediatrics',1,'D005',16,1005),('DEPT006','Dermatology',3,'D006',8,1006),('DEPT007','Gastroenterology',4,'D007',10,1007),('DEPT008','Ophthalmology',2,'D008',9,1008),('DEPT009','ENT',5,'D009',7,1009),('DEPT010','Psychiatry',6,'D010',6,1010),('DEPT011','Urology',3,'D011',8,1011),('DEPT012','Endocrinology',4,'D012',6,1012),('DEPT013','Nephrology',2,'D013',9,1013),('DEPT014','Pulmonology',5,'D014',10,1014),('DEPT015','Oncology',6,'D015',14,1015);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` text,
  `name` text,
  `specialization` text,
  `department` text,
  `salary` int DEFAULT NULL,
  `status` text,
  `availability` text,
  `joining_date` text,
  `qualification` text,
  `experience_years` int DEFAULT NULL,
  `phone` text,
  `email` text,
  `Img` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('D001','Dr. Aditya Gupta','Cardiologist','Cardiology',150000,'Active','Available','2015-06-01','MD',12,'9876543210','aditya.gupta@hospital.com','https://i.ibb.co/r2Vyh5MX/Dr-6.jpg'),('D002','Dr. Neha Verma','Neurologist','Neurology',145000,'Active','Available','2016-07-15','MD',10,'8765432109','neha.verma@hospital.com','https://i.ibb.co/jkYD4jsY/DR-5-1.jpg'),('D003','Dr. Rajesh Kumar','Orthopedic Surgeon','Orthopedics',140000,'Active','On Leave','2015-08-20','MS',11,'7654321098','rajesh.kumar@hospital.com','https://i.ibb.co/8D1NnQFm/DR-5.jpg'),('D004','Dr. Priya Sharma','Gynecologist','Gynecology',135000,'Active','Available','2017-01-10','MBBS',8,'6543210987','priya.sharma@hospital.com','https://i.ibb.co/bjnbLqRw/DR-4.jpg'),('D005','Dr. Vikram Singh','Pediatrician','Pediatrics',130000,'Active','Available','2016-03-05','MD (Pediatrics)',9,'vikram.singh@hospital.com','','https://i.ibb.co/gFzShn7G/DR-3.jpg'),('D006','Dr. Anita Patel','Dermatologist','Dermatology',125000,'Active','Available','2018-02-15','MD (Dermatology)',7,'anita.patel@hospital.com','','https://i.ibb.co/7NQdkhRx/DR-2.jpg'),('D007','Dr. Suresh Nair','Gastroenterologist','Gastroenterology',155000,'Active','On Leave','2014-05-20','MD',13,'3210987654','suresh.nair@hospital.com','https://i.ibb.co/5g6N8dwD/DR-1.jpg'),('D008','Dr. Kavita Menon','Ophthalmologist','Ophthalmology',120000,'Active','Available','2019-04-10','MS (Ophthalmology)',6,'kavita.menon@hospital.com','','https://i.ibb.co/r2Vyh5MX/Dr-6.jpg'),('D009','Dr. Deepak Joshi','ENT Specialist','ENT',115000,'Active','Available','2020-06-25','MS (ENT)',5,'deepak.joshi@hospital.com','','https://i.ibb.co/jkYD4jsY/DR-5-1.jpg'),('D010','Dr. Meera Reddy','Psychiatrist','Psychiatry',130000,'Active','Available','2017-08-15','MD (Psychiatry)',8,'meera.reddy@hospital.com','','https://i.ibb.co/8D1NnQFm/DR-5.jpg'),('D011','Dr. Sanjay Malhotra','Urologist','Urology',145000,'Active','Available','2015-09-30','MS',11,'8765432119','sanjay.malhotra@hospital.com','https://i.ibb.co/bjnbLqRw/DR-4.jpg'),('D012','Dr. Pooja Das','Endocrinologist','Endocrinology',140000,'Active','On Leave','2016-11-20','MD',10,'7654321108','pooja.das@hospital.com','https://i.ibb.co/gFzShn7G/DR-3.jpg'),('D013','Dr. Amit Khanna','Nephrologist','Nephrology',150000,'Active','Available','2014-10-15','MD',12,'6543210997','amit.khanna@hospital.com','https://i.ibb.co/7NQdkhRx/DR-2.jpg'),('D014','Dr. Sonali Bhatia','Pulmonologist','Pulmonology',135000,'Active','Available','2017-05-05','MD (Pulmonology)',8,'sonali.bhatia@hospital.com','','https://i.ibb.co/5g6N8dwD/DR-1.jpg'),('D015','Dr. Ravi Mehta','Oncologist','Oncology',160000,'Active','Available','2013-03-10','MD',14,'4321098775','ravi.mehta@hospital.com','https://i.ibb.co/5g6N8dwD/DR-1.jpg');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital bills`
--

DROP TABLE IF EXISTS `hospital bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital bills` (
  `bill_id` text,
  `patient_id` text,
  `admission_date` text,
  `discharge_date` text,
  `room_charges` int DEFAULT NULL,
  `surgery_charges` int DEFAULT NULL,
  `medicine_charges` int DEFAULT NULL,
  `test_charges` int DEFAULT NULL,
  `doctor_fees` int DEFAULT NULL,
  `other_charges` int DEFAULT NULL,
  `total_amount` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `paid_amount` int DEFAULT NULL,
  `payment_status` text,
  `payment_method` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital bills`
--

LOCK TABLES `hospital bills` WRITE;
/*!40000 ALTER TABLE `hospital bills` DISABLE KEYS */;
INSERT INTO `hospital bills` VALUES ('BILL001','P001','2023-05-15','2023-05-20',5000,0,410,2800,800,1000,10010,0,10010,'Paid','Cash'),('BILL002','P002','2023-05-18','2023-05-25',7000,0,160,0,700,500,8360,0,8360,'Paid','Credit Card'),('BILL003','P003','2023-05-20','2023-05-30',10000,25000,260,5000,850,2000,43110,0,43110,'Paid','Insurance'),('BILL004','P004','2023-06-02','2023-06-10',8000,0,55,0,650,500,9205,0,9205,'Paid','Cash'),('BILL005','P005','2023-06-05','2023-06-15',10000,75000,180,2500,800,3000,91480,5000,86480,'Paid','Insurance'),('BILL006','P006','2023-06-10','2023-06-14',4000,0,70,0,700,500,5270,0,5270,'Paid','Credit Card'),('BILL007','P007','2023-06-15',NULL,0,0,405,5000,850,0,6255,0,6255,'Paid','Insurance'),('BILL008','P008','2023-06-18','2023-06-25',7000,0,130,0,900,500,8530,100,8430,'Paid','Cash'),('BILL009','P009','2023-06-20','2023-06-30',10000,50000,140,3300,750,2000,66190,0,66190,'Paid','Credit Card'),('BILL010','P010','2023-07-01',NULL,0,0,160,0,600,0,760,0,760,'Paid','Insurance'),('BILL011','P011','2023-07-05','2023-07-12',7000,35000,160,2800,900,1500,47360,2000,45360,'Paid','Cash'),('BILL012','P012','2023-07-10','2023-07-15',5000,0,140,0,650,500,6290,50,6240,'Paid','Credit Card'),('BILL013','P013','2023-07-15',NULL,0,0,70,5000,1200,0,6270,0,6270,'Paid','Insurance'),('BILL014','P014','2023-07-18','2023-07-25',7000,0,60,0,700,500,8260,0,8260,'Paid','Cash'),('BILL015','P015','2023-07-20','2023-07-28',8000,60000,360,2300,850,2500,74010,0,74010,'Paid','Insurance'),('BILL016','P016','2023-08-01','2023-08-10',9000,0,570,0,800,1000,11370,0,11370,'Paid','Credit Card'),('BILL017','P017','2023-08-05',NULL,0,0,170,2600,900,0,3670,100,3570,'Paid','Cash'),('BILL018','P018','2023-08-10','2023-08-15',5000,0,120,0,700,500,6320,0,6320,'Paid','Insurance'),('BILL019','P019','2023-08-15','2023-08-25',10000,20000,160,2800,850,1500,35310,1000,34310,'Paid','Credit Card'),('BILL020','P020','2023-08-20',NULL,0,0,180,0,800,0,980,0,980,'Paid','Cash'),('BILL021','P021','2023-09-01','2023-09-10',9000,55000,330,6500,950,2000,73780,0,73780,'Paid','Insurance'),('BILL022','P022','2023-09-05','2023-09-12',7000,0,40,0,500,500,8040,0,8040,'Paid','Credit Card'),('BILL023','P023','2023-09-10',NULL,0,0,90,1000,900,0,1990,0,1990,'Paid','Cash'),('BILL024','P024','2023-09-15','2023-09-25',10000,0,65,0,750,1000,11815,50,11765,'Paid','Insurance'),('BILL025','P025','2023-09-20','2023-09-30',10000,40000,360,3300,800,2000,56460,0,56460,'Paid','Credit Card'),('BILL026','P026','2023-10-01',NULL,0,0,140,0,900,0,1040,0,1040,'Paid','Cash'),('BILL027','P027','2023-10-05','2023-10-15',10000,70000,160,4500,1200,3000,88860,5000,83860,'Paid','Insurance'),('BILL028','P028','2023-10-10','2023-10-18',8000,0,75,0,650,500,9225,0,9225,'Paid','Credit Card'),('BILL029','P029','2023-10-15',NULL,0,0,225,2600,900,0,3725,0,3725,'Paid','Cash'),('BILL030','P030','2023-10-20','2023-10-28',8000,0,60,0,800,1000,9860,0,9860,'Paid','Insurance');
/*!40000 ALTER TABLE `hospital bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical stock`
--

DROP TABLE IF EXISTS `medical stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical stock` (
  `medicine_id` text,
  `name` text,
  `category` text,
  `supplier_id` text,
  `cost_price` double DEFAULT NULL,
  `unit_price` int DEFAULT NULL,
  `stock_qty` int DEFAULT NULL,
  `expiry_date` text,
  `manufacture_date` text,
  `batch_number` text,
  `reorder_level` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical stock`
--

LOCK TABLES `medical stock` WRITE;
/*!40000 ALTER TABLE `medical stock` DISABLE KEYS */;
INSERT INTO `medical stock` VALUES ('MED001','Paracetamol','Pain Relief','SUP001',2.5,5,500,'2024-12-31','2023-01-15','BT12345',100),('MED002','Amoxicillin','Antibiotic','SUP002',5,10,300,'2024-06-30','2023-02-20','BT23456',50),('MED003','Omeprazole','Antacid','SUP003',4,8,400,'2025-03-31','2023-03-10','BT34567',75),('MED004','Loratadine','Antihistamine','SUP001',3,6,350,'2024-09-30','2023-01-25','BT45678',60),('MED005','Metformin','Antidiabetic','SUP002',3.5,7,250,'2024-08-31','2023-02-15','BT56789',40),('MED006','Atorvastatin','Cholesterol','SUP003',6,12,200,'2024-07-31','2023-03-05','BT67890',35),('MED007','Salbutamol','Bronchodilator','SUP001',4.5,9,180,'2024-11-30','2023-01-30','BT78901',30),('MED008','Amlodipine','Antihypertensive','SUP002',5.5,11,220,'2024-10-31','2023-02-25','BT89012',40),('MED009','Diazepam','Sedative','SUP003',7,14,150,'2024-05-31','2023-03-15','BT90123',25),('MED010','Insulin','Antidiabetic','SUP001',15,30,100,'2024-04-30','2023-01-20','BT01234',20),('MED011','Ibuprofen','Pain Relief','SUP002',3,6,450,'2025-01-31','2023-02-10','BT12345',90),('MED012','Cetirizine','Antihistamine','SUP003',2.5,5,380,'2024-08-31','2023-03-20','BT23456',70),('MED013','Ceftriaxone','Antibiotic','SUP001',8,16,120,'2024-03-31','2023-01-10','BT34567',20),('MED014','Simvastatin','Cholesterol','SUP002',5.5,11,180,'2025-02-28','2023-02-05','BT45678',30),('MED015','Ranitidine','Antacid','SUP003',4,8,250,'2024-06-30','2023-03-25','BT56789',45);
/*!40000 ALTER TABLE `medical stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical tests`
--

DROP TABLE IF EXISTS `medical tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical tests` (
  `test_id` text,
  `test_name` text,
  `category` text,
  `department_id` text,
  `cost` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `fasting_required` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical tests`
--

LOCK TABLES `medical tests` WRITE;
/*!40000 ALTER TABLE `medical tests` DISABLE KEYS */;
INSERT INTO `medical tests` VALUES ('TEST001','Complete Blood Count','Hematology','DEPT015',500,30,'Yes'),('TEST002','Blood Glucose','Biochemistry','DEPT012',300,15,'Yes'),('TEST003','Lipid Profile','Biochemistry','DEPT012',800,30,'Yes'),('TEST004','Liver Function Test','Biochemistry','DEPT007',1000,45,'Yes'),('TEST005','Kidney Function Test','Biochemistry','DEPT013',1000,45,'Yes'),('TEST006','Thyroid Profile','Endocrinology','DEPT012',1200,30,'Yes'),('TEST007','Electrocardiogram (ECG)','Cardiology','DEPT001',1500,20,'No'),('TEST008','X-Ray Chest','Radiology','DEPT014',800,15,'No'),('TEST009','CT Scan','Radiology','DEPT014',4500,45,'No'),('TEST010','MRI Scan','Radiology','DEPT014',7500,60,'No'),('TEST011','Ultrasound','Radiology','DEPT014',1800,30,'Depends'),('TEST012','Urine Analysis','Pathology','DEPT013',400,60,'No'),('TEST013','Stool Analysis','Pathology','DEPT007',500,60,'No'),('TEST014','Pap Smear','Gynecology','DEPT004',1200,30,'No'),('TEST015','Mammogram','Radiology','DEPT004',2000,30,'No');
/*!40000 ALTER TABLE `medical tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_patient`
--

DROP TABLE IF EXISTS `medicine_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_patient` (
  `patient_id` text,
  `medicine_id` text,
  `qty` int DEFAULT NULL,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_patient`
--

LOCK TABLES `medicine_patient` WRITE;
/*!40000 ALTER TABLE `medicine_patient` DISABLE KEYS */;
INSERT INTO `medicine_patient` VALUES ('P001','MED013',10,'9/17/2023'),('P002','MED001',11,'10/12/2023'),('P003','MED012',5,'10/1/2023'),('P004','MED009',11,'8/3/2023'),('P005','MED009',9,'6/20/2023'),('P006','MED015',8,'6/20/2023'),('P007','MED010',6,'7/10/2023'),('P008','MED004',5,'6/8/2023'),('P009','MED012',5,'7/13/2023'),('P010','MED014',3,'8/14/2023'),('P011','MED013',4,'8/3/2023'),('P012','MED010',10,'6/8/2023'),('P013','MED008',9,'8/30/2023'),('P015','MED003',6,'8/3/2023'),('P016','MED002',6,'10/24/2023'),('P017','MED006',4,'10/1/2023'),('P018','MED009',11,'10/20/2023'),('P019','MED010',6,'6/21/2023'),('P020','MED007',8,'9/17/2023'),('P021','MED003',8,'9/21/2023'),('P022','MED009',3,'7/10/2023'),('P023','MED002',12,'5/22/2023'),('P024','MED005',9,'6/28/2023'),('P025','MED004',8,'7/24/2023'),('P026','MED001',6,'9/7/2023'),('P027','MED002',8,'8/19/2023'),('P028','MED013',5,'8/19/2023'),('P030','MED006',7,'5/15/2023'),('P001','MED014',6,'7/10/2023'),('P002','MED014',9,'10/1/2023'),('P003','MED013',6,'10/24/2023'),('P004','MED011',6,'7/10/2023'),('P005','MED010',5,'9/17/2023'),('P006','MED002',10,'8/20/2023'),('P007','MED006',10,'7/13/2023'),('P008','MED004',7,'5/22/2023'),('P009','MED007',6,'6/20/2023'),('P010','MED009',11,'8/14/2023'),('P011','MED002',3,'8/14/2023'),('P012','MED009',5,'10/21/2023'),('P013','MED012',11,'8/3/2023'),('P014','MED003',9,'7/21/2023'),('P015','MED012',3,'10/24/2023'),('P016','MED013',7,'6/21/2023'),('P017','MED005',12,'10/20/2023'),('P018','MED005',8,'7/10/2023'),('P019','MED001',9,'7/21/2023'),('P020','MED008',3,'9/17/2023'),('P021','MED012',7,'9/14/2023'),('P022','MED014',4,'8/14/2023'),('P023','MED007',8,'6/8/2023'),('P024','MED001',4,'10/1/2023'),('P025','MED008',4,'8/14/2023'),('P026','MED012',4,'7/10/2023'),('P027','MED004',3,'10/1/2023'),('P028','MED015',6,'10/24/2023'),('P029','MED015',3,'7/21/2023'),('P030','MED009',6,'8/19/2023'),('P001','MED014',8,'7/21/2023'),('P002','MED006',12,'5/31/2023'),('P003','MED005',8,'10/12/2023'),('P004','MED004',11,'5/15/2023'),('P005','MED006',6,'5/31/2023'),('P006','MED005',7,'9/14/2023'),('P007','MED003',5,'9/21/2023'),('P008','MED014',12,'6/8/2023'),('P009','MED008',9,'8/14/2023'),('P011','MED011',8,'9/17/2023'),('P012','MED007',4,'8/21/2023'),('P013','MED003',10,'10/24/2023'),('P014','MED015',4,'6/7/2023'),('P016','MED010',7,'5/31/2023'),('P017','MED007',11,'10/24/2023'),('P018','MED013',6,'7/13/2023'),('P019','MED003',11,'10/12/2023'),('P020','MED008',6,'7/24/2023'),('P021','MED010',11,'10/12/2023'),('P022','MED002',12,'7/13/2023'),('P023','MED004',5,'7/13/2023'),('P024','MED011',7,'6/20/2023'),('P025','MED006',10,'9/17/2023'),('P027','MED007',6,'7/13/2023'),('P030','MED011',6,'9/14/2023'),('P001','MED009',6,'9/14/2023'),('P002','MED011',5,'8/30/2023'),('P003','MED002',4,'8/30/2023'),('P004','MED012',5,'10/20/2023'),('P005','MED005',5,'5/22/2023'),('P006','MED015',10,'5/22/2023'),('P007','MED001',3,'6/20/2023'),('P008','MED012',11,'9/21/2023'),('P009','MED014',7,'9/7/2023'),('P010','MED001',8,'10/20/2023'),('P011','MED015',5,'6/7/2023'),('P012','MED004',7,'10/24/2023'),('P013','MED008',6,'5/15/2023'),('P014','MED003',12,'6/21/2023'),('P015','MED009',10,'8/3/2023'),('P016','MED011',5,'7/24/2023'),('P017','MED015',11,'8/19/2023'),('P018','MED004',7,'8/20/2023'),('P019','MED003',5,'6/28/2023'),('P020','MED004',12,'9/7/2023'),('P021','MED002',3,'10/20/2023'),('P022','MED003',9,'8/20/2023'),('P023','MED015',9,'10/1/2023'),('P024','MED002',3,'6/21/2023'),('P025','MED007',12,'8/19/2023'),('P026','MED008',11,'9/21/2023'),('P027','MED004',11,'7/13/2023'),('P028','MED005',6,'6/7/2023'),('P029','MED009',12,'8/19/2023'),('P030','MED001',3,'7/21/2023'),('P001','MED007',9,'10/24/2023'),('P002','MED006',5,'8/3/2023'),('P003','MED003',4,'6/21/2023'),('P004','MED007',7,'9/17/2023'),('P005','MED014',6,'5/31/2023'),('P008','MED012',7,'5/31/2023'),('P009','MED014',3,'10/24/2023'),('P010','MED014',10,'9/7/2023'),('P011','MED010',12,'7/26/2023'),('P012','MED008',7,'6/7/2023'),('P013','MED003',6,'7/21/2023'),('P014','MED012',12,'10/1/2023'),('P015','MED002',6,'6/7/2023'),('P016','MED012',10,'9/17/2023'),('P018','MED006',3,'9/17/2023'),('P019','MED012',3,'8/19/2023'),('P020','MED015',6,'8/3/2023'),('P021','MED006',5,'9/7/2023'),('P023','MED001',5,'9/17/2023'),('P024','MED012',7,'9/7/2023'),('P025','MED002',12,'6/7/2023'),('P026','MED005',6,'6/8/2023'),('P027','MED009',12,'6/20/2023'),('P028','MED012',5,'6/7/2023'),('P029','MED004',9,'9/14/2023'),('P030','MED005',11,'5/22/2023'),('P001','MED009',6,'9/17/2023'),('P002','MED008',6,'10/24/2023'),('P003','MED001',11,'8/3/2023'),('P004','MED002',3,'10/24/2023'),('P005','MED015',10,'8/14/2023'),('P006','MED013',12,'10/12/2023'),('P007','MED012',5,'7/24/2023'),('P008','MED004',5,'6/21/2023'),('P009','MED002',10,'6/8/2023'),('P010','MED004',9,'6/21/2023'),('P011','MED002',12,'7/13/2023'),('P012','MED014',5,'5/22/2023'),('P013','MED014',3,'9/14/2023'),('P014','MED003',6,'8/30/2023'),('P015','MED003',9,'8/21/2023'),('P016','MED006',12,'8/3/2023'),('P017','MED009',7,'10/1/2023'),('P018','MED010',3,'6/21/2023'),('P019','MED006',10,'7/10/2023'),('P020','MED009',8,'9/21/2023'),('P021','MED006',7,'6/8/2023'),('P022','MED007',8,'8/19/2023'),('P023','MED014',11,'9/17/2023'),('P024','MED011',8,'9/14/2023'),('P025','MED007',6,'6/7/2023'),('P026','MED015',11,'7/13/2023'),('P027','MED011',12,'7/10/2023'),('P028','MED004',8,'10/20/2023'),('P029','MED007',4,'7/21/2023'),('P030','MED011',11,'7/10/2023'),('P001','MED010',6,'6/20/2023'),('P002','MED008',9,'9/17/2023'),('P003','MED001',11,'9/17/2023'),('P004','MED011',11,'8/14/2023'),('P005','MED011',10,'9/17/2023'),('P006','MED007',3,'10/20/2023'),('P008','MED006',10,'6/8/2023'),('P009','MED015',9,'9/14/2023'),('P010','MED015',3,'8/19/2023'),('P011','MED012',12,'5/15/2023'),('P012','MED012',10,'8/14/2023'),('P013','MED015',12,'7/26/2023'),('P014','MED006',4,'8/21/2023'),('P015','MED010',4,'10/12/2023'),('P016','MED003',3,'7/13/2023'),('P017','MED015',10,'6/21/2023'),('P018','MED006',12,'10/1/2023'),('P019','MED011',6,'6/20/2023'),('P020','MED001',7,'9/14/2023'),('P021','MED012',12,'10/1/2023'),('P022','MED012',3,'5/31/2023'),('P023','MED004',10,'5/15/2023'),('P024','MED003',10,'8/21/2023'),('P025','MED005',12,'6/28/2023'),('P026','MED011',10,'9/7/2023'),('P027','MED009',9,'6/28/2023'),('P028','MED014',5,'9/17/2023'),('P029','MED001',7,'9/7/2023'),('P030','MED001',12,'7/24/2023'),('P001','MED009',6,'9/21/2023'),('P002','MED008',3,'9/14/2023'),('P003','MED007',6,'6/21/2023'),('P004','MED002',10,'10/12/2023'),('P005','MED010',10,'8/19/2023'),('P006','MED005',9,'6/28/2023'),('P007','MED007',12,'10/12/2023'),('P008','MED015',10,'9/21/2023'),('P009','MED006',11,'6/7/2023'),('P010','MED013',4,'9/21/2023'),('P011','MED013',5,'6/7/2023'),('P012','MED009',9,'6/7/2023'),('P013','MED002',4,'7/21/2023'),('P014','MED014',4,'8/21/2023'),('P015','MED007',12,'8/19/2023'),('P016','MED009',8,'9/21/2023'),('P017','MED002',11,'6/21/2023'),('P018','MED008',12,'6/21/2023'),('P019','MED009',10,'6/7/2023'),('P020','MED002',6,'9/7/2023'),('P021','MED004',10,'5/22/2023'),('P022','MED014',6,'5/22/2023'),('P023','MED009',7,'8/3/2023'),('P024','MED006',10,'9/7/2023'),('P025','MED008',7,'10/1/2023'),('P026','MED008',5,'6/21/2023'),('P027','MED007',7,'7/26/2023'),('P028','MED008',9,'6/7/2023'),('P029','MED005',3,'7/10/2023'),('P030','MED002',12,'7/13/2023'),('P001','MED015',8,'8/21/2023'),('P002','MED012',12,'6/28/2023'),('P004','MED005',9,'7/24/2023'),('P005','MED005',7,'8/19/2023'),('P006','MED010',3,'9/17/2023'),('P007','MED009',5,'9/17/2023'),('P008','MED010',3,'8/20/2023'),('P009','MED004',9,'9/14/2023'),('P010','MED014',3,'6/21/2023'),('P011','MED005',11,'9/17/2023'),('P012','MED013',10,'8/30/2023'),('P013','MED004',4,'10/1/2023'),('P014','MED001',9,'10/20/2023'),('P015','MED003',10,'7/26/2023'),('P016','MED011',11,'7/26/2023'),('P017','MED007',6,'10/20/2023'),('P018','MED015',8,'6/21/2023'),('P019','MED001',8,'8/20/2023'),('P020','MED013',8,'10/12/2023'),('P021','MED015',11,'6/21/2023'),('P022','MED009',12,'7/24/2023'),('P023','MED011',8,'8/19/2023'),('P024','MED009',7,'6/28/2023'),('P025','MED001',11,'9/17/2023'),('P026','MED007',9,'6/21/2023'),('P027','MED008',12,'7/21/2023'),('P028','MED007',9,'7/24/2023'),('P029','MED005',6,'5/31/2023'),('P030','MED008',11,'10/24/2023'),('P001','MED009',6,'8/21/2023'),('P002','MED003',6,'7/10/2023'),('P003','MED003',10,'9/21/2023'),('P004','MED014',8,'9/17/2023'),('P005','MED013',4,'6/8/2023'),('P006','MED006',11,'8/19/2023'),('P007','MED002',12,'8/19/2023'),('P008','MED003',6,'6/20/2023'),('P009','MED013',6,'6/8/2023'),('P010','MED015',3,'8/3/2023'),('P011','MED004',12,'8/20/2023'),('P012','MED010',5,'6/20/2023'),('P013','MED013',5,'7/13/2023'),('P014','MED013',6,'9/21/2023'),('P015','MED014',7,'9/21/2023'),('P016','MED007',9,'7/10/2023'),('P017','MED008',8,'7/24/2023'),('P018','MED009',5,'9/17/2023'),('P019','MED002',9,'10/24/2023'),('P020','MED011',11,'8/30/2023'),('P021','MED014',12,'8/19/2023'),('P022','MED002',12,'5/15/2023'),('P023','MED008',3,'7/10/2023'),('P024','MED015',5,'9/7/2023'),('P025','MED012',4,'9/7/2023'),('P026','MED002',3,'6/21/2023'),('P027','MED007',7,'6/8/2023'),('P028','MED007',4,'7/24/2023'),('P029','MED015',8,'7/10/2023'),('P030','MED010',6,'6/21/2023'),('P001','MED006',5,'7/10/2023'),('P002','MED015',8,'6/21/2023'),('P004','MED015',11,'5/31/2023'),('P005','MED005',6,'6/7/2023'),('P006','MED004',7,'6/28/2023'),('P007','MED002',11,'5/31/2023'),('P008','MED001',6,'7/24/2023'),('P009','MED009',9,'9/17/2023'),('P010','MED006',7,'7/24/2023'),('P012','MED014',7,'9/21/2023'),('P013','MED012',7,'7/10/2023'),('P014','MED005',3,'8/19/2023'),('P015','MED008',7,'8/21/2023'),('P016','MED009',9,'6/8/2023'),('P017','MED008',9,'6/21/2023'),('P018','MED012',4,'10/24/2023'),('P019','MED009',3,'10/21/2023'),('P020','MED011',8,'6/28/2023'),('P022','MED014',6,'10/12/2023'),('P023','MED003',3,'8/21/2023'),('P024','MED002',4,'8/14/2023'),('P025','MED006',5,'9/7/2023'),('P026','MED014',5,'10/12/2023'),('P027','MED003',6,'8/19/2023'),('P028','MED006',11,'10/21/2023'),('P029','MED007',8,'9/14/2023'),('P030','MED010',10,'9/7/2023'),('P001','MED003',11,'5/15/2023'),('P002','MED015',5,'6/21/2023'),('P003','MED014',3,'8/20/2023'),('P004','MED013',10,'6/8/2023'),('P005','MED011',5,'7/26/2023'),('P006','MED002',11,'8/3/2023'),('P007','MED013',12,'6/21/2023'),('P008','MED007',11,'8/20/2023'),('P009','MED009',8,'10/1/2023'),('P010','MED015',10,'7/26/2023'),('P011','MED013',3,'7/24/2023'),('P012','MED010',12,'10/21/2023'),('P013','MED010',3,'5/31/2023'),('P014','MED014',4,'10/12/2023'),('P015','MED010',9,'8/3/2023'),('P016','MED001',5,'6/20/2023'),('P017','MED003',4,'7/10/2023'),('P018','MED009',10,'8/3/2023'),('P019','MED007',4,'9/17/2023'),('P020','MED010',12,'6/8/2023'),('P021','MED005',5,'9/17/2023'),('P022','MED011',11,'6/20/2023'),('P023','MED002',9,'8/19/2023'),('P024','MED012',10,'8/30/2023'),('P025','MED012',3,'9/17/2023'),('P026','MED013',3,'7/24/2023'),('P027','MED009',10,'7/13/2023'),('P028','MED001',7,'7/26/2023'),('P029','MED014',4,'8/19/2023'),('P030','MED002',10,'6/21/2023'),('P001','MED013',9,'5/31/2023'),('P002','MED008',11,'10/12/2023'),('P004','MED002',7,'6/1/2023'),('P005','MED005',8,'6/21/2023'),('P006','MED007',4,'9/17/2023'),('P007','MED004',3,'8/20/2023'),('P008','MED003',11,'7/13/2023'),('P009','MED006',12,'7/21/2023'),('P010','MED015',12,'7/10/2023'),('P011','MED004',8,'8/21/2023'),('P012','MED011',3,'9/7/2023'),('P013','MED007',8,'8/19/2023'),('P014','MED014',3,'5/31/2023'),('P015','MED009',9,'6/21/2023'),('P016','MED015',7,'7/13/2023'),('P017','MED005',11,'5/31/2023'),('P018','MED011',4,'6/20/2023'),('P019','MED008',5,'5/15/2023'),('P020','MED008',7,'10/21/2023'),('P021','MED015',3,'10/1/2023'),('P022','MED007',10,'10/1/2023'),('P023','MED003',8,'6/28/2023'),('P024','MED015',11,'7/13/2023'),('P025','MED010',11,'6/21/2023'),('P026','MED011',6,'9/17/2023'),('P027','MED009',5,'10/24/2023'),('P029','MED006',6,'10/20/2023'),('P030','MED008',11,'6/21/2023'),('P001','MED012',10,'9/17/2023'),('P002','MED006',10,'6/8/2023'),('P003','MED006',9,'7/24/2023'),('P004','MED010',6,'8/14/2023'),('P005','MED010',6,'6/21/2023'),('P006','MED010',9,'8/21/2023'),('P007','MED010',4,'6/21/2023'),('P008','MED009',7,'9/17/2023'),('P009','MED005',10,'10/1/2023'),('P010','MED001',9,'6/21/2023'),('P011','MED012',12,'8/20/2023'),('P012','MED001',11,'5/31/2023'),('P013','MED006',6,'10/21/2023'),('P014','MED001',9,'5/22/2023'),('P015','MED003',11,'7/21/2023'),('P016','MED002',4,'5/22/2023'),('P017','MED008',8,'5/22/2023'),('P018','MED001',3,'8/30/2023'),('P019','MED004',10,'6/28/2023'),('P020','MED007',10,'9/17/2023'),('P021','MED012',10,'9/21/2023'),('P022','MED014',6,'6/20/2023'),('P023','MED015',8,'7/10/2023'),('P024','MED008',3,'6/7/2023'),('P025','MED006',11,'6/8/2023'),('P026','MED012',4,'8/14/2023'),('P027','MED012',4,'10/20/2023'),('P028','MED011',10,'7/24/2023'),('P029','MED011',10,'7/21/2023'),('P030','MED013',6,'8/20/2023'),('P001','MED001',5,'8/30/2023'),('P002','MED002',12,'9/17/2023'),('P003','MED006',4,'9/7/2023'),('P004','MED014',12,'6/8/2023'),('P007','MED010',11,'9/17/2023'),('P008','MED010',8,'8/20/2023'),('P009','MED002',3,'8/20/2023'),('P010','MED015',4,'10/21/2023'),('P012','MED008',11,'8/3/2023'),('P013','MED001',4,'7/26/2023'),('P014','MED007',10,'6/8/2023'),('P015','MED011',11,'7/21/2023'),('P016','MED001',12,'8/20/2023'),('P017','MED010',3,'8/14/2023'),('P018','MED005',9,'8/14/2023'),('P019','MED006',3,'7/24/2023'),('P020','MED014',6,'8/14/2023'),('P021','MED006',4,'6/20/2023'),('P023','MED012',10,'7/13/2023'),('P024','MED001',8,'7/10/2023'),('P025','MED011',4,'8/21/2023'),('P026','MED003',12,'9/17/2023'),('P027','MED013',6,'10/24/2023'),('P028','MED014',4,'6/7/2023'),('P029','MED005',11,'7/24/2023'),('P030','MED015',11,'8/21/2023'),('P001','MED001',9,'6/20/2023'),('P002','MED002',3,'5/15/2023'),('P003','MED003',12,'7/24/2023'),('P004','MED004',12,'7/10/2023'),('P005','MED005',5,'8/19/2023'),('P006','MED006',9,'6/21/2023'),('P007','MED007',5,'8/30/2023'),('P008','MED008',8,'6/7/2023'),('P009','MED009',3,'6/28/2023'),('P010','MED010',8,'10/12/2023'),('P011','MED011',3,'8/19/2023'),('P012','MED012',10,'8/3/2023'),('P013','MED013',6,'5/31/2023'),('P014','MED014',9,'7/26/2023'),('P015','MED015',9,'8/3/2023'),('P016','MED001',8,'6/20/2023'),('P017','MED002',3,'5/15/2023'),('P018','MED003',11,'5/22/2023'),('P019','MED004',12,'5/22/2023'),('P020','MED005',10,'9/21/2023'),('P021','MED006',3,'8/3/2023'),('P022','MED007',10,'9/17/2023'),('P023','MED008',3,'6/20/2023'),('P024','MED009',7,'8/30/2023'),('P025','MED010',11,'10/1/2023'),('P026','MED011',12,'7/13/2023'),('P027','MED012',10,'7/24/2023'),('P028','MED013',10,'7/10/2023'),('P029','MED014',6,'7/24/2023'),('P030','MED015',6,'7/24/2023'),('P001','MED001',8,'6/7/2023'),('P002','MED002',9,'9/21/2023'),('P003','MED003',6,'9/21/2023'),('P004','MED004',10,'9/14/2023'),('P005','MED005',9,'6/28/2023'),('P006','MED006',6,'7/26/2023'),('P007','MED007',9,'5/31/2023'),('P008','MED008',10,'5/22/2023'),('P009','MED009',4,'7/24/2023'),('P010','MED010',8,'10/21/2023'),('P011','MED011',9,'6/28/2023'),('P012','MED012',5,'9/7/2023'),('P013','MED013',4,'5/31/2023'),('P014','MED014',4,'5/15/2023'),('P015','MED015',11,'7/26/2023'),('P016','MED001',6,'9/17/2023'),('P017','MED002',9,'10/1/2023'),('P018','MED003',8,'10/20/2023'),('P019','MED004',4,'7/13/2023'),('P021','MED006',12,'6/8/2023'),('P022','MED007',12,'8/19/2023'),('P023','MED008',11,'10/1/2023'),('P024','MED009',3,'8/20/2023'),('P025','MED010',12,'6/7/2023'),('P026','MED011',4,'9/14/2023'),('P027','MED012',4,'7/1/2023'),('P028','MED013',12,'6/21/2023'),('P029','MED014',6,'9/7/2023'),('P030','MED015',12,'10/24/2023'),('P001','MED001',11,'8/21/2023'),('P002','MED002',4,'7/24/2023'),('P003','MED003',3,'7/26/2023'),('P004','MED004',8,'6/28/2023'),('P005','MED005',10,'8/19/2023'),('P006','MED006',7,'7/24/2023'),('P007','MED007',8,'6/8/2023'),('P008','MED008',11,'8/19/2023'),('P009','MED009',5,'8/19/2023'),('P010','MED010',8,'6/8/2023'),('P011','MED011',5,'7/10/2023'),('P012','MED012',11,'5/15/2023'),('P013','MED013',12,'10/20/2023'),('P014','MED014',10,'5/31/2023'),('P015','MED015',8,'7/21/2023'),('P016','MED001',11,'5/15/2023'),('P017','MED002',7,'8/20/2023'),('P018','MED003',7,'7/21/2023'),('P019','MED004',6,'9/17/2023'),('P020','MED005',10,'6/8/2023'),('P021','MED006',8,'5/31/2023'),('P022','MED007',9,'9/17/2023'),('P023','MED008',3,'8/20/2023'),('P024','MED009',7,'5/31/2023'),('P025','MED010',5,'10/12/2023'),('P026','MED011',12,'10/12/2023'),('P027','MED012',4,'8/20/2023'),('P028','MED013',9,'8/20/2023'),('P029','MED014',5,'9/17/2023'),('P030','MED015',6,'5/15/2023');
/*!40000 ALTER TABLE `medicine_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` text,
  `name` text,
  `age` int DEFAULT NULL,
  `gender` text,
  `weight` int DEFAULT NULL,
  `blood_group` text,
  `address` text,
  `state` text,
  `phone` bigint DEFAULT NULL,
  `email` text,
  `admission_date` text,
  `discharge_date` text,
  `status` text,
  `Img` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('P001','Rahul Sharma',45,'Male',78,'B+',' Park Street',' Delhi',9876543210,'rahul.sharma@email.com','2023-05-15','2023-05-20','Discharged','https://i.ibb.co/4ZXXPz6S/P4.jpg'),('P002','Priya Singh',32,'Female',65,'O+',' Lake Road',' Mumbai',8765432109,'priya.singh@email.com','2023-05-18','2023-05-25','Discharged','https://i.ibb.co/DPS8djNk/p-m-5.jpg'),('P003','Amit Kumar',58,'Male',82,'AB+',' Hill View',' Bangalore',7654321098,'amit.kumar@email.com','2023-05-20','2023-05-30','Discharged','https://i.ibb.co/spTJqyKK/P3-1.jpg'),('P004','Sneha Patel',28,'Female',59,'A-',' River Side',' Chennai',6543210987,'sneha.patel@email.com','2023-06-02','2023-06-10','Discharged','https://i.ibb.co/S15ts9X/p-m3.jpg'),('P005','Vikram Malhotra',52,'Male',88,'O-',' Mountain View',' Kolkata',5432109876,'vikram.malhotra@email.com','2023-06-05','2023-06-15','Discharged','https://i.ibb.co/6RN9f482/P2.jpg'),('P006','Nisha Joshi',37,'Female',62,'B-',' Valley Road',' Hyderabad',4321098765,'nisha.joshi@email.com','2023-06-10','2023-06-14','Discharged','https://i.ibb.co/DPS8djNk/p-m-5.jpg'),('P007','Suresh Reddy',63,'Male',75,'A+',' Cloud Street',' Pune',3210987654,'suresh.reddy@email.com','2023-06-15',NULL,'Admitted','https://i.ibb.co/gL9c0QTx/P1-1.jpg'),('P008','Meera Gupta',41,'Female',70,'AB-',' Star Avenue',' Ahmedabad',2109876543,'meera.gupta@email.com','2023-06-18','2023-06-25','Discharged','https://i.ibb.co/S15ts9X/p-m3.jpg'),('P009','Rajiv Verma',49,'Male',85,'B+',' Moon Road',' Jaipur',1098765432,'rajiv.verma@email.com','2023-06-20','2023-06-30','Discharged','https://i.ibb.co/4ZXXPz6S/P4.jpg'),('P010','Kavita Rao',35,'Female',61,'O+',' Sun Lane',' Lucknow',9876543220,'kavita.rao@email.com','2023-07-01',NULL,'Admitted','https://i.ibb.co/DPS8djNk/p-m-5.jpg'),('P011','Deepak Menon',55,'Male',79,'AB+',' Galaxy Avenue',' Chandigarh',8765432119,'deepak.menon@email.com','2023-07-05','2023-07-12','Discharged','https://i.ibb.co/6RN9f482/P2.jpg'),('P012','Anita Saxena',30,'Female',58,'A-',' Neptune Road',' Bhopal',7654321108,'anita.saxena@email.com','2023-07-10','2023-07-15','Discharged','https://i.ibb.co/PGLMhWdT/p-m-4.png'),('P013','Sanjay Bhatia',60,'Male',77,'O-',' Jupiter Street',' Indore',6543210997,'sanjay.bhatia@email.com','2023-07-15',NULL,'Admitted','https://i.ibb.co/4ZXXPz6S/P4.jpg'),('P014','Pooja Mehta',34,'Female',63,'B-',' Mars Lane',' Nagpur',5432109886,'pooja.mehta@email.com','2023-07-18','2023-07-25','Discharged','https://i.ibb.co/S15ts9X/p-m3.jpg'),('P015','Ravi Khanna',50,'Male',81,'A+',' Venus Road',' Kanpur',4321098775,'ravi.khanna@email.com','2023-07-20','2023-07-28','Discharged','https://i.ibb.co/6RN9f482/P2.jpg'),('P016','Sonali Das',39,'Female',66,'AB-',' Earth Avenue',' Kochi',3210987664,'sonali.das@email.com','2023-08-01','2023-08-10','Discharged','https://i.ibb.co/PGLMhWdT/p-m-4.png'),('P017','Ajay Nair',61,'Male',76,'B+',' Mercury Street',' Guwahati',2109876553,'ajay.nair@email.com','2023-08-05',NULL,'Admitted','https://i.ibb.co/4ZXXPz6S/P4.jpg'),('P018','Neha Sharma',33,'Female',60,'O+',' Saturn Road',' Patna',1098765442,'neha.sharma@email.com','2023-08-10','2023-08-15','Discharged','https://i.ibb.co/PGLMhWdT/p-m-4.png'),('P019','Vinod Kapoor',57,'Male',80,'AB+',' Pluto Avenue',' Vadodara',9876543230,'vinod.kapoor@email.com','2023-08-15','2023-08-25','Discharged','https://i.ibb.co/6RN9f482/P2.jpg'),('P020','Anjali Mathur',36,'Female',64,'A-',' Comet Lane',' Vishakhapatnam',8765432129,'anjali.mathur@email.com','2023-08-20',NULL,'Admitted','https://i.ibb.co/PGLMhWdT/p-m-4.png'),('P021','Dinesh Agarwal',53,'Male',83,'O-',' Meteor Road',' Surat',7654321118,'dinesh.agarwal@email.com','2023-09-01','2023-09-10','Discharged','https://i.ibb.co/4ZXXPz6S/P4.jpg'),('P022','Sunita Verma',38,'Female',65,'B-',' Galaxy Street',' Ranchi',6543210987,'sunita.verma@email.com','2023-09-05','2023-09-12','Discharged','https://i.ibb.co/4Csnhg1/p-m2.jpg'),('P023','Kishore Kumar',64,'Male',74,'A+',' Universe Lane',' Trivandrum',5432109876,'kishore.kumar@email.com','2023-09-10',NULL,'Admitted','https://i.ibb.co/6RN9f482/P2.jpg'),('P024','Maya Pillai',40,'Female',67,'AB-',' Solar Road',' Bhubaneswar',4321098765,'maya.pillai@email.com','2023-09-15','2023-09-25','Discharged','https://i.ibb.co/gL9c0QTx/P1-1.jpg'),('P025','Prakash Jha',59,'Male',82,'B+',' Lunar Avenue',' Agra',3210987654,'prakash.jha@email.com','2023-09-20','2023-09-30','Discharged','https://i.ibb.co/4ZXXPz6S/P4.jpg'),('P026','Geeta Singh',31,'Female',59,'O+',' Star Street',' Mysore',2109876543,'geeta.singh@email.com','2023-10-01',NULL,'Admitted','https://i.ibb.co/spTJqyKK/P3-1.jpg'),('P027','Nitin Mehra',54,'Male',78,'AB+',' Planet Road',' Dehradun',1098765432,'nitin.mehra@email.com','2023-10-05','2023-10-15','Discharged','https://i.ibb.co/6RN9f482/P2.jpg'),('P028','Lata Iyer',29,'Female',62,'A-',' Cosmic Lane',' Jammu',9876543210,'lata.iyer@email.com','2023-10-10','2023-10-18','Discharged','https://i.ibb.co/S15ts9X/p-m3.jpg'),('P029','Santosh Nair',62,'Male',76,'O-',' Astral Avenue',' Shimla',8765432109,'santosh.nair@email.com','2023-10-15',NULL,'Admitted','https://i.ibb.co/6RN9f482/P2.jpg'),('P030','Divya Menon',42,'Female',68,'B-',' Celestial Road',' Pondicherry',7654321098,'divya.menon@email.com','2023-10-20','2023-10-28','Discharged','https://i.ibb.co/S15ts9X/p-m3.jpg');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_tests`
--

DROP TABLE IF EXISTS `patient_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_tests` (
  `patient_test_id` text,
  `patient_id` text,
  `test_id` text,
  `doctor_id` text,
  `test_date` text,
  `result_date` text,
  `status` text,
  `result` text,
  `notes` text,
  `amount` int DEFAULT NULL,
  `payment_method` text,
  `discount` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_tests`
--

LOCK TABLES `patient_tests` WRITE;
/*!40000 ALTER TABLE `patient_tests` DISABLE KEYS */;
INSERT INTO `patient_tests` VALUES ('PT001','P001','TEST001','D001','2023-05-15','2023-05-16','Completed','Normal','WBC',500,'Cash','0'),('PT002','P001','TEST003','D001','2023-05-15','2023-05-16','Completed','Abnormal','Cholesterol elevated',800,'Cash','0'),('PT003','P001','TEST007','D001','2023-05-15','2023-05-15','Completed','Abnormal','Minor arrhythmia detected',1500,'Cash',''),('PT004','P003','TEST004','D007','2023-05-20','2023-05-21','Completed','Abnormal','Elevated liver enzymes',1000,'Insurance',''),('PT005','P003','TEST013','D007','2023-05-20','2023-05-21','Completed','Normal','No parasites detected',500,'Insurance',''),('PT006','P003','TEST019','D007','2023-05-22','2023-05-22','Completed','Abnormal','Gastric ulcers detected',3500,'Insurance',''),('PT007','P005','TEST017','D003','2023-06-05','2023-06-06','Completed','Abnormal','Low bone density',2500,'Cash','0'),('PT008','P007','TEST001','D002','2023-06-15','2023-06-16','Completed','Normal','All parameters within range',500,'Insurance',''),('PT009','P007','TEST009','D002','2023-06-16','2023-06-16','Completed','Abnormal','Brain lesion detected',4500,'Cash','0'),('PT010','P009','TEST016','D011','2023-06-20','2023-06-21','Completed','Abnormal','Elevated PSA levels',1500,'Credit Card',''),('PT011','P009','TEST011','D011','2023-06-21','2023-06-21','Completed','Abnormal','Enlarged prostate confirmed',1800,'Credit Card',''),('PT012','P011','TEST005','D013','2023-07-05','2023-07-06','Completed','Abnormal','Reduced kidney function',1000,'Cash',''),('PT013','P011','TEST011','D013','2023-07-06','2023-07-06','Completed','Abnormal','Kidney stones visualized',1800,'Cash',''),('PT014','P013','TEST001','D015','2023-07-15','2023-07-16','Completed','Abnormal','Reduced RBC count',500,'Cash','0'),('PT015','P013','TEST009','D015','2023-07-16','2023-07-16','Completed','Abnormal','Tumor detected in left lung',4500,'Insurance',''),('PT016','P015','TEST003','D001','2023-07-20','2023-07-21','Completed','Abnormal','High cholesterol and triglycerides',800,'Insurance',''),('PT017','P015','TEST007','D001','2023-07-20','2023-07-20','Completed','Abnormal','Irregular heartbeat detected',1500,'Insurance',''),('PT018','P017','TEST018','D014','2023-08-05','2023-08-06','Completed','Abnormal','Reduced lung capacity',1800,'Cash','0'),('PT019','P017','TEST008','D014','2023-08-05','2023-08-05','Completed','Abnormal','Pulmonary fibrosis evident',800,'Cash',''),('PT020','P019','TEST004','D007','2023-08-15','2023-08-16','Completed','Abnormal','Liver function significantly impaired',1000,'Credit Card',''),('PT021','P019','TEST011','D007','2023-08-16','2023-08-16','Completed','Abnormal','Liver cirrhosis confirmed',1800,'Credit Card',''),('PT022','P021','TEST001','D002','2023-09-01','2023-09-02','Completed','Normal','Blood counts normal',500,'Insurance',''),('PT023','P021','TEST009','D002','2023-09-02','2023-09-02','Completed','Abnormal','Evidence of recent stroke',4500,'Insurance',''),('PT024','P021','TEST007','D002','2023-09-01','2023-09-01','Completed','Abnormal','Cardiac irregularities noted',1500,'Insurance',''),('PT025','P023','TEST005','D013','2023-09-10','2023-09-11','Completed','Abnormal','Severe kidney dysfunction',1000,'Cash',''),('PT026','P025','TEST016','D011','2023-09-20','2023-09-21','Completed','Abnormal','Highly elevated PSA',1500,'Credit Card',''),('PT027','P025','TEST011','D011','2023-09-21','2023-09-21','Completed','Abnormal','Prostate enlargement with irregular borders',1800,'Credit Card',''),('PT028','P027','TEST009','D015','2023-10-05','2023-10-05','Completed','Abnormal','Tumor size reduced after treatment',4500,'Insurance',''),('PT029','P029','TEST018','D014','2023-10-15','2023-10-16','Completed','Abnormal','Severe respiratory compromise',1800,'Cash',''),('PT030','P029','TEST008','D014','2023-10-15','2023-10-15','Completed','Abnormal','Pneumonia with consolidation',800,'Cash','');
/*!40000 ALTER TABLE `patient_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` text,
  `department_id` text,
  `room_type` text,
  `floor` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `status` text,
  `daily_charge` int DEFAULT NULL,
  `avg montly maintenance cost` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('R001','DEPT001','General',3,4,'Available',1000,1000),('R002','DEPT001','Private',3,1,'Occupied',3000,3000),('R003','DEPT001','ICU',3,1,'Available',5000,5000),('R004','DEPT002','General',4,4,'Available',1000,1000),('R005','DEPT002','Private',4,1,'Occupied',3000,3000),('R006','DEPT002','ICU',4,1,'Available',5000,5000),('R007','DEPT003','General',2,4,'Available',1000,1000),('R008','DEPT003','Private',2,1,'Occupied',3000,3000),('R009','DEPT003','ICU',2,1,'Available',5000,5000),('R010','DEPT004','General',5,4,'Available',1000,1000),('R011','DEPT004','Private',5,1,'Occupied',3000,3000),('R012','DEPT004','ICU',5,1,'Available',5000,5000),('R013','DEPT005','General',1,4,'Available',1000,1000),('R014','DEPT005','Private',1,1,'Occupied',3000,3000),('R015','DEPT005','ICU',1,1,'Available',5000,5000),('R016','DEPT006','General',3,4,'Available',1000,1000),('R017','DEPT006','Private',3,1,'Occupied',3000,3000),('R018','DEPT007','General',4,4,'Available',1000,1000),('R019','DEPT007','Private',4,1,'Occupied',3000,3000),('R020','DEPT007','ICU',4,1,'Available',5000,5000),('R021','DEPT008','General',2,4,'Available',1000,1000),('R022','DEPT008','Private',2,1,'Occupied',3000,3000),('R023','DEPT009','General',5,4,'Available',1000,1000),('R024','DEPT009','Private',5,1,'Occupied',3000,3000),('R025','DEPT010','General',6,4,'Available',1000,1000);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satisfaction score`
--

DROP TABLE IF EXISTS `satisfaction score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satisfaction score` (
  `satisfaction_id` text,
  `patient_id` text,
  `doctor_id` text,
  `rating` int DEFAULT NULL,
  `feedback` text,
  `date` text,
  `department` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfaction score`
--

LOCK TABLES `satisfaction score` WRITE;
/*!40000 ALTER TABLE `satisfaction score` DISABLE KEYS */;
INSERT INTO `satisfaction score` VALUES ('SAT001','P001','D001',4,'The doctor was very attentive and explained everything well.','2023-05-20','Cardiology'),('SAT002','P002','D004',5,'Excellent care and treatment. Very satisfied.','2023-05-25','Gynecology'),('SAT003','P003','D007',3,'Treatment was good but had to wait too long.','2023-05-30','Gastroenterology'),('SAT004','P004','D006',4,'Good diagnosis and treatment for my skin condition.','2023-06-10','Dermatology'),('SAT005','P005','D003',5,'Very professional and the surgery was successful.','2023-06-15','Orthopedics'),('SAT006','P006','D009',4,'Quick diagnosis and effective medication.','2023-06-14','ENT'),('SAT007','P008','D010',5,'The doctor really understood my mental health concerns.','2023-06-25','Psychiatry'),('SAT008','P009','D011',4,'Professional care and successful surgery.','2023-06-30','Urology'),('SAT009','P011','D013',3,'Good treatment but communication could be better.','2023-07-12','Nephrology'),('SAT010','P012','D006',5,'The skin treatment was very effective.','2023-07-15','Dermatology'),('SAT011','P014','D008',4,'Vision has improved after treatment.','2023-07-25','Ophthalmology'),('SAT012','P015','D001',5,'Excellent cardiac care and successful procedure.','2023-07-28','Cardiology'),('SAT013','P016','D012',4,'Diabetes management advice was helpful.','2023-08-10','Endocrinology'),('SAT014','P018','D004',5,'Very satisfied with the prenatal care.','2023-08-15','Gynecology'),('SAT015','P019','D007',3,'Treatment was okay but needed more explanation.','2023-08-25','Gastroenterology'),('SAT016','P021','D002',4,'Good care after my stroke.','2023-09-10','Neurology'),('SAT017','P022','D005',5,'Excellent pediatric care for my child.','2023-09-12','Pediatrics'),('SAT018','P024','D009',4,'My hearing has improved after treatment.','2023-09-25','ENT'),('SAT019','P025','D011',3,'Surgery went well but recovery information was lacking.','2023','');
/*!40000 ALTER TABLE `satisfaction score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` text,
  `name` text,
  `department_id` text,
  `role` text,
  `salary` int DEFAULT NULL,
  `joining_date` text,
  `shift` text,
  `phone` bigint DEFAULT NULL,
  `email` text,
  `address` int DEFAULT NULL,
  `MyUnknownColumn` text,
  `MyUnknownColumn_[0]` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('S001','Anand Kumar','DEPT001','Nurse',45000,'2018-01-10','Morning',9876543210,'anand.kumar@hospital.com',123,' Staff Quarters',' Hospital Campus'),('S002','Sunita Verma','DEPT001','Nurse',42000,'2019-03-15','Evening',8765432109,'sunita.verma@hospital.com',124,' Staff Quarters',' Hospital Campus'),('S003','Rajiv Singh','DEPT001','Ward Boy',25000,'2020-06-20','Night',7654321098,'rajiv.singh@hospital.com',125,' Staff Quarters',' Hospital Campus'),('S004','Meena Patel','DEPT002','Nurse',44000,'2018-05-12','Morning',6543210987,'meena.patel@hospital.com',126,' Staff Quarters',' Hospital Campus'),('S005','Suresh Nair','DEPT002','Nurse',43000,'2019-07-18','Evening',5432109876,'suresh.nair@hospital.com',127,' Staff Quarters',' Hospital Campus'),('S006','Kavita Menon','DEPT002','Ward Boy',26000,'2020-09-25','Night',4321098765,'kavita.menon@hospital.com',128,' Staff Quarters',' Hospital Campus'),('S007','Rahul Sharma','DEPT003','Nurse',46000,'2017-08-15','Morning',3210987654,'rahul.sharma@hospital.com',129,' Staff Quarters',' Hospital Campus'),('S008','Priya Singh','DEPT003','Nurse',44000,'2018-10-20','Evening',2109876543,'priya.singh@hospital.com',130,' Staff Quarters',' Hospital Campus'),('S009','Amit Kumar','DEPT003','Ward Boy',27000,'2019-12-10','Night',1098765432,'amit.kumar@hospital.com',131,' Staff Quarters',' Hospital Campus'),('S010','Neha Joshi','DEPT004','Nurse',45000,'2018-02-05','Morning',9876543220,'neha.joshi@hospital.com',132,' Staff Quarters',' Hospital Campus'),('S011','Vikram Malhotra','DEPT004','Nurse',43000,'2019-04-15','Evening',8765432119,'vikram.m@hospital.com',133,' Staff Quarters',' Hospital Campus'),('S012','Nisha Reddy','DEPT004','Ward Boy',26000,'2020-07-25','Night',7654321108,'nisha.r@hospital.com',134,' Staff Quarters',' Hospital Campus'),('S013','Deepak Gupta','DEPT005','Nurse',47000,'2017-03-10','Morning',6543210997,'deepak.g@hospital.com',135,' Staff Quarters',' Hospital Campus'),('S014','Anita Saxena','DEPT005','Nurse',45000,'2018-05-20','Evening',5432109886,'anita.s@hospital.com',136,' Staff Quarters',' Hospital Campus'),('S015','Sanjay Bhatia','DEPT005','Ward Boy',28000,'2019-08-15','Night',4321098775,'sanjay.b@hospital.com',137,' Staff Quarters',' Hospital Campus'),('S016','Divya Mehta','DEPT006','Nurse',44000,'2018-06-25','Morning',3210987664,'divya.m@hospital.com',138,' Staff Quarters',' Hospital Campus'),('S017','Rakesh Das','DEPT007','Nurse',45000,'2018-09-10','Morning',2109876553,'rakesh.d@hospital.com',139,' Staff Quarters',' Hospital Campus'),('S018','Anjali Khanna','DEPT008','Nurse',43000,'2019-01-15','Morning',1098765442,'anjali.k@hospital.com',140,' Staff Quarters',' Hospital Campus'),('S019','Vivek Iyer','DEPT009','Nurse',44000,'2018-11-05','Morning',9876543230,'vivek.i@hospital.com',141,' Staff Quarters',' Hospital Campus'),('S020','Geeta Nair','DEPT010','Nurse',42000,'2019-12-20','Morning',8765432129,'geeta.n@hospital.com',142,' Staff Quarters',' Hospital Campus');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` text,
  `name` text,
  `contact_person` text,
  `phone` bigint DEFAULT NULL,
  `email` text,
  `address` text,
  `city` text,
  `state` text,
  `pincode` int DEFAULT NULL,
  `state_[0]` text,
  `contract_start_date` text,
  `contract_end_date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('SUP001','MediPharm Distributors','Rajesh Gupta',9876543210,'rajesh@medipharm.com',' Phase 1\"',' Industrial Area',' Phase 1\"',110001,'Delhi','2023-01-01','2024-12-31'),('SUP002','HealthCare Supplies','Priya Sharma',8765432109,'priya@healthcaresupplies.com',' Sector 5\"',' Business Park',' Sector 5\"',400001,'Maharashtra','2023-01-15','2024-12-31'),('SUP003','MediCore Enterprises','Amit Kumar',7654321098,'amit@medicore.com',' Zone 3\"',' Corporate Hub',' Zone 3\"',560001,'Karnataka','2023-02-01','2024-12-31'),('SUP004','LifeLine Pharmaceuticals','Sneha Patel',6543210987,'sneha@lifeline.com',' Block B\"',' Pharma Valley',' Block B\"',600001,'Tamil Nadu','2023-02-15','2024-12-31'),('SUP005','MediTech Solutions','Vikram Singh',5432109876,'vikram@meditech.com',' Area 7\"',' Tech Park',' Area 7\"',500001,'Telangana','2023-03-01','2024-12-31');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surgery`
--

DROP TABLE IF EXISTS `surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgery` (
  `appointment_id` text,
  `patient_id` text,
  `doctor_id` text,
  `appointment_date` text,
  `appointment_time` text,
  `status` text,
  `reason` text,
  `notes` text,
  `fees` text,
  `payment_method` int DEFAULT NULL,
  `discount` text,
  `MyUnknownColumn` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgery`
--

LOCK TABLES `surgery` WRITE;
/*!40000 ALTER TABLE `surgery` DISABLE KEYS */;
INSERT INTO `surgery` VALUES ('APP001','P001','D001','2023-05-14','10:00:00','Completed','Chest Pain','Patient complained of chest pain',' prescribed medication',800,'Cash',0),('APP002','P002','D004','2023-05-17','11:30:00','Completed','Regular Checkup','Regular gynecological checkup',' all normal',700,'Credit Card',0),('APP003','P003','D007','2023-05-19','14:00:00','Completed','Stomach Pain','Patient has chronic gastritis',' advised diet change',850,'Insurance',0),('APP004','P004','D006','2023-06-01','09:30:00','Completed','Skin Rash','Allergic reaction',' prescribed antihistamines',650,'Cash',50),('APP005','P005','D003','2023-06-04','13:00:00','Completed','Back Pain','Lumbar strain',' physiotherapy recommended',800,'Insurance',0),('APP006','P006','D009','2023-06-09','16:30:00','Completed','Ear Infection','Ear infection diagnosed',' prescribed antibiotics',700,'Credit Card',0),('APP007','P007','D002','2023-06-14','10:00:00','Completed','Severe Headache','Possible migraine',' further tests needed',850,'Insurance',0),('APP008','P008','D010','2023-06-17','11:30:00','Completed','Anxiety Issues','Patient suffering from anxiety',' therapy recommended',900,'Cash',100),('APP009','P009','D011','2023-06-19','14:00:00','Completed','Urinary Issues','UTI diagnosed',' prescribed antibiotics',750,'Credit Card',0),('APP010','P010','D005','2023-06-30','09:30:00','Completed','Child Fever','Child has viral fever',' prescribed medication',600,'Insurance',0),('APP011','P011','D013','2023-07-04','13:00:00','Completed','Kidney Pain','Kidney stones suspected',' tests ordered',900,'Cash',0),('APP012','P012','D006','2023-07-09','16:30:00','Completed','Acne Treatment','Severe acne',' prescribed medication',650,'Credit Card',50),('APP013','P013','D015','2023-07-14','10:00:00','Completed','Cancer Screening','Routine cancer screening',' tests ordered',1200,'Insurance',200),('APP014','P014','D008','2023-07-17','11:30:00','Completed','Vision Problem','Vision deterioration',' new glasses prescribed',700,'Cash',0),('APP015','P015','D001','2023-07-19','14:00:00','Completed','Heart Palpitations','Heart arrhythmia suspected',' ECG performed',850,'Insurance',0),('APP016','P016','D012','2023-07-31','09:30:00','Completed','Diabetes Check','Routine diabetes checkup',' medication adjusted',800,'Credit Card',0),('APP017','P017','D014','2023-08-04','13:00:00','Completed','Breathing Difficulty','COPD exacerbation',' treatment intensified',900,'Cash',100),('APP018','P018','D004','2023-08-09','16:30:00','Completed','Pregnancy Confirmation','Pregnancy confirmed',' scheduled followup',700,'Insurance',0),('APP019','P019','D007','2023-08-14','10:00:00','Completed','Liver Function','Abnormal liver function',' diet change advised',850,'Credit Card',0),('APP020','P020','D003','2023-08-19','11:30:00','Completed','Joint Pain','Arthritis diagnosed',' medication prescribed',800,'Cash',0),('APP021','P021','D002','2023-08-31','09:30:00','Completed','Stroke Symptoms','TIA suspected',' hospitalization recommended',950,'Insurance',0),('APP022','P022','D005','2023-09-04','13:00:00','Completed','Child Vaccination','Routine vaccination',' next appointment scheduled',500,'Credit Card',0),('APP023','P023','D013','2023-09-09','16:30:00','Completed','Renal Checkup','Renal function deteriorating',' admission advised',900,'Cash',0),('APP024','P024','D009','2023-09-14','10:00:00','Completed','Hearing Loss','Mild hearing loss',' hearing aid recommended',750,'Insurance',50),('APP025','P025','D011','2023-09-19','11:30:00','Completed','Prostate Examination','Enlarged prostate',' medication prescribed',800,'Credit Card',0),('APP026','P026','D010','2023-09-30','09:30:00','Completed','Depression','Clinical depression diagnosed',' therapy started',900,'Cash',0),('APP027','P027','D015','2023-10-04','13:00:00','Completed','Cancer Followup','Cancer in remission',' monitoring continued',1200,'Insurance',200),('APP028','P028','D006','2023-10-09','16:30:00','Completed','Eczema','Eczema flare-up',' topical steroids prescribed',650,'Credit Card',0),('APP029','P029','D014','2023-10-14','10:00:00','Completed','Pneumonia Symptoms','Pneumonia confirmed',' hospitalization recommended',900,'Cash',0),('APP030','P030','D008','2023-10-19','11:30:00','Completed','Cataract Examination','Cataract diagnosed',' surgery recommended',800,'Insurance',0);
/*!40000 ALTER TABLE `surgery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-16 12:39:29
