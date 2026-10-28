-- =====================================================
-- 03_SupplyChain_Data_Validation.sql
-- SECTION 1: ROW COUNT VALIDATION
-- Purpose: Verify original and cleaned table row counts
-- =====================================================

SELECT
    'products' AS table_name,
    (SELECT COUNT(*) FROM products) AS original_rows,
    (SELECT COUNT(*) FROM products_clean) AS clean_rows,
    CASE
        WHEN (SELECT COUNT(*) FROM products)
           = (SELECT COUNT(*) FROM products_clean)
        THEN 'PASS'
        ELSE 'FAIL'
    END AS validation_status

UNION ALL

SELECT
    'suppliers',
    (SELECT COUNT(*) FROM suppliers),
    (SELECT COUNT(*) FROM suppliers_clean),
    CASE
        WHEN (SELECT COUNT(*) FROM suppliers)
           = (SELECT COUNT(*) FROM suppliers_clean)
        THEN 'PASS'
        ELSE 'FAIL'
    END

UNION ALL

SELECT
    'warehouses',
    (SELECT COUNT(*) FROM warehouses),
    (SELECT COUNT(*) FROM warehouses_clean),
    CASE
        WHEN (SELECT COUNT(*) FROM warehouses)
           = (SELECT COUNT(*) FROM warehouses_clean)
        THEN 'PASS'
        ELSE 'FAIL'
    END

UNION ALL

SELECT
    'inventory',
    (SELECT COUNT(*) FROM inventory),
    (SELECT COUNT(*) FROM inventory_clean),
    CASE
        WHEN (SELECT COUNT(*) FROM inventory)
           = (SELECT COUNT(*) FROM inventory_clean)
        THEN 'PASS'
        ELSE 'FAIL'
    END

UNION ALL

SELECT
    'purchase_orders',
    (SELECT COUNT(*) FROM purchase_orders),
    (SELECT COUNT(*) FROM purchase_orders_clean),
    CASE
        WHEN (SELECT COUNT(*) FROM purchase_orders)
           = (SELECT COUNT(*) FROM purchase_orders_clean)
        THEN 'PASS'
        ELSE 'FAIL'
    END

UNION ALL

SELECT
    'sales_orders',
    (SELECT COUNT(*) FROM sales_orders),
    (SELECT COUNT(*) FROM sales_orders_clean),
    CASE
        WHEN (SELECT COUNT(*) FROM sales_orders)
           = (SELECT COUNT(*) FROM sales_orders_clean)
        THEN 'PASS'
        ELSE 'FAIL'
    END

UNION ALL

SELECT
    'shipments',
    (SELECT COUNT(*) FROM shipments),
    (SELECT COUNT(*) FROM shipments_clean),
    CASE
        WHEN (SELECT COUNT(*) FROM shipments)
           = (SELECT COUNT(*) FROM shipments_clean)
        THEN 'PASS'
        ELSE 'FAIL'
    END;
    
    -- =====================================================
-- SECTION 2: PRIMARY KEY VALIDATION
-- Purpose: Check for duplicate and NULL identifiers
-- Expected result: All checks should PASS
-- =====================================================

SELECT
    'products_clean' AS table_name,
    COUNT(*) AS total_rows,
    COUNT(DISTINCT product_id) AS unique_ids,
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS null_ids,
    CASE
        WHEN COUNT(*) = COUNT(DISTINCT product_id)
         AND SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END AS validation_status
FROM products_clean

UNION ALL

SELECT
    'suppliers_clean',
    COUNT(*),
    COUNT(DISTINCT supplier_id),
    SUM(CASE WHEN supplier_id IS NULL THEN 1 ELSE 0 END),
    CASE
        WHEN COUNT(*) = COUNT(DISTINCT supplier_id)
         AND SUM(CASE WHEN supplier_id IS NULL THEN 1 ELSE 0 END) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END
FROM suppliers_clean

UNION ALL

