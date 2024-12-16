-- Create Department Table
CREATE TABLE Department (
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(100) NOT NULL UNIQUE
);
-- Create Designation Table
CREATE TABLE Designation (
 DesignationID INT PRIMARY KEY,
 DesignationName VARCHAR(100) NOT NULL UNIQUE
);
-- Create Person Table
CREATE TABLE Person (
 PersonID INT PRIMARY KEY IDENTITY(101,1),
 FirstName VARCHAR(100) NOT NULL,
 LastName VARCHAR(100) NOT NULL,
 Salary DECIMAL(8, 2) NOT NULL,
 JoiningDate DATETIME NOT NULL,
 DepartmentID INT NULL,
 DesignationID INT NULL,
 FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
 FOREIGN KEY (DesignationID) REFERENCES Designation(DesignationID)
);

--1. Department, Designation & Person Table’s INSERT, UPDATE & DELETE Procedures.

-

--create table 1
create  procedure pr_Department_insert
@deptID int, @deptname varchar(100)
as
begin
insert into Department values(@deptID,@deptname)
end

--update table1
create or alter procedure pr_Department_insert
@deptID int, @deptname varchar(100)
as
begin
update  Department 
set DepartmentName =@deptname
where DepartmentID= @deptID
end

--delete table 1
create or alter procedure pr_Department_insert
@deptID int
as
begin
delete from  Department 
where DepartmentID= @deptID
end


--create table2
create or alter procedure pr_Designation_insert
@desID int, @desname varchar(100)
as
begin
insert into Designation values(@desID,@desname)
end

--update table2
create or alter procedure pr_Designation_insert
@desID int, @desname varchar(100)
as
begin
update  Designation 
set DesignationName =@desname
where DesignationID= @desID

end

-- delete table2
create or alter procedure pr_Designation_insert
@desID int, @desname varchar(100)
as
begin
delete from  Designation 
where DesignationID= @desID

end

--create table 3
create or alter procedure pr_Person_insert

@perFirstname varchar(100),
 @perLastname varchar(100),
 @perSalary  DECIMAL(8, 2),
 @perJoinDate DATETIME,
 @DeptId int,
 @DesId int
as
begin
insert into Person values(@perFirstname,@perLastname,@perSalary,@perJoinDate,@DeptId,@DesId)
end

--update table 3
create or alter procedure pr_Person_insert
@perId int,
@perFirstname varchar(100),
 @perLastname varchar(100),
 @perSalary  DECIMAL(8, 2),
 @perJoinDate DATETIME,
 @DeptId int,
 @DesId int
as
begin
update Person
set 
	FirstName =@perFirstname,
	LastName=@perLastname,
	Salary =@perSalary,
	JoiningDate=@perJoinDate,
	DepartmentID=@DeptId,
	DesignationID=@DesId

where PersonID= @perId
	

end

--delete table 3
create or alter procedure pr_Person_insert
@perId int,
@perFirstname varchar(100),
 @perLastname varchar(100),
 @perSalary  DECIMAL(8, 2),
 @perJoinDate DATETIME,
 @DeptId int,
 @DesId int
as
begin

delete from  Person 
where PersonID= @perId
	

end


--2. Department, Designation & Person Table’s SELECTBYPRIMARYKEY

--table1
create or alter procedure pr_Department_insert
@deptID int
as
begin
select *  from Department
where DepartmentID = @deptID
end

--table2
create or alter procedure pr_Designation_insert
@desId int
as
begin
select *  from Designation
where DesignationID = @desId
end


--table3

create or alter procedure pr_Person_insert
@perID int
as
begin
select *  from Person
where PersonID = @perID
end



