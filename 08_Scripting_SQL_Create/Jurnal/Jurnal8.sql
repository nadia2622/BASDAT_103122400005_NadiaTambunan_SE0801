create table department (
    department_id number(4) primary key,
    department_name varchar2(30) not null,
    manager_id number(6),
    location_id number(4)
);

create table employee (
    employee_id number(6) primary key,
    last_name varchar2(25) not null,
    email varchar2(25),
    salary number(8,2),
    commision_pct number(2,2),
    hire_date date not null,
    department_id number(4),
    constraint fk_emp_dept foreign key (department_id)
    references department(department_id)
);

create table supplier (
    supplier_id number(4) primary key,
    supplier_name varchar2(50) not null,
    contact_phone varchar2(15),
    address varchar2(100)
);

drop table supplier cascade CONSTRAINT;

create table inventory (
    item_id number(6) primary key,
    item_name varchar2(50) not null,
    quantity number(6) default 0,
    department_id number(4),
    supplier_id number(4),
    constraint fk_inv_dept foreign key (department_id)
    references department (department_id),
    constraint fk_inv_supp foreign key (supplier_id)
    references supplier(supplier_id)
);

drop table inventory; -- buat jaga2 deh

analyze table department compute statistics for table;
analyze table employee compute statistics for table;
analyze table supplier compute statistics for table;
analyze table inventory compute statistics for table;

select table_name, num_rows, blocks, empty_blocks
from user_tables
where table_name in ('DEPARTMENT', 'EMPLOYEE', 'SUPPLIER', 'INVENTORY');

insert into department values (1, 'administration', 200, 1700);
insert into department values (2, 'marketing', 201, 1800);
insert into department values (3, 'purchasing', 206, 1700);
insert into department values (4, 'human resources', 203, 2400);
insert into department values (5, 'shipping', 121, 1500);
insert into department values (6, 'IT', 103, 1400);
insert into department values (7, 'public relation', 204, 2700);
insert into department values (8, 'sales', 145, 2500);
insert into department values (9, 'executive', 100, 1700);
insert into department values (10, 'finance', 108, 1700);

insert into supplier values (1, 'PT Anti Rugi Rugi Club', '08123456789', 'Mars');
insert into supplier values (2, 'PT Cari Jodoh Halal', '08234567890', 'Bojong Gede');
insert into supplier values (3, 'PT Nikmat Harta Mertua', '08345678901', 'Narnia');
insert into supplier values (4, 'PT Semesta Mendukung Kita', '08456789012', 'Magelang Core');
insert into supplier values (5, 'PT Pantang Pulang Sebelum Cuan', '08567890123', 'Atlantis');
insert into supplier values (6, 'PT Harapan Hampa Jaya', '08678901234', 'Ngawi');
insert into supplier values (7, 'PT Oksigen Gratis Indonesia', '08789012345', 'Bikini Bottom');
insert into supplier values (8, 'PT Mencari Kitab Suci', '08890123456', 'Puncak Bogor');
insert into supplier values (9, 'PT Sinar Petir Menggelegar', '08901234567', 'Asgard');
insert into supplier values (10, 'PT Damai Itu Indah Tapi Mahal', '08012345678', 'Wakanda');

insert into employee values (100, 'lord_rangga', 'tatanegara@empire.com', 24000, null, date '1990-01-01', 9);
insert into employee values (101, 'mbah_dukun', 'jampi@mantra.com', 17000, null, date '2000-02-02', 9);
insert into employee values (102, 'ibu_hajat', 'rendang@enak.com', 17000, null, date '1995-03-03', 9);
insert into employee values (103, 'kang_service', 'benerin@printer.com', 9000, null, date '2001-04-17', 6);
insert into employee values (104, 'admin_gacor', 'slot@zeus.com', 6000, null, date '2004-06-18', 6);
insert into employee values (105, 'pejuang_cod', 'kurir@paket.com', 14000, 0.40, date '2009-12-12', 8);
insert into employee values (106, 'budak_korporat', 'lelah@lembur.com', 13500, 0.30, date '2010-05-20', 8);
insert into employee values (107, 'satpam_galak', 'melirik@tajam.com', 12000, 0.30, date '2005-08-15', 8);
insert into employee values (108, 'pencari_takjil', 'kolak@manis.com', 11000, 0.30, date '2003-03-16', 8);
insert into employee values (109, 'wong_pusat', 'asli@jakarta.com', 10500, 0.20, date '2006-03-18', 8);

insert into inventory values (1, 'Kabel Semrawut', 5, 6, 1);
insert into inventory values (2, 'Kursi Tanpa Sandaran', 3, 6, 2);
insert into inventory values (3, 'Printer Pake Otot', 5, 6, 3);
insert into inventory values (4, 'Meja Bekas Warteg', 2, 1, 4);
insert into inventory values (5, 'Sajadah Penyejuk Hati', 5, 5, 5);
insert into inventory values (6, 'Proyektor Layar Tancep', 8, 3, 6);
insert into inventory values (7, 'Genset Suara Helikopter', 1, 6, 7);
insert into inventory values (8, 'Scanner Wajah Ngantuk', 9, 8, 8);
insert into inventory values (9, 'Telepon Kaleng (Intercom)', 4, 7, 9);
insert into inventory values (10, 'Router Anti Lemot (Mitos)', 4, 9, 10);

analyze table department compute statistics for table;
analyze table employee compute statistics for table;
analyze table supplier compute statistics for table;
analyze table inventory compute statistics for table;

select table_name, num_rows, blocks, empty_blocks
from user_tables
where table_name in ('DEPARTMENT', 'EMPLOYEE', 'SUPPLIER', 'INVENTORY');

create or replace view empvu80 as
select employee_id as id_number,
last_name as name,
salary,
department_id
from employee
where department_id = 8;

select * from empvu80;

describe empvu80;

create index idx_emp_dept_id
on employee(department_id);

select i.index_name, i.uniqueness, c.column_name, c.table_name
from user_indexes i
join user_ind_columns c on i.index_name = c.index_name
where c.table_name = 'EMPLOYEE';


