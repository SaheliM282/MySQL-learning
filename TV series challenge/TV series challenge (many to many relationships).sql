select title, rating from series
join reviews on series.id = reviews.series_id;

select title, ifnull(avg(rating), 0) as avg_rating from series
join reviews on series.id = reviews.series_id
group by title
order by avg_rating;

select first_name, last_name, rating from reviewers
join reviews on reviewers.id = reviews.reviewer_id;

select title as unreviewed_series from series
left join reviews on series.id = reviews.series_id
where rating is null;

select genre, ifnull(avg(rating), 0) as avg_rating from series
join reviews on series.id = reviews.series_id
group by genre;

select first_name, last_name,
ifnull(count(rating), 0) as count,
ifnull(min(rating), 0) as min,
ifnull(max(rating), 0) as max,
ifnull(avg(rating), 0) as 'avg',
case
when count(rating) > 0 then 'active'
else 'inactive'
end as 'status'
from reviewers
left join reviews on reviewers.id = reviews.reviewer_id
group by first_name, last_name;

select title, rating, concat(first_name, ' ', last_name) as reviewer from series
join reviews on series.id = reviews.series_id
join reviewers on reviewers.id = reviews.reviewer_id
order by title;