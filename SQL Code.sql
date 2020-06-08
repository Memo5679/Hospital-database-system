
# FOREIGN KEY () references ... ()

# ALTER TABLE ...
# ADD FOREIGN KEY (...) REFERENCES ...(...);

# ALTER TABLE ...
# ADD CONSTRAINT FK_...
# FORIEGN KEY (...) REFERENCES ...
show databases;
CREATE DATABASE project;
USE project;

CREATE TABLE Employee (
  EID int PRIMARY KEY,
  eName varchar(20) NOT NULL,
  eFamily varchar(20) NOT NULL,
  jobTitle varchar(20) NOT NULL,
  startDate date NOT NULL,
  lastDate date,
  gender varchar(15) NOT NULL,
  dob date NOT NULL,
  phone int,
  email varchar(30),
  dep int NOT NULL,
  salary double NOT NULL
  
  # FOREIGN KEY (dep) references Department (DID)
);




CREATE TABLE Doctor (
  specialization varchar(30) NOT NULL,
  experience int,
  EID int NOT NULL UNIQUE
  
  # FOREIGN KEY (EID) references Employee (EID)
);

# ALTER TABLE Doctor
# ADD CONSTRAINT FK_EID
# FORIEGN KEY (...) REFERENCES ...

ALTER TABLE Doctor ADD FOREIGN KEY (EID) references Employee (EID);

CREATE TABLE Nurse (
  experience int,
  EID int NOT NULL UNIQUE
  
  # FOREIGN KEY (EID) references Employee (EID)
);

CREATE TABLE Laboratorian (
  lab int,
  EID int NOT NULL UNIQUE
  
  # FOREIGN KEY (EID) references Employee (EID),
  # FOREIGN KEY (lab) references Lab (room)
);

CREATE TABLE OtherStaff (
  Workhours int NOT NULL,
  EID int NOT NULL UNIQUE
  
  # FOREIGN KEY (EID) references Employee (EID)
);

CREATE TABLE Department (
  DID int PRIMARY KEY,
  depName varchar(30) NOT NULL,
  headOfDep int NOT NULL
  
  # FOREIGN KEY (headOfDep) references Employee (EID)
);

CREATE TABLE Labs (
  room int PRIMARY KEY,
  dep int NOT NULL
  
  # FOREIGN KEY (dep) references Department (DID)
);

CREATE TABLE Patient (
  MedicareID int PRIMARY KEY,
  firstName varchar(20),
  lastName varchar(20),
  gender varchar(20) NOT NULL,
  dob date,
  phone int,
  address varchar(15)
);

CREATE TABLE MedicalFile (
  fileNumber int PRIMARY KEY,
  PID int NOT NULL

  # FOREIGN KEY (PID) references Patient (MedicareID)
);

CREATE TABLE Visitor (
  visitedDep int NOT NULL,
  visitType varchar(20),
  visitDate date NOT NULL,
  PID int NOT NULL UNIQUE
  
  # FOREIGN KEY (visitedDep) references Department (DID),
  # FOREIGN KEY (PID) references Patient (MedicareID)
);

CREATE TABLE Admitted (
  bed int NOT NULL,
  room int NOT NULL,
  admDate date NOT NULL,
  exitDate date,
  doctor int NOT NULL,
  PID int NOT NULL UNIQUE
  
  # FOREIGN KEY (doctor) references Employee (EID),
  # FOREIGN KEY (PID) references Patient (MedicareID)
);

CREATE TABLE Tests (
  TID int PRIMARY KEY,
  tDdate date NOT NULL,
  patient int NOT NULL,
  lab int

  # FOREIGN KEY (patient) references Patient (MedicareID),
  # FOREIGN KEY (lab) references Lab (room)
);

CREATE TABLE Visiting (
  VID int primary key,
  PID int NOT NULL,
  dep int NOT NULL
  
  # FOREIGN KEY (PID) references Patient (MedicareID)
  # FOREIGN KEY (dep) references Department (DID)S
);

CREATE TABLE Treating (
  TRID int primary key,
  PID int NOT NULL,
  doctor int NOT NULL

  # FOREIGN KEY (PID) references Patient (MedicareID)
  # FOREIGN KEY (doctor) references Employee (EID)
);

#-----------------------------------

