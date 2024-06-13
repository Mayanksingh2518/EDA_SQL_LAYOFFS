-- Exploratary Data Analysis(EDA)



use prince;
select * from layoffs_staging;

select * from layoffs_staging
where country = 'India';

select max(total_laid_off) , company
from layoffs_staging
where country = 'India'
group by company;

SELECT company, MAX(total_laid_off) AS max_total_laid_off
FROM layoffs_staging
WHERE country = 'India'
GROUP BY company;

select min(
SELECT TOP 2 company, total_laid_off
FROM layoffs_staging
WHERE country = 'India'
ORDER BY total_laid_off DESC;)
from layoffs_staging;

SELECT TOP 1 company, total_laid_off
FROM (
    SELECT TOP 2 company, total_laid_off
    FROM layoffs_staging
    WHERE country = 'India'
    ORDER BY total_laid_off DESC
) AS top2
ORDER BY total_laid_off ASC;

SELECT TOP 1 company, total_laid_off
FROM layoffs_staging
WHERE country = 'India'
ORDER BY total_laid_off DESC;


select * from layoffs_staging;

select * from layoffs_staging
where country = 'India'
order by funds_raised_millions desc;

select * from layoffs_staging
order by funds_raised_millions desc;


select distinct(company), funds_raised_millions, country
from layoffs_staging
where location = 'SF Bay Area'
order by funds_raised_millions desc;

select * from layoffs_staging
where company = 'Apollo';

select company, sum(total_laid_off) as st
from layoffs_staging
group by company
order by st desc;


select * from layoffs_staging;

sp_rename 'dbo.layoffs_staging.Date1', 'Date', 'COLUMN';

select min(Date), max(Date)
from layoffs_staging;

select industry, sum(total_laid_off) as it
from layoffs_staging
group by industry
order by it desc;


select top 1 industry 
from layoffs_staging
where max(total_laid_off);

SELECT TOP 1 industry 
FROM layoffs_staging
ORDER BY total_laid_off DESC;

select country, sum(total_laid_off) as CT
from layoffs_staging
group by country 
order by CT desc;

select year(date) , sum(total_laid_off) as DT
from layoffs_staging
group by year(date) 
order by DT desc;






