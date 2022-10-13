SELECT cname FROM customers;

--1st Method
UPDATE customers
SET cname = CONCAT(cname,'SKI')
WHERE customers.cid IN (SELECT rentals.cid
              FROM rentals
              NATURAL FULL JOIN movies
              WHERE movies.mname = 'The Lives of Others');
--
SELECT cname FROM customers;

--2nd Method
UPDATE customers
SET cname = CONCAT(cname,'ogh')
FROM rentals, movies
WHERE customers.cid = rentals.cid
    AND
      rentals.mid = movies.mid
    AND
      movies.mname = 'The Lives of Others';
--
SELECT cname FROM customers;

--3rd Method
UPDATE customers
SET cname = CONCAT(customers.cname,'lLer')
FROM customers AS c
NATURAL JOIN rentals
NATURAL JOIN movies
WHERE customers.cid = c.cid --"self JOIN"
AND
      movies.mname = 'The Lives of Others';
--
SELECT cname FROM customers;
