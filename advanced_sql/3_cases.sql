CREATE TABLE january_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date)=1;

CREATE TABLE february_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;


CREATE TABLE march_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;  

SELECT job_posted_date
FROM march_jobs;

-- CASE Expression Example

SELECT 
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location='Anywhere' THEN 'Remote'
        WHEN job_location='New York, NY' THEN 'Local'
        ELSE 'Onsite'   
    END AS location_category
FROM job_postings_fact
WHERE 
    job_title_short='Data Analyst'
GROUP BY
    location_category;



