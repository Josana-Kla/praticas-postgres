SELECT * FROM educations;
SELECT * FROM users;
SELECT * FROM courses;
SELECT * FROM schools;

SELECT users.id, users.name, courses.name AS "course", schools.name AS "school", educations."endDate" FROM educations JOIN users ON educations."userId" = users.id JOIN courses ON educations."courseId" = courses.id JOIN schools ON educations."schoolId" = schools.id WHERE educations."userId" = 30 AND educations.status = 'finished';