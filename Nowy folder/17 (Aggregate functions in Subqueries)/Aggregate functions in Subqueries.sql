SELECT COUNT(*)
FROM people
WHERE ppoints > (SELECT AVG(ppoints) FROM people);

SELECT pfirstname, ppoints
FROM people
WHERE ppoints > (SELECT AVG(ppoints) FROM people);

SELECT pfirstname, 
    (SELECT COUNT(*) 
    FROM lists 
    WHERE lists.pid = people.pid)
    AS "lists amount"
FROM people
ORDER BY "lists amount" DESC;


SELECT pfirstname, 
    (SELECT COUNT(*) 
    FROM lists 
    WHERE lists.pid = people.pid) AS amount
FROM people
WHERE (SELECT COUNT(*) 
    FROM lists 
    WHERE lists.pid = people.pid) >= 2
ORDER BY amount DESC;


SELECT pfirstname,
    (SELECT COUNT(*)
    FROM listitems
    WHERE listitems.lid = lists.lid) AS amount
FROM people
JOIN lists USING(pid)
WHERE (SELECT COUNT(*)
    FROM listitems
    WHERE listitems.lid = lists.lid) >=2
ORDER BY amount DESC;