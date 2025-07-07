-- ========================================
-- SQL PROJECT: MedicalCenter
-- Domain: Medical
-- ========================================

-- 1. Create and use the database
DROP DATABASE IF EXISTS MedicalCenter;
CREATE DATABASE MedicalCenter;
USE MedicalCenter;

-- 2. Create tables

-- Patients Table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    contact VARCHAR(20)
);

-- Doctors Table
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    specialty VARCHAR(50),
    phone VARCHAR(20)
);

-- Appointments Table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    diagnosis TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Prescriptions Table
CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    medicine VARCHAR(100),
    dosage VARCHAR(100),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Billings Table
CREATE TABLE Billings (
    billing_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    amount DECIMAL(10,2),
    billing_date DATE,
    payment_status ENUM('Paid', 'Unpaid', 'Pending'),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);