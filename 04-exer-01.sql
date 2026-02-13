/*
 ! لیست نام و قیمت تمام محصولاتی که در دسته‌بندی ‘Electronics’ هستند و قیمت آن‌ها بیشتر از ۱۰۰ دلار است را نمایش دهید.
 */
SELECT name,
    price
FROM products
WHERE category = 'Electronics'
    AND price > 100;