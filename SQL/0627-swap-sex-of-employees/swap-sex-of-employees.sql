Update Salary
Set sex =
    Case when sex = 'm' then 'f'
        when sex = 'f' then 'm'
    end;