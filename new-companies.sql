SELECT 
    c.company_code,
    c.founder,
    COUNT(DISTINCT(lm.lead_manager_code))
FROM Company AS c
JOIN Lead_Manager AS lm
ON lm.company_code = c.company_code
GROUP BY c.company_code;