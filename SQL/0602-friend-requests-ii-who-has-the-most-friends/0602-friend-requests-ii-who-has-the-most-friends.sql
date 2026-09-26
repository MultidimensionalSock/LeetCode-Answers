select top 1
    case 
        when r.id is null then a.id 
        else r.id 
    end as id, 
    isnull(r.count1,0) + isnull(a.count2,0) as num 
    from
        (select requester_id as id, count(*) as count1 from RequestAccepted
        group by requester_id) as r
        full outer join
        (select accepter_id as id, count(*) as count2
        from RequestAccepted
        group by accepter_id) as a
    on a.id = r.id
order by num desc