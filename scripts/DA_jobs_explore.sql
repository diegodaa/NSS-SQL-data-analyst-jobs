/*
--Q1
select count(*) 
from data_analyst_jobs;
--1793
*/

/*
--Q2
select *
from data_analyst_jobs
limit 10;
--Company on 10th row is ExxonMobil
*/

/*
--Q3
select count(*)
from data_analyst_jobs
where location = 'TN' 
OR location ='KY';
-- 21 in TN, 27 in TN or kentucky
*/

/*
--Q4 
Select * from data_analyst_jobs
where location = 'TN'
AND star_rating >4;
-- 3 jobs in TN have star rating above 4
*/

/*
--Q5
Select count(*) from data_analyst_jobs
Where review_count between 500 AND 1000;
--151 postings
*/

/*
--Q6
Select location as state, avg(star_rating) as avg_rating
from data_analyst_jobs
group by state
order by avg_rating desc;
--50 rows returned. NE has highest avg_rating, 4.20. note that one is null, and some states have null rating
*/

/*
--Q7
select count(distinct title )
from data_analyst_jobs;
--881 distinct job titles
*/

/*
--Q8
select count(distinct title)
from data_analyst_jobs
Where location = 'CA';
--230 distinct titles in Cali
*/

/*
--Q9 DO NOT USE THIS ONE
Select company, round(avg(star_rating),2) as avg_rating, sum(review_count) as total_reviews
from data_analyst_jobs
group by company
Having sum(review_count) > 5000
order by avg_rating desc;
-- list of 71 companies. top ones by avg rating are Google, Disney, Microsoft, Nike, Amex
*/

/*
--Q9 redone after noticing star rating and review count is unique per company, not job posting
Select company, round(avg(star_rating),2), round(avg(review_count),2)
from data_analyst_jobs
where review_count > 5000
group by company
order by avg(star_rating) desc, avg(review_count) desc;
-- list of 41 companies (note that one is null). highest rating 4.2
*/

--Q10
-- already done as part of Q9.  Kaiser Permanente is top, with 4.2 star rating, most review count.  Nike, GM, Amex, Microsoft tied for rating, but lower review count.

/*
--Q11
select count(distinct title)
from data_analyst_jobs
where title ilike '%analyst%';
--774 distinct titles including 'Analyst'
*/

/*
--Q12
select distinct title
from data_analyst_jobs

except

select distinct title 
from data_analyst_jobs
where title ilike '%analyst%' 
OR  title ilike '%analytics%';
-- 4 positions don't include those terms.  All 4 include "tableau"
*/
