-- Active: 1769529992126@@127.0.0.1@3306@first

--to show the students along with their skills
SELECT *
FROM students s
JOIN user_skills us ON s.student_id = us.user_id
JOIN skills sk ON us.skill_id = sk.skill_id;

--to show alumni along with their posted jobs
SELECT *
FROM users u
JOIN alumni a ON u.user_id = a.alumni_id
JOIN jobs j ON a.alumni_id = j.alumni_id;
