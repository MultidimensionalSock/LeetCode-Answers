select a.activity_date as day, count(a.user_id) as active_users
 from (
select user_id, activity_date from Activity
where activity_date between dateadd(day, -29, '2019-07-27') and '2019-07-27'
group by user_id, activity_date) as a
group by activity_date