INSERT INTO Employee VALUES (001,'Salem','Abdullah','Doctor','1998-11-18',NULL,'Male','950-12-12',0551457682,'hos1@gmail.com',110,40000);
INSERT INTO Employee VALUES (002,'Jamal','Asaad','Doctor','2002-05-01',NULL,'Male','1954-10-14',0555457575,'hos2@gmail.com',115,20000);
INSERT INTO Employee VALUES (003,'Ali','Mansour','Doctor','2001-06-09',NULL,'Male','1952-09-04',0502457697,'hos3@gmail.com',111,35000);
INSERT INTO Employee VALUES (004,'Mahmoud','Said','Doctor','1999-04-02',NULL,'Male','1964-04-08',0554557988,'hos4@gmail.com',114,30000);
INSERT INTO Employee VALUES (005,'Karim','Nourani','Doctor','2005-04-19',NULL,'Male','1953-02-10',0562123057,'hos5@gmail.com',112,35000);
INSERT INTO Employee VALUES (006,'Huda','Ahmed','Doctor','1999-12-03',NULL,'Female','1957-12-12',0555500731,'hos6@gmail.com',110,15000);
INSERT INTO Employee VALUES (007,'Manal','Bassam','Doctor','2003-12-18',NULL,'Female','1953-04-14',0558970864,'hos7@gmail.com',112,35000);
INSERT INTO Employee VALUES (008,'Afaf','Mohamed','Doctor','2001-02-20',NULL,'Female','1966-05-05',0553451876,'hos8@gmail.com',111,19000);
INSERT INTO Employee VALUES (009,'Yahya','Mustafa','Doctor','1999-02-22',NULL,'Male','1957-04-02',0551509486,'hos9@gmail.com',115,20000);
INSERT INTO Employee VALUES (010,'Rawan','Khaled','Doctor','1998-09-28',NULL,'Female','1952-04-19',0556480249,'hos10@gmail.com',112,45000);
INSERT INTO Employee VALUES (011,'Saad','Abdullah','Doctor','2004-09-16',NULL,'Male','1963-12-03',0501342576,'hos11@gmail.com',112,30000);
INSERT INTO Employee VALUES (012,'Mohammed','Ashraf','Doctor','1998-04-03',NULL,'Male','1960-12-18',0503102477,'hos12@gmail.com',110,15000);
INSERT INTO Employee VALUES (013,'Nasser','Ziad','Doctor','1997-12-25',NULL,'Male','1961-02-20',0554857261,'hos13@gmail.com',113,12000);
INSERT INTO Employee VALUES (014,'Maryam','Amin','Doctor','1998-04-13',NULL,'Female','1964-02-22',0537048351,'hos14@gmail.com',110,15000);
INSERT INTO Employee VALUES (015,'Laila','Mustafa','Doctor','1999-11-12',NULL,'Female','1952-07-15',0559576845,'hos15@gmail.com',113,35000);
INSERT INTO Employee VALUES (016,'Ryan','Moaz','Doctor','2001-06-11',NULL,'Male','1967-18-25',0554251308,'hos16@gmail.com',114,30000);
INSERT INTO Employee VALUES (017,'Amira','Ahmed','Doctor','2000-01-17',NULL,'Female','1958-02-10',0551624981,'hos17@gmail.com',112,30000);
INSERT INTO Employee VALUES (018,'Massoud','Ghanem','Doctor','2002-04-20',NULL,'Male','1959-04-12',0504527415,'hos18@gmail.com',110,15000);
INSERT INTO Employee VALUES (019,'Ahmed','Yasser','Doctor','1998-10-12',NULL,'Male','1951-09-08',0540415340,'hos19@gmail.com',115,38000);
INSERT INTO Employee VALUES (020,'Walid','Mohammad','Doctor','2003-05-22',NULL,'Male','1970-05-23',0500124604,'hos20@gmail.com',113,12000);
INSERT INTO Employee VALUES (021,'Munir','Mokhtar','Doctor','2000-09-02',NULL,'Male','1953-12-03',0501542074,'hos21@gmail.com',114,35000);
INSERT INTO Employee VALUES (022,'Nadia','Mohammed','Doctor','1997-07-15',NULL,'Female','1956-01-23',0550124681,'hos22@gmail.com',113,12000);
INSERT INTO Employee VALUES (023,'Fouad','Marwan','Doctor','1999-18-25',NULL,'Male','1957-10-17',0550138549,'hos23@gmail.com',111,19000);
INSERT INTO Employee VALUES (024,'Bilal','Mohammed','Doctor','1997-02-10',NULL,'Male','1962-06-11',0562154061,'hos24@gmail.com',114,30000);
INSERT INTO Employee VALUES (025,'Jamal','Asaad','Doctor','2004-04-12',NULL,'Male','1950-09-29',0551234550,'hos25@gmail.com',111,40000);
INSERT INTO Employee VALUES (026,'Alaa','Karam','Nurse','1997-09-08',NULL,'Female','1961-04-10',0555546210,'hos26@gmail.com',111,7000);
INSERT INTO Employee VALUES (027,'Heba','Abdullah','Nurse','1998-05-23',NULL,'Female','1954-10-01',0551246540,'hos27@gmail.com',110,6000);
INSERT INTO Employee VALUES (028,'Jahan','Mohamed','Nurse','1999-12-03',NULL,'Female','1956-11-07',0501642535,'hos28@gmail.com',112,8000);
INSERT INTO Employee VALUES (029,'Amal','Mansour','Nurse','1999-01-23',NULL,'Female','1965-04-13',0553415246,'hos29@gmail.com',113,7000);
INSERT INTO Employee VALUES (030,'Amena','Anas','Nurse','2001-10-17',NULL,'Female','1970-11-12',0506469158,'hos30@gmail.com',112,8000);
INSERT INTO Employee VALUES (031,'Ibtisam','Mustafa','Nurse','2002-06-11',NULL,'Female','1971-06-11',0553645191,'hos31@gmail.com',110,6000);
INSERT INTO Employee VALUES (032,'Dunya','Ibrahim','Nurse','1999-09-29',NULL,'Female','1963-01-17',0556164901,'hos32@gmail.com',111,7000);
INSERT INTO Employee VALUES (033,'Isra','Othman','Nurse','1997-04-10',NULL,'Female','1954-04-20',0564661211,'hos33@gmail.com',115,6000);
INSERT INTO Employee VALUES (034,'Asmaa','Mahmud','Nurse','2003-10-01',NULL,'Female','1966-10-12',0550164240,'hos34@gmail.com',114,8000);
INSERT INTO Employee VALUES (035,'Dalia','Ahmed','Nurse','2004-11-07',NULL,'Female','1965-05-22',0500145012,'hos35@gmail.com',115,6000);
INSERT INTO Employee VALUES (036,'Amani','Mohamed','Nurse','2003-02-05',NULL,'Female','1970-09-02',0502134054,'hos36@gmail.com',112,8000);
INSERT INTO Employee VALUES (037,'Amira','Abdullah','Nurse','1997-07-20',NULL,'Female','1959-03-21',0506421645,'hos37@gmail.com',113,7000);
INSERT INTO Employee VALUES (038,'Maram','Karam','Nurse','1998-07-22',NULL,'Female','1957-12-14',0561342717,'hos38@gmail.com',114,8000);
INSERT INTO Employee VALUES (039,'Basma','Walid','Nurse','2000-08-27',NULL,'Female','1962-01-19',0566198421,'hos39@gmail.com',110,6000);
INSERT INTO Employee VALUES (040,'Fatima','Yousef','Nurse','2001-04-18',NULL,'Female','1967-04-02',0554510564,'hos40@gmail.com',115,6000);
INSERT INTO Employee VALUES (041,'Dima','Bahaa','Nurse','1999-03-21',NULL,'Female','1956-04-19',0554146714,'hos41@gmail.com',114,8000);
INSERT INTO Employee VALUES (042,'Bushra','Khalil','Nurse','2002-12-14',NULL,'Female','1971-12-03',0561605640,'hos42@gmail.com',113,7000);
INSERT INTO Employee VALUES (043,'Nora','Mohamed','Nurse','2001-01-19',NULL,'Female','1964-12-18',0550464579,'hos43@gmail.com',111,7000);
INSERT INTO Employee VALUES (044,'Ahmed','Jabbar','Laboratory','1997-09-11',NULL,'Male','1953-02-20',0560465801,'hos44@gmail.com',110,12000);
INSERT INTO Employee VALUES (045,'Mohamed','Ziad','Laboratory','2004-02-21',NULL,'Male','1972-02-22',0550164864,'hos45@gmail.com',114,12000);
INSERT INTO Employee VALUES (046,'Hashim','Jamal','Laboratory','1997-03-13',NULL,'Male','1961-09-28',0504541210,'hos46@gmail.com',110,12000);
INSERT INTO Employee VALUES (047,'Hanan','Mamoun','Laboratory','1998-07-19',NULL,'Female','1963-09-16',0504645210,'hos47@gmail.com',111,12000);
INSERT INTO Employee VALUES (048,'Samar','Abdulrahman','Laboratory','2003-11-21',NULL,'Female','1970-08-27',0554641680,'hos48@gmail.com',114,12000);
INSERT INTO Employee VALUES (049,'Mohamed','Hassan','Laboratory','1998-06-14',NULL,'Male','1954-07-19',0505458124,'hos49@gmail.com',110,12000);
INSERT INTO Employee VALUES (050,'Abdullah','Salama','Laboratory','1997-04-22',NULL,'Male','1955-11-21',0564615218,'hos50@gmail.com',111,12000);
INSERT INTO Employee VALUES (051,'Ebtehal','Yaqoub','Laboratory','1999-02-07',NULL,'Female','1961-06-14',0552168521,'hos51@gmail.com',114,12000);
INSERT INTO Employee VALUES (052,'Ahmed','Mohamed','Laboratory','2000-06-20',NULL,'Male','1968-04-22',0562681422,'hos52@gmail.com',110,12000);
INSERT INTO Employee VALUES (053,'Zainab','Ibrahim','Laboratory','2004-11-17',NULL,'Female','1972-02-07',0556596140,'hos53@gmail.com',111,12000);
INSERT INTO Employee VALUES (054,'Mohammed','Mustafa','Laboratory','2005-08-03',NULL,'Male','1974-06-20',0556845914,'hos54@gmail.com',111,12000);
INSERT INTO Employee VALUES (055,'Turki','Abdulrahman','Laboratory','2002-02-10',NULL,'Male','1968-11-17',0554126821,'hos55@gmail.com',114,12000);
INSERT INTO Employee VALUES (056,'Adam','Ibrahim','Recepion','1998-12-12',NULL,'Male','1959-07-22',0506296126,'hos56@gmail.com',118,9000);
INSERT INTO Employee VALUES (057,'Thamer','Mahmoud','Recepion','1999-10-14',NULL,'Male','1964-08-27',0556126241,'hos57@gmail.com',118,9000);
INSERT INTO Employee VALUES (058,'Fatima','Ahmed','Recepion','1997-09-04',NULL,'Female','1955-04-18',0556216425,'hos58@gmail.com',118,9000);
INSERT INTO Employee VALUES (059,'Anas','Othman','Security','1999-04-08',NULL,'Male','1981-03-21',0500462171,'hos59@gmail.com',116,3000);
INSERT INTO Employee VALUES (060,'Mohammed','Ashraf','Security','2000-02-10',NULL,'Male','1975-12-14',0556129484,'hos60@gmail.com',116,3000);
INSERT INTO Employee VALUES (061,'Hamza','Mustafa','Security','2002-12-12',NULL,'Male','1982-01-19',0502412001,'hos61@gmail.com',116,3000);
INSERT INTO Employee VALUES (062,'Ahmad','Salem','Accountent','1999-04-14',NULL,'Male','1964-09-11',0502146014,'hos62@gmail.com',117,10000);
INSERT INTO Employee VALUES (063,'Ziad','Khalidi','Accountent','2001-05-05',NULL,'Male','1963-02-21',0550142504,'hos63@gmail.com',117,10000);


