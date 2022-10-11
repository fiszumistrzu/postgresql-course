SELECT cname, rid
FROM customers
JOIN rentals USING(cid);

SELECT rentals.rid, 
    (SELECT customers.cname FROM customers WHERE customers.cid =  rentals.cid)
FROM rentals;

SELECT cname,
    (SELECT COUNT(*) rid FROM rentals WHERE customers.cid = rentals.cid) AS "count rid"
FROM customers;