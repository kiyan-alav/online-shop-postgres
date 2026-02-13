/*
 می‌خواهیم برای هر کاربر:
 فقط دومین سفارش گران‌قیمتش را نمایش دهیم.
 اگر کاربری فقط یک سفارش داشته باشد، نمایش داده نشود.
 خروجی شامل این ستون‌ها باشد:
 نام کاربر
 order_id
 total_amount
 ⚠️ نکته مهم:
 اگر دو سفارش مبلغ مساوی داشته باشند، رفتار کوئری‌ات باید مشخص و قابل دفاع باشد.
 (یعنی آگاهانه انتخاب کن از RANK یا DENSE_RANK یا ROW_NUMBER استفاده می‌کنی.)
 */
SELECT *
FROM (
        SELECT u.name,
            o.id,
            o.total_amount,
            DENSE_RANK() OVER (
                PARTITION BY u.id
                ORDER BY o.total_amount DESC
            ) as rank_per_user
        FROM orders AS o
            INNER JOIN users AS u ON o.user_id = u.id
) AS ranked_orders
WHERE rank_per_user = 2