select results from
(select top 1 name as results from Users as u
join MovieRating as m on u.user_id = m.user_id
group by u.user_id, u.name 
order by count(*) desc, u.name asc) as a

union all 

select results from 
(select top 1 title as results
from MovieRating mr inner join movies m 
on m.movie_id =mr.movie_id
where month(created_at)=2 and year(created_at)=2020 
group by m.movie_id ,title
order by avg(rating*1.00) desc ,title asc) as b