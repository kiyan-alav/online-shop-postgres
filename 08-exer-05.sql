/*
 ! مجموع کل خریدهای هر کاربر را محاسبه کنید. فقط کاربرانی را نمایش دهید که مجموع خریدشان بیشتر از ۱۰۰۰ دلار است.
 */
SELECT u.name,
    SUM(o.total_amount) AS total_spent
FROM users AS u
    INNER JOIN orders AS o ON o.user_id = u.id
GROUP BY u.name
HAVING SUM(o.total_amount) > 1000;