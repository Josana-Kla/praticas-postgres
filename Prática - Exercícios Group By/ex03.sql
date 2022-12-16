SELECT * FROM testimonials;
SELECT * FROM users;

SELECT users.name AS writer, COUNT(testimonials."writerId") AS "testimonialCount" FROM testimonials JOIN users ON testimonials."writerId" = users.id GROUP BY users.name;