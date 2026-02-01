-- Active: 1769529992126@@127.0.0.1@3306@first
CREATE table users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    role ENUM('alumni', 'student') NOT NULL,
    graduation_year YEAR,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table students(
    student_id INT PRIMARY KEY,
    department ENUM('CSE', 'ECE', 'ME', 'CE', 'EE') NOT NULL,
    year_of_study INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES users(user_id)
);
create table alumni(
    alumni_id INT PRIMARY KEY AUTO_INCREMENT,
    company VARCHAR(100) NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    years_experience INT NOT NULL,
    FOREIGN KEY (alumni_id) REFERENCES users(user_id)
);

create table skills(
    skill_id INT PRIMARY KEY AUTO_INCREMENT,
    skill_name VARCHAR(100) NOT NULL
    );

create table user_skills(
    skill_id INT,
    user_id INT,
    Foreign Key (skill_id) REFERENCES skills(skill_id),
    Foreign Key (user_id) REFERENCES users(user_id)
);

CREATE Table jobs(
    job_id int PRIMARY KEY,
    alumni_id int,
    Foreign Key (alumni_id) REFERENCES alumni(alumni_id),
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(100) NOT NULL,
    job_type ENUM('full-time', 'part-time', 'internship') NOT NULL,
    posted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE table applications(
    application_id INT PRIMARY KEY,
    job_id INT,
    student_id INT,
    application_status ENUM('applied', 'under review', 'accepted', 'rejected') DEFAULT 'applied',
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE table mentorship(
    mentor_id int PRIMARY KEY,
    Foreign Key (mentor_id) REFERENCES alumni(alumni_id),
    mentee_id int,
    Foreign Key (mentee_id) REFERENCES students(student_id),
    start_date DATE NOT NULL
);

