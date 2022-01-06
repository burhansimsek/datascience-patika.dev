-- 1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini 
--birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

select country.country_id, country.country, city.city from country
left join city on country.country_id = city.country_id


-- 2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki 
--first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

select payment.payment_id, customer.first_name, customer.last_name from payment
right join customer on payment.customer_id=customer.customer_id


-- 3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
--isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

select rental.rental_id, customer.first_name, customer.last_name from rental
full join customer on customer.customer_id=rental.customer_id