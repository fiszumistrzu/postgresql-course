SELECT pid 
FROM people 
WHERE pid > (SELECT AVG(pid) FROM people);