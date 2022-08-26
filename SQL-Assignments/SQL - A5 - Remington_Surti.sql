show databases
use fsds
show tables

Select * from worker

alter table worker add email varchar(30)
UPDATE worker delete * WHERE first_name is NULL
select * from worker


UPDATE worker SET email = 'Monikagmail.com' WHERE worker_id = 1
UPDATE worker SET email = 'Niharika.Verma@gmail.com' WHERE worker_id = 2
UPDATE worker SET email = 'Vishal.Singhal@gmail.com' WHERE worker_id = 3
UPDATE worker SET email = 'Amitabh@Singh.com' WHERE worker_id = 4
UPDATE worker SET email = 'VivekBhati.com' WHERE worker_id = 5
UPDATE worker SET email = 'VipulDiwan@gmail.com' WHERE worker_id = 6
UPDATE worker SET email = 'SatishKumar@gmail.com' WHERE worker_id = 7
UPDATE worker SET email = 'Geetika.Chauhan@gmail.com' WHERE worker_id = 8

<-----------------------Q1------------------------->

Select * from Worker where FIRST_NAME != "Vipul" and FIRST_NAME != "Satish"

<-----------------------Q2------------------------->

Select * from Worker where FIRST_NAME like "%h" having character_length(FIRST_NAME) = 6

<-----------------------Q3------------------------->

SELECT * FROM worker WHERE email NOT LIKE '%_@_%.__%'