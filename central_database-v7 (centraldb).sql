-- drop database if exists tsukidb;
-- drop user if exists 'tsukiden'@'localhost';
-- create database tsukidb default character set utf8mb4 collate utf8mb4_unicode_ci;
-- use tsukidb;
-- create user 'tsukiden'@'localhost' identified by 'tsukiden1234';
-- grant all privileges on tsukidb.* to 'tsukiden'@'localhost';
-- flush privileges;

--
-- Table structure for table `tbl_proj_tech`
--
DROP TABLE IF EXISTS tbl_proj_tech;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_proj_tech (
proj_tech_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	 tech_id INT(9) UNSIGNED NOT NULL,
	 proj_id INT(9) UNSIGNED NOT NULL,
	del_flag INT(1) DEFAULT 0,
	  reg_id VARCHAR(50),
	reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   update_id VARCHAR(50),
 update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_proj_phase`
--
DROP TABLE IF EXISTS tbl_proj_phase;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_proj_phase (
proj_phase_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 dev_phase_id INT(9) UNSIGNED NOT NULL,
	  proj_id INT(9) UNSIGNED NOT NULL,
	 del_flag INT(1) DEFAULT 0,
	   reg_id VARCHAR(50),
	 reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	update_id VARCHAR(50),
  update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_proj_info`
--
DROP TABLE IF EXISTS tbl_proj_info;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_proj_info (
  proj_info_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   dev_type_id INT(9) UNSIGNED NOT NULL,
	 client_id INT(9) UNSIGNED NOT NULL,
proj_status_id INT(9) UNSIGNED NOT NULL,
       proj_id INT(9) UNSIGNED NOT NULL,
	  del_flag INT(1) DEFAULT 0,
		reg_id VARCHAR(50),
	  reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	 update_id VARCHAR(50),
   update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_dev_type_mst`
--
DROP TABLE IF EXISTS tbl_dev_type_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_dev_type_mst (
     dev_type_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   dev_type_name VARCHAR(150) NOT NULL,
dev_type_sh_name VARCHAR(50) NOT NULL,
        del_flag INT(1) DEFAULT 0,
		  reg_id VARCHAR(50),
        reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
       update_id VARCHAR(50),
     update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_dev_phase_mst`
--
DROP TABLE IF EXISTS tbl_dev_phase_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_dev_phase_mst (
     dev_phase_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   dev_phase_name VARCHAR(150) NOT NULL,
dev_phase_sh_name VARCHAR(50) NOT NULL,
        del_flag INT(1) DEFAULT 0,
		  reg_id VARCHAR(50),
        reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
       update_id VARCHAR(50),
     update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_technology_mst`
--
DROP TABLE IF EXISTS tbl_technology_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_technology_mst (
     tech_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   tech_name VARCHAR(150) NOT NULL,
tech_sh_name VARCHAR(50) NOT NULL,
	del_flag INT(1) DEFAULT 0,
	  reg_id VARCHAR(50),
	reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   update_id VARCHAR(50),
 update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_proj_status_mst`
--
DROP TABLE IF EXISTS tbl_proj_status_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_proj_status_mst (
         proj_status_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	   proj_status_name VARCHAR(150) NOT NULL,
proj_status_description VARCHAR(1000) NOT NULL,
			   del_flag INT(1) DEFAULT 0,
				 reg_id VARCHAR(50),
			   reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
			  update_id VARCHAR(50),
			update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_clients_mst`
--
DROP TABLE IF EXISTS tbl_clients_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_clients_mst (
	  client_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	client_name VARCHAR(150) NOT NULL,
client_sh_name VARCHAR(50) NOT NULL,
	  del_flag INT(1) DEFAULT 0,
		reg_id VARCHAR(50),
	  reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	 update_id VARCHAR(50),
   update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_multi_role`
--
DROP TABLE IF EXISTS tbl_multi_role;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_multi_role (
   user_role_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
		 emp_id VARCHAR(50) NOT NULL,
        role_id INT(9) UNSIGNED NOT NULL DEFAULT 1,
       del_flag INT(1) DEFAULT 0,
         reg_id VARCHAR(50),
       reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
      update_id VARCHAR(50),
    update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_proj_members`
--
DROP TABLE IF EXISTS tbl_proj_members;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_proj_members (
   up_role_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
		 upid INT(9) UNSIGNED NOT NULL,
        role_id INT(9) UNSIGNED NOT NULL DEFAULT 1,
       del_flag INT(1) DEFAULT 0,
         reg_id VARCHAR(50),
       reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
      update_id VARCHAR(50),
    update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_user_project`
--
DROP TABLE IF EXISTS tbl_user_project;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_user_project (
       upid INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
     emp_id VARCHAR(50) NOT NULL,
    proj_id INT(9) UNSIGNED NOT NULL,
   del_flag INT(1) DEFAULT 0,
     reg_id VARCHAR(50),	
   reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_id VARCHAR(50),
update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_personal_info`
--
DROP TABLE IF EXISTS tbl_personal_info;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_personal_info (
        pid INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
     emp_id VARCHAR(50) NOT NULL,
      fname VARCHAR(150) NOT NULL,
	  lname VARCHAR(150) NOT NULL,
      mname VARCHAR(150),
	  email VARCHAR(150) NOT NULL UNIQUE,
   del_flag INT(1) DEFAULT 0,
     reg_id VARCHAR(50),
   reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  update_id VARCHAR(50),
update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_act_log`
--
DROP TABLE IF EXISTS tbl_act_log;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_act_log (
     log_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
     emp_id VARCHAR(50) NOT NULL,
   log_desc VARCHAR(1000) NOT NULL,
   log_date VARCHAR (50) NOT NULL,
   del_flag INT(1) DEFAULT 0,
	 reg_id VARCHAR(50),
   reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_id VARCHAR(50),
update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_user`
--
DROP TABLE IF EXISTS tbl_user;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_user (	
     emp_id VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE,
   username VARCHAR(20) NOT NULL UNIQUE,
   password VARCHAR(255),
position_id INT(9) UNSIGNED,
    dept_id INT(9) UNSIGNED,
 section_id INT(9) UNSIGNED,
status_code VARCHAR(10),
    role_id INT(9) UNSIGNED DEFAULT 1,
    img_src VARCHAR(255),
   del_flag INT(1) DEFAULT 0,
     reg_id VARCHAR(50),	
   reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_id VARCHAR(50),
update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_position_mst`
--
DROP TABLE IF EXISTS tbl_position_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_position_mst (
     position_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   position_name VARCHAR(150) NOT NULL,
position_sh_name VARCHAR(50) NOT NULL,
        del_flag INT(1) DEFAULT 0,
          reg_id VARCHAR(50),
        reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
       update_id VARCHAR(50),
     update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_project_mst`
--
DROP TABLE IF EXISTS tbl_project_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_project_mst (
         proj_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
       proj_name VARCHAR(100) NOT NULL,
       proj_code VARCHAR(15) NOT NULL,
proj_description VARCHAR(1000) NOT NULL,
      start_date DATE NOT NULL,	
        end_date DATE NOT NULL,
        del_flag INT(1) DEFAULT 0,
          reg_id VARCHAR(50),
        reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
       update_id VARCHAR(50),
	 update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_section_mst`
--
DROP TABLE IF EXISTS tbl_section_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_section_mst (
  section_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
section_name VARCHAR(150) NOT NULL,
section_sh_name VARCHAR(50) NOT NULL,
     dept_id INT(9) UNSIGNED NOT NULL,
    del_flag INT(1) DEFAULT 0,
      reg_id VARCHAR(50),
    reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   update_id VARCHAR(50),
 update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_department_mst`
--
DROP TABLE IF EXISTS tbl_department_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_department_mst (
    dept_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dept_name VARCHAR(150) NOT NULL,
  dept_sh_name VARCHAR(50) NOT NULL,
   del_flag INT(1) DEFAULT 0,
     reg_id VARCHAR(50),
   reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_id VARCHAR(50),
update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_status_mst`
--
DROP TABLE IF EXISTS tbl_status_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_status_mst (				
status_code VARCHAR(10) NOT NULL PRIMARY KEY UNIQUE,	
status_name VARCHAR(150) NOT NULL,
status_desc VARCHAR(1000) NOT NULL,
   del_flag INT(1) DEFAULT 0,
     reg_id VARCHAR(50),
   reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_id	VARCHAR(50),
update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_role_mst`
--
DROP TABLE IF EXISTS tbl_role_mst;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_role_mst (
        role_id INT(9) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
          title VARCHAR(100) NOT NULL,
   role_sh_name VARCHAR(50) NOT NULL,
role_user_level INT(1) UNSIGNED NOT NULL DEFAULT 1,
       del_flag INT(1) DEFAULT 0,
         reg_id VARCHAR(50),
       reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
      update_id VARCHAR(50),
    update_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE tbl_proj_tech
ADD CONSTRAINT fk_tech_id
FOREIGN KEY (tech_id) REFERENCES tbl_technology_mst(tech_id);

ALTER TABLE tbl_proj_tech
ADD CONSTRAINT fk_proj_id_proj_tech
FOREIGN KEY (proj_id) REFERENCES tbl_project_mst(proj_id);

ALTER TABLE tbl_proj_phase
ADD CONSTRAINT fk_dev_phase_id
FOREIGN KEY (dev_phase_id) REFERENCES tbl_dev_phase_mst(dev_phase_id);

ALTER TABLE tbl_proj_phase
ADD CONSTRAINT fk_proj_id_proj_phase
FOREIGN KEY (proj_id) REFERENCES tbl_project_mst(proj_id);

ALTER TABLE tbl_proj_info
ADD CONSTRAINT fk_dev_type_id
FOREIGN KEY (dev_type_id) REFERENCES tbl_dev_type_mst(dev_type_id);

ALTER TABLE tbl_proj_info
ADD CONSTRAINT fk_client_id
FOREIGN KEY (client_id) REFERENCES tbl_clients_mst(client_id);

ALTER TABLE tbl_proj_info
ADD CONSTRAINT fk_proj_status_id
FOREIGN KEY (proj_status_id) REFERENCES tbl_proj_status_mst(proj_status_id);

ALTER TABLE tbl_proj_info
ADD CONSTRAINT fk_proj_id_proj_info
FOREIGN KEY (proj_id) REFERENCES tbl_project_mst(proj_id);

ALTER TABLE tbl_personal_info
ADD CONSTRAINT fk_emp_id_personal_info
FOREIGN KEY (emp_id) REFERENCES tbl_user(emp_id);

ALTER TABLE tbl_user_project
ADD CONSTRAINT fk_emp_id_user_project
FOREIGN KEY (emp_id) REFERENCES tbl_user(emp_id);

ALTER TABLE tbl_user_project
ADD CONSTRAINT fk_proj_id
FOREIGN KEY (proj_id) REFERENCES tbl_project_mst(proj_id);

ALTER TABLE tbl_user
ADD CONSTRAINT fk_position_id
FOREIGN KEY (position_id) REFERENCES tbl_position_mst(position_id);

ALTER TABLE tbl_user
ADD CONSTRAINT fk_dept_id_user
FOREIGN KEY (dept_id) REFERENCES tbl_department_mst(dept_id);

ALTER TABLE tbl_user
ADD CONSTRAINT fk_section_id
FOREIGN KEY (section_id) REFERENCES tbl_section_mst(section_id);

ALTER TABLE tbl_user
ADD CONSTRAINT fk_status_code
FOREIGN KEY (status_code) REFERENCES tbl_status_mst(status_code);

ALTER TABLE tbl_user
ADD CONSTRAINT fk_role_id
FOREIGN KEY (role_id) REFERENCES tbl_role_mst(role_id);

ALTER TABLE tbl_section_mst
ADD CONSTRAINT fk_dept_id_section
FOREIGN KEY (dept_id) REFERENCES tbl_department_mst(dept_id);

ALTER TABLE tbl_multi_role
ADD CONSTRAINT fk_multi_emp_id
FOREIGN KEY (emp_id) REFERENCES tbl_user (emp_id);

ALTER TABLE tbl_multi_role
ADD CONSTRAINT fk_multi_role_id
FOREIGN KEY (role_id) REFERENCES tbl_role_mst (role_id);

ALTER TABLE tbl_proj_members
ADD CONSTRAINT fk_proj_mem_role_id
FOREIGN KEY (role_id) REFERENCES tbl_role_mst (role_id);
 
ALTER TABLE tbl_proj_members
ADD CONSTRAINT fk_proj_mem_upid
FOREIGN KEY (upid) REFERENCES tbl_user_project (upid);

ALTER TABLE tbl_act_log
ADD CONSTRAINT fk_emp_id_logs
FOREIGN KEY (emp_id) REFERENCES tbl_user(emp_id);

LOCK TABLES `tbl_position_mst` WRITE;
/*!40000 ALTER TABLE `tbl_position_mst` DISABLE KEYS */;
INSERT INTO `tbl_position_mst` 
VALUES 
('1', 'Design Engineer I', 'DE1', '0', '1', now(), '1', now()),
('2', 'Design Engineer I', 'DE2', '0', '1', now(), '1', now()),
('3', 'Senior Design Engineer', 'SDE', '0', '1', now(), '1', now()),
('4', 'Junior Engineering Supervisor', 'JES', '0', '1', now(), '1', now()),
('5', 'Engineering Supervisor', 'ES', '0', '1', now(), '1', now()),
('6', 'Engineering Manager', 'EM', '0', '1', now(), '1', now()),
('7', 'Senior Engineering Manger', 'SEM', '0', '1', now(), '1', now()),
('8', 'Assistant General Manager', 'AGM', '0', '1', now(), '1', now()),
('9', 'General Manager', 'GM', '0', '1', now(), '1', now()),
('10', 'Engineering Director', 'ED', '0', '1', now(), '1', now());
/*!40000 ALTER TABLE `tbl_position_mst` ENABLE KEYS */;
UNLOCK TABLES;

INSERT INTO tbl_department_mst
(dept_name, dept_sh_name, reg_id, update_id) 
VALUES 
("1ST Dept", "1DEP", "1", "1"),
("2ND Dept", "2DEP", "1", "1"),
("3RD Dept", "3DEP", "1", "1"),
("4TH Dept", "4DEP", "1", "1"),
("5TH Dept", "5DEP", "1", "1");

INSERT INTO tbl_section_mst
(section_name, section_sh_name, dept_id, reg_id, update_id)
VALUES
("SSS Business Unit", "SSBU", 1, "1", "1"),
("VSBU", "VSBU", 2, "1", "1"),
("1st and 2nd SSS Business Unit", "1 and 2 SSBU", 3, "1", "1");

INSERT INTO tbl_status_mst
(status_code, status_name, status_desc, reg_id, update_id)
VALUES
("REG", "Regular", "Regular Employee", "1", "1"),
("TRA", "Trainee", "Trainee Employee","1", "1"),
("INT", "Intern", "Intern Employee","1", "1"),
("BP", "Business Partner", "Business Partner Company","1", "1");

INSERT INTO tbl_role_mst
(title, role_sh_name, role_user_level, reg_id, update_id)
VALUES
("System Administrator", "SysAdmin", "1", "1", "1"),
("Account Management", "AccManager", "1", "1", "1"),
("Project Management", "ProjManager", "1", "1", "1");

INSERT INTO tbl_user
(emp_id, username, password, position_id, dept_id, section_id, status_code, role_id, img_src, reg_id, update_id)
VALUES
("101", "rgalpo", "tsukiden+", 1, 1, 1, "TRA", 1, "Default", "1", "1" ),
("102", "afabre", "tsukiden+", 2, 2, 2, "TRA", 2, "Default", "1", "1" ),
("103", "cespanol", "tsukiden+", 3, 3, 3, "TRA", 3, "Default", "1", "1" ),
("104", "adiego", "tsukiden+", 4, 1, 1, "TRA", 1, "Default", "1", "1" ),
("105", "smateo", "tsukiden+", 5, 1, 1, "TRA", 2, "Default", "1", "1" ),
("106", "cjacinto", "tsukiden+", 6, 1, 1, "TRA", 3, "Default", "1", "1" );

INSERT INTO tbl_personal_info
(emp_id, fname, lname, mname, email, reg_id, update_id)
VALUES
("101", "Ricky", "Galpo", "Torres", "rickygalpo@gmail.com", "1", "1"),
("102", "Allona", "Fabre", "Torres", "allonafabre@gmail.com", "1", "1"),
("103", "Charlene", "Espanol", "Torres", "charleneespanol@gmail.com", "1", "1"),
("104", "Ariel", "Diego", "Torres", "arieldiego@gmail.com", "1", "1"),
("105", "Shernan", "Mateo", "Torres", "shernanmateo@gmail.com", "1", "1"),
("106", "Christian", "Jacinto", "Torres", "christianjacinto@gmail.com", "1", "1");

INSERT INTO tbl_clients_mst
(client_name, client_sh_name, reg_id, update_id)
VALUES
("Facebook", "FB", "1", "1"),
("Instagram", "IG", "1", "1"),
("Youtube", "YT", "1", "1"),
("Twitter", "TT", "1", "1"),
("Telegram", "TG", "1", "1");

INSERT INTO tbl_dev_phase_mst
(dev_phase_name, dev_phase_sh_name, reg_id, update_id)
VALUES
("Requirements", "RQT", "1", "1"),
("Basic Design", "BD", "1", "1"),
("Detailed Design", "DD", "1", "1"),
("Coding", "CD", "1", "1"),
("Unit Test", "UT", "1", "1"),
("Combined Testing", "IT", "1", "1"),
("Comprehensive Testing", "CT", "1", "1"),
("User Acceptance Testing", "UAT", "1", "1"),
("Maintenance", "MAINTE", "1", "1");

INSERT INTO tbl_dev_type_mst
(dev_type_name, dev_type_sh_name, reg_id, update_id)
VALUES
("Agile", "AGI", "1", "1"),
("Scrum", "SCR", "1", "1"),
("Kanban", "KAN", "1", "1"),
("Extreme Programming", "XP", "1", "1"),
("Lean Software Development", "LSD", "1", "1"),
("Dynamic System Development Method", "DSDM", "1", "1"),
("Crystal", "CRY", "1", "1"),
("Feature-Driven Development", "FDD", "1", "1");

INSERT INTO tbl_proj_status_mst
(proj_status_name, proj_status_description, reg_id, update_id)
VALUES
("Open", "This project is opened for development.", "1", "1"),
("Close", "This project is closed for development.", "1", "1"),
("Cancelled", "This project has been cancelled.", "1", "1");

INSERT INTO tbl_project_mst
(proj_name, proj_code, proj_description, start_date, end_date, reg_id, update_id)
VALUES
("Time Table", "TT", "Manages the schedules and events of Tsukiden Global Solutions Inc.", "2023-06-01", "2023-07-01", "1", "1"),
("Seat Plan", "SP", "Manages the seat plan of Tsukiden Global Solutions Inc.", "2023-07-01", "2023-08-01", "1", "1"),
("Control Center", "CC", "Manages the users and projects of Tsukiden Global Solutions Inc.", "2023-08-01", "2023-09-01", "1", "1");

INSERT INTO tbl_proj_info
(dev_type_id, client_id, proj_status_id, proj_id, reg_id, update_id)
VALUES
(1, 1, 1, 1, "1", "1"),
(2, 2, 1, 2, "1", "1"),
(3, 3, 1, 3, "1", "1");

INSERT INTO tbl_user_project
(emp_id, proj_id, reg_id, update_id)
VALUES
("101", 3, "1", "1"),
("102", 3, "1", "1"),
("103", 3, "1", "1"),
("104", 3, "1", "1"),
("105", 3, "1", "1"),
("106", 3, "1", "1");

INSERT INTO tbl_proj_members
(upid, role_id, reg_id, update_id)
VALUES
("1", 1, "1", "1"),
("2", 1, "1", "1"),
("3", 1, "1", "1"),
("4", 1, "1", "1"),
("5", 1, "1", "1"),
("6", 1, "1", "1");

INSERT INTO tbl_proj_phase
(dev_phase_id, proj_id, reg_id, update_id)
VALUES
(1, 1, "1", "1"),
(1, 2, "1", "1"),
(1, 3, "1", "1");

INSERT INTO tbl_technology_mst
(tech_name, tech_sh_name, reg_id, update_id)
VALUES
("Java", "JV", "1", "1"),
("Java Springboot", "JVSB", "1", "1"),
("Structured Query Language", "SQL", "1", "1"),
("MyBatis", "MYB", "1", "1"),
("React", "REA", "1", "1"),
("Typescript", "TS", "1", "1");

INSERT INTO tbl_proj_tech
(tech_id, proj_id, reg_id, update_id)
VALUES
(1, 1, "1", "1"),
(2, 1, "1", "1"),
(3, 1, "1", "1"),
(4, 1, "1", "1"),
(5, 1, "1", "1"),
(6, 1, "1", "1"),
(1, 2, "1", "1"),
(2, 2, "1", "1"),
(3, 2, "1", "1"),
(4, 2, "1", "1"),
(5, 2, "1", "1"),
(6, 2, "1", "1"),
(1, 3, "1", "1"),
(2, 3, "1", "1"),
(3, 3, "1", "1"),
(4, 3, "1", "1"),
(5, 3, "1", "1"),
(6, 3, "1", "1");

INSERT INTO tbl_act_log
(emp_id,log_desc,log_date)
VALUES
("101", "Added a user", "2023-08-31"),
("101", "Edited a user", "2023-08-31"),
("101", "Deleted a user", "2023-08-31"),
("101", "Restored a user", "2023-08-31");

