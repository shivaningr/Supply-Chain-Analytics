-- -------------------------------------------------------------------------------------
-- 1. PRODUCTS CLEAN
-- --------------------------------------------------------------------------------------
-- 1a. Correcting category spelling
UPDATE products_clean
SET category = CASE
    WHEN category = 'Personl Care' THEN 'Personal Care'
    WHEN category = 'Diary' THEN 'Dairy'
    WHEN category = 'Beverges' THEN 'Beverages'
    ELSE category
END
WHERE category IN ('Personl Care', 'Diary', 'Beverges');

SELECT category, COUNT(*) AS product_count
FROM products_clean
GROUP BY category
ORDER BY category;

-- 1b. Investigate the two negative selling prices
SELECT
    product_id,
    product_name,
    category,
    unit_price,
    unit_cost,
    reorder_level
FROM products_clean
WHERE unit_price <= 0;

SELECT
    p.product_id,
    p.product_name,
    p.unit_price AS original_price,
    c.unit_price AS clean_price,
    p.unit_cost
FROM products p
JOIN products_clean c
    ON p.product_id = c.product_id
WHERE p.unit_price <= 0;

-- Handling the negative prices
UPDATE products_clean
SET unit_price = NULL
WHERE product_id IN ('PRD0070', 'PRD0403')
  AND unit_price < 0;
  
  SELECT
    product_id,
    product_name,
    unit_price,
    unit_cost
FROM products_clean
WHERE product_id IN ('PRD0070', 'PRD0403');

-- Investigating invalid reorder levels
SELECT
    product_id,
    product_name,
    category,
    reorder_level,
    reorder_quantity
FROM products_clean
WHERE reorder_level <= 0
ORDER BY reorder_level, product_id;

UPDATE products_clean
SET reorder_level = NULL
WHERE reorder_level < 0;

SELECT
    product_id,
    product_name,
    reorder_level,
    reorder_quantity
FROM products_clean
WHERE product_id IN (
    'PRD0004',
    'PRD0148',
    'PRD0533',
    'PRD0055',
    'PRD0440'
)
ORDER BY product_id;

SELECT
    SUM(CASE WHEN unit_price < 0 THEN 1 ELSE 0 END)
        AS negative_prices,
    SUM(CASE WHEN reorder_level < 0 THEN 1 ELSE 0 END)
        AS negative_reorder_levels,
    SUM(CASE WHEN unit_price IS NULL THEN 1 ELSE 0 END)
        AS missing_prices,
    SUM(CASE WHEN reorder_level IS NULL THEN 1 ELSE 0 END)
        AS missing_reorder_levels
FROM products_clean;

-- 2. SUPPLIERS CLEAN

-- 2a. Converting blank ratings to null
UPDATE suppliers_clean
SET supplier_rating = NULL
WHERE TRIM(supplier_rating) = '';

SELECT
    COUNT(*) AS total_suppliers,
    SUM(CASE
        WHEN supplier_rating IS NULL
             OR TRIM(supplier_rating) = ''
        THEN 1 ELSE 0
    END) AS missing_ratings,
    SUM(CASE
        WHEN supplier_rating < 1
             OR supplier_rating > 5
        THEN 1 ELSE 0
    END) AS invalid_ratings
FROM suppliers_clean;

-- --------------------------------------------------------------------------------
-- 3. INVENTORY CLEAN
-- ---------------------------------------------------------------------------------

-- 3a. Recalculating stock status
UPDATE inventory_clean AS i
JOIN products_clean AS p
    ON i.product_id = p.product_id
SET i.stock_status = CASE
    WHEN i.available_stock <= 0 THEN 'Out of Stock'
    WHEN p.reorder_level IS NULL OR p.reorder_level <= 0
        THEN 'Needs Review'
    WHEN i.available_stock < p.reorder_level
        THEN 'Low Stock'
    ELSE 'In Stock'
END;

SELECT
    stock_status,
    COUNT(*) AS inventory_records
FROM inventory_clean
GROUP BY stock_status
ORDER BY inventory_records DESC;

-- ----------------------------------------------------------------------------
-- 4. PURCHASE ORDERS CLEAN
-- --------------------------------------------------------------------------

-- 4a. Inspecting the date inconsistencies
SELECT
    purchase_order_id,
    supplier_id,
    order_date,
    expected_delivery_date,
    actual_delivery_date,
    delivery_status
FROM purchase_orders_clean
WHERE STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
          < STR_TO_DATE(order_date, '%Y-%m-%d')
   OR STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
          < STR_TO_DATE(order_date, '%Y-%m-%d')
ORDER BY order_date
LIMIT 20;

-- 4b. Verifying the date format
SELECT
    purchase_order_id,
    order_date,
    STR_TO_DATE(order_date, '%Y-%m-%d') AS parsed_order_date,
    expected_delivery_date,
    STR_TO_DATE(expected_delivery_date, '%Y-%m-%d') AS parsed_expected_date,
    actual_delivery_date,
    STR_TO_DATE(actual_delivery_date, '%Y-%m-%d') AS parsed_actual_date
FROM purchase_orders_clean
WHERE purchase_order_id IN (
    'PO001861',
    'PO000565',
    'PO003635',
    'PO002571',
    'PO000652'
);

-- 4c. Rechecking delivery date consistencies
SELECT
    purchase_order_id,
    supplier_id,
    order_date,
    STR_TO_DATE(order_date, '%d-%m-%Y') AS parsed_order_date,
    expected_delivery_date,
    actual_delivery_date,
    delivery_status
