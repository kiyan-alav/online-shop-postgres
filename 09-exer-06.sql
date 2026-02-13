/*
 ! کاربرانی را پیدا کنید که هیچ سفارشی ثبت نکرده‌اند.
 */
-- ! WAY 1
SELECT *
FROM users AS u
    LEFT JOIN orders AS o ON o.user_id = u.id
WHERE o.id IS NULL;
-- ! WAY 2
SELECT *
FROM users
WHERE id NOT IN (
        SELECT DISTINCT user_id
        FROM orders
    );