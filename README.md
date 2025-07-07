# MedicalCenter SQL Project

A beginner-to-intermediate level SQL project based on a medical domain. This project demonstrates database design, data insertion, preprocessing, and 30 SQL problem statements ranging from basic SELECT queries to advanced joins and aggregations.

---

## Project Structure

-  Database: `MedicalCenter`
-  Tables:
  - `Patients`
  - `Doctors`
  - `Appointments`
  - `Prescriptions`
  - `Billings`

---

## Business Context

A hospital or clinic requires a structured system to manage its operations: patient records, doctor consultations, appointment tracking, prescriptions, and billing. This SQL project simulates such a system with a relational database and enables foundational analytics for decision-making.

---

## Database Schema

-  Patients: Stores patient details
-  Doctors: Stores doctors with specialties
-  Appointments: Links patients and doctors
-  Prescriptions: Medicine and dosage based on appointment
-  Billings: Payment records per patient

---

##  Sample Data

- 5–6 sample patients
- 3 doctors with specialties
- Appointments across multiple months
- Prescriptions linked to each appointment
- Bills with various payment statuses

---

##  Data Preprocessing & Cleaning

- Removed duplicate records
- Handled NULLs and missing contact fields
- Checked for invalid ages
- Ensured consistent gender values (using ENUM)
- Identified zero-amount or unpaid bills

---

##  SQL Queries (30 Problem Statements)

The project includes 30 SQL queries categorized into:

-  Basic SELECTs
-  Filtering & Sorting
-  Aggregation & GROUP BY
-  JOIN operations
-  Subqueries
-  Safe UPDATE & DELETE examples

Example queries:
- Patients who visited Cardiologist
- Monthly billing totals
- Prescriptions per patient
- Patients with unpaid bills
- Top 3 highest billing amounts

---

##  Results & Use Cases

This database can be used for:

- Analyzing doctor workloads
- Finding revenue bottlenecks (e.g., unpaid bills)
- Monitoring medicine prescriptions
- Identifying frequent patients
- Auditing medical staff efficiency

---

##  Tools Used

- MySQL / PostgreSQL
- SQL DDL & DML
- Subqueries, Joins, Aggregations

---

##  How to Use

1. Copy the content from `medical_center_project.sql`
2. Run it in any SQL editor like MySQL Workbench, PgAdmin, DBeaver
3. Execute each query to analyze results

---

##  Learning Outcome

By completing this project, you will understand:

- Database modeling in real-world medical domain
- Writing clean and efficient SQL queries
- Solving business problems with SQL
- Preparing for data analyst and junior data scientist roles

---

##  Author

- 👨‍💻 Designed and built by [Raza Ur Rahman]
- 📫 Reach me on GitHub or LinkedIn

---

##  Final Note

This is a foundational SQL project ideal for interviews, resume portfolios, and GitHub profiles. You can extend it further by adding stored procedures, triggers, views, or connecting it to a front-end application for visualization.
