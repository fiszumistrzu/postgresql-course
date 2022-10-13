SELECT pfirstname, COUNT(DISTINCT lid) AS "Nubmer of lists", COUNT(liid) AS "Number of list items"
FROM people
LEFT JOIN lists USING(pid)
LEFT JOIN listitems USING(lid)
GROUP BY pfirstname
ORDER BY "Number of list items" DESC;

