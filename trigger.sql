CREATE TRIGGER TR_UpdateStudent ON dbo.Students
FOR UPDATE
AS
INSERT INTO StudentAudits(StudentId,Fullname,Point,GroupId,ModifiedAt)
SELECT Id,Fullname,Point,GroupId,GETDATE() FROM deleted

SELECT * FROM Students
UPDATE Students SET GroupId=2 WHERE ID=1

SELECT * FROM StudentAudits



CREATE TRIGGER TR_DeleteStudent ON dbo.Students
AFTER DELETE
AS
INSERT INTO DeletedStudents(StudentId,Fullname,Point,GroupNo,DeletedAt)
SELECT D.Id,D.Fullname,D.Point,G.No,GETDATE() FROM deleted AS D 
JOIN Groups AS G ON G.Id=D.GroupId

SELECT * FROM Students
DELETE FROM Students WHERE Point<65

SELECT * FROM DeletedStudents