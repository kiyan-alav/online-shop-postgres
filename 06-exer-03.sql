/*
 ! لیست تمام سفارشات را به همراه نام کاربری که سفارش را ثبت کرده است نمایش دهید. (شامل ستون‌های: شناسه سفارش، تاریخ، مبلغ کل و نام کاربر).
 */
SELECT o.id,
    o.order_date,
    o.total_amount,
    u.name
FROM orders AS o
    INNER JOIN users AS u ON o.user_id = u.id;