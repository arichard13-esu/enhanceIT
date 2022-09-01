SELECT
    distinct p.name
,   c.name
FROM professor AS p
inner join schedule as s
on p.id = s.professor_id
INNER JOIN course AS c
ON s.course_id = c.id

order by
    p.name
,   c.name