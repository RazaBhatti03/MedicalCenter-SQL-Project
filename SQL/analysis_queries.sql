--  Data Preprocessing

--  Check for Duplicates
SELECT patient_id, name, COUNT(*) as count
FROM Patients
GROUP BY name, age, gender, contact
HAVING COUNT(*) > 1;

-- Remove Duplicates (Example)
-- DELETE FROM Patients
-- WHERE patient_id NOT IN (
--     SELECT MIN(patient_id)
--     FROM Patients
--     GROUP BY name, age, gender, contact
-- );

--  Check for NULLs
SELECT * FROM Patients WHERE name IS NULL OR age IS NULL;
SELECT * FROM Doctors WHERE name IS NULL OR specialty IS NULL;

--  Replace missing contact with 'Unknown' (Example)
UPDATE Patients SET contact = 'Unknown' WHERE contact IS NULL;

--  Standardize gender values (if inconsistent)
-- Not needed here since ENUM restricts values

--  Check invalid ages (e.g., negative or too high)
SELECT * FROM Patients WHERE age < 0 OR age > 120;

--  Fix contact number formatting (optional, regex can be used via application side)

--  DONE 
-- Database is clean and ready for analysis.

-- Perform 30 SQL Problem Statements

-- 1. All patients
SELECT * FROM Patients;

-- 2. Female patients with contact
SELECT name, contact FROM Patients WHERE gender = 'Female';

-- 3. Doctors and specialties
SELECT name, specialty FROM Doctors;

-- 4. Appointments in June 2024
SELECT * FROM Appointments WHERE MONTH(appointment_date) = 6 AND YEAR(appointment_date) = 2024;

-- 5. Unpaid bills
SELECT * FROM Billings WHERE payment_status = 'Unpaid';

-- 6. Patients older than 40
SELECT * FROM Patients WHERE age > 40;

-- 7. Top 3 highest billings
SELECT * FROM Billings ORDER BY amount DESC LIMIT 3;

-- 8. Count of patients
SELECT COUNT(*) AS total_patients FROM Patients;

-- 9. Gender-wise count
SELECT gender, COUNT(*) FROM Patients GROUP BY gender;

-- 10. Average age
SELECT AVG(age) AS avg_age FROM Patients;

-- 11. Patient-Doctor appointment info
SELECT p.name AS patient, d.name AS doctor, a.appointment_date
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id;

-- 12. Prescriptions with diagnosis and patient
SELECT pa.name, a.diagnosis, pr.medicine
FROM Prescriptions pr
JOIN Appointments a ON pr.appointment_id = a.appointment_id
JOIN Patients pa ON a.patient_id = pa.patient_id;

-- 13. Billing details with patient
SELECT b.billing_id, p.name, b.amount FROM Billings b
JOIN Patients p ON b.patient_id = p.patient_id;

-- 14. Patients treated by Dr. Farooq
SELECT DISTINCT p.name
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE d.name = 'Dr. Farooq';

-- 15. Appointments with Neurologist
SELECT a.*, d.name
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE d.specialty = 'Neurologist';

-- 16. Appointment count per doctor
SELECT d.name, COUNT(*) AS total
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.name;

-- 17. Billing total by status
SELECT payment_status, SUM(amount) AS total
FROM Billings
GROUP BY payment_status;

-- 18. Patients with more than 1 appointment
SELECT p.name, COUNT(*) AS appointments
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
GROUP BY p.name
HAVING COUNT(*) > 1;

-- 19. Prescriptions per patient
SELECT p.name, COUNT(*) AS count
FROM Prescriptions pr
JOIN Appointments a ON pr.appointment_id = a.appointment_id
JOIN Patients p ON a.patient_id = p.patient_id
GROUP BY p.name;

-- 20. Most frequently prescribed medicines
SELECT medicine, COUNT(*) AS total
FROM Prescriptions
GROUP BY medicine;

-- 21. Patients with unpaid bills
SELECT name FROM Patients
WHERE patient_id IN (
    SELECT patient_id FROM Billings WHERE payment_status = 'Unpaid'
);

-- 22. Max bill info
SELECT * FROM Billings
WHERE amount = (SELECT MAX(amount) FROM Billings);

-- 23. Doctor with most appointments
SELECT doctor_id, COUNT(*) AS count FROM Appointments
GROUP BY doctor_id
ORDER BY count DESC LIMIT 1;

-- 24. Patients with no appointments
SELECT * FROM Patients
WHERE patient_id NOT IN (
    SELECT DISTINCT patient_id FROM Appointments
);

-- 25. Doctors who haven’t prescribed yet
SELECT * FROM Doctors
WHERE doctor_id NOT IN (
    SELECT DISTINCT a.doctor_id
    FROM Appointments a
    JOIN Prescriptions p ON a.appointment_id = p.appointment_id
);

-- 26. Update pending to paid
UPDATE Billings SET payment_status = 'Paid' WHERE billing_id = 4;

-- 27. Update contact number
UPDATE Patients SET contact = '03009998888' WHERE name = 'Ahmed Ali';

-- 28. Delete fake appointment (example)
-- DELETE FROM Appointments WHERE appointment_id = 999;

-- 29. Remove zero bills
DELETE FROM Billings WHERE amount = 0;

-- 30. Change doctor specialty
UPDATE Doctors SET specialty = 'General Physician' WHERE name = 'Dr. Tariq';