INSERT INTO Doctor VALUES ('Internist',30,001);
INSERT INTO Doctor VALUES ('Dentist',26,002);
INSERT INTO Doctor VALUES ('Orthopedist',28,003);
INSERT INTO Doctor VALUES ('Neurologist',16,004);
INSERT INTO Doctor VALUES ('Surgeon',27,005);
INSERT INTO Doctor VALUES ('Internist',23,006);
INSERT INTO Doctor VALUES ('Surgeon',27,007);
INSERT INTO Doctor VALUES ('Orthopedist',14,008);
INSERT INTO Doctor VALUES ('Dentist',23,009);
INSERT INTO Doctor VALUES ('Surgeon',28,010);
INSERT INTO Doctor VALUES ('Surgeon',17,011);
INSERT INTO Doctor VALUES ('Internist',20,012);
INSERT INTO Doctor VALUES ('Psychiatrist',19,013);
INSERT INTO Doctor VALUES ('Internist',16,014);
INSERT INTO Doctor VALUES ('Psychiatrist',28,015);
INSERT INTO Doctor VALUES ('Neurologist',13,016);
INSERT INTO Doctor VALUES ('Surgeon',22,017);
INSERT INTO Doctor VALUES ('Internist',21,018);
INSERT INTO Doctor VALUES ('Dentist',29,019);
INSERT INTO Doctor VALUES ('Psychiatrist',10,020);
INSERT INTO Doctor VALUES ('Neurologist',27,021);
INSERT INTO Doctor VALUES ('Psychiatrist',24,022);
INSERT INTO Doctor VALUES ('Orthopedist',23,023);
INSERT INTO Doctor VALUES ('Neurologist',18,024);
INSERT INTO Doctor VALUES ('Orthopedist',30,025);


