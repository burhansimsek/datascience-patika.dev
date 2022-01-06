-- 1. actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

(select first_name from actor)
UNION
(select first_name from customer)

-- 2. actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

(select first_name from actor)
INTERSECT
(select first_name from customer)

-- 3. actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak 
--ikinci tabloda bulunmayan verileri sıralayalım.

(select first_name from actor)
EXCEPT
(select first_name from customer)

-- 4. İlk 3 sorguyu tekrar eden veriler için de yapalım.
UNION ALL, INTERSECT ALL, EXCEPT ALL