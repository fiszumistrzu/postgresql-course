-- SELECT pfirstname, plastname, ppoints 
-- FROM people 
-- WHERE ppoints >= 5000;

-- SELECT pfirstname, plastname, pstate, ppoints 
-- FROM people 
-- WHERE ppoints >= 9500 OR pstate = 'NY';

-- SELECT pfirstname, plastname, pstate, ppoints 
-- FROM people 
-- WHERE ppoints >= 7000 AND pstate = 'NY';

-- SELECT pfirstname, plastname, pstate, ppoints 
-- FROM people 
-- WHERE ppoints >= 7000 AND pstate NOT IN ('NY');

-- SELECT pfirstname, plastname, pdob
-- FROM people
-- WHERE pdob BETWEEN '2004-01-01' AND '2006-12-31 23:59:59';

-- SELECT pfirstname, plastname, pstate, pdob
-- FROM people
-- WHERE pdob BETWEEN '2000-01-01' AND '2010-12-31 23:59:59' AND pstate = 'CA';

-- SELECT pfirstname, plastname, pstate
-- FROM people
-- WHERE pstate IN ('WY', 'KY', 'GA');

-- SELECT pfirstname, plastname, pstate
-- FROM people
-- WHERE pstate NOT IN ('WY', 'KY', 'GA');

-- SELECT pfirstname, plastname, pcity
-- FROM people
-- WHERE pcity LIKE '%b%';

-- SELECT pfirstname, plastname, pfavorites -> 'Desserts' -> 0
-- FROM people
-- WHERE pfavorites -> 'Desserts' ->> 0  ILIKE '%a%';