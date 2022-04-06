create procedure sp_emp_insertSP
(
@name varchar(50),
@dept varchar(20),
@salary decimal,
@exp int
)
as 
begin
insert into emp values(@name,@dept,@salary,@exp)
return
end

select*from emp
exec sp_emp_insertSP
@name='test',
@dept='hr',
@salary=23000,
@exp=2

create procedure sp_emp_selectSP
(
@id int
)
as 
begin
select * from emp where eid=@id
return 
end

exec sp_emp_selectSP
@id=2

alter procedure sp_emp_insertSP
(
@name varchar(100),
@dept varchar(20),
@salary decimal,
@exp int
)
as 
begin
insert into emp values(@name,@dept,@salary,@exp)
return
end

select*from  emp
