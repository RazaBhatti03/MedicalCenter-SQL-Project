-- Insert sample data

-- Patients
INSERT INTO Patients (name, age, gender, contact) VALUES
('Ali Khan', 30, 'Male', '03001234567'),
('Sana Ahmed', 45, 'Female', '03112345678'),
('Asim Raza', 29, 'Male', '03211223344'),
('Maria Iqbal', 50, 'Female', '03339887766'),
('Ahmed Ali', 40, 'Male', '03445556667');

-- Doctors
INSERT INTO Doctors (name, specialty, phone) VALUES
('Dr. Farooq', 'Cardiologist', '03111222333'),
('Dr. Nida', 'Neurologist', '03211221122'),
('Dr. Tariq', 'Dermatologist', '03334445555');

-- Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, diagnosis) VALUES
(1, 1, '2024-05-10', 'High blood pressure'),
(2, 1, '2024-05-12', 'Chest pain'),
(3, 2, '2024-06-01', 'Migraine'),
(4, 3, '2024-06-10', 'Skin allergy'),
(5, 2, '2024-06-15', 'Seizure'),
(1, 3, '2024-06-20', 'Rash on skin');

-- Prescriptions
INSERT INTO Prescriptions (appointment_id, medicine, dosage) VALUES
(1, 'Losartan', '50mg once daily'),
(2, 'Aspirin', '75mg daily'),
(3, 'Sumatriptan', '50mg when needed'),
(4, 'Cetirizine', '10mg at night'),
(5, 'Levetiracetam', '500mg twice daily'),
(6, 'Hydrocortisone Cream', 'Apply twice a day');

-- Billings
INSERT INTO Billings (patient_id, amount, billing_date, payment_status) VALUES
(1, 2000.00, '2024-05-11', 'Paid'),
(2, 2500.00, '2024-05-13', 'Unpaid'),
(3, 3000.00, '2024-06-02', 'Paid'),
(4, 1800.00, '2024-06-11', 'Pending'),
(5, 3200.00, '2024-06-16', 'Paid');
