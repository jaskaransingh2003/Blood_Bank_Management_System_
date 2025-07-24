create database Blood_Bank_Management_System;

use Blood_Bank_Management_system;

create table blood_donor
( donor_id int auto_increment, 
  donor_name varchar(50), 
  donor_age int, 
  donor_blood_group varchar(10), 
  donor_sex varchar(10),
  donor_contactno varchar(20),
  city_id int,
  staff_id int,
  donor_Registration_date date,
  primary key(donor_id));
  
insert into blood_donor
values(10121 , 'Mustifizur' , 26 , 'A+' , 'Male' , 9845123698 , 1100 , 101212 , '2025-01-09'),
(11521 , 'Yashpal Singh' , 32 , 'B-' , 'Male' , 8741253690 , 1200 , 102012 , '2025-01-18'),
(11522 , 'Ruchika' , 24 , 'AB+' , 'Female' , 6321457897 , 1900 , 101312 , '2025-01-28'),
(10122 , 'Ompal Sharma' , 29 , 'O+' , 'Male' , 7841252259 , 1300 , 101412 , '2025-02-11'),
(11526 , 'Loveleen Kaur' , 25 , 'B+' , 'Female' , 4512789630 , 1200 , 101712 , '2025-02-12'),
(10124 , 'Ramandeep Singh', 23 , 'O-' , 'Male' , 8741259630 , 1100 , 101412 , '2025-02-15'),
(12301 , 'Harmanpreet' , 34 , 'AB-' , 'Female' , 8745120369 , 1400 , 101510 , '2025-02-20'),
(11527 , 'Khushdeep' , 42 , 'B+' , 'Male' , 7415028963 , 1300 , 101712 , '2025-02-21'),
(10126 , 'Taranjeet Kaur' , 39 , 'O+' ,  'Female' , 9603251478 , 1700 , 101510 , '2025-03-03'),
(11524 , 'Gurpal Singh' , 45 , 'AB-' , 'Male' , 4512780369 , 1400 , 102012 , '2025-03-05'),
(10128 , 'Ujwal Sexena' , 48 , 'A+' ,'Male' , 7451203698 , 2000 , 101112 , '2025-03-11'),
(12303 , 'Hritik Kumar' , 33 , 'B+' , 'Male', 2103654789 , 1700 , 101112 , '2025-03-12');

Select * from blood_donor;

create table blood_Recipient
(recipient_id int auto_increment,
recipient_name varchar(30),
recipient_age int,
recipient_blood_group varchar(10),
recipient_sex varchar(10),
recipient_contactno varchar(25),
recipient_registration_date date,
units_required float,
city_id int,
staff_id int,
blood_bank_manager_id int,
primary key(recipient_id));

insert into blood_recipient
values(10001 ,'Gursharan Singh', 26 , 'A+' , 'Male' , 7845102369 , '2023-08-22' , 1.5 , 1100 , 101212 , 101),
(10002 ,'Rajkumar', 46 , 'AB+' , 'Male' , 9854120367 , '2023-02-19' , 1 , 1300 , 101312, 102),
(10003 ,'Priyanka Tripathi', 36 , 'B-' , 'Female' , 5478120369 , '2023-10-08' , 1.8 , 1200 , 101512 , 101),
(10004 ,'Harshmeet', 29 , 'O+' , 'Male' , 9201365478 , '2024-11-07' , 2 , 1900 , 101212 , 103),
(10005 ,'Gunjan Saxena', 33 , 'A+' , 'Female' , 8520369741 , '2023-12-05' , 1 , 1500 , 101412 , 105),
(10006 ,'Aniket Kumar', 22 , 'AB+ ', 'Male' , 7102458963 , '2024-06-28' , 1.2 , 1400 , 101312 , 103),
(10007 ,'Taranjeet Singh', 56 , 'B-' , 'Male' , 9012365478 , '2024-01-31' , 1.8 , 1200 , 101412 , 104),
(10008 ,'Fardeen Khan', 66 , 'A-' , 'Male' , 6320145789 , '2023-06-12' , 2.2 , 1400 , 101512 , 104),
(10009 ,'Gurjeet Kaur', 34 , 'AB-' , 'Female' , 9510234760 , '2025-02-20' , 1 , 1100 , 101510 , 107),
(10010 ,'Mayank Yadav', 47 , 'O-' , 'Male' , 7845120369 , '2023-03-01' , 1 , 1700 , 101212 , 105),
(10011 ,'Emraan', 39 , 'B+' , 'Male' , 7845120369 , '2024-12-26' , 2.5 , 1500 , 101312 , 106),
(10012 ,'Ashok', 33 , 'B+' , 'Male' , 9021457863 , '2025-03-12' , 1.5 , 1700 , 101112 , 107);

select * from blood_recipient;

create table hospital_information_1
(hospital_id int not null,
hospital_name varchar(50),
city_id int,
Manager_id int,
hospital_contactno varchar(20),
primary key(hospital_id));

insert into hospital_information_1
values(1,'Fortis',1100,101,4400120012),
(2,'Indraprastha',1300,102,3300120013),
(3,'Sir Ganga Ram',1400,105,5588744412),
(4,'Max Super Speciality',1200,103,2020236544),
(5,'Moolchand',1500,104,7744110025),
(6,'AIIMS',1100,102,9966332012),
(7,'Venkateshwar',1300,101,5040156987),
(8,'Medanta',2000,107,3300221133),
(9,'BLK Super Speciality',1600,107,4875123699),
(10,'Medipol',1900,103,9955221144);

