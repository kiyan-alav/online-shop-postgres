/*
 می‌خواهیم گزارشی بسازیم که:
 برای هر کشور
 تعداد کاربران آن کشور
 و لیست نام کاربران آن کشور به ترتیب الفبایی
 را برگرداند.
 اما فقط کشورهایی را نمایش بده که:
 بیشتر از ۲ کاربر دارند
 خروجی:
 | country | user_count | user_list |
 */
SELECT country,
    COUNT(*) AS user_count,
    STRING_AGG(
        DISTINCT name,
        ', '
        ORDER BY name
    ) AS user_list
FROM users
GROUP BY country
HAVING COUNT(*) > 2