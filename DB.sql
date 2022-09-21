use MedicalClinic
-- DDL SQL
create table Patient(
        patient_ID int primary key ,
        FullName nvarchar(30) not null,
        Birthday date,
        Gender nvarchar(15),
        Address nvarchar(30),
        Email nvarchar(30),
        Phone nvarchar(10),
        Password int not null,
        image nvarchar(40))

/* Department table */
create table Department(
depart_ID int IDENTITY(1,1) PRIMARY KEY,
depart_Name nvarchar(40),
number_Of_Doctor int 
)

/* Create Clinics table */
create table Clinics(
        clinics_ID int IDENTITY(1,1) PRIMARY KEY,
        clinics_Name nvarchar(50),
        clinics_Address nvarchar(60))

/* Doctor table */
create table Doctor(
      dr_ID int primary key,
      dr_Name nvarchar(40),
      dr_Birth_Of_Date date,
      dr_Geder nvarchar(15),
      dr_Phone nvarchar(10),
      dr_Address nvarchar(50),
      dr_Age int,
      dr_image nvarchar(60),
      depart_ID int foreign key references Department(depart_ID),
      Clinics_ID int foreign key references Clinics(clinics_ID))

/* Appointments tabel */ 
create table Appointments(
       appointment_ID int IDENTITY(1,1) PRIMARY KEY ,
       patient_ID int foreign key references Patient(patient_ID),
       dr_ID int foreign key references Doctor(dr_ID),
       Appointment_date date ,
       Appointment_time time)

/* Bills tabel*/
create table Bills(
       bills_id int IDENTITY(1,1) PRIMARY KEY ,
       appointment_ID int foreign key references Appointments(appointment_ID),
       patient_ID int foreign key references Patient(patient_ID),
       amount float ,
       Type_of_payment nvarchar(20),
       Clinics_ID int foreign key references Clinics(clinics_ID))

/* Clinics_Department table */
create table Clinics_Department(
Clinics_Department_ID int IDENTITY(1,1) PRIMARY KEY,
depart_ID int foreign key references Department(depart_ID),
Clinics_ID int foreign key references Clinics(clinics_ID)
)
/* delete column age from Table Doctor  */
alter table Doctor  drop column dr_Age
/* add new column 'Email' on Doctor Table */
alter table Doctor add Email nvarchar(30)
/* change column gender in patient table*/
alter table Patient alter column Gender nvarchar(10)
alter table Patient alter column Password nvarchar(30) 
---------------------------------------------------------------------------------------------
-- DML 
/* Insert Data on Patient Table */
insert into Patient values(800000000 , 'Saeed Abo Saif' , '10/22/1988' , 'male', 'Gaza','saeed@gmail.com','0592696578','asa2aa4','1a.png')
insert into Patient values(800000001 , 'Adil Mohamed'  , '11/30/2011' , 'male', 'Gaza','Adil@gmail.com','0592696578','asaa3a4','2a.png')
insert into Patient values(800000002 , 'Walaa Elshrif' , '06/24/2000' , 'female', 'North Gaza','Walaa@gmail.com','0592696578','asa3aa4','3a.png')
insert into Patient values(800000003 , 'Mohmoud Nawaf' , '09/28/1998' , 'male', 'North Gaza','Mohmoud@gmail.com','0592693657','asa3aa4','4a.png')
insert into Patient values(800000004 , 'Nancy Elsayed' , '08/21/1989' , 'female', 'Gaza','Nancy@gmail.com','0592696578','asa3aa4','5a.png')
insert into Patient values(800000005 , 'Nehal Ahmmed'  , '07/11/1977' , 'female', 'Khanyounes','saeed@gmail.com','0592696578','asaaa4','6a.png')
insert into Patient values(800000006 , 'Saseed salah'  , '12/12/2007' , 'male', 'Gaza','saeed@gmail.com','0592696578','asaa3a4','7a.png')
insert into Patient values(800000007 , 'Mohammed Saif' , '02/21/2001' , 'male', 'Khanyounes','Mohammed@gmail.com','0592696578','asa3aa4','8a.png')
insert into Patient values(800000008 , 'waseem Saif'   , '03/13/2002' , 'male', 'Gaza','saeed@gmail.com','0592696578','asaeaa4','9a.png')
insert into Patient values(800000009 , 'belal al Ahsi' , '05/17/1977' , 'male', 'Khanyounes','waseem@gmail.com','0592696578','asaaea4','10a.png')
insert into Patient values(800000010 , 'Saja Saeed'   , '01/09/1956' , 'female'  , 'Gaza','Saja@gmail.com','0592696578','asaeaa4','11a.png')
insert into Patient values(800000011 , 'Amal Jendeya' , '10/07/1995' , 'male'   , 'Rafah','Amal@gmail.com','0592696578','asaaa4','12a.png')
insert into Patient values(800000012 , 'Ahmed Merwan' , '11/27/1977' , 'male'   , 'Gaza','Ahmed@gmail.com','0592696578','aseaaa4','13a.png')
insert into Patient values(800000013 , 'Hani Fadi'    , '08/16/1965' , 'male'   , 'Gaza','Hani@gmail.com','0592696578','asaaea4','14a.png')
insert into Patient values(800000014 , 'Sosu Salah'   , '09/15/1978' , 'female' , 'Rafah','Sosu@gmail.com','0592696578','asdaaa4','15a.png')
insert into Patient values(800000015 , 'Rawda Atef'   , '11/12/2001' , 'female' , 'Gaza','Rawda@gmail.com','0592696578','asafaa4','16a.png')
go

