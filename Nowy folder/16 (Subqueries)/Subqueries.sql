-- wishlists database

SELECT cname, rid
FROM customers
JOIN rentals USING(cid);

SELECT rentals.rid, 
    (SELECT customers.cname FROM customers WHERE customers.cid =  rentals.cid)
FROM rentals;

SELECT cname,
    (SELECT COUNT(*) rid FROM rentals WHERE customers.cid = rentals.cid) AS "count rid"
FROM customers;

SELECT pcity, COUNT(*)
FROM people
GROUP BY pcity;

SELECT DISTINCT pcity,
    (SELECT COUNT(*)
    FROM people AS p
    WHERE p.pcity = people.pcity)
FROM people;

SELECT pfirstname, COUNT(*) AS "number of items"
FROM people
JOIN lists USING(pid)
JOIN listitems USING(lid)
GROUP BY pfirstname
ORDER BY "number of items" DESC;

-- movies database

SELECT DISTINCT pstate
FROM people
WHERE pstate LIKE 'O_';

SELECT pfirstname, pstate
FROM people
WHERE pstate IN(SELECT pstate FROM people WHERE pstate LIKE 'O_');

SELECT pfirstname, pstate
FROM people
WHERE pstate LIKE 'O_';