SELECT
    'warehouses_clean',
    COUNT(*),
    COUNT(DISTINCT warehouse_id),
    SUM(CASE WHEN warehouse_id IS NULL THEN 1 ELSE 0 END),
    CASE
        WHEN COUNT(*) = COUNT(DISTINCT warehouse_id)
         AND SUM(CASE WHEN warehouse_id IS NULL THEN 1 ELSE 0 END) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END
FROM warehouses_clean

UNION ALL

SELECT
    'inventory_clean',
    COUNT(*),
    COUNT(DISTINCT inventory_id),
    SUM(CASE WHEN inventory_id IS NULL THEN 1 ELSE 0 END),
    CASE
        WHEN COUNT(*) = COUNT(DISTINCT inventory_id)
         AND SUM(CASE WHEN inventory_id IS NULL THEN 1 ELSE 0 END) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END
FROM inventory_clean

UNION ALL

SELECT
    'purchase_orders_clean',
    COUNT(*),
    COUNT(DISTINCT purchase_order_id),
    SUM(CASE WHEN purchase_order_id IS NULL THEN 1 ELSE 0 END),
    CASE
        WHEN COUNT(*) = COUNT(DISTINCT purchase_order_id)
         AND SUM(CASE WHEN purchase_order_id IS NULL THEN 1 ELSE 0 END) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END
FROM purchase_orders_clean

UNION ALL

SELECT
    'sales_orders_clean',
    COUNT(*),
    COUNT(DISTINCT sales_order_id),
    SUM(CASE WHEN sales_order_id IS NULL THEN 1 ELSE 0 END),
    CASE
        WHEN COUNT(*) = COUNT(DISTINCT sales_order_id)
         AND SUM(CASE WHEN sales_order_id IS NULL THEN 1 ELSE 0 END) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END
FROM sales_orders_clean

UNION ALL

SELECT
    'shipments_clean',
    COUNT(*),
    COUNT(DISTINCT shipment_id),
    SUM(CASE WHEN shipment_id IS NULL THEN 1 ELSE 0 END),
    CASE
        WHEN COUNT(*) = COUNT(DISTINCT shipment_id)
         AND SUM(CASE WHEN shipment_id IS NULL THEN 1 ELSE 0 END) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END
FROM shipments_clean;

-- =====================================================
-- SECTION 3: FOREIGN KEY VALIDATION
-- Purpose: Identify references to missing parent records
-- Expected result: All orphan counts should be 0
-- =====================================================

SELECT
    'inventory_clean -> products_clean' AS relationship_name,
    COUNT(*) AS orphan_records
FROM inventory_clean i
LEFT JOIN products_clean p
    ON i.product_id = p.product_id
WHERE p.product_id IS NULL

UNION ALL

SELECT
    'inventory_clean -> warehouses_clean',
    COUNT(*)
FROM inventory_clean i
LEFT JOIN warehouses_clean w
    ON i.warehouse_id = w.warehouse_id
WHERE w.warehouse_id IS NULL

UNION ALL

SELECT
    'purchase_orders_clean -> suppliers_clean',
    COUNT(*)
FROM purchase_orders_clean po
LEFT JOIN suppliers_clean s
    ON po.supplier_id = s.supplier_id
WHERE s.supplier_id IS NULL

UNION ALL

SELECT
    'purchase_orders_clean -> products_clean',
    COUNT(*)
FROM purchase_orders_clean po
LEFT JOIN products_clean p
    ON po.product_id = p.product_id
WHERE p.product_id IS NULL

UNION ALL

SELECT
    'purchase_orders_clean -> warehouses_clean',
    COUNT(*)
FROM purchase_orders_clean po
LEFT JOIN warehouses_clean w
    ON po.warehouse_id = w.warehouse_id
WHERE w.warehouse_id IS NULL

UNION ALL

SELECT
    'sales_orders_clean -> products_clean',
    COUNT(*)