/* Insert Date on Departement Table */
insert into Department Values('Dentistry',0)
insert into Department Values('Surgery',0)
insert into Department Values('Orthopedic',0)
insert into Department Values('Dermatology',0)
insert into Department Values('Cardiology',0)
insert into Department Values('Hematology',0)
insert into Department Values('Nephrology',0)
insert into Department Values('Oncology',0)
insert into Department Values('Rheumatology',0)
insert into Department Values('Pediatric',0)
insert into Department Values('Obstetrics & Gynecology',0)
insert into Department Values('Neurology',0)
insert into Department Values('Psychiatry',0)
insert into Department Values('Anatomy',0)
go

/* Insert Date on Clinci Table */
insert into Clinics Values('Dar Al-Arqam','Gaza')
insert into Clinics Values('Sihatuk Bialdunya','Rafah')
insert into Clinics Values('Al Shams','North Gaza')
insert into Clinics Values('Medical Relief Association','North Gaza')
insert into Clinics Values('My health','KhanYounes')
insert into Clinics Values('Medical city','Gaza')
insert into Clinics Values('Alshifa','KhanYounes')

/* Insert Date on Clinci Table */
insert into Clinics_Department Values(2,1)
insert into Clinics_Department Values(11,1)
insert into Clinics_Department Values(4,2)
insert into Clinics_Department Values(8,5)
insert into Clinics_Department Values(8,3)
insert into Clinics_Department Values(5,7)
insert into Clinics_Department Values(1,4)
insert into Clinics_Department Values(14,4)
insert into Clinics_Department Values(7,6)

/* Insert Date on Doctor Table */
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000000 , 'Salah Abo Saif' , '10/22/1988' , 'male' ,'Gaza' , '0592694545' , '1.png' , 2 , 5)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000001 , 'AbdAlRazzaq Al Dahdouh' , '12/27/2001' , 'male' ,'Gaza' , '0592694545' , '9.png' , 3 , 5)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000002 , 'Heba Alamassi' , '04/22/2001' , 'Female' ,'Gaza' , '0598764646' , '7.png' , 4 , 4)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000003 , 'Fatma Jaber' , '10/22/1999' , 'Female' ,'Gaza' , '0567898764' , '2.png' , 8 , 3)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000004 , 'Noura Mostafa' , '10/22/1988' , 'Female' ,'Gaza' , '0567893234' , '3.png' , 4 , 2)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000005 , 'fathi Alan' , '10/22/1977' , 'male' ,'Refah' , '0592694545' , '4.png' , 2 , 5)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000011 , 'Mosa AlRaay' , '10/22/1978' , 'male' ,'Refah' , '0598767543' , '5.png' , 9 ,1)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000006 , 'Ahmad Abu Baker' , '10/22/1987' , 'male' ,'Gaza' , '0592694545' , '6.png' , 12 , 6)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000007 , 'Mohammed Omer' , '10/22/1977' , 'male' ,'Gaza' , '0592694545' , '6.png' , 12 , 6)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000008 , 'Omer Abo Ali ' , '10/22/2000' , 'male' ,'Gaza' , '0592694545' , '6.png' , 12 , 6)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000009 , 'Fadia Jammel' , '10/22/1955' , 'male' ,'Gaza' , '0592694545' , '6.png' , 12 , 6)
INSERT INTO Doctor(dr_ID, dr_Name ,  dr_Birth_Of_Date, dr_Geder,dr_Phone,dr_Address,dr_image,depart_ID,Clinics_ID)
VALUES(9000010 , 'Sammer Ahamed' , '10/22/1947' , 'male' ,'Gaza' , '0592694545' , '6.png' , 12 , 6)

