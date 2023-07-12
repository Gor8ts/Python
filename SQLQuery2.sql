SELECT COUNT (Places)
FROM Wards
WHERE Places>3
--_____________________________________________
SELECT COUNT(NameWard),Building
FROM Wards,Departments
WHERE Wards.DepartmentId = Departments.id
GROUP BY Building
--_____________________________________________
SELECT COUNT(NameWard),NameDepartment
FROM Wards,Departments
WHERE Wards.DepartmentId = Departments.id
GROUP BY NameDepartment
--_____________________________________________
SELECT D.NameDepartment, SUM(Premium) AS 'Sum Premium' 
FROM Wards,Departments AS D, DoctorsExaminations AS DE,Doctors
WHERE Wards.DepartmentId = D.id AND DE.WardId = Wards.id AND DE.DoctorId = Doctors.id
GROUP BY NameDepartment
--_____________________________________________
SELECT D.NameDepartment, --COUNT ()
FROM Wards,Departments AS D, DoctorsExaminations AS DE,Doctors
WHERE Wards.DepartmentId = D.id AND DE.WardId = Wards.id AND DE.DoctorId = Doctors.id 
GROUP BY D.NameDepartment
HAVING (COUNT (Doctors.id))>5