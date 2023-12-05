SELECT
    CONCAT(MAX(salary * months), ' ', COUNT(DISTINCT(employee_id)))
FROM Employee
WHERE salary * months = (
    SELECT
        MAX(salary * months)
    FROM Employee
);