INSERT INTO Nurse VALUES (5,011);
INSERT INTO Nurse VALUES (7,012);
INSERT INTO Nurse VALUES (3,013);
INSERT INTO Nurse VALUES (2,014);
INSERT INTO Nurse VALUES (6,015);
INSERT INTO Nurse VALUES (3,016);
INSERT INTO Nurse VALUES (5,017);
INSERT INTO Nurse VALUES (2,018);
INSERT INTO Nurse VALUES (3,019);
INSERT INTO Nurse VALUES (2,020);
INSERT INTO Nurse VALUES (1,021);
INSERT INTO Nurse VALUES (7,022);
INSERT INTO Nurse VALUES (3,023);
INSERT INTO Nurse VALUES (5,024);
INSERT INTO Nurse VALUES (4,025);
INSERT INTO Nurse VALUES (7,026);
INSERT INTO Nurse VALUES (1,027);
INSERT INTO Nurse VALUES (2,028);


INSERT INTO Laboratorian VALUES (103,043);
INSERT INTO Laboratorian VALUES (302,044);
INSERT INTO Laboratorian VALUES (103,045);
INSERT INTO Laboratorian VALUES (207,046);
INSERT INTO Laboratorian VALUES (302,047);
INSERT INTO Laboratorian VALUES (103,048);
INSERT INTO Laboratorian VALUES (207,049);
INSERT INTO Laboratorian VALUES (302,050);
INSERT INTO Laboratorian VALUES (103,051);
INSERT INTO Laboratorian VALUES (207,052);
INSERT INTO Laboratorian VALUES (207,053);
INSERT INTO Laboratorian VALUES (302,054);


