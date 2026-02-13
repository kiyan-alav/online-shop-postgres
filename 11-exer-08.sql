/*
! می‌خواهیم به هر سفارش یک رتبه بدهیم. رتبه‌بندی باید بر اساس مبلغ سفارش (total_amount) باشد، اما این رتبه‌بندی باید برای هر کاربر جداگانه محاسبه شود (Partitioning). یعنی گران‌ترین سفارش هر کاربر رتبه ۱ بگیرد.
*/
SELECT 
    u.name,
    o.order_id,
    o.total_amount,
    RANK() OVER (PARTITION BY u.user_id ORDER BY o.total_amount DESC) as rank_per_user
FROM orders AS o
JOIN users AS u ON o.user_id = u.user_id;
