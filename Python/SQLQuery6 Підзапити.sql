--¬ивести номери корпус≥в, €кщо сумарний фонд ф≥нансуванн€ розташованих у них кафедр перевищуЇ 100 000
SELECT DISTINCT Building
FROM Departments
WHERE Building IN (SELECT Building FROM Departments GROUP BY Building HAVING SUM(Financing)>100000)  

--¬ивести назви груп 5-го курсу кафедри УSoftware DevelopmentФ, €к≥ мають понад 10 пар на перший тиждень.
SELECT NameGroup
FROM Groups AS G,Departments AS D
WHERE G.DepartmentId = D.id AND
	  G.Year = '5' AND D.NameDepartment = 'Software Development' AND 
	  (SELECT COUNT(*) FROM Lectures AS L,GroupsLectures AS GL,Groups AS G 
	  WHERE G.id = GL.GroupId AND GL.LectureId = L.id AND 
	  L.Date BETWEEN '2023-06-20' AND '2023-06-26' AND G.Year = '5' 
	  AND D.NameDepartment = 'Software Development') > 3

--¬ивести назви груп, €к≥ мають рейтинг (середн≥й рейтинг ус≥х студент≥в групи) б≥льший, н≥ж рейтинг групи УD221Ф
SELECT G.NameGroup
<<<<<<< HEAD
FROM Groups AS G,GroupsStudents AS GS, Students AS S
WHERE G.id = GS.GroupId AND GS.StudentId = S.id
GROUP BY G.NameGroup
HAVING AVG(S.Rating)< 
(SELECT AVG(Rating) 
FROM Groups AS G,GroupsStudents AS GS,Students AS S
WHERE G.id = GS.GroupId AND GS.StudentId = S.id AND G.NameGroup = 'D221')
=======
FROM Groups AS G, Students, (SELECT NameGroup, AVG (CAST(Rating AS float)) AS Rat
FROM Students AS S,GroupsStudents AS GS,Groups 
WHERE Groups.id = GS.GroupId AND GS.StudentId = S.id
GROUP BY NameGroup
) AS RG
WHERE 
RG.Rat < 
(SELECT AVG(CAST(Rating AS float)) 
FROM Groups AS G,GroupsStudents AS GS,Students AS S
WHERE G.id = GS.GroupId AND GS.StudentId = S.id AND G.NameGroup = 'D221')
GROUP BY G.NameGroup

SELECT AVG ( CAST(LectureId AS float))
FROM GroupsLectures 





>>>>>>> 1afaefa461f75af874ff792106d4a0319f3be566

--¬ивести пр≥звища та ≥мена викладач≥в, ставка €ких вища за середню ставку професор≥в.
SELECT NameTeacher+' '+SurnameTeacher AS 'Full Name'
FROM Teachers
WHERE Teachers.Salary > (SELECT AVG(Salary) FROM Teachers WHERE Teachers.IsProfessor = 1)

--¬ивести назви груп, €к≥ мають б≥льше одного куратора.
SELECT NameGroup
FROM Groups AS G, GroupsCurators AS GC,Curators AS C
WHERE G.id = GC.GroupId AND GC.CuratorId = C.id 
GROUP BY NameGroup
HAVING COUNT(*)>1

--¬ивести назви груп, €к≥ мають рейтинг (середн≥й рейтинг ус≥х студент≥в групи) менший, 
--н≥ж м≥н≥мальний рейтинг груп 5-го курсу.
SELECT NameGroup
FROM Groups AS G,GroupsStudents AS GS,Students AS S
WHERE G.id = GS.GroupId AND GS.StudentId = S.id
GROUP BY G.NameGroup
HAVING AVG(S.Rating) < (SELECT MIN(Rating) FROM Groups AS G,GroupsStudents AS GS,Students AS S
						WHERE G.id = GS.GroupId AND GS.StudentId = S.id AND G.Year ='5')
 
--¬ивести назви факультет≥в, сумарний фонд ф≥нансуванн€ кафедр €ких б≥льший за 
--сумарний фонд ф≥нансуванн€ кафедр факультету УComputer ScienceФ
SELECT NameFaculty
FROM Departments AS D, Faculties AS F
WHERE D.FacultyId = F.id
GROUP BY F.NameFaculty
HAVING SUM(D.Financing) > (SELECT SUM(D.Financing) FROM Departments AS D, Faculties AS F 
							WHERE D.FacultyId = F.id AND F.NameFaculty ='Computer Science');

--¬ивести назви дисципл≥н та повн≥ ≥мена викладач≥в, €к≥ 
--читають найб≥льшу к≥льк≥сть лекц≥й з них.
SELECT 
    (SELECT NameSubject FROM Subjects WHERE id = SubjectId) AS SubjectName,
    (SELECT NameTeacher+' '+SurnameTeacher FROM Teachers WHERE id = TeacherId) AS FullName
FROM Lectures
WHERE SubjectId IN (
    SELECT SubjectId
    FROM Lectures
    GROUP BY SubjectId
    HAVING COUNT(*) = (
        SELECT MAX(LectureCount)
        FROM (SELECT SubjectId, COUNT(*) AS LectureCount FROM Lectures GROUP BY SubjectId) AS MaxLectureCounts));

--¬ивести назву дисципл≥ни, за €кою читаЇтьс€ найменше лекц≥й.
SELECT NameSubject
FROM Subjects
GROUP BY NameSubject
HAVING COUNT(*) = (SELECT MIN (LectureCount) FROM (
		SELECT Lectures.SubjectId, COUNT(*) AS LectureCount
        FROM Lectures
        GROUP BY SubjectId) AS MinLectureCounts);

--¬ивести к≥льк≥сть студент≥в та дисципл≥н, що читаютьс€ 
--на кафедр≥ УSoftware DevelopmentФ
SELECT NameDepartment,NameSubject, COUNT(Subjects.id) AS countSubject,
	   COUNT(Students.id) AS CountStudents
FROM Subjects,Lectures,GroupsLectures AS GL,Groups,Departments,GroupsStudents AS GS,Students
WHERE Subjects.id = Lectures.SubjectId AND Lectures.id = GL.LectureId AND GL.GroupId = Groups.id
AND Groups.DepartmentId = Departments.id AND Groups.id = GS.GroupId AND GS.StudentId = Students.id
AND Departments.NameDepartment = 'Software Development'
<<<<<<< HEAD
GROUP BY NameSubject,Departments.NameDepartment
=======

SELECT COUNT(Students.id) AS COUNTSudent
FROM Students,GroupsStudents AS GS, Groups,Departments
WHERE Students.id = GS.StudentId AND GS.GroupId = Groups.id AND Groups.DepartmentId = Departments.id AND Departments.NameDepartment = 'Software Development'

SELECT  NameSubject --COUNT(Subjects.id) AS COUNTSubject
FROM Subjects,Lectures,GroupsLectures AS GL,Groups,Departments
WHERE Subjects.id = Lectures.SubjectId AND Lectures.id = GL.LectureId AND GL.GroupId = Groups.id
AND Groups.DepartmentId = Departments.id 
AND Departments.NameDepartment = 'Software Development'
 
>>>>>>> 1afaefa461f75af874ff792106d4a0319f3be566
