SELECT DISTINCT Building
FROM Departments
WHERE Building IN (SELECT Building FROM Departments GROUP BY Building HAVING SUM(Financing)>100000)  

SELECT NameGroup
FROM Groups AS G,Departments AS D
WHERE G.DepartmentId = D.id AND
	  G.Year = '5' AND D.NameDepartment = 'Software Development' AND 
	  (SELECT COUNT(*) FROM Lectures AS L,GroupsLectures AS GL,Groups AS G 
	  WHERE G.id = GL.GroupId AND GL.LectureId = L.id AND 
	  L.Date BETWEEN '2023-06-20' AND '2023-06-26' AND G.Year = '5' 
	  AND D.NameDepartment = 'Software Development') > 3

SELECT G.NameGroup
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






SELECT NameTeacher+' '+SurnameTeacher AS 'Full Name'
FROM Teachers
WHERE Teachers.Salary > (SELECT AVG(Salary) FROM Teachers WHERE Teachers.IsProfessor = 1)

SELECT NameGroup
FROM Groups AS G, GroupsCurators AS GC,Curators AS C
WHERE G.id = GC.GroupId AND GC.CuratorId = C.id 
GROUP BY NameGroup
HAVING COUNT(*)>1

SELECT NameGroup
FROM Groups AS G,GroupsStudents AS GS,Students AS S
WHERE G.id = GS.GroupId AND GS.StudentId = S.id AND 
(SELECT AVG(S.Rating) 
FROM Students AS S,GroupsStudents AS GS,Groups AS G 
WHERE G.id = GS.GroupId AND GS.StudentId = S.id) <
(SELECT MIN(Rating) 
FROM Groups AS G,GroupsStudents AS GS,Students AS S
WHERE G.id = GS.GroupId AND GS.StudentId = S.id AND G.Year ='5')
GROUP BY NameGroup

SELECT NameFaculty
FROM Departments AS D, Faculties AS F
WHERE D.FacultyId = F.id AND 
(SELECT SUM(D.Financing)
FROM Departments AS D,Faculties AS F
WHERE D.FacultyId = F.id)>(SELECT SUM(D.Financing)
FROM Departments AS D, Faculties AS F WHERE D.FacultyId = F.id AND F.NameFaculty ='Computer Science')

SELECT NameSubject,NameTeacher+' '+SurnameTeacher AS 'Full name teacher'
FROM Subjects AS S,Teachers AS T,Lectures AS L
WHERE S.id = L.SubjectId AND T.id = L.TeacherId AND T.id IN (SELECT T.id 
FROM Subjects AS S,Teachers AS T,Lectures AS L
WHERE S.id = L.SubjectId AND T.id = L.TeacherId
GROUP BY T.id,S.id,L.id
HAVING S.id = L.id)

SELECT NameSubject
FROM Subjects
GROUP BY NameSubject
HAVING COUNT(*) = (SELECT MIN (SubjectCount) FROM (
		SELECT COUNT(*) AS SubjectCount
        FROM Subjects
        GROUP BY NameSubject) AS SubjectCounts)

SELECT COUNT(Students.id) AS COUNTSudent, COUNT(Subjects.id) AS COUNTSubject
FROM Subjects,Lectures,GroupsLectures AS GL,Groups,Departments,GroupsStudents AS GS,Students
WHERE Subjects.id = Lectures.SubjectId AND Lectures.id = GL.LectureId AND GL.GroupId = Groups.id
AND Groups.DepartmentId = Departments.id AND Groups.id = GS.GroupId AND GS.StudentId = Students.id
AND Departments.NameDepartment = 'Software Development'

SELECT COUNT(Students.id) AS COUNTSudent
FROM Students,GroupsStudents AS GS, Groups,Departments
WHERE Students.id = GS.StudentId AND GS.GroupId = Groups.id AND Groups.DepartmentId = Departments.id AND Departments.NameDepartment = 'Software Development'

SELECT  NameSubject --COUNT(Subjects.id) AS COUNTSubject
FROM Subjects,Lectures,GroupsLectures AS GL,Groups,Departments
WHERE Subjects.id = Lectures.SubjectId AND Lectures.id = GL.LectureId AND GL.GroupId = Groups.id
AND Groups.DepartmentId = Departments.id 
AND Departments.NameDepartment = 'Software Development'
 