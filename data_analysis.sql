select e.emp_no, e.last_name, e.first_name ,e.sex, s.salary 
from employees e 
inner join salaries s on e.emp_no = s.emp_no ;


select e.first_name ,e.last_name , e.hire_date 
from employees e 
where extract (year from e.hire_date) = 1986;


select dm.dept_no,d.dept_name, dm.emp_no, e.last_name, e.first_name 
from dept_manager dm 
join departaments d on dm.dept_no = d.dept_no
join employees e on dm.emp_no = e.emp_no ;


select e.emp_no, de.dept_no, e.last_name , e.first_name , d.dept_name 
from employees e
join dept_emp de on e.emp_no = de.emp_no 
join departaments d on de.dept_no = d.dept_no;


select e.first_name , e.last_name , e.sex 
from employees e 
where e.first_name = 'Hercules' and e.last_name like 'B%';

 
select e.emp_no, d.dept_name , e.last_name , e.first_name
from employees e 
join dept_emp de on e.emp_no = de.emp_no
join departaments d on de.dept_no = d.dept_no
where d.dept_no = 'd007';


select e.emp_no, d.dept_name , e.last_name , e.first_name
from employees e 
join dept_emp de on e.emp_no = de.emp_no
join departaments d on de.dept_no = d.dept_no
where d.dept_no = 'd007' or d.dept_no ='d005';


select e.last_name , count(e.last_name)
from employees e 
group by e.last_name
order by count desc;