--Here I am comparing with

--The output of this is going to be the intersection between the tables, what both tables share.
--Inner Join will not return any Null Values.
Select *
From DataScienceSubjects as DSS
Inner JOIN ProgrammingSubjects as PS
ON DSS.SubjectID = PS.SubjectID


--This will display  both tables together with everything they share + everything they don't share. 
Select *
From DataScienceSubjects
Full outer JOIN ProgrammingSubjects
ON DataScienceSubjects.SubjectID = ProgrammingSubjects.SubjectID

--Left join will display everything from DataScienceSubjects + what both tables share. But it will not display something if it's only on the right table.

Select *
From DataScienceSubjects
Left outer JOIN ProgrammingSubjects
ON DataScienceSubjects.SubjectID = ProgrammingSubjects.SubjectID

--Right join will display everything from ProgrammingSubjects + what both tables share. But it will not display something if it's only on the left table.

Select *
From DataScienceSubjects
Left outer JOIN ProgrammingSubjects
ON DataScienceSubjects.SubjectID = ProgrammingSubjects.SubjectID

-- I can change the value of some rows in the column PreRequisites, Specifically in the 2 rows mentioned on the Where statement.
UPDATE DataScienceSubjects
SET PreRequisites = '-'
Where SubjectID IN (24,28)









