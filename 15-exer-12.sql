/*
 کاربرانی را پیدا کن که:
 در ۳ ماه گذشته نسبت به تاریخ امروز ثبت‌نام کرده‌اند
 و ایمیل آن‌ها NULL نباشد
 ⚠️ نکته:
 از تاریخ داینامیک استفاده کن (نه تاریخ هاردکد)
 کوئری باید بهینه و index-friendly باشد
 خروجی:
 name
 email
 created_at
 */
SELECT name,
    email,
    created_at
FROM users
WHERE created_at >= CURRENT_DATE - INTERVAL '3 months'
    AND email IS NOT NULL;