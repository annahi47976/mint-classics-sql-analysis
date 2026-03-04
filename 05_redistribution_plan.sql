SELECT 
    w.warehouseName,
    w.availableSpace,
    ROUND(w.availableSpace / 284048 * 100, 1) AS pctOfTotalSpace,
    ROUND(79380 * (w.availableSpace / 284048)) AS unitsToReceive
FROM (
    SELECT w.warehouseName,
           ROUND(SUM(p.quantityInStock) / (w.warehousePctCap / 100)) - SUM(p.quantityInStock) AS availableSpace
    FROM warehouses w
    JOIN products p ON w.warehouseCode = p.warehouseCode
    WHERE w.warehouseCode != 'd'
    GROUP BY w.warehouseName, w.warehousePctCap
) AS w
ORDER BY unitsToReceive DESC;