use hospital;

#1
#select * from nurse where Registered = false;
#2
#select * from nurse where position = "Head Nurse";
#3
#select * from Physician where position like "%Head%";
#4
/* 
#Disctint zaweza to niepowtarzalnych rekordow
select COUNT(distinct p.SSN) as "number of patients" 
from appointment as a
inner join patient as p
on p.SSN=a.Patient;

#5
/*
select block.BlockCode, block.Blockfloor, r.Roomnumber 
from Room as r
left join Block
on r.blockfloor=block.Blockfloor and r.blockcode = block.blockcode
where r.Roomnumber =212;
*/
#6
#select Count(*) from room where Unavailable = 0;
#7
#select Count(*) from room where Unavailable = 1;
#8
/*
select p.name, d.Name 
from physician as p
left join affiliated_with as a
on p.EmployeeID = a.Physician
left join department as d
on d.DepartmentID = a.Department;
*/
#9
/*
select pr.Name, p.name 
from procedures as pr
left join trained_in as tr
on tr.treatment = pr.code
left join physician as p
on p.employeeID = tr.Physician;
*/

#10
/*
select p.name, a.PrimaryAffiliation 
from physician as p
left join affiliated_with as a
on p.EmployeeID = a.Physician
where PrimaryAffiliation = 0;
*/

#11
/*
select p.name, tr.Treatment
from physician as p
left join trained_in as tr
on p.EmployeeID = tr.Physician
where Treatment is NULL;
*/

#12
/*
select distinct p.name, a.ExaminationRoom
from Patient as p
left join Appointment as a
on p.SSN = a.Patient
where a.ExaminationRoom ="C";
*/

#13
/*
select distinct n.name,a.AppointmentID, a.ExaminationRoom
from Nurse as n
left join Appointment as a
on n.EmployeeID = a.PrepNurse;
*/

#14
/*
select p.name, ph.name, n.name, a.ExaminationRoom, a.start
from patient as p
left join appointment as a
on a.patient = p.SSN
left join physician as ph
on ph.EmployeeID = a.Physician
left join nurse as n
on n.EmployeeID = a.PrepNurse
where a.start = "2008-04-25 10:00";
*/

#15          Działa i znajduje pacjentow ktorzy nigdy nie mieli zadnej wizyty. 
/*
select distinct p.name as "pacjent", ph.name as "lekarz" , m.name as "lek", pr.Appointment
from patient as p
inner join prescribes as pr
on pr.patient = p.SSN 
left join physician as ph
on ph.EmployeeID = pr.Physician
left join medication as m
on m.Code = pr.Medication
left join appointment as a
on not a.patient = p.ssn
where pr.appointment is null;
*/























