SELECT * FROM Phones AS P
WHERE P.Price < ALL (SELECT Price FROM Notebooks)

SELECT * FROM Phones AS P
WHERE P.Name = ANY (SELECT Name FROM Notebooks)

SELECT Id,Name,Price FROM Notebooks
INTERSECT
SELECT Id,Name,Price FROM Phones

SELECT Id,Name,Price FROM Notebooks
EXCEPT
SELECT Id,Name,Price FROM Phones


