SELECT warehouseCode, COUNT(*) AS totalProducts, SUM(quantityInStock) AS totalStock
FROM products
GROUP BY warehouseCode
ORDER BY totalStock;