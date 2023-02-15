SELECT CONCAT('Project ', id) AS name, DATEDIFF(MONTH, start_date, finish_date) AS month_count FROM project   
WHERE DATEDIFF(MONTH, start_date, finish_date) = SELECT DATEDIFF(MONTH, start_date, finish_date) AS month_count FROM project
ORDER BY month_count DESC          
LIMIT 1;