/*
Question: What are the top-paying Machine Learning Engineer jobs?
- Identify the top 10 highest-paying Machine Learning Engineer roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Machine Learning Engineers, offering insights into employment options and location flexibility.
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings 
LEFT JOIN company_dim ON job_postings.company_id = company_dim.company_id
WHERE
        job_title_short = 'Machine Learning Engineer'
    AND salary_year_avg IS NOT NULL
    AND job_country = 'United States'
ORDER BY
    salary_year_avg DESC
LIMIT 10;

