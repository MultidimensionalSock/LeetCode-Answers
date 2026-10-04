select score, dense_rank() over (ORDER BY score desc) rank
from Scores 
order by score desc