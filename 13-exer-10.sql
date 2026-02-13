/*
! یک لیست تهیه کنید که در آن نام هر کشور باشد و در ستون روبروی آن، نام تمام کاربران آن کشور به صورت یک رشته متنی که با ویرگول جدا شده‌اند، قرار گیرد.
! (مثلا: Iran | Ali, Sara, Reza)
*/
SELECT 
    country,
    STRING_AGG(name, ', ') as user_list
FROM users
GROUP BY country;
