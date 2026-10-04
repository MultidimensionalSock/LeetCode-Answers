Select 'Low Salary' as category, 
    count(*) as accounts_count
from Accounts 
where income < 20000

UNION ALL

Select 'Average Salary' as category, 
    count(*) as accounts_count
from Accounts 
where income between 20000 and 50000

UNION ALL

Select 'High Salary' as category, 
    count(*) as accounts_count
from Accounts 
where income > 50000