FROM purchase_orders_clean
WHERE
    STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
        < STR_TO_DATE(order_date, '%d-%m-%Y')
    OR
    STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
        < STR_TO_DATE(order_date, '%d-%m-%Y')
ORDER BY purchase_order_id
LIMIT 20;

-- 4d.Verifying delivery status mismatches
SELECT
    purchase_order_id,
    expected_delivery_date,
    actual_delivery_date,
    delivery_status,
    CASE
        WHEN STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
             < STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
            THEN 'Early'
        WHEN STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
             = STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
            THEN 'On Time'
        ELSE 'Delayed'
    END AS expected_status
FROM purchase_orders_clean
WHERE delivery_status = 'On Time'
  AND STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
      <> STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
LIMIT 20;

-- 4c. Correcting delivery statuses
UPDATE purchase_orders_clean
SET delivery_status =
    CASE
        WHEN STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
             < STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
            THEN 'Early'
        WHEN STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
             = STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
            THEN 'On Time'
        ELSE 'Delayed'
    END
WHERE delivery_status = 'On Time'
  AND STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
      <> STR_TO_DATE(expected_delivery_date, '%Y-%m-%d');
      
SELECT
    delivery_status,
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
            THEN 1
            ELSE 0
        END
    ) AS matching_records,
    SUM(
        CASE
            WHEN delivery_status <>
                CASE
                    WHEN STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                         < STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
                        THEN 'Early'
                    WHEN STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                         = STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
                        THEN 'On Time'
                    ELSE 'Delayed'
                END
            THEN 1
            ELSE 0
        END
    ) AS mismatched_records
FROM purchase_orders_clean
GROUP BY delivery_status
ORDER BY delivery_status;    

-- -------------------------------------------------------------------------------
-- 5. SALES ORDERS CLEAN
-- ------------------------------------------------------------------------------

 -- 5a. Validation of quantities, sales amount and delivery days by order status
 SELECT
    order_status,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN quantity_sold <= 0 THEN 1 ELSE 0 END)
        AS invalid_quantity,
    SUM(CASE WHEN sales_amount <= 0 THEN 1 ELSE 0 END)
        AS invalid_sales_amount,
    SUM(CASE WHEN delivery_days < 0 THEN 1 ELSE 0 END)
        AS invalid_delivery_days
FROM sales_orders_clean
GROUP BY order_status
ORDER BY order_status;

-- -------------------------------------------------------------------------------
-- 6. SHIPMENTS CLEAN
-- ------------------------------------------------------------------------------

-- 6a. Checking missing logistics partners
SELECT
    shipment_id,
    sales_order_id,
    shipment_date,
    delivery_date,
    shipment_status,
    logistics_partner,
    delay_reason
FROM shipments_clean
WHERE logistics_partner IS NULL
   OR TRIM(logistics_partner) = ''
ORDER BY shipment_id
LIMIT 20;

-- 6b. Handling missing logistics partners
UPDATE shipments_clean
SET logistics_partner = NULL
WHERE TRIM(logistics_partner) = '';

-- 6c. Investigating delay reasons
SELECT
    shipment_id,
    sales_order_id,
    shipment_status,
    shipment_date,
    delivery_date,
    delay_reason
FROM shipments_clean
WHERE shipment_status <> 'Delayed'
  AND delay_reason IS NOT NULL
  AND TRIM(delay_reason) <> ''
ORDER BY shipment_id
LIMIT 20;

-- 6e. Validating shipments clean
SELECT
    COUNT(*) AS total_shipments,
    SUM(CASE
        WHEN logistics_partner IS NULL
          OR TRIM(logistics_partner) = ''
        THEN 1 ELSE 0
    END) AS missing_logistics_partners,
    SUM(CASE
        WHEN shipment_id IS NULL
          OR sales_order_id IS NULL
          OR shipment_date IS NULL
          OR delivery_date IS NULL
          OR shipment_status IS NULL
        THEN 1 ELSE 0
    END) AS missing_required_values,
    SUM(CASE
        WHEN delivery_date < shipment_date
        THEN 1 ELSE 0
    END) AS invalid_date_sequences,
    SUM(CASE
        WHEN shipping_cost IS NULL
          OR shipping_cost < 0
        THEN 1 ELSE 0
    END) AS invalid_shipping_costs
FROM shipments_clean;

-- VERIFYING ROW COUNTS
SELECT 'products' AS table_name,
       (SELECT COUNT(*) FROM products) AS original_rows,
       (SELECT COUNT(*) FROM products_clean) AS clean_rows
UNION ALL
SELECT 'suppliers',
       (SELECT COUNT(*) FROM suppliers),
       (SELECT COUNT(*) FROM suppliers_clean)
UNION ALL
SELECT 'warehouses',
       (SELECT COUNT(*) FROM warehouses),
       (SELECT COUNT(*) FROM warehouses_clean)
UNION ALL
SELECT 'inventory',
       (SELECT COUNT(*) FROM inventory),
       (SELECT COUNT(*) FROM inventory_clean)
UNION ALL
SELECT 'purchase_orders',
       (SELECT COUNT(*) FROM purchase_orders),
       (SELECT COUNT(*) FROM purchase_orders_clean)
UNION ALL
SELECT 'sales_orders',
       (SELECT COUNT(*) FROM sales_orders),
       (SELECT COUNT(*) FROM sales_orders_clean)
UNION ALL
SELECT 'shipments',
       (SELECT COUNT(*) FROM shipments),
       (SELECT COUNT(*) FROM shipments_clean);