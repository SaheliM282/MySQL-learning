SELECT 10 != 10;
SELECT 15 > 14 AND 99 - 5 <= 94;
SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10;
select * from books where released_year < 1980;
select * from books;
select * from books where author_lname = 'eggers' or author_lname = 'chabon';
select * from books where author_lname = 'lahiri' and released_year > 2000;
select * from books where pages between 100 and 200;
select * from books where author_lname like 'c%' or author_lname like 's%';
select title, author_lname,
case
when title like '%stories%' then 'Short Stories'
when title = 'just kids' or 'a heartbreaking work' then 'Memoir'
else 'Novel'
end as Type
from books;
select author_fname, author_lname,
case
when count(*) = 1 then concat(count(*), ' book')
else concat(count(*), ' books')
end as COUNT
from books
group by author_fname, author_lname;