--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) 
--olan bir tablo oluşturalım.

CREATE TABLE employee(
	
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	birthday DATE
);

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, email, birthday) values ('Gale Wheaton', 'gwheaton0@usatoday.com', '1965-06-04');
--
select * from employee;


--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

Update employee set name='Burhan' where id=1 returning *;
Update employee set email='burhansimsekbs@outlook.com' where id=1 returning *;
Update employee set email='adult@people.com' where birthday<'2000-01-01' returning *;

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

Delete from employee where name like 'W%'

