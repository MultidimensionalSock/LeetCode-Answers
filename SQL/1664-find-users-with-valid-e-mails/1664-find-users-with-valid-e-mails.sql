select user_id, name, mail from Users
where mail like '[a-zA-Z]%@leetcode.com' COLLATE Latin1_General_CS_AS
and left(mail, 1) like '[a-zA-Z]' 
and left(mail, len(mail) - 13) NOT LIKE '%[^a-zA-Z0-9._-]%' 
 