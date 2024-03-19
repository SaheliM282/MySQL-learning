select reverse (upper("Why does my cat look at me with such hatred?"));
select replace(concat('I', ' ', 'like', ' ', 'cats'), ' ', '-');
select replace(title, ' ', '->') from books;
select author_lname as forwards, reverse(author_lname) as backwards from books;
select upper(concat(author_fname, ' ', author_lname)) as 'full name in caps' from books;
select concat(title, ' was released in ', released_year) as blurb from books;
select title, char_length(title) as 'character count' from books;
select 
    concat(substring(title, 1, 10), '...') as short_title,
    concat(author_lname, ',', author_fname) as author,
    concat(stock_quantity, ' in stock') as quantity
from
    books;