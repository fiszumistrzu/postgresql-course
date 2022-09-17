SELECT pfirstname, plastname
FROM people
LIMIT 10;

SELECT people.pfirstname, people.plastname, lists.lname, items.iname
FROM people
JOIN lists USING(pid)
JOIN listitems USING(lid)
JOIN items USING(iid);
