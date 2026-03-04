SELECT w.warehouseCode, w.warehouseName, w.warehousePctCap,
       COUNT(p.productCode) AS totalProducts,
       SUM(p.quantityInStock) AS totalStock,
       ROUND(SUM(p.quantityInStock) / (w.warehousePctCap / 100)) AS estimatedCapacity,
       ROUND(SUM(p.quantityInStock) / (w.warehousePctCap / 100)) - SUM(p.quantityInStock) AS availableSpace
FROM warehouses w
JOIN products p ON w.warehouseCode = p.warehouseCode
GROUP BY w.warehouseCode, w.warehouseName, w.warehousePctCap
ORDER BY availableSpace DESC;