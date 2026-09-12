select name from Customer with (nolock)
where referee_id != 2 
or referee_id is null