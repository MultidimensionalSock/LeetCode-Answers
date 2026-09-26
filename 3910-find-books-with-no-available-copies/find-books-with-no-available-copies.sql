select 
    l.book_id, 
    l.title, 
    l.author, 
    l.genre, 
    l.publication_year, 
    b.currently_borrowed as current_borrowers 
from library_books as l 
join (
    select book_id, count(*) as currently_borrowed 
    from borrowing_records
    where return_date is null
    group by book_id 
) as b
on b.book_id = l.book_id
where l.total_copies = b.currently_borrowed
order by current_borrowers desc, l.title 