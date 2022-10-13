SELECT CAST('{"name": "Bob", "favouriteFoods":["Banana","Candy"]}' AS JSONB) @>
    CAST('{"name": "Bob"}' AS JSONB);
----
SELECT CAST('{"name": "Bob", "favouriteFoods":["Banana", "Candy"]}' AS JSONB) @>
    CAST('{"favouriteFoods": "Apple"}' AS JSONB);