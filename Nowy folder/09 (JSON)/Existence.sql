SELECT (CAST('{"name": "Bob", "favouriteFood": ["Banana","Candy"]}' AS JSONB) -> 'favouriteFood') ? 'Banana';
