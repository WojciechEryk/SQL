use hr;
#1 zadanie
#select employees.first_name, employees.last_name, departments.department_name from employees
#left join departments on departments.department_id = employees.department_id;

#2zadanie
#select employees.first_name, employees.last_name, departments.department_name, locations.city, locations.state_province
#from employees 
#left join departments 
#on departments.department_id = employees.department_id
#left join locations
#on locations.location_id=departments.location_id;

#3zadanie
#select employees.first_name, employees.last_name,employees.salary, jobs.min_salary, jobs.max_salary
#from employees 
#left join jobs 
#on employees.job_id = jobs.job_id;

#4zadanie
#select  employees.first_name, employees.last_name, departments.department_id, departments.department_name
#from employees
#left join departments
#on employees.department_id = departments.department_id
#where employees.department_id=40 or employees.department_id=80;

#5zadanie
#select  e.first_name, e.last_name, d.department_name, l.city, l.state_province
#from employees as e
#left join departments as d
#on e.department_id = d.department_id
#left join locations as l
#on l.location_id = d.location_id
#where e.first_name like "%z%";

#6zadanie
#select d.department_name, e.first_name, e.last_name, e.email, e.phone_number
#from departments as d
#left join employees as e
#on d.department_id = e.department_id;

#7zadanie
#select salary from employees where employee_id=182; # kwota=2500
#select e.first_name, e.last_name, e.salary from employees as e where e.salary < 2500;

#8zadanie
#select e.first_name as "pracownik  name", m.first_name as "szef name"
#from employees as e
#left join employees as m
#on e.manager_id = m.employee_id;

#9zadanie
#select d.department_name, l.city, l.state_province
#from departments as d
#left join locations as l
#on d.location_id = l.location_id;

#10zadanie
#select e.first_name, e.last_name, d.department_id, d.department_name
#from employees as e
#left join departments as d
#on d.department_id = e.department_id;

#13zadanie 
/*
select j.job_title, d.department_name, e.first_name, e.last_name, jh.start_date
from job_history as jh
join jobs as j
USING (job_id)
join departments as d
USING (department_id)
join employees as e
USING (employee_id)
where jh.start_date >= "1993-01-01" 
and jh.start_date <= "1997-08-31";
*/

#14zadanie 
/*
select c.country_name, l.city, d.department_name
from countries as c
join locations as l
Using (country_id)
join departments as d
Using (location_id);
*/

#15 zadanie 
/*
select d.department_name, e.last_name, e.first_name
from departments as d
left join employees as e
on e.manager_id = d.manager_id;
*/

#16 zadanie
select c.country_name, l.city, COUNT(d.department_id) as "Ilość departamentow"
from countries as c
join locations as l
Using (country_id)
join departments as d
Using (location_id)
where department_id
IN(select department_id from employees
GROUP BY department_id HAVING
COUNT(departmant_id)>=2)
GROUP BY country_name, city'




