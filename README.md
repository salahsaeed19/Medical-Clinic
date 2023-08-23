# Medical Clinic Database SQL Script

This repository contains SQL scripts that define and manipulate tables for a medical clinic database. The database is managed by Team 91 and aims to store and manage patient information, appointments, doctors, clinics, bills, and more.

## Table of Contents

- [Introduction](#introduction)
- [Table Definitions](#table-definitions)
- [Queries and Operations](#queries-and-operations)
- [Usage](#usage)
- [License](#license)
- [Contact](#contact)

## Introduction

This SQL script defines and populates tables for a medical clinic database. The database, managed by Team 91, stores and manages patient information, appointments, doctors, clinics, bills, and more. The script covers the creation of tables, data insertion, updates, deletes, and various querying operations.

## Table Definitions

The following tables are defined within the SQL script:

- `Patient`: Holds patient information such as ID, name, birthday, gender, address, email, phone, password, and image.
- `Department`: Contains information about medical departments, including department ID, name, and the number of doctors.
- `Clinics`: Stores clinic information, including clinic ID, name, and address.
- `Doctor`: Manages doctor details, including ID, name, birth date, gender, phone, address, image, department, and clinic.
- `Appointments`: Tracks appointments, including appointment ID, patient ID, doctor ID, appointment date, and time.
- `Bills`: Records billing information, including bill ID, appointment ID, patient ID, amount, payment type, and clinic.
- `Clinics_Department`: Establishes the relationship between clinics and departments.

## Queries and Operations

The SQL script covers various queries and operations, including:

- Data insertion for patients, departments, clinics, doctors, appointments, and bills.
- Data alteration operations like adding and dropping columns in the `Doctor` table, and modifying data types in the `Patient` table.
- Data retrieval operations for fetching patient and doctor information, as well as querying various statistics such as counts, averages, and maximum/minimum values.
- Data modification operations like updating doctor names, changing appointment times, and altering clinic information.
- Data deletion operations to remove records from the `Doctor` table and `Appointments` table.

Please review the script for detailed queries and operations.

## Usage

1. Create a new SQL database in your preferred database management system.
2. Copy and execute the SQL script in your chosen SQL client to define tables, insert data, and perform operations.

**Note:** This script is provided as an educational resource and may need adjustments to suit specific database systems and requirements.

## License

This script is provided under the [MIT License](LICENSE).

## Contact

For inquiries, please contact Team 91 at [salahsaef40@gmail.com](mailto:salahsaef40@gmail.com).

---
