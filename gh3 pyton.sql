Create Database Shaurai;

use ShauRai;

drop table polsovatel;

create table polsovatel
(											
ID_polsovatel 					int 			not null 		auto_increment 			primary key,
Login_polsovatel				varchar (20) 	not null 		unique,
Password_polsovatel 			varchar (20) 	not null,
balance 						float 			not null,
history_count 					int 			not null,
history_summ					float			not null,
phone_number 					bigint 			null
);

insert into polsovatel (Login_polsovatel, Password_polsovatel,balance,history_count,history_summ) 
values('admin','admin','10000.00','0','0'),
	  ('user','user','1000.00','5','11111'),
      ('user1','user1','1000.00','2','250');


update Buyer set Pasport = Pasport_bue, Address = Address_bue, Card = Card_buewhere Id_Buyer = id;

select * from polsovatel;

delete from polsovatel where ID_polsovatel = 4;

delete from history_polzovatel where ID_history_polzovatel = 1;

create table history_polzovatel
(											
ID_history_polzovatel			int 			not null 		auto_increment 			primary key,
product							varchar (20) 	not null 		default "",
summa 							float 			not null		default 0.00,
Polzovatel_ID 					int	 			not null,
foreign key (Polzovatel_ID) references polsovatel (ID_polsovatel)
);
insert into history_polzovatel (product, summa,Polzovatel_ID) values('shaurma','1111','2'),
																	('shaurma','1000','2'),
                                                                    ('shaurma','2000','2'),
                                                                    ('shaurma','3000','2'),
                                                                    ('shaurma','4000','2'),
                                                                    ('shaurma','1000','2'),
                                                                    ('shaurma','100','3'),
                                                                    ('shaurma','150','3');

select * from history_polzovatel;

drop table sklad;

create table sklad
(											
ID_sklad 					int 			not null 		auto_increment 			primary key,
product						varchar (20) 	not null 		unique,
count 						int 	  		not null,
price 						float 	  		not null
);

insert into sklad (product, count,price) 
values('lavash','10','50.00'),('meat','10','25.00'),('ketchup','10','10.00'),('mayonez','10','10.00'),
('onion','10','15.00'),('cucumber','10','15.00'),('tomato','10','15.00'),('jalapeno','10','15.00'),('koreancarrot','10','15.00');

select * from sklad;
