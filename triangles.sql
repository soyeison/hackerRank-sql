SELECT 
    CASE 
        WHEN A + B <= C OR A + C <= B OR C + B <= A THEN 'Not A Triangle'
	WHEN A = B AND B = C THEN 'Equilateral'
	WHEN A = B OR B = A OR A = C THEN 'Isosceles'
        WHEN A <> B AND B <> C AND A <> C THEN 'Scalene'
    END AS T
FROM TRIANGLES;