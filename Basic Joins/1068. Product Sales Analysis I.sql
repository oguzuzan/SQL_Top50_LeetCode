SELECT product_name, year, price
FROM Product
JOIN Sales
USING(product_id)