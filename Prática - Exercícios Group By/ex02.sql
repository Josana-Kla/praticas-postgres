SELECT * FROM educations;

SELECT educations."userId" AS id, COUNT(educations."userId") AS educations FROM educations GROUP BY educations."userId";