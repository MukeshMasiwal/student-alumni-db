-- Active: 1769529992126@@127.0.0.1@3306@first
--shows total number of jobs posted
select count(job_id) as total_jobs from jobs;

--most demanded skill among users

alter table jobs add skill_id INT;
ALTER TABLE jobs
ADD CONSTRAINT fk_jobs_skill
FOREIGN KEY (skill_id)
REFERENCES skills(skill_id);

SELECT 
    s.skill_name,
    COUNT(j.job_id) AS demand_count
FROM jobs j
JOIN skills s ON j.skill_id = s.skill_id
GROUP BY s.skill_id, s.skill_name
ORDER BY demand_count DESC;
