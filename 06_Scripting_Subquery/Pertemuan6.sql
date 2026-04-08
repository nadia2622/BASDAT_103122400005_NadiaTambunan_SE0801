CREATE TABLE employees (
    employee_id NUMBER(6),
    last_name   VARCHAR2(25),
    job_id      VARCHAR2(10),
    salary      NUMBER(8,2)
);

INSERT ALL
    INTO employees (employee_id, last_name, job_id, salary) VALUES (141, 'Nayer', 'ST_CLERK', 3200)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (142, 'Mikkilineni', 'ST_CLERK', 2700)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (143, 'Olson', 'ST_CLERK', 2600)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (144, 'Bissot', 'ST_CLERK', 3300)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (145, 'Atkinson', 'ST_CLERK', 2800)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (146, 'Mallin', 'ST_CLERK', 3300)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (147, 'Rogers', 'ST_CLERK', 2900)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (148, 'Ladwig', 'ST_CLERK', 3600)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (149, 'Stiles', 'ST_CLERK', 3200)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (150, 'Seo', 'ST_CLERK', 2700)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (151, 'Rajs', 'ST_CLERK', 3500)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (152, 'Davies', 'ST_CLERK', 3100)
SELECT * FROM dual;

select * from employees;


select last_name, job_id, salary, employee_id
from employees
where job_id = 
    (select job_id
    from employees
    where employee_id = 141)
    and salary > 
        (select salary
        from employees
        where employee_id = 147);
        
select * from employees
order by salary asc;

--===================================================

select last_name, job_id, salary, employee_id
from employees
where salary = 
    (select min(salary)
    from employees);

--====================================================

ALTER TABLE employees ADD department_id NUMBER(4);

-- ============================================================
--  UPDATE DEPARTMENT_ID
-- ============================================================

UPDATE employees SET department_id = 0  WHERE employee_id IN (141,142,143,144,145);
UPDATE employees SET department_id = 60  WHERE employee_id IN (146,147,148);
UPDATE employees SET department_id = 80  WHERE employee_id IN (149,150,151,152);

select * from employees;

select department_id, min(salary)
from employees
group by department_id
having min(salary) >
    (select min(salary)
    from employees
    where department_id = 50);

select * from employees
order by salary asc;

--===========================================
-- in operator --
select last_name, salary, department_id
from employees
where salary in
    (select min(salary)
    from employees
    group by department_id);

--===========================================
-- any operator --
select last_name, salary, employee_id 
from employees
where  salary = any (
    select salary
    from employees
    where employee_id in (143, 145)
);

--================================================
-- all operator --
select employee_id, last_name, salary
from employees
where salary < all (
    select salary
    from employees
    where last_name in ('Bissot', 'Atkinson')
    );
    
--=================================================

select employee_id, last_name, job_id, salary
from employees
where (job_id, salary) in (
    select job_id, salary
    from employees
    where employee_id in (141,144)
)
and employee_id not in (141, 144);


create table emp_high_salary as
select employee_id, last_name, salary
from employees
where salary > 3000;

create table eemp_high_salary as
select employee_id, last_name, salary
from employees
where salary > 3300;

select * from emp_high_salary;
select * from eemp_high_salary;

create table employees_backup as
select * from employees
where 1 = 2;

insert into employees_backup
select * from employees;

select * from employees;

--======================================

update employees_backup
set job_id = (
    select job_id
    from employees
    where employee_id = 143
    ),
    salary = (
        select salary
        from employees
        where employee_id = 143
    )
where employee_id = 146;

select * from employees;


DELETE FROM employees_backup       -- 1. Tentukan tabel yang datanya akan dihapus (aman, karena ini tabel backup).
WHERE employee_id IN (             -- 2. Filter: Hapus HANYA JIKA ID pegawai tersebut ada di dalam daftar hasil subquery ini...
    SELECT employee_id             -- 3. (Subquery) Mengambil daftar ID dari tabel utama...
    FROM employees
    WHERE salary < 3000            -- 4. ...khusus untuk pegawai yang gajinya di bawah 3000.
);

select * from employees_backup;

--=============================================
-- correlated delete
SELECT last_name, salary, department_id
FROM employees e_luar
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e_dalam
    WHERE e_dalam.department_id = e_luar.department_id
);


COMMIT;