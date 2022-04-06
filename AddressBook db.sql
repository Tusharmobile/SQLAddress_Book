create Database AddressBook;                     --- UC1 Ability to create 
create table Address_Book (                       --- UC2 
Person_Id int NOT NULL IDENTITY(1,1),
First_name varchar(50),
Last_name varchar(50),
Address varchar(100),
State varchar(50),
city varchar(50),
Zip varchar(10),
Phone varchar(15),
email varchar(100),
Primary KEY (Person_Id)
);
select * from Address_Book;
INSERT INTO Address_Book (First_name,Last_name,Address,State,city,Zip,Phone,email) values
 ('Tushar','Shitre','Parner','Maharastra','Ahmednagar','414305','9049655948','tusharshitre123@gmail.com');
INSERT INTO Address_Book (First_name,Last_name,Address,State,city,Zip,Phone,email)
 values ('Ujjwal','Sharma','Rajkot','Maharastra','Ahmednagar','414305','9049655948','ujjwal123654@gmail.com');
INSERT INTO Address_Book (First_name,Last_name,Address,State,city,Zip,Phone,email) 
values ('Nikhil','Pande','Parner','Maharastra','Ahmednagar','414305','9049655948','nikhilpande3333@gmail.com.');
INSERT INTO Address_Book (First_name,Last_name,Address,State,city,Zip,Phone,email) values 
('Manisha','Zinjad','Parner','Maharastra','Ahmednagar','414305','9049655948','manisha222@gmail,com.');
--Edit first name using first name--- UC4---
Update Address_Book set First_name='Abhay' where First_name='Ujjwal'
delete from Address_Book where First_name = 'Nikhil'       --- UC5--- 
select * from Address_Book where city= 'Parner' or state='maharastra'     --- UC6---
select  count (*) as state,city from Address_Book group by state, city    --- UC7---
select * from Address_Book where state= 'maharastra' order by First_name    --- UC8---
