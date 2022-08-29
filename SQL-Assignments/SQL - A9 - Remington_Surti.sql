show databases
use fsds
show tables
 
Select * from worker

<-----------------------Q1------------------------->

delimiter &&
create procedure top_n_records(in var int)
begin
Select * from Worker limit var;
end &&
delimiter ;

call top_n_records(7)


<-----------------------Q2------------------------->

delimiter &&
create procedure nth_max_salary(in var int)
begin
select * from (select row_number() over (order by salary desc) as row_nm, first_name, salary from worker) as num where row_nm = var;
end &&
delimiter ;

call nth_max_salary(7)