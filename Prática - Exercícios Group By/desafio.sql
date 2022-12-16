SELECT * FROM courses;
SELECT * FROM schools;
SELECT * FROM educations;

SELECT schools.name AS school, courses.name AS course, COUNT(educations."userId") AS "studentsCount", educations.status FROM educations JOIN schools ON educations."schoolId" = schools.id JOIN courses ON educations."courseId" = courses.id WHERE educations.status = 'ongoing' OR educations.status = 'finished' GROUP BY schools.name, courses.name, educations.status ORDER BY "studentsCount" DESC LIMIT 3;
