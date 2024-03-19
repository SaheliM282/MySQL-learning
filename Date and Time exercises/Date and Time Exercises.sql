CREATE TABLE inventory (
    item_name varchar(100),
    price decimal(8,2),
    quantity int
);
desc inventory;
select curtime();
select curdate(); 
select dayofweek(curdate());
select dayofweek(now());
select date_format(now(), '%w') + 1;
select dayname(now());
select date_fromat(now(), '%W');
select date_format(curdate(), '%m/%d/%Y');
select date_format(now(), '%M %D at %k:%i');
create table tweets(
    content varchar(140),
    username varchar(20),
    created_at timestamp default now()
);
insert into tweets (content, username) values('this is my first tweet', 'coltscat');
select * from tweets;
insert into tweets (content, username) values('this is my second tweet', 'coltscat');
select * from tweets;