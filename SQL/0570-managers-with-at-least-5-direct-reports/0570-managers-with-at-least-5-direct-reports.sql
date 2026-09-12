Select m.name from Employee as e
join Employee m
on e.managerId = m.id
group by e.managerId 
having count(e.managerId) > 4