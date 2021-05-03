# Pewlett-Hackard-Analysis
Module 7: Employee Database with SQL

## Overview of Project
### Purpose
In this analysis, we will be creating an employee database through SQL for the company Pewlett Hackerd. The employee analysis will help us determine the employees who will be retiring by title and identify employees who are eligible to participate in a mentorship program. A high increase of retirement numbers can cause a company to find itself in a position where they do not have enough manpower to operate. That is way, it’s imperative that we determine the number of positions that will be vacant and make proper arrangements to train the new hires. 
In order to continue being a prosper company, the employees that are soon to be retired, need to mentor those who will be filling their role, prior to their retirement date. 

## Results
Initially, we will create a table to harvest the date from the *employees.csv*, which contains employees’ unique number, birthday, first name, last name, gender and hire date. Next, we will create a table with the employee’s title information. The data will be retrieved from the *titles.csv* file, which contains the employees’ number, their title, their start date and the to date information. These two data sets will help us determine the exact number of staff that will be retiring, given their birthdays and start dates. It will also give us a list of titles that will be vacant once these people leave their positions. The information that will be found, will help determine how many employees will be able to mentor those newcomers and when Pewlett, should initiate the process of hiring new staff. 

### Deliverable 1 
Here we will determine the number of employees retiring, their titles and the open positions. Once these tables have been created, we will go ahead and merge both tables on this primary key, employee number and confine the data to employees whose birthday is between January 1st 1952 to December 31th 1955. The *retirement_titles* table gives us the information of the employees that will be retiring. The total output is 133,777 but this information has duplicates, therefore we will create a second table, by using the ‘DISTINCT’ function to make sure that there are only unique titles being listed. The *unique_titles* table to help us determine the actual amount of future vacant positions. 

•	The *unique_titles* table gives us a list of titles that will need to be filled. The final number is 90,399 employees will be retiring and the vacant positions are shown in the table.

![unique_titles_table](https://github.com/cynmmarin/Pewlett-Hackard-Analysis/blob/f659c1d80ba449f02a66042abec8ff25aaa15a9c/Images/unique_titles_table.png)

•	When we retrieve the number of employees by their most recent job title who are about to retire, we can get a count of the soon to be vacant positions by titles. We can see the Senior Engineer and Senior Staff are the two position that will need the newest hires. 


![retiring_titles_table](https://github.com/cynmmarin/Pewlett-Hackard-Analysis/blob/f659c1d80ba449f02a66042abec8ff25aaa15a9c/Images/retiring_titles_table.png)

### Deliverable 2
Now, let’s find out the mentorship eligibility. To do so, we need to create a new table that contains the department information. Therefore, we will retrieve the data from the *dept_emp.csv* file and create a table that contains the employee number, their department, the start date and the to date information.  Once this table is created, we want to go ahead and create a *mentorship_eligibility* table, by merging the employee table, the department table and the titles table. In order to do this, we need to start by using the ‘Distinct’ function to make sure we don’t end up with duplicates again. Next, we want to create an inner join between the department table and the employee table, then another inner join between the employee table and the titles table. For which we filter to the most up to date employee position and filter the birthdays between January 1st 1965 and December 31th 1965, and order by employee number. Once this table is created, we have the following findings:

•	We see that only 1,548 of the 90,399 employees that will be retiring are eligible for the mentorship program. 
•	We need to do more research to determine if each position has employees that will be able to cover the mentorship program.

![mentorship_eligibility_table](https://github.com/cynmmarin/Pewlett-Hackard-Analysis/blob/f659c1d80ba449f02a66042abec8ff25aaa15a9c/Images/mentorship_eligibility_table.png)

Summary
In order to determine the How many roles will need to be filled as the "silver tsunami" begins to make an impact, we need to add up the count for the retiring titles the total amount of roles that will need to be filled is 90,398, this number is found by. Lastly, to determine if there are enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees we need to 

![Summary code 1](https://github.com/cynmmarin/Pewlett-Hackard-Analysis/blob/f659c1d80ba449f02a66042abec8ff25aaa15a9c/Images/Summary%20Code%201.png)
![Summary code 2](https://github.com/cynmmarin/Pewlett-Hackard-Analysis/blob/f659c1d80ba449f02a66042abec8ff25aaa15a9c/Images/Summary%20Code%202.png)

We must determine if there are enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. To do so, we need to count the number of titles, which shows us that there are sufficient employees for mentorship eligibility available. 

![Summary code 3](https://github.com/cynmmarin/Pewlett-Hackard-Analysis/blob/f659c1d80ba449f02a66042abec8ff25aaa15a9c/Images/Summary%20code%203.png)
![Summary code 4](https://github.com/cynmmarin/Pewlett-Hackard-Analysis/blob/f659c1d80ba449f02a66042abec8ff25aaa15a9c/Images/Summary%20code%204.png)

