show databases
use fsds
show tables

Select * from worker

<-----------------------Q1------------------------->

select LEFT(First_name, 3) as Worker_Name from worker

<-----------------------Q2------------------------->

select INSTR(first_name, Binary"a") as Position_of_a from worker where first_name = "Amitabh" 

<-----------------------Q3------------------------->

select First_name, department, salary from worker group by department having max(salary)