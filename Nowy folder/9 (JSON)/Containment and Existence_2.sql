-- SELECT pfirstname, pfavorites -> 'Desserts' -> 3 FROM people;

-- SELECT pfirstname, pfavorites -> 'Desserts' @> CAST('["cake"]' AS JSONB) FROM people;

-- SELECT pfirstname, pfavorites @> CAST('{"Desserts": ["cake"]}' AS JSONB) FROM people;

-- SELECT pfirstname, pfavorites @> CAST('{"Desserts": ["cake"]}' AS JSONB) FROM people 
--     WHERE pfavorites @> CAST('{"Desserts": ["cake"]}' AS JSONB) IS TRUE;

SELECT pfirstname, pfavorites -> 'Desserts' ? 'ice cream' FROM people;