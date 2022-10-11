SELECT pfirstname, lname, iname
FROM people 
LEFT JOIN lists USING(pid)
LEFT JOIN listitems USING(lid)
LEFT JOIN items USING(iid);

SELECT pfirstname, lname, iname
FROM people 
LEFT JOIN lists ON (people.pid = lists.pid)
LEFT JOIN listitems ON (lists.lid = listitems.lid)
LEFT JOIN items ON (listitems.iid = items.iid);

SELECT pfirstname, lname, iname
FROM people 
NATURAL LEFT JOIN lists 
NATURAL LEFT JOIN listitems 
NATURAL LEFT JOIN items;