INSERT INTO OtherStaff VALUES (8,038);
INSERT INTO OtherStaff VALUES (9,039);
INSERT INTO OtherStaff VALUES (8,040);
INSERT INTO OtherStaff VALUES (9,041);
INSERT INTO OtherStaff VALUES (8,042);
INSERT INTO OtherStaff VALUES (8,043);
INSERT INTO OtherStaff VALUES (12,044);
INSERT INTO OtherStaff VALUES (12,045);

INSERT INTO Department VALUES (110,'Internal Medicine',001);
INSERT INTO Department VALUES (111,'Orthopedic',003);
INSERT INTO Department VALUES (112,'Surgery',010);
INSERT INTO Department VALUES (113,'Psychiatry',015);
INSERT INTO Department VALUES (114,'Neurology',026);
INSERT INTO Department VALUES (115,'Dentistry',019);
INSERT INTO Department VALUES (116,'Security',005);
INSERT INTO Department VALUES (117,'Accounting',007);
INSERT INTO Department VALUES (118,'Reception',021);


INSERT INTO Labs VALUES (103,110);
INSERT INTO Labs VALUES (207,111);
INSERT INTO Labs VALUES (302,114);


INSERT INTO Patient VALUES (100,'Mahmoud','Hussain','Male','1959-07-22',0556217965,'Riyadh');
INSERT INTO Patient VALUES (101,'Khalil','Akram','Male','1964-08-27',0504179535,'Riyadh');
INSERT INTO Patient VALUES (102,'Jamel','Khattab','Male','1955-04-18',0552641501,'Madinah');
INSERT INTO Patient VALUES (103,'Amjad','Abdulrahim','Male','1981-03-21',055614201,'Jeddah');
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();
INSERT INTO Patient VALUES ();


INSERT INTO MedicalFile VALUES (102,'Jamel','Khattab','Male','1955-04-18',0552641501,'Madinah'
id int
fName varchar(30)
lName varchar(30)
Gender varchar(30)
dDate Date 
phone varchar(30)
city varchar(30)

);

INSERT INTO Visitor VALUES ();

INSERT INTO Admitted VALUES ();

INSERT INTO Tests VALUES ();

INSERT INTO Visiting VALUES ();

INSERT INTO Treating VALUES ();






select * 









