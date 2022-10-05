--View that will help me to emphasize on the types of employment

Create view Employment_Type AS
Select [Employment Type], COUNT([Employment Type]) AS Employees_Number
from Australia_Jobs
Group by [Employment Type]

-- Updating to avoid confusing outcomes in the dashboard

UPDATE Australia_Jobs
SET [Employment Type] = 'Temporary'
Where [Employment Type] = 'Other' or [Employment Type] = 'Internship';

--Data Cleaning to make it easier to read

UPDATE Australia_Jobs
SET [Seniority Level] = 'Unspecified'
Where [Seniority Level] = 'Not Applicable'

--Creating View that will help with the dashboard.

CREATE VIEW Seniority AS
Select [Seniority Level], COUNT([Seniority Level]) as Seniority
From Australia_Jobs
group by [Seniority Level]

--Deleting not relevant Data for the purpose of the Dashboards
Delete FROM Australia_Jobs Where [Seniority Level] = 'Director';

Select [Job Type], COUNT([Job Type]) --Number 
From Australia_Jobs
group by [Job Type]

--View testing
Select *
From sql_jobs

--Creating views to store data for later visualizations

Create View people_on_data as
Select [Job Type], COUNT([Job Type]) as people_data --Number 
From Australia_Jobs
group by [Job Type]

--More views
CREATE VIEW sql_jobs AS
Select Title, Skills
From Australia_Jobs
Where Skills LIKE '%sql%';


Where Skills LIKE '%sql%' 
--This answers What percentage of people use SQL. 522 Entry Level Jobs .. Total = 782

Where [Seniority Level] = 'Entry level'
--This answers What percentaje of entry level jobs are? 175 Entry level Jobs .. Total = 782





