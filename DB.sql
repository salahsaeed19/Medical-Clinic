-- Create a new database named "MedicalClinic"

-- Define the "Patient" table
create table Patient(
    patient_ID int primary key,
    FullName nvarchar(30) not null,
    Birthday date,
    Gender nvarchar(15),
    Address nvarchar(30),
    Email nvarchar(30),
    Phone nvarchar(10),
    Password int not null,
    image nvarchar(40)
)

-- Define the "Department" table
create table Department(
    depart_ID int IDENTITY(1,1) PRIMARY KEY,
    depart_Name nvarchar(40),
    number_Of_Doctor int
)

-- Define the "Clinics" table
create table Clinics(
    clinics_ID int IDENTITY(1,1) PRIMARY KEY,
    clinics_Name nvarchar(50),
    clinics_Address nvarchar(60)
)

-- Define the "Doctor" table
create table Doctor(
    dr_ID int primary key,
    dr_Name nvarchar(40),
    dr_Birth_Of_Date date,
    dr_Geder nvarchar(15),
    dr_Phone nvarchar(10),
    dr_Address nvarchar(50),
    dr_image nvarchar(60),
    depart_ID int foreign key references Department(depart_ID),
    Clinics_ID int foreign key references Clinics(clinics_ID)
)

-- Define the "Appointments" table
create table Appointments(
    appointment_ID int IDENTITY(1,1) PRIMARY KEY ,
    patient_ID int foreign key references Patient(patient_ID),
    dr_ID int foreign key references Doctor(dr_ID),
    Appointment_date date ,
    Appointment_time time
)

-- Define the "Bills" table
create table Bills(
    bills_id int IDENTITY(1,1) PRIMARY KEY ,
    appointment_ID int foreign key references Appointments(appointment_ID),
    patient_ID int foreign key references Patient(patient_ID),
    amount float ,
    Type_of_payment nvarchar(20),
    Clinics_ID int foreign key references Clinics(clinics_ID)
)

-- Define the "Clinics_Department" table
create table Clinics_Department(
    Clinics_Department_ID int IDENTITY(1,1) PRIMARY KEY,
    depart_ID int foreign key references Department(depart_ID),
    Clinics_ID int foreign key references Clinics(clinics_ID)
)

-- Alter the "Doctor" table: drop the "dr_Age" column
alter table Doctor drop column dr_Age

-- Alter the "Doctor" table: add a new "Email" column
alter table Doctor add Email nvarchar(30)

-- Alter the "Patient" table: change the "Gender" column's data type
alter table Patient alter column Gender nvarchar(10)

-- Alter the "Patient" table: change the "Password" column's data type
alter table Patient alter column Password nvarchar(30)

-- Insert data into the "Patient" table
insert into Patient values (800000000, 'Saeed Abo Saif', '10/22/1988', 'male', 'Gaza', 'saeed@gmail.com', '0592696578', 'asa2aa4', '1a.png')
-- ... (more insert statements)

-- Insert data into the "Department" table
insert into Department values ('Dentistry', 0)
-- ... (more insert statements)

-- Insert data into the "Clinics" table
insert into Clinics values ('Dar Al-Arqam', 'Gaza')
-- ... (more insert statements)

-- Insert data into the "Clinics_Department" table
insert into Clinics_Department values (2, 1)
-- ... (more insert statements)

-- Insert data into the "Doctor" table
insert into Doctor values (9000000, 'Salah Abo Saif', '10/22/1988', 'male', 'Gaza', '0592694545', '1.png', 2, 5)
-- ... (more insert statements)

-- Insert data into the "Appointments" table
insert into Appointments values (800000000, 9000000, '03/22/2021', '08:00:00')
-- ... (more insert statements)

-- Insert data into the "Bills" table
INSERT INTO Bills VALUES (1, 800000000, 90, 0, 5)
-- ... (more insert statements)

-- Select all columns from the "Patient" table and order by "FullName" ascendingly
SELECT * FROM Patient
ORDER BY FullName ASC

-- Select all columns from the "Doctor" table and order by "dr_ID" descendingly
SELECT * FROM Doctor
ORDER BY dr_ID DESC

-- Show the names of patients and doctors along with their genders
SELECT Patient.FullName, Patient.Gender
FROM Patient
UNION
SELECT Doctor.dr_Name, Doctor.dr_Geder
FROM Doctor

-- ... (more SELECT queries)

-- Update the "Doctor" table: change the name of a doctor
UPDATE Doctor
SET dr_Name = 'Jammel Abood'
WHERE dr_Name = 'Salah Abo Saif'

-- Update the "Bills" table: change all amounts at least 100 to 100
UPDATE Bills
SET amount = 100
WHERE amount <= 100

-- ... (more UPDATE queries)

-- Delete rows from the "Doctor" table where dr_image is '5.png'
Delete from Doctor where dr_image = '5.png'

-- ... (more DELETE queries)
