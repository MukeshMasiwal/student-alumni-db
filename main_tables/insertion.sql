INSERT into users (name,role, graduation_year) VALUES
('Mukesh','student', 2028),
('Anita','alumni', 2020),
('Ravi','student', 2025),
('Sunita','alumni', 2018),
('Rahul','student', 2026);

INSERT into students (student_id, department,year_of_study) VALUES
(1, 'CSE', 1),
(3, 'ECE', 3),
(5, 'ME', 2);

insert into alumni (alumni_id, company, job_title, years_experience) VALUES
(2, 'TechCorp', 'Software Engineer', 4),
(4, 'InnovateX', 'Data Scientist', 6);

insert into skills (skill_id,skill_name) VALUES
(1,'Python'),
(2,'Data Analysis'),
(3,'Machine Learning'),
(4,'Web Development');

insert into user_skills (skill_id,user_id) VALUES
(1,1),
(4,1),
(2,4),
(3,4),
(1,3);

insert into jobs (job_id, alumni_id, title, description, location, job_type) VALUES
(1,2,'Junior Developer','Entry-level position for software development.','New York','full-time'),
(2,4,'Data Analyst Intern','Internship for data analysis projects.','San Francisco','internship');

insert into applications (application_id, job_id, student_id, application_status) VALUES
(1,1,1,'applied'),
(2,2,3,'under review');

insert into mentorship (mentor_id, mentee_id,start_date) VALUES
(2,1,CURRENT_DATE),
(4,3,CURRENT_DATE);