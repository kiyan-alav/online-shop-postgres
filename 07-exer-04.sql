/*
 ! تعداد کاربران ثبت‌نام شده از هر کشور را پیدا کنید. خروجی باید شامل نام کشور و تعداد کاربران باشد.
 */
SELECT country,
    COUNT(*) AS user_count
FROM users
GROUP BY country;