create database ShifaNaz_ecommerce_LabAssignment;
use ShifaNaz_ecommerce_LabAssignment;

create table supplier
(SUPP_ID int,
 SUPP_NAME varchar(50) NOT NULL,
 SUPP_CITY varchar(50) NOT NULL,
 SUPP_PHONE varchar(50) NOT NULL,
 PRIMARY KEY (SUPP_ID))
 ;

 create table customer
 (CUS_ID int,
CUS_NAME varchar(20) NOT NULL,
CUS_PHONE varchar(10) NOT NULL,
CUS_CITY varchar(30) NOT NULL,
CUS_GENDER varchar(6),
PRIMARY KEY(CUS_ID)
);

create table category
(CAT_ID int,
CAT_NAME varchar(20) NOT NULL,
Primary Key (CAT_ID)
);


create table product
(PRO_ID int,
PRO_NAME varchar(20) NOT NULL default 'DUMMY',
PRO_DESC varchar(60) NOT NULL,
CAT_ID int,
primary key (PRO_ID),
FOREIGN KEY (CAT_ID) REFERENCES category(CAT_ID)
);


create table supplier_pricing
(PRICING_ID int,
PRO_ID int,
SUPP_ID int,
SUPP_PRICE int default '0',
primary key (PRICING_ID),
FOREIGN KEY (SUPP_ID) REFERENCES supplier(SUPP_ID),
FOREIGN KEY (PRO_ID) REFERENCES product(PRO_ID)
);


create table `order`
(ORD_ID int,
ORD_AMOUNT int NOT NULL,
ORD_DATE date NOT NULL,
CUS_ID int,
PRICING_ID int,
primary key (ORD_ID),
FOREIGN KEY (CUS_ID) REFERENCES customer(CUS_ID),
FOREIGN KEY (PRICING_ID) REFERENCES supplier_pricing(PRICING_ID)
);


create table rating
(RAT_ID int,
ORD_ID int,
RAT_RATSTARS int NOT NULL,
primary key (RAT_ID),
FOREIGN KEY (ORD_ID) REFERENCES `order`(ORD_ID)
);


insert into supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (1, 'Rajesh Retails', 'Delhi', '1234567890');
insert into supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (2, 'Appario Ltd.', 'Mumbai', '2589631470');
insert into supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (3, 'Knome products', 'Banglore', '9785462315');
insert into supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (4, 'Bansal Retails', 'Kochi', '8975463285');
insert into supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (5, 'Mittal Ltd.', 'Lucknow', '7898456532');


insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY,CUS_GENDER) values (1, 'AAKASH', '9999999999', 'DELHI', 'M');
insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY,CUS_GENDER) values (2, 'AMAN', '9785463215', 'NOIDA', 'M');
insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY,CUS_GENDER) values (3, 'NEHA', '9999999999', 'MUMBAI', 'F');
insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY,CUS_GENDER) values (4, 'MEGHA', '9994562399', 'KOLKATA', 'F');
insert into customer(CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY,CUS_GENDER) values (5, 'PULKIT', '7895999999', 'LUCKNOW', 'M');



insert into category(CAT_ID,CAT_NAME) values (1, 'BOOKS');
insert into category(CAT_ID,CAT_NAME) values (2, 'GAMES');
insert into category(CAT_ID,CAT_NAME) values (3, 'GROCERIES');
insert into category(CAT_ID,CAT_NAME) values (4, 'ELECTRONICS');
insert into category(CAT_ID,CAT_NAME) values (5, 'CLOTHES');


insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (4,"OATS","Highly Nutritious from Nestle",3);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (6,"MILK","1L Toned MIlk",3);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (7,"Boat EarPhones","1.5Meter long Dolby Atmos",4);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (9,"Project IGI","compatible with windows 7 and above",2);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (10,"Hoodie","Black GUCCI for 13 yrs and above",5);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
insert into product(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) values (12,"Train Your Brain","By Shireen Stephen",1);
 

insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (1,1,2,1500);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (2,3,5,30000);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (3,5,1,3000);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (4,2,3,2500);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (5,4,1,1000);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (6,12,2,780);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (7,12,4,789);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (8,3,1,31000);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (9,1,5,1450);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (10,4,2,999);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (11,7,3,549);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (12,7,4,529);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (13,6,2,105);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (14,6,1,99);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (15,2,5,2999);
insert into supplier_pricing(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values (16,5,2,2999);



insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(101,1500,"2021-10-06",2,1);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(102,1000,"2021-10-12",3,5);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(103,30000,"2021-09-16",5,2);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(104,1500,"2021-10-05",1,1);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(105,3000,"2021-08-16",4,3);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(106,1450,"2021-08-18",1,9);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(107,789,"2021-09-01",3,7);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(108,780,"2021-09-07",5,6);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(109,3000,"2021-09-10",5,3);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(110,2500,"2021-09-10",2,4);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(111,1000,"2021-09-15",4,5);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(112,789,"2021-09-16",4,7);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(113,31000,"2021-09-16",1,8);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(114,1000,"2021-09-16",3,5);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(115,3000,"2021-09-16",5,3);
insert into `order`(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID,PRICING_ID) values(116,99,"2021-09-17",2,14);


insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (1,101,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (2,102,3);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (3,103,1);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (4,104,2);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (5,105,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (6,106,3);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (7,107,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (8,108,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (9,109,3);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (10,110,5);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (11,111,3);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (12,112,4);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (13,113,2);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (14,114,1);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (15,115,1);
insert into rating(RAT_ID, ORD_ID, RAT_RATSTARS) values (16,116,0);


SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
/* Q3*/
 select COUNT(t2.CUS_GENDER) as No_Of_Customers, t2.CUS_GENDER from 
 (
 	select t1.CUS_ID,t1.CUS_GENDER  from
	(
		select  `order`.*, customer.CUS_NAME,customer.CUS_GENDER from `order` 
		INNER JOIN  customer WHERE  `order`.CUS_ID =customer.CUS_ID HAVING  `order`.ORD_AMOUNT>=3000
	) AS t1 GROUP BY t1.CUS_ID
 ) AS t2 GROUP BY t2.CUS_GENDER;
  

/* Q4*/
select CUS_NAME, PRO_NAME,ORD_ID,ORD_DATE
from product AS p, SUPPLIER_PRICING AS sp,
`order` AS ORD, customer AS cus
where 
cus.CUS_ID = 2 and
cus.CUS_ID = ORD.CUS_ID and
p.PRO_ID = sp.PRO_ID and
ORD.PRICING_ID = sp.PRICING_ID;

/*Q5*/
select sup.SUPP_ID, SUPP_NAME,SUPP_CITY,SUPP_PHONE FROM supplier as sup
INNER JOIN
(select SUPP_ID from supplier_pricing GROUP BY SUPP_ID having count(SUPP_ID)>1) as sp
ON
sup.SUPP_ID = SP.SUPP_ID;

/*Q6*/
select category.cat_id,category.CAT_NAME, min(t3.min_price) as Min_Price from category inner join
(select product.CAT_ID, product.PRO_NAME, t2.* from product inner join  
(select PRO_ID, min(SUPP_PRICE) as Min_Price from supplier_pricing group by PRO_ID) 
as t2 where t2.PRO_ID = product.PRO_ID)
as t3 where t3.CAT_ID = category.CAT_ID group by t3.CAT_ID;

/*Q7*/
select prod.PRO_ID,prod.PRO_NAME FROM `order` AS ord
INNER JOIN  supplier_pricing AS sp
ON sp.PRICING_ID  = ORD. PRICING_ID
INNER JOIN product AS prod
ON prod.PRO_ID = sp.PRO_ID where ORD.ORD_DATE>'2021-10-05';

/*Q8*/
select customer.CUS_NAME,customer.CUS_GENDER 
from customer where customer.CUS_NAME like 'A%' or customer.CUS_NAME like '%A';


/*Q9*/
select final.supp_id, supplier.supp_name, final.Average from 
		(
			select test2.supp_id, sum(test2.rat_ratstars)/count(test2.rat_ratstars) as Average from 
			(	
				select supplier_pricing.supp_id, test.ORD_ID, test.RAT_RATSTARS from supplier_pricing 
				inner join 
					(
						select `order`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS from `order` 
						inner join rating on rating.`ord_id` = `order`.ord_id 
					) as test on test.pricing_id = supplier_pricing.pricing_id
			) as test2 group by supplier_pricing.supp_id
		) as final 
		inner join 
		supplier where final.supp_id = supplier.supp_id;

CASE
	WHEN report.Average =5 THEN 'Excellent Service'
    	WHEN report.Average >4 THEN 'Good Service'
    	WHEN report.Average >2 THEN 'Average Service'
    	ELSE 'Poor Service'
END AS Type_of_Service from 

(select final.supp_id, supplier.supp_name, final.Average from 
		(
			select test2.supp_id, sum(test2.rat_ratstars)/count(test2.rat_ratstars) as Average from 
			(	
				select supplier_pricing.supp_id, test.ORD_ID, test.RAT_RATSTARS from supplier_pricing 
				inner join 
					(
						select `order`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS from `order` 
						inner join rating on rating.`ord_id` = `order`.ord_id 
					) as test on test.pricing_id = supplier_pricing.pricing_id
			) as test2 group by supplier_pricing.supp_id
		) as final 
		inner join 
		supplier where final.supp_id = supplier.supp_id) AS report;
















