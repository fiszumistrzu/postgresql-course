SELECT employees.ename, department.dept
FROM employees
JOIN department
USING(eid)
WHERE dept = 'Sales';

SELECT employees.ename, department.dept
FROM employees
JOIN department
ON employees.eid = department.eid
WHERE dept = 'Sales';

SELECT employees.ename, department.dept
FROM employees
NATURAL JOIN department
WHERE dept = 'Sales';

SELECT employees.ename, department.dept
FROM employees, department 
WHERE dept = 'Sales' AND employees.eid = department.eid;

SELECT customers.cname, movies.mname, rentals.rid
FROM customers
JOIN rentals USING(cid)
JOIN movies USING(mid)
LIMIT 10;

SELECT employees.ename, department.dept
FROM employees
LEFT JOIN department USING(eid);

SELECT employees.ename, department.dept
FROM employees
LEFT JOIN department USING(eid)
WHERE department.dept iS NULL;

SELECT customers.cname, rentals.rid, movies.mname 
FROM customers 
LEFT JOIN rentals USING(cid)
LEFT JOIN movies USING(mid);