/* Insert Date on Appointments Table */
insert into Appointments Values(800000000, 9000000, '03/22/2021' , '08:00:00')
insert into Appointments Values(800000001, 9000002, '04/12/2021' , '09:30:00')
insert into Appointments Values(800000002, 9000001, '05/21/2021' , '12:30:00')
insert into Appointments Values(800000003, 9000002, '06/23/2021' , '10:30:00')
insert into Appointments Values(800000004, 9000003, '07/15/2021' , '22:30:00')
insert into Appointments Values(800000005, 9000003, '12/13/2021' , '11:30:00')
insert into Appointments Values(800000006, 9000006, '11/12/2021' , '12:30:00')
insert into Appointments Values(800000007, 9000003, '10/10/2021' , '04:30:00')
insert into Appointments Values(800000001, 9000006, '04/25/2021' , '09:30:00')
insert into Appointments Values(800000002, 9000004, '05/26/2021' , '12:30:00')
insert into Appointments Values(800000003, 9000003, '06/22/2021' , '10:30:00')
insert into Appointments Values(800000004, 9000004, '07/21/2021' , '22:30:00')
insert into Appointments Values(800000005, 9000005, '12/12/2021' , '11:30:00')
insert into Appointments Values(800000006, 9000002, '11/11/2021' , '12:30:00')
insert into Appointments Values(800000011, 9000002, '10/13/2021' , '04:30:00')

/* Insert Date on Bills Table */
INSERT INTO Bills	VALUES (1,800000000,90,0,5);
INSERT INTO Bills	VALUES (2,800000001,300,0,4);
INSERT INTO Bills	VALUES (3,800000002,200,1,1);
INSERT INTO Bills	VALUES (4,800000003,134,0,4);
INSERT INTO Bills	VALUES (5,800000004,67,1,5);
INSERT INTO Bills	VALUES (5,800000005,98,0,4);
INSERT INTO Bills	VALUES (6,800000005,344,0,3);
INSERT INTO Bills	VALUES (3,800000006,233,1,6);
INSERT INTO Bills	VALUES (9,800000011,120,1,4);
INSERT INTO Bills	VALUES (7,800000012,120,0,1);
INSERT INTO Bills	VALUES (5,800000014,200,1,1);
INSERT INTO Bills	VALUES (3,800000010,298,0,5);

/* Select (Show All Information About Tables) */
SELECT * FROM Patient
SELECT * FROM Doctor
SELECT * FROM Department
SELECT * FROM Bills
SELECT * FROM Appointments
SELECT * FROM Clinics_Department
SELECT * FROM Clinics

-- retrieve all columns from a table oreder by there first name ascendingly
SELECT * FROM Patient
ORDER BY FullName ASC

-- retrieve all columns from a table Doctor by there ID descendingly
SELECT * FROM  Doctor 
ORDER BY dr_Name DESC

-- show Name Departement to all Doctor
SELECT dr_Name , depart_Name FROM Doctor , Department
WHERE  Doctor.depart_ID = Department.depart_ID


-- retrieve count of patient where address = 'Gaza' 
select count(patient_ID) as 'Totle' from Patient 
where Address = 'Gaza'

-- عملية دمج بين جدولين الدكتور و المريض
SELECT patient_ID, FullName, Phone from Patient   
UNION                                             
SELECT dr_ID, dr_Name, dr_Phone from Doctor  

