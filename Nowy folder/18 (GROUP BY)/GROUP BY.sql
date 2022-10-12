SELECT cname AS "Name", COUNT(rid) AS "Total rents"
FROM customers
LEFT JOIN rentals USING(cid)
WHERE cname LIKE '%e%'
GROUP BY "Name"
ORDER BY COUNT(rid) DESC;

