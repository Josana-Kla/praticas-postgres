SELECT * FROM jobs;
SELECT * FROM roles;

SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role FROM jobs JOIN roles ON jobs."roleId" = roles.id GROUP BY roles.name ORDER BY "maximumSalary";