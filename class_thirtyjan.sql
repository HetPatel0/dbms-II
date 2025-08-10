create database class


--
create or alter procedure ageNotNEg(@age int);
as 
begin 
begin try
if @age<0
	raiseerror ('Age is negative',16,1)
  
