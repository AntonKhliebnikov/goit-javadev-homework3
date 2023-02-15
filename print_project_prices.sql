SELECT CONCAT('Project ', project.id) AS name, SUM(worker.salary) * DATEDIFF(MONTH, project.start_date, project.finish_date) AS price FROM project 
JOIN project_worker ON project.id = project_worker.project_id 
JOIN worker ON worker.id = project_worker.worker_id 
GROUP BY project.id 
ORDER BY price DESC;