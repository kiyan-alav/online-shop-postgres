/*
 ! ۳ تا از گران‌ترین محصولات موجود در انبار (موجودی یا stock بیشتر از صفر) را به ترتیب قیمت (نزولی) لیست کنید.
 */
SELECT name,
    price,
    stock
FROM products
WHERE stock > 0
ORDER BY price DESC
LIMIT 3;