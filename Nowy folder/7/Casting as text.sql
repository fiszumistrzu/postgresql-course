SELECT pfirstname ||' '|| plastname ||' '|| CAST(ppoints AS TEXT) AS "Customer Points" FROM people
    ORDER BY ppoints DESC;