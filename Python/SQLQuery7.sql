--¬ивести назви аудитор≥й, де читаЇ лекц≥њ викладач УEdward 
--HopperФ.
SELECT LR.Name AS 'УEdward HopperФ teaching in a group'
FROM LectureRooms AS LR,Schedules AS S,Lectures AS L,Teachers AS T
WHERE LR.id = S.LectureRoomId AND S.id = l.TeacherId AND T.id = 
(SELECT id FROM Teachers AS T WHERE T.Name = 'Edward' AND T.Surname = 'Hopper')
GROUP BY LR.Name

--¬ивести пр≥звища асистент≥в, €к≥ читають лекц≥њ у груп≥ 
--УF505Ф
SELECT T.Surname AS 'Surname ticher in group F505'
FROM  Assistants AS A ,GroupsLectures AS GL,Lectures AS L, Teachers AS T ,Groups AS G 
WHERE T.id = A.TeacherId AND G.id = GL.GroupId AND L.id = GL.LectureId AND L.TeacherId = T.id AND
G.Name = 'F505'

--¬ивести дисципл≥ни, €к≥ читаЇ викладач УAlex CarmackФ 
--дл€ груп 5 курсу
SELECT S.Name
FROM Subjects AS S,Teachers AS T,Lectures AS L, GroupsLectures AS GL,Groups AS G
WHERE T.id = L.TeacherId AND L.SubjectId = S.id AND L.id = GL.LectureId AND GL.GroupId = G.id
AND G.Year = '5' AND T.id = 
(SELECT id FROM Teachers AS T WHERE T.Name ='Alex' AND T.Surname = 'Carmack')

--¬ивести пр≥звища викладач≥в, €к≥ не читають лекц≥њ у понед≥лок
SELECT T.Surname,S.DayOfWeek
FROM Teachers AS T LEFT JOIN Lectures AS L ON T.id = L.TeacherId 
LEFT JOIN Schedules AS S ON S.LectureId = L.id AND S.DayOfWeek = 1 
WHERE S.DayOfWeek IS NULL
GROUP BY S.DayOfWeek,T.Surname--–аботает если убрать условие WHERE проверил,
--ƒл€ большей уникальности данных нужно больше данных внести

--¬ивести назви аудитор≥й, ≥з зазначенн€м њх корпус≥в, у €ких 
--немаЇ лекц≥й у середу другого тижн€ на трет≥й пар≥.
SELECT LR.Name,LR.Building
FROM LectureRooms AS LR JOIN Schedules AS S ON LR.id = S.LectureRoomId
WHERE LR.id NOT IN (SELECT S.LectureRoomId FROM Schedules AS S 
WHERE S.DayOfWeek = 2 AND S.Week = 2 AND S.Class = 3)

--¬ивести повн≥ ≥мена викладач≥в факультету УComputer ScienceФ, 
--€к≥ не курують групи кафедри УSoftware DevelopmentФ.
SELECT T.Name + ' ' + T.Surname AS 'Full name'
FROM Teachers AS T JOIN Curators AS C ON T.id = C.TeacherId
JOIN GroupsCurators AS GC ON C.id = GC.CuratorId
JOIN Groups AS G ON GC.GroupId = G.id
JOIN Departments AS D ON G.DepartmentId = D.id
LEFT JOIN Faculties AS F ON D.FacultyId = F.id
WHERE F.Name = 'Computer Science' AND D.Name != 'Software Development';

--¬ивести список номер≥в ус≥х корпус≥в, €к≥ Ї у таблиц€х 
--факультет≥в, кафедр та аудитор≥й
SELECT LR.Building AS 'Lecture room', D.Building AS Department,F.Building AS Faculty
FROM LectureRooms AS LR JOIN Schedules AS S ON LR.id = S.LectureRoomId
JOIN Lectures AS L ON L.id = S.LectureId
JOIN GroupsLectures AS GL ON GL.LectureId = L.id
JOIN Groups AS G ON G.id = GL.GroupId
JOIN Departments AS D ON D.id = G.DepartmentId
JOIN Faculties AS F ON F.id = D.FacultyId

--¬ивести повн≥ ≥мена викладач≥в у такому пор€дку: декани факультет≥в, зав≥дувач≥ кафедр,
--викладач≥, куратори, асистенти
SELECT CONCAT(T.Name, ' ', T.Surname) AS 'Full name'
FROM Teachers AS T JOIN Deans ON T.id = Deans.TeacherId
UNION
SELECT CONCAT(T.Name, ' ', T.Surname) AS 'Full name'
FROM Teachers AS T JOIN Heads ON T.id = Heads.TeacherId
UNION
SELECT CONCAT(T.Name, ' ', T.Surname) AS 'Full name'
FROM Teachers AS T 
WHERE T.id NOT IN (SELECT T.id
FROM Teachers AS T JOIN Heads AS H ON T.id = H.TeacherId
JOIN Deans AS D ON T.id = D.TeacherId
JOIN Curators AS C ON T.id = C.TeacherId
JOIN Assistants AS A ON T.id = A.TeacherId 
WHERE T.id != A.TeacherId OR T.id != C.TeacherId OR T.id != D.TeacherId OR T.id != H.TeacherId)
UNION
SELECT CONCAT(T.Name, ' ', T.Surname) AS 'Full name'
FROM Teachers AS T JOIN Curators ON T.id = Curators.TeacherId
UNION
SELECT CONCAT(T.Name, ' ', T.Surname) AS 'Full name'
FROM Teachers AS T JOIN Assistants ON T.id = Assistants.TeacherId

--¬ивести дн≥ тижн€ (без повторень), в €к≥ Ї зан€тт€ в аудитор≥€х ЂA311ї та ЂA104ї корпусу.
SELECT S.DayOfWeek, LR.Name
FROM Schedules AS S JOIN LectureRooms AS LR ON S.LectureRoomId = LR.id
WHERE LR.id IN (SELECT id FROM LectureRooms AS LR WHERE LR.Name = 'A311' OR LR.Name = 'A104')