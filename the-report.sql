SELECT
    CASE
        WHEN g.Grade <= 7 THEN NULL
        ELSE s.Name
    END,
    g.Grade,
    s.Marks
FROM Students AS s
INNER JOIN Grades AS g
ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, s.Name ASC;