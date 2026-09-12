select round(sum(tiv_2016),2) as tiv_2016 from Insurance as i
join (
select lat, lon from Insurance
group by lat, lon
having count(*) <= 1) as d
on i.lat= d.lat and i.lon = d.lon
where tiv_2015 in 
(
    select tiv_2015 from Insurance group by tiv_2015 having count(*) > 1
)