FROM sales_orders_clean so
LEFT JOIN products_clean p
    ON so.product_id = p.product_id
WHERE p.product_id IS NULL

UNION ALL

SELECT
    'sales_orders_clean -> warehouses_clean',
    COUNT(*)
FROM sales_orders_clean so
LEFT JOIN warehouses_clean w
    ON so.warehouse_id = w.warehouse_id
WHERE w.warehouse_id IS NULL

UNION ALL

SELECT
    'shipments_clean -> sales_orders_clean',
    COUNT(*)
FROM shipments_clean sh
LEFT JOIN sales_orders_clean so
    ON sh.sales_order_id = so.sales_order_id
WHERE so.sales_order_id IS NULL;

-- =====================================================
-- SECTION 4: BUSINESS RULE VALIDATION
-- Purpose: Identify values that violate key business rules
-- Expected result: Zero invalid records for each check
-- =====================================================

SELECT
    'Products: Non-positive unit cost' AS validation_check,
    COUNT(*) AS invalid_records
FROM products_clean
WHERE unit_cost <= 0

UNION ALL

SELECT
    'Products: Negative selling price',
    COUNT(*)
FROM products_clean
WHERE unit_price < 0

UNION ALL

SELECT
    'Inventory: Negative stock quantity',
    COUNT(*)
FROM inventory_clean
WHERE stock_quantity < 0

UNION ALL

SELECT
    'Inventory: Negative reserved quantity',
    COUNT(*)
FROM inventory_clean
WHERE reserved_quantity < 0

UNION ALL

SELECT
    'Inventory: Reserved quantity exceeds stock',
    COUNT(*)
FROM inventory_clean
WHERE reserved_quantity > stock_quantity

UNION ALL

SELECT
    'Inventory: Available stock calculation mismatch',
    COUNT(*)
FROM inventory_clean
WHERE available_stock <> stock_quantity - reserved_quantity

UNION ALL

SELECT
    'Purchase Orders: Non-positive order quantity',
    COUNT(*)
FROM purchase_orders_clean
WHERE order_quantity <= 0

UNION ALL

SELECT
    'Purchase Orders: Non-positive order value',
    COUNT(*)
FROM purchase_orders_clean
WHERE total_order_value <= 0

UNION ALL

SELECT
    'Sales Orders: Non-positive quantity sold',
    COUNT(*)
FROM sales_orders_clean
WHERE quantity_sold <= 0

UNION ALL

SELECT
    'Sales Orders: Non-positive sales amount',
    COUNT(*)
FROM sales_orders_clean
WHERE sales_amount <= 0

UNION ALL

SELECT
    'Sales Orders: Negative delivery days',
    COUNT(*)
FROM sales_orders_clean
WHERE delivery_days < 0

UNION ALL

SELECT
    'Shipments: Negative shipping cost',
    COUNT(*)
FROM shipments_clean
WHERE shipping_cost < 0;

-- =====================================================
-- SECTION 5: PURCHASE ORDER STATUS VALIDATION
-- Purpose: Check delivery status against delivery dates
-- Expected result: 0 mismatches
-- =====================================================

SELECT
    COUNT(*) AS total_orders,
    SUM(
        CASE
            WHEN delivery_status =
                CASE
                    WHEN STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                         < STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
                        THEN 'Early'
                    WHEN STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                         = STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
                        THEN 'On Time'
                    ELSE 'Delayed'
                END
            THEN 0
            ELSE 1
        END
    ) AS mismatched_records
FROM purchase_orders_clean;

-- =====================================================
-- SECTION 6: INVENTORY STATUS VALIDATION
-- Purpose: Validate stock statuses against reorder levels
-- Expected result: 0 mismatches
-- =====================================================

