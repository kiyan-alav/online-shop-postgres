/*
! کاربرانی را پیدا کنید که در ۳۰ روز گذشته ثبت نام کرده‌اند (با فرض اینکه تاریخ امروز ۲۰۲۳-۰۶-۱۰ است یا با استفاده از تاریخ داینامیک).
! نکته: چون داده‌های تستی قدیمی هستند، کوئری را جوری بنویسید که کاربرانی که در نیمه اول سال ۲۰۲۳ ثبت نام کرده‌اند را برگرداند.
*/
-- !  WAY1
SELECT name, created_at
FROM users
WHERE created_at >= '2023-01-01' 
  AND created_at < '2023-01-01'::date + INTERVAL '6 months';

-- !  WAY2
SELECT name, created_at
FROM users
WHERE EXTRACT(YEAR FROM created_at) = 2023 
  AND EXTRACT(MONTH FROM created_at) <= 6;
