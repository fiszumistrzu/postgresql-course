-- JOIN and SUBQUERIE

--

SELECT ename, dept
FROM employees
JOIN department USING(eid)
WHERE dept = 'Sales';

SELECT 
    (SELECT ename 
    FROM employees 
    WHERE department.eid = employees.eid),
dept
FROM department
WHERE department.dept = 'Sales';

--

SELECT cname, mname, rid
FROM customers
JOIN rentals USING(cid)
JOIN movies USING(mid);

SELECT
    (SELECT cname FROM customers WHERE customers.cid = rentals.cid),
    (SELECT mname FROM movies WHERE movies.mid = rentals.mid),
rid
FROM rentals;

--

SELECT ename, dept
FROM employees
LEFT JOIN department USING(eid);

SELECT ename,
    (SELECT dept
    FROM department
    WHERE department.eid = employees.eid)
FROM employees;

--

SELECT dept, ename
FROM department
LEFT JOIN employees USING(eid);

SELECT dept,
    (SELECT ename
    FROM employees
    WHERE employees.eid = department.eid)
FROM department;

--
