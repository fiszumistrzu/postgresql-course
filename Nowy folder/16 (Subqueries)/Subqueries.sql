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