--This is a table That I've done to practice my DDL and DML skills.


--Table: DataScienceSubjects.     
--About: Curriculum of my Data Science degree

-- Here I'm querying on Cuatrimestre as long as it starts with "Primer" and Workload(CargaHorario) is greater than 90.
Select *
FROM DataScienceSubjects
Where Cuatrimestre LIKE 'Primer%' and CargaHoraria > 90

-- Here is going to show me only the top three rows with all of their colummns
Select TOP 3 *
FROM DataScienceSubjects

--I will see ALL THE ROWS of the Subjects and SubjectID columns.
Select Subjects, SubjectID
From DataScienceSubjects


-- With this query I'm going to see each Cuatrimestre value ONLY ONCE, and then on a separate Column I'll see how many rows I have with those values.

Select distinct(Cuatrimestre),Count(cuatrimestre) as HowManyCuatrimestre
From DataScienceSubjects
Group By Cuatrimestre


--Here the Output is gonna be all of the Cuatrimestre rows(Without repeting), plus the total workload of each Cuatrimestre. 
Select Cuatrimestre, Sum(CargaHoraria) as WorkLoadEachCuatrimestre
From DataScienceSubjects
Group By Cuatrimestre

--Similar to the previous query, but here is going to show me the average workload of each Cuatrimestre.
Select Cuatrimestre, AVG(CargaHoraria) as AVGWorkLoadEachCuatrimestre
From DataScienceSubjects
Group By Cuatrimestre

-- Simple query that's going to Output the amount of subjects throughout the degree.
Select Count(Subjects) as TotalSubjects
From	 DataScienceSubjects

--It shows All the rows of "Cuatrimestre" that start with Cuarto and th ones that have a "-" on PreRequisites
Select *
From DataScienceSubjects
Where Cuatrimestre LIKE 'Cuarto%' or PreRequisites = '-'

--Show the TOP 20 rows and it's going to order them by the third column in a descending way.
Select Top 20*
from DataScienceSubjects
Order by 3 DESC