select * from hospital_information_1;

create table hospital_information_2
(hospital_id int not null,
hospital_name varchar(50),
hospital_needed_blood_group varchar(10),
hospital_needed_blood_quantity float,
primary key(hospital_id,hospital_needed_blood_group));

insert into hospital_information_2
values(1,'Fortis','AB+', 40),
(1,'Fortis','A+', 10),
(1,'Fortis','B+', 22),
(1,'Fortis','O-', 2);

insert into hospital_information_2
values(3,'Sir Ganga Ram','B+', 25),
(3,'Sir Ganga Ram','AB-', 6),
(3,'Sir Ganga Ram','A_', 0),
(3,'Sir Ganga Ram','B-', 8),
(3,'Sir Ganga Ram','A+', 15);

insert into hospital_information_2
values(6,'AIIMS','AB+', 40),
(6,'AIIMS','A+', 10),
(6,'AIIMS','B+', 22),
(6,'AIIMS','O+', 0),
(6,'AIIMS','B-', 8),
(6,'AIIMS','AB-',6);

insert into hospital_information_2
values(9,'BLK Super Speciality','B+', 12),
(9,'BLK Super Speciality','A-',3);

insert into hospital_information_2
values(10,'Medipol','A+', 20),
(10,'Medipol','A-', 40),
(10,'Medipol','B-',10),
(10,'Medipol','AB+',0);

select * from hospital_information_2;

create table city
(city_id int auto_increment,
city_name varchar(30),
primary key(city_id));

insert into city
values(1100,'Delhi'),
(1200,'Pune'),
(1300,'Mumbai'),
(1400,'Hydrabad'),
(1500,'Pune'),
(1600,'Delhi'),
(1700,'Luckhnow'),
(1800,'Delhi'),
(1900,'Jaipur'),
(2000,'Gujrat');

select * from city;

create table Blood_bank_manager
(Manager_id int auto_increment,
Manager_name varchar(30),
contact_number varchar(15),
primary key(Manager_id));

insert into Blood_bank_manager
values(101 , 'Ashish Kumar' , 4785120369),
(102 , 'Mukund Yadav' , 9874512036),
(103 , 'Purnima Rao', 7841056369),
(104 , 'Ravinder Singh', 6320145789),
(105 , 'Farhan raheem' , 9654781203),
(106 , 'Manoher jain' , 8745120369),
(107 , 'prakash yadav' , 7845963210),
(108 , 'Amrita jain', 9654781230),
(109 , 'Ramanpreet', 4785120369),
(110 , 'Tarun dev' , 7896302145);

select * from blood_bank_manager;

create table recording_staff
(staff_id int auto_increment,
staff_name varchar(20),
staff_contact_number varchar(15),
primary key(staff_id));

insert into recording_staff
values(101112,'Pankaj Tripathi',7845120369),
(101212,'Abhinav',9856320147),
(101312,'Chetan',9856230147),
(101412,'Komal Sharma',4512036987),
(101512,'Harpreet Singh',9652301478),
(101612,'Basheer Khan',8745120369),
(101712,'Venktesh Iyer',9874512036),
(101812,'Yuzvendra',7451208963),
(101912,'Priya Kumari',9988412530),
(102012,'Irfan Khan',8855221479);

select * from recording_staff;

create table  blood_spicemen
(spicemen_id int auto_increment,
donor_id int,
blood_group varchar(10),
collection_date date,
expiry_date date,
is_tested boolean,
primary key(spicemen_id));

insert into blood_spicemen
values(1001,10121,'A+','2025-03-18','2025-04-18',1),
(1002,10122,'B-','2025-01-08','2025-02-08',1),
(1003,10124,'O-','2025-02-13','2025-03-13',1),
(1004,10126,'AB-','2025-04-28','2025-05-28',0),
(1005,10128,'B+','2025-02-22','2025-03-22',1),
(1006,11521,'A-','2025-03-01','2025-04-01',1),
(1007,11522,'AB+','2025-01-11','2025-02-11',0),
(1008,11526,'O+','2025-05-23','2025-06-23',1),
(1009,11527,'B+','2025-05-30','2025-06-30',1),
(1010,11524,'A+','2025-04-14','2025-05-14',1),
(1011,12301,'AB-','2025-02-19','2025-03-19',0),
(1012,12303,'AB+','2025-01-25','2025-02-25',0);

select * from blood_spicemen;

create table disease_finder
(disease_finder_id int auto_increment,
diseases_finder_name varchar(20),
disease_detected varchar(100),
detected_date date,
primary key(disease_finder_id));

insert into disease_finder
values(11,'Prakash Gupta','None','2025-01-24'),
(12,'Isha Malvia','None','2025-04-29'),
(13,'Raju Shriwastav','Hepatitis','2025-02-11'),
(14,'Fardeen Khan','None','2025-06-01'),
(15,'Tarun Yadav','None','2025-03-15'),
(16,'Deepak Tripathi','None','2025-04-17'),
(17,'Manoj kumar','Parasitic','2025-01-11'),
(18,'Gunjan Saxena','None','2025-01-19'),
(19,'Ranvijay','None','2025-02-26'),
(20,'Suraj Yadav','Chronic Diseases','2025-03-22');

select * from disease_finder;
