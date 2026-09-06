/* Write your T-SQL query statement below */
select distinct author_id as id
from Views with (nolock)
where author_id = viewer_id