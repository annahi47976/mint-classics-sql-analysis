SELECT p.productName, p.quantityInStock, 
       SUM(od.quantityOrdered) AS totalOrdered
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
WHERE p.warehouseCode = 'd'
GROUP BY p.productName, p.quantityInStock
ORDER BY totalOrdered DESC;