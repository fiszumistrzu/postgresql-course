SELECT customers.cname, rentals.rid, movies.mname
FROM movies
RIGHT JOIN rentals USING(mid)
RIGHT JOIN customers USING(cid);

SELECT movies.mname, rentals.rid, customers.cname
FROM customers
RIGHT JOIN rentals USING(cid)
RIGHT JOIN movies USING(mid);

SELECT movies.mname, rentals.rid, customers.cid
FROM movies
LEFT JOIN rentals USING(mid)
LEFT JOIN customers USING(cid);

SELECT cname 
FROM customers
UNION
SELECT ename
FROM employees;