SELECT 
    COUNT(*) AS total_inventory_records,
    SUM(CASE
        WHEN
            i.stock_status = CASE
                WHEN i.available_stock <= 0 THEN 'Out of Stock'
                WHEN
                    p.reorder_level IS NULL
                        OR p.reorder_level <= 0
                THEN
                    'Needs Review'
                WHEN i.available_stock < p.reorder_level THEN 'Low Stock'
                ELSE 'In Stock'
            END
        THEN
            0
        ELSE 1
    END) AS mismatched_records
FROM
    inventory_clean i
        JOIN
    products_clean p ON i.product_id = p.product_id;
    
-- =====================================================
-- SECTION 7: PURCHASE ORDER DATE CHRONOLOGY
-- Purpose: Check delivery dates against order dates
-- Expected result: 0 invalid records
-- Note: order_date uses DD-MM-YYYY format
-- =====================================================

SELECT
    COUNT(*) AS total_orders,

    SUM(
        CASE
            WHEN STR_TO_DATE(order_date, '%d-%m-%Y')
                 > STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
            THEN 1
            ELSE 0
        END
    ) AS expected_date_before_order,

    SUM(
        CASE
            WHEN actual_delivery_date IS NOT NULL
                 AND STR_TO_DATE(order_date, '%d-%m-%Y')
                     > STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
            THEN 1
            ELSE 0
        END
    ) AS actual_date_before_order

FROM purchase_orders_clean;    

SELECT
    COUNT(*) AS total_orders,

    SUM(
        CASE
            WHEN actual_delivery_date IS NULL
                 OR expected_delivery_date IS NULL
            THEN 1
            ELSE 0
        END
    ) AS missing_delivery_dates,

    SUM(
        CASE
            WHEN actual_delivery_date IS NOT NULL
                 AND expected_delivery_date IS NOT NULL
                 AND (
                     (STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                          < STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
                      AND delivery_status <> 'Early')

                     OR

                     (STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                          = STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
                      AND delivery_status <> 'On Time')

                     OR

                     (STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                          > STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
                      AND delivery_status <> 'Delayed')
                 )
            THEN 1
            ELSE 0
        END
    ) AS status_mismatches

FROM purchase_orders_clean;

-- =====================================================
-- SECTION 8: SALES ORDER DATE VALIDATION
-- Purpose: Validate sales order dates
-- Expected result: 0 invalid dates
-- =====================================================

SELECT
    COUNT(*) AS total_sales_orders,

    SUM(
        CASE
            WHEN order_date IS NULL
                 OR TRIM(order_date) = ''
                 OR STR_TO_DATE(order_date, '%Y-%m-%d') IS NULL
            THEN 1
            ELSE 0
        END
    ) AS invalid_dates,

    SUM(
        CASE
            WHEN STR_TO_DATE(order_date, '%Y-%m-%d') < '2024-01-01'
                 OR STR_TO_DATE(order_date, '%Y-%m-%d') > '2025-12-31'
            THEN 1
            ELSE 0
        END
    ) AS dates_outside_expected_range

FROM sales_orders_clean;

-- =====================================================
-- SECTION 9: SHIPMENT DATE VALIDATION
-- Purpose: Validate shipment dates and chronology
-- Expected result: 0 invalid records
-- =====================================================

SELECT
    COUNT(*) AS total_shipments,

    SUM(
        CASE
            WHEN shipment_date IS NULL
                 OR TRIM(shipment_date) = ''
                 OR STR_TO_DATE(shipment_date, '%Y-%m-%d') IS NULL
                 OR delivery_date IS NULL
                 OR TRIM(delivery_date) = ''
                 OR STR_TO_DATE(delivery_date, '%Y-%m-%d') IS NULL
            THEN 1
            ELSE 0
        END
    ) AS invalid_date_records,

    SUM(
        CASE
            WHEN STR_TO_DATE(shipment_date, '%Y-%m-%d')
                 > STR_TO_DATE(delivery_date, '%Y-%m-%d')
            THEN 1
            ELSE 0
        END
    ) AS delivery_before_shipment,

    SUM(
        CASE
            WHEN STR_TO_DATE(shipment_date, '%Y-%m-%d') < '2024-01-01'
                 OR STR_TO_DATE(shipment_date, '%Y-%m-%d') > '2026-01-02'
            THEN 1
            ELSE 0
        END
    ) AS shipment_dates_outside_range

