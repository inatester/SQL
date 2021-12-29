--1) Создать таблицу employees
 create table employees (
 	id serial primary key,
 	employee_name varchar (50) unique not null
);
select * from employees;

--2)Наполнить таблицу строками
insert into employees (id, employee_name) values 
(default, 'Jeff_Bezos'),
(default, 'Elon_Musk'),
(default, 'Bernard_Arnault'),
(default, 'Bill_Gates'),
(default, 'Mark_Zuckerberg'),
(default, 'Warren_Buffett'),
(default, 'Larry_Ellison'),
(default, 'Larry_Page'),
(default, 'Sergey_Brin'),
(default, 'Mukesh_Ambani'),
(default, 'Amancio_Ortega'),
(default, 'Francoise_Bettencourt'),
(default, 'Zhong_Shanshan'),
(default, 'Steve_Ballmer'),
(default, 'Carlos_Slim '),
(default, 'Alice_Walton'),
(default, 'Jim_Walton'),
(default, 'Rob_Walton'),
(default, 'Michael_Bloomberg'),
(default, 'Colin_Zheng_Huang'),
(default, 'MacKenzie_Scott'),
(default, 'Daniel_Gilbert'),
(default, 'Gautam_Adani'),
(default, 'Phil_Knight'),
(default, 'Jack_Ma'),
(default, 'Charles_Koch'),
(default, 'Julia_Koch'),
(default, 'Masayoshi_Son'),
(default, 'Michael_Dell'),
(default, 'Tadashi_Yanai'),
(default, 'Fran?ois_Pinault'),
(default, 'David_Thomson'),
(default, 'Beate_Heister'),
(default, 'Wang_Wei'),
(default, 'Miriam_Adelson'),
(default, 'He_Xiangjian'),
(default, 'Dieter_Schwarz'),
(default, 'Zhang_Yiming'),
(default, 'Giovanni_Ferrero'),
(default, 'Alain_Wertheimer'),
(default, 'Gerard_Wertheimer'),
(default, 'Li_Kashing'),
(default, 'Qin_Yinglin'),
(default, 'William_Lei'),
(default, 'Len_Blavatnik'),
(default, 'Lee_ShauKee'),
(default, 'Jacqueline_Mars'),
(default, 'John_Mars'),
(default, 'Yang_Huiyan'),
(default, 'Alexey_Mordashov'),
(default, 'Robin_Zeng'),
(default, 'Hui_KaYan'),
(default, 'Susanne_Klatten'),
(default, 'Vladimir_Potanin'),
(default, 'Dietrich_Mateschitz'),
(default, 'Pang_Kang'),
(default, 'Michael_Kuehne'),
(default, 'Vladimir_Lisin'),
(default, 'Wang_Xing'),
(default, 'German_Larreamota'),
(default, 'Leonardo_Delvecchio'),
(default, 'Takemitsu_Takizaki'),
(default, 'Leonard_Lauder'),
(default, 'Thomas_Peterffy'),
(default, 'Vagit_Alekperov'),
(default, 'Leonid_Mikhelson'),
(default, 'Jim_Simons'),
(default, 'Jiang_Rensheng '),
(default, 'Gina_Rinehart'),
(default, 'Rupert_Murdoch');

--3)Создать таблицу salary
create table salary (
	id serial primary key,
	monthly_salary int not null
	);
select * from salary;

--4)Наполнить таблицу salary 15 строками
 insert into salary (id, monthly_salary) values 
 	    (default, 1000),
        (default,1100),
        (default,1200),
        (default,1300),
        (default,1400),
        (default,1500),
        (default,1600),
        (default,1700),
        (default,1800),
        (default,1900),
        (default,2000),
        (default,2100),
        (default,2200),
        (default,2300),
        (default,2400),
        (default,2500);
       

--5)Создать таблицу employee_salary
create table employee_salary (
		id serial primary key,
		employee_id int not null unique,
		salary_id int not null
	);
select * from employee_salary;

--6)Наполнить таблицу 40 строками, в 10 строк из 40 вставить несуществующий employee_id
insert into employee_salary (id, employee_id, salary_id) values 
	(default, 3, 7),
	(default, 1, 4),
	(default, 5, 9),
	(default, 40, 13),
	(default, 23, 4),
	(default, 11, 2),
	(default, 52, 10),
	(default, 15, 13),
	(default, 26, 4),
	(default, 16, 1),
	(default, 34, 7), 
	(default, 4, 6), 
	(default, 6, 4), 
	(default, 8, 2), 
	(default, 17, 1),
    (default, 35, 8),
    (default, 41, 54),
	(default, 37, 25),
	(default, 21, 10),
	(default, 47, 4),
	(default, 32, 11),
	(default, 36, 6),
	(default, 28, 17),
	(default, 18, 28),
	(default, 14, 35),
	(default, 12, 9),
	(default, 29, 15), 
	(default, 19, 25), 
	(default, 33, 12), 
	(default, 44, 30), 
	(default, 80, 90),
    (default, 81, 89),
    (default, 82, 88),
	(default, 83, 87),
	(default, 84, 86),
	(default, 85, 85),
	(default, 86, 84),
	(default, 87, 83), 
	(default, 88, 82), 
	(default, 89, 81);
	
--7)Создать таблицу roles
create table roles (
		id serial primary key,
		role_name int not null unique
	);
select * from roles;

--8)Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar (30);

--9)Наполнить таблицу 20 строками
insert into roles (id, role_name) values
	(default,'Junior Python developer'),
	(default,'Middle Python developer'),
    (default,'Senior Python developer'),
    (default,'Junior Java developer'),
    (default,'Middle Java developer'),
    (default,'Senior Java developer'),
    (default,'Junior JavaScript developer'),
    (default,'Middle JavaScript developer'),
    (default,'Senior JavaScript developer'),
    (default,'Junior Manual QA engineer'),
    (default,'Middle Manual QA engineer'),
    (default,'Senior Manual QA engineer'),
    (default,'Project Manager'),
    (default,'Designer'),
    (default,'HR'),
    (default,'CEO'),
    (default,'Sales manager'),
    (default,'Junior Automation QA engineer'),
    (default,'Middle Automation QA engineer'),
    (default,'Senior Automation QA engineer');
   

--10)Создать таблицу roles_employee
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);
select * from roles_employee;

--11)Наполнить таблицу 40 строками
insert into roles_employee (id, employee_id, role_id ) values
	(default, 7, 2),
	(default, 20, 4),
	(default, 3, 9),
	(default, 5, 13),
	(default, 23, 4),
	(default, 11, 2),
	(default, 10, 9),
	(default, 22, 13),
	(default, 21, 3),
	(default, 34, 4),
	(default, 6, 7), 
	(default, 12, 9), 
	(default, 13, 10), 
	(default, 14, 11), 
	(default, 15, 12),
    (default, 16, 13),
    (default, 17, 14),
	(default, 18, 15),
	(default, 19, 16),
	(default, 1, 17),
	(default, 2, 18),
	(default, 8, 19),
	(default, 4, 20),
	(default, 24, 1),
	(default, 25, 2),
	(default, 26, 3),
	(default, 27, 4),
	(default, 28, 5),
	(default, 29, 6),
	(default, 30, 7), 
	(default, 31, 1), 
	(default, 32, 12), 
	(default, 33, 10), 
	(default, 9, 7),
	(default, 35, 4),
	(default, 36, 9),
	(default, 37, 13),
	(default, 38, 4),
	(default, 40, 2),
	(default, 39, 10);