-- To Define type of Payment
SELECT bills_id , patient_ID ,
CASE 
when Type_of_payment = 1 Then 'Elect'
When Type_of_payment = 0 Then 'Non-ELect'
else null END As 'PAYMENT'
From Bills;
-- Retrive all full name to patient gender female
select Fullname from patient where gender='female'
select * from doctor where clinics_id =3
select * from bills where patient_id =800000000

select dr_Name  from doctor , Department
where Department.depart_ID = Doctor.depart_ID AND Department.depart_Name='Orthopedic'

-- Retrive Name Patient with doctor 
select Patient.Fullname , Doctor.dr_Name 
FROM Patient , Doctor , Appointments
where  Patient.patient_ID = Appointments.patient_ID 
AND Doctor.dr_ID = Appointments.dr_ID

-- SQL UPDATE ON DATABASE
update Doctor
set dr_Name = 'Jammel Abood'
Where dr_Name = 'Salah Abo Saif'

-- Update all price at least then 100 to 100
UPDATE Bills SET amount = 100 WHERE amount <= 100;

-- Update all time at least the 09:30 to 10:00
UPDATE Appointments SET Appointment_time = '10:00:00'
WHERE Appointment_time = '9:30:00';

UPDATE Patient SET FullName= 'Shaimaa Jerboa',Gender = 'female',image = '17a.png'
WHERE patient_ID = 800000001

UPDATE Clinics 
SET clinics_Name = 'Midical Palestine', clinics_Address = 'Gaza'   
WHERE clinics_ID = 5


/* to retrieve the min  amount of bills*/
select MIN (amount) As 'Min Bill '
from Bills
where clinics_ID=3

/*To retrieve the max amount of bills in the clinic*/
select Max (amount) As 'Max Bill '
from Bills
where clinics_ID=5

/*To find the average of amounts at clinic */
select Avg(amount) As 'Average'
from Bills
where Clinics_ID = 5

/*To retrieve the number of male and female */
select Gender , Count(patient_ID) AS 'Geder'
from Patient
group by Gender

/*To retrieve the max birthday for doctor at  department who has id = 4*/
select Max (dr_Birth_Of_Date) As 'max birth date '
from Doctor
where depart_ID=4

/*the summation of amounts for one patient*/
select SUM(amount) As 'Total amounts'
from Bills
where patient_ID = 800000006

/* To retrieve the name of doctor  in the department has the minimum number of doctor */
select depart_Name
from Department 
where number_Of_Doctor = (select MIN (number_Of_Doctor) from Department)

/*To count the number of phone  */
select Count(Phone) AS 'Phone numbers'
from Patient
group by Phone


/*to retrieve the number of doctor at separate clinic*/
select clinics_Name, Count(dr_ID) AS 'Number of Doctor'
from Doctor , clinics
group by clinics_Name

SELECT Address AS 'City', COUNT(patient_ID) AS 'Number of Employees'
FROM Patient
GROUP BY Address;
-- عرض معلومات أكبر دكتور في الجدول
SELECT * FROM Doctor                             
WHERE dr_Birth_Of_Date = (SELECT MIN(dr_Birth_Of_Date) FROM Doctor) 
-- Join SQL Server
SELECT Doctor.dr_ID, Doctor.dr_Name, Department.depart_Name  
FROM Doctor JOIN Department                                     
ON Department.depart_ID = Doctor.depart_ID; 

SELECT Patient.FullName, Appointments.dr_ID
FROM Patient JOIN Appointments                                     
ON Patient.patient_ID = Appointments.patient_ID;  

select Patient.FullName , Bills.amount 
From Patient Left outer JOIN Bills 
ON Patient.patient_ID = Bills.patient_ID

SELECT Patient.FullName, Appointments.dr_ID AS 'Doctor'   
FROM Patient LEFT OUTER		JOIN Appointments
ON Patient.patient_ID = Appointments.patient_ID
UNION                                            
SELECT Patient.FullName, Appointments.dr_ID AS 'Doctor'   
FROM Patient RIGHT OUTER JOIN Appointments
ON Patient.patient_ID = Appointments.patient_ID

Delete from Doctor where dr_image = '5.png';

Delete from Appointments where Appointment_time = '04:30:00';
Delete from Bills where amount = 134;