FROM shipments_clean;

-- =====================================================
-- SECTION 10: KNOWN MISSING VALUE VALIDATION
-- Purpose: Confirm documented missing values
-- Expected result: Counts match previous cleaning results
-- =====================================================

SELECT
    'products_clean' AS table_name,
    'unit_price' AS column_name,
    COUNT(*) AS missing_values
FROM products_clean
WHERE unit_price IS NULL

UNION ALL

SELECT
    'products_clean',
    'reorder_level',
    COUNT(*)
FROM products_clean
WHERE reorder_level IS NULL

UNION ALL

SELECT
    'suppliers_clean',
    'supplier_rating',
    COUNT(*)
FROM suppliers_clean
WHERE supplier_rating IS NULL

UNION ALL

SELECT
    'inventory_clean',
    'stock_status',
    COUNT(*)
FROM inventory_clean
WHERE stock_status = 'Needs Review'

UNION ALL

SELECT
    'shipments_clean',
    'logistics_partner',
    COUNT(*)
FROM shipments_clean
WHERE logistics_partner IS NULL;

-- =====================================================
-- SECTION 11: SHIPMENT AND SALES ORDER DATE VALIDATION
-- Purpose: Check shipment dates against linked order dates
-- Expected result: Review any records returned
-- =====================================================

SELECT
    COUNT(*) AS matched_shipments,

    SUM(
        CASE
            WHEN STR_TO_DATE(s.shipment_date, '%Y-%m-%d')
                 < STR_TO_DATE(o.order_date, '%Y-%m-%d')
            THEN 1
            ELSE 0
        END
    ) AS shipments_before_sales_order

FROM shipments_clean s
JOIN sales_orders_clean o
    ON s.sales_order_id = o.sales_order_id;
    
    -- =====================================================
-- SECTION 12: FINAL DATA-QUALITY SUMMARY
-- Purpose: Confirm final row counts of all cleaned tables
-- Expected result: All seven tables PASS
-- =====================================================

SELECT
    'products_clean' AS table_name,
    COUNT(*) AS actual_rows,
    600 AS expected_rows,
    CASE WHEN COUNT(*) = 600 THEN 'PASS'
         ELSE 'FAIL'
    END AS validation_status
FROM products_clean

UNION ALL

SELECT
    'suppliers_clean',
    COUNT(*),
    122,
    CASE WHEN COUNT(*) = 122 THEN 'PASS'
         ELSE 'FAIL'
    END
FROM suppliers_clean

UNION ALL

SELECT
    'warehouses_clean',
    COUNT(*),
    20,
    CASE WHEN COUNT(*) = 20 THEN 'PASS'
         ELSE 'FAIL'
    END
FROM warehouses_clean

UNION ALL

SELECT
    'inventory_clean',
    COUNT(*),
    6000,
    CASE WHEN COUNT(*) = 6000 THEN 'PASS'
         ELSE 'FAIL'
    END
FROM inventory_clean

UNION ALL

SELECT
    'purchase_orders_clean',
    COUNT(*),
    5000,
    CASE WHEN COUNT(*) = 5000 THEN 'PASS'
         ELSE 'FAIL'
    END
FROM purchase_orders_clean

UNION ALL

SELECT
    'sales_orders_clean',
    COUNT(*),
    18000,
    CASE WHEN COUNT(*) = 18000 THEN 'PASS'
         ELSE 'FAIL'
    END
FROM sales_orders_clean

UNION ALL

SELECT
    'shipments_clean',
    COUNT(*),
    5000,
    CASE WHEN COUNT(*) = 5000 THEN 'PASS'
         ELSE 'FAIL'
    END
FROM shipments_clean;
