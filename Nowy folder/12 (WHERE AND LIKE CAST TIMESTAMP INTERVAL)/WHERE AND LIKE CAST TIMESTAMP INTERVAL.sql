-- SELECT pid, pfirstname, plastname
-- FROM people
-- WHERE pid = 18;

-- SELECT pfirstname, plastname
-- FROM people
-- WHERE pfirstname LIKE '%e%';

-- SELECT pfirstname, plastname, pstate, pdob
-- FROM people
-- WHERE (pfirstname LIKE '%e%' OR plastname LIKE '%e%')
--     AND pstate = 'CA'
--     AND pdob > '1999-12-31';

SELECT pfirstname, plastname, pdob
FROM people
WHERE pdob < CAST('now' AS TIMESTAMP) - CAST('10 years' AS INTERVAL);

-- SELECT CAST('now' AS DATE) AS "DATE";
-- SELECT CAST('now' AS TIMESTAMP) AS "TIMESTAMP";
-- SELECT CAST('now' AS TIME) AS "TIME";
-- SELECT CAST('now' AS TIMESTAMP) - CAST('10 years' AS INTERVAL) AS "now - 10years";

