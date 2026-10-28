-- Every column profile
SELECT 'products' AS table_name, 'product_id' AS column_name, COUNT(*) AS total_rows, SUM(`product_id` IS NULL) AS null_count, SUM(TRIM(CAST(`product_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `product_id`) AS distinct_non_null_values FROM `products`
UNION ALL
SELECT 'products' AS table_name, 'product_name' AS column_name, COUNT(*) AS total_rows, SUM(`product_name` IS NULL) AS null_count, SUM(TRIM(CAST(`product_name` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `product_name`) AS distinct_non_null_values FROM `products`
UNION ALL
SELECT 'products' AS table_name, 'category' AS column_name, COUNT(*) AS total_rows, SUM(`category` IS NULL) AS null_count, SUM(TRIM(CAST(`category` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `category`) AS distinct_non_null_values FROM `products`
UNION ALL
SELECT 'products' AS table_name, 'brand' AS column_name, COUNT(*) AS total_rows, SUM(`brand` IS NULL) AS null_count, SUM(TRIM(CAST(`brand` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `brand`) AS distinct_non_null_values FROM `products`
UNION ALL
SELECT 'products' AS table_name, 'unit_price' AS column_name, COUNT(*) AS total_rows, SUM(`unit_price` IS NULL) AS null_count, SUM(TRIM(CAST(`unit_price` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `unit_price`) AS distinct_non_null_values FROM `products`
UNION ALL
SELECT 'products' AS table_name, 'unit_cost' AS column_name, COUNT(*) AS total_rows, SUM(`unit_cost` IS NULL) AS null_count, SUM(TRIM(CAST(`unit_cost` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `unit_cost`) AS distinct_non_null_values FROM `products`
UNION ALL
SELECT 'products' AS table_name, 'reorder_level' AS column_name, COUNT(*) AS total_rows, SUM(`reorder_level` IS NULL) AS null_count, SUM(TRIM(CAST(`reorder_level` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `reorder_level`) AS distinct_non_null_values FROM `products`
UNION ALL
SELECT 'products' AS table_name, 'reorder_quantity' AS column_name, COUNT(*) AS total_rows, SUM(`reorder_quantity` IS NULL) AS null_count, SUM(TRIM(CAST(`reorder_quantity` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `reorder_quantity`) AS distinct_non_null_values FROM `products`
UNION ALL
SELECT 'products' AS table_name, 'shelf_life_days' AS column_name, COUNT(*) AS total_rows, SUM(`shelf_life_days` IS NULL) AS null_count, SUM(TRIM(CAST(`shelf_life_days` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `shelf_life_days`) AS distinct_non_null_values FROM `products`
UNION ALL
SELECT 'suppliers' AS table_name, 'supplier_id' AS column_name, COUNT(*) AS total_rows, SUM(`supplier_id` IS NULL) AS null_count, SUM(TRIM(CAST(`supplier_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `supplier_id`) AS distinct_non_null_values FROM `suppliers`
UNION ALL
SELECT 'suppliers' AS table_name, 'supplier_name' AS column_name, COUNT(*) AS total_rows, SUM(`supplier_name` IS NULL) AS null_count, SUM(TRIM(CAST(`supplier_name` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `supplier_name`) AS distinct_non_null_values FROM `suppliers`
UNION ALL
SELECT 'suppliers' AS table_name, 'supplier_city' AS column_name, COUNT(*) AS total_rows, SUM(`supplier_city` IS NULL) AS null_count, SUM(TRIM(CAST(`supplier_city` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `supplier_city`) AS distinct_non_null_values FROM `suppliers`
UNION ALL
SELECT 'suppliers' AS table_name, 'supplier_state' AS column_name, COUNT(*) AS total_rows, SUM(`supplier_state` IS NULL) AS null_count, SUM(TRIM(CAST(`supplier_state` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `supplier_state`) AS distinct_non_null_values FROM `suppliers`
UNION ALL
SELECT 'suppliers' AS table_name, 'supplier_rating' AS column_name, COUNT(*) AS total_rows, SUM(`supplier_rating` IS NULL) AS null_count, SUM(TRIM(CAST(`supplier_rating` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `supplier_rating`) AS distinct_non_null_values FROM `suppliers`
UNION ALL
SELECT 'suppliers' AS table_name, 'lead_time_days' AS column_name, COUNT(*) AS total_rows, SUM(`lead_time_days` IS NULL) AS null_count, SUM(TRIM(CAST(`lead_time_days` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `lead_time_days`) AS distinct_non_null_values FROM `suppliers`
UNION ALL
SELECT 'suppliers' AS table_name, 'payment_terms' AS column_name, COUNT(*) AS total_rows, SUM(`payment_terms` IS NULL) AS null_count, SUM(TRIM(CAST(`payment_terms` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `payment_terms`) AS distinct_non_null_values FROM `suppliers`
UNION ALL
SELECT 'suppliers' AS table_name, 'contact_person' AS column_name, COUNT(*) AS total_rows, SUM(`contact_person` IS NULL) AS null_count, SUM(TRIM(CAST(`contact_person` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `contact_person`) AS distinct_non_null_values FROM `suppliers`
UNION ALL
SELECT 'warehouses' AS table_name, 'warehouse_id' AS column_name, COUNT(*) AS total_rows, SUM(`warehouse_id` IS NULL) AS null_count, SUM(TRIM(CAST(`warehouse_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `warehouse_id`) AS distinct_non_null_values FROM `warehouses`
UNION ALL
SELECT 'warehouses' AS table_name, 'warehouse_name' AS column_name, COUNT(*) AS total_rows, SUM(`warehouse_name` IS NULL) AS null_count, SUM(TRIM(CAST(`warehouse_name` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `warehouse_name`) AS distinct_non_null_values FROM `warehouses`
UNION ALL
SELECT 'warehouses' AS table_name, 'city' AS column_name, COUNT(*) AS total_rows, SUM(`city` IS NULL) AS null_count, SUM(TRIM(CAST(`city` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `city`) AS distinct_non_null_values FROM `warehouses`
UNION ALL
SELECT 'warehouses' AS table_name, 'state' AS column_name, COUNT(*) AS total_rows, SUM(`state` IS NULL) AS null_count, SUM(TRIM(CAST(`state` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `state`) AS distinct_non_null_values FROM `warehouses`
UNION ALL
SELECT 'warehouses' AS table_name, 'warehouse_capacity' AS column_name, COUNT(*) AS total_rows, SUM(`warehouse_capacity` IS NULL) AS null_count, SUM(TRIM(CAST(`warehouse_capacity` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `warehouse_capacity`) AS distinct_non_null_values FROM `warehouses`
UNION ALL
SELECT 'warehouses' AS table_name, 'warehouse_manager' AS column_name, COUNT(*) AS total_rows, SUM(`warehouse_manager` IS NULL) AS null_count, SUM(TRIM(CAST(`warehouse_manager` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `warehouse_manager`) AS distinct_non_null_values FROM `warehouses`
UNION ALL
SELECT 'warehouses' AS table_name, 'region' AS column_name, COUNT(*) AS total_rows, SUM(`region` IS NULL) AS null_count, SUM(TRIM(CAST(`region` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `region`) AS distinct_non_null_values FROM `warehouses`
UNION ALL
SELECT 'inventory' AS table_name, 'inventory_id' AS column_name, COUNT(*) AS total_rows, SUM(`inventory_id` IS NULL) AS null_count, SUM(TRIM(CAST(`inventory_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `inventory_id`) AS distinct_non_null_values FROM `inventory`
UNION ALL
SELECT 'inventory' AS table_name, 'warehouse_id' AS column_name, COUNT(*) AS total_rows, SUM(`warehouse_id` IS NULL) AS null_count, SUM(TRIM(CAST(`warehouse_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `warehouse_id`) AS distinct_non_null_values FROM `inventory`
UNION ALL
SELECT 'inventory' AS table_name, 'product_id' AS column_name, COUNT(*) AS total_rows, SUM(`product_id` IS NULL) AS null_count, SUM(TRIM(CAST(`product_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `product_id`) AS distinct_non_null_values FROM `inventory`
UNION ALL
SELECT 'inventory' AS table_name, 'stock_quantity' AS column_name, COUNT(*) AS total_rows, SUM(`stock_quantity` IS NULL) AS null_count, SUM(TRIM(CAST(`stock_quantity` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `stock_quantity`) AS distinct_non_null_values FROM `inventory`
UNION ALL
SELECT 'inventory' AS table_name, 'reserved_quantity' AS column_name, COUNT(*) AS total_rows, SUM(`reserved_quantity` IS NULL) AS null_count, SUM(TRIM(CAST(`reserved_quantity` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `reserved_quantity`) AS distinct_non_null_values FROM `inventory`
UNION ALL
SELECT 'inventory' AS table_name, 'available_stock' AS column_name, COUNT(*) AS total_rows, SUM(`available_stock` IS NULL) AS null_count, SUM(TRIM(CAST(`available_stock` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `available_stock`) AS distinct_non_null_values FROM `inventory`
UNION ALL
SELECT 'inventory' AS table_name, 'inventory_date' AS column_name, COUNT(*) AS total_rows, SUM(`inventory_date` IS NULL) AS null_count, SUM(TRIM(CAST(`inventory_date` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `inventory_date`) AS distinct_non_null_values FROM `inventory`
UNION ALL
SELECT 'inventory' AS table_name, 'stock_status' AS column_name, COUNT(*) AS total_rows, SUM(`stock_status` IS NULL) AS null_count, SUM(TRIM(CAST(`stock_status` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `stock_status`) AS distinct_non_null_values FROM `inventory`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'purchase_order_id' AS column_name, COUNT(*) AS total_rows, SUM(`purchase_order_id` IS NULL) AS null_count, SUM(TRIM(CAST(`purchase_order_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `purchase_order_id`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'supplier_id' AS column_name, COUNT(*) AS total_rows, SUM(`supplier_id` IS NULL) AS null_count, SUM(TRIM(CAST(`supplier_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `supplier_id`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'warehouse_id' AS column_name, COUNT(*) AS total_rows, SUM(`warehouse_id` IS NULL) AS null_count, SUM(TRIM(CAST(`warehouse_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `warehouse_id`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'product_id' AS column_name, COUNT(*) AS total_rows, SUM(`product_id` IS NULL) AS null_count, SUM(TRIM(CAST(`product_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `product_id`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'order_date' AS column_name, COUNT(*) AS total_rows, SUM(`order_date` IS NULL) AS null_count, SUM(TRIM(CAST(`order_date` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `order_date`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'expected_delivery_date' AS column_name, COUNT(*) AS total_rows, SUM(`expected_delivery_date` IS NULL) AS null_count, SUM(TRIM(CAST(`expected_delivery_date` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `expected_delivery_date`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'actual_delivery_date' AS column_name, COUNT(*) AS total_rows, SUM(`actual_delivery_date` IS NULL) AS null_count, SUM(TRIM(CAST(`actual_delivery_date` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `actual_delivery_date`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'delivery_status' AS column_name, COUNT(*) AS total_rows, SUM(`delivery_status` IS NULL) AS null_count, SUM(TRIM(CAST(`delivery_status` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `delivery_status`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'total_order_value' AS column_name, COUNT(*) AS total_rows, SUM(`total_order_value` IS NULL) AS null_count, SUM(TRIM(CAST(`total_order_value` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `total_order_value`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'purchase_orders' AS table_name, 'order_quantity' AS column_name, COUNT(*) AS total_rows, SUM(`order_quantity` IS NULL) AS null_count, SUM(TRIM(CAST(`order_quantity` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `order_quantity`) AS distinct_non_null_values FROM `purchase_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'sales_order_id' AS column_name, COUNT(*) AS total_rows, SUM(`sales_order_id` IS NULL) AS null_count, SUM(TRIM(CAST(`sales_order_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `sales_order_id`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'warehouse_id' AS column_name, COUNT(*) AS total_rows, SUM(`warehouse_id` IS NULL) AS null_count, SUM(TRIM(CAST(`warehouse_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `warehouse_id`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'product_id' AS column_name, COUNT(*) AS total_rows, SUM(`product_id` IS NULL) AS null_count, SUM(TRIM(CAST(`product_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `product_id`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'order_date' AS column_name, COUNT(*) AS total_rows, SUM(`order_date` IS NULL) AS null_count, SUM(TRIM(CAST(`order_date` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `order_date`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'customer_type' AS column_name, COUNT(*) AS total_rows, SUM(`customer_type` IS NULL) AS null_count, SUM(TRIM(CAST(`customer_type` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `customer_type`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'city' AS column_name, COUNT(*) AS total_rows, SUM(`city` IS NULL) AS null_count, SUM(TRIM(CAST(`city` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `city`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'state' AS column_name, COUNT(*) AS total_rows, SUM(`state` IS NULL) AS null_count, SUM(TRIM(CAST(`state` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `state`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'quantity_sold' AS column_name, COUNT(*) AS total_rows, SUM(`quantity_sold` IS NULL) AS null_count, SUM(TRIM(CAST(`quantity_sold` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `quantity_sold`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'sales_amount' AS column_name, COUNT(*) AS total_rows, SUM(`sales_amount` IS NULL) AS null_count, SUM(TRIM(CAST(`sales_amount` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `sales_amount`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'delivery_days' AS column_name, COUNT(*) AS total_rows, SUM(`delivery_days` IS NULL) AS null_count, SUM(TRIM(CAST(`delivery_days` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `delivery_days`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'sales_orders' AS table_name, 'order_status' AS column_name, COUNT(*) AS total_rows, SUM(`order_status` IS NULL) AS null_count, SUM(TRIM(CAST(`order_status` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `order_status`) AS distinct_non_null_values FROM `sales_orders`
UNION ALL
SELECT 'shipments' AS table_name, 'shipment_id' AS column_name, COUNT(*) AS total_rows, SUM(`shipment_id` IS NULL) AS null_count, SUM(TRIM(CAST(`shipment_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `shipment_id`) AS distinct_non_null_values FROM `shipments`
UNION ALL
SELECT 'shipments' AS table_name, 'sales_order_id' AS column_name, COUNT(*) AS total_rows, SUM(`sales_order_id` IS NULL) AS null_count, SUM(TRIM(CAST(`sales_order_id` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `sales_order_id`) AS distinct_non_null_values FROM `shipments`
UNION ALL
SELECT 'shipments' AS table_name, 'logistics_partner' AS column_name, COUNT(*) AS total_rows, SUM(`logistics_partner` IS NULL) AS null_count, SUM(TRIM(CAST(`logistics_partner` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `logistics_partner`) AS distinct_non_null_values FROM `shipments`
UNION ALL
SELECT 'shipments' AS table_name, 'shipment_date' AS column_name, COUNT(*) AS total_rows, SUM(`shipment_date` IS NULL) AS null_count, SUM(TRIM(CAST(`shipment_date` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `shipment_date`) AS distinct_non_null_values FROM `shipments`
UNION ALL
SELECT 'shipments' AS table_name, 'delivery_date' AS column_name, COUNT(*) AS total_rows, SUM(`delivery_date` IS NULL) AS null_count, SUM(TRIM(CAST(`delivery_date` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `delivery_date`) AS distinct_non_null_values FROM `shipments`
UNION ALL
SELECT 'shipments' AS table_name, 'shipping_cost' AS column_name, COUNT(*) AS total_rows, SUM(`shipping_cost` IS NULL) AS null_count, SUM(TRIM(CAST(`shipping_cost` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `shipping_cost`) AS distinct_non_null_values FROM `shipments`
UNION ALL
SELECT 'shipments' AS table_name, 'shipment_status' AS column_name, COUNT(*) AS total_rows, SUM(`shipment_status` IS NULL) AS null_count, SUM(TRIM(CAST(`shipment_status` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `shipment_status`) AS distinct_non_null_values FROM `shipments`
UNION ALL
SELECT 'shipments' AS table_name, 'delay_reason' AS column_name, COUNT(*) AS total_rows, SUM(`delay_reason` IS NULL) AS null_count, SUM(TRIM(CAST(`delay_reason` AS CHAR)) = '') AS blank_count, COUNT(DISTINCT `delay_reason`) AS distinct_non_null_values FROM `shipments`;

-- ----------------------------------------------------------------------------------------------------
-- 1. PRODUCTS 
-- ----------------------------------------------------------------------------------------------------
-- 1a Inspect product categories

SELECT
    category,
    COUNT(*) AS product_count
FROM products
GROUP BY category
ORDER BY product_count DESC;
/*
Finding: Inconsistent category spellings identified.

Personl Care: 2 products -> Personal Care
Diary:        2 products -> Dairy
Beverges:     1 product  -> Beverages

Planned action:
Standardise these five records during the cleaning phase.
*/

-- 1b Check invalid prices and costs
SELECT
    product_id,
    product_name,
    unit_price,
    unit_cost
FROM products
WHERE unit_price <= 0
   OR unit_cost <= 0
ORDER BY product_id;
/*
Finding: Two products have negative unit prices.

PRD0070: Dettol Personal Original | Unit price = -309.51
PRD0403: Amul Dairy Advanced      | Unit price = -120.71

Planned action:
Investigate the source values before correcting them
in the cleaning phase. Do not change them during profiling.
*/

-- 1d Check reorder levels and quantities
SELECT
    product_id,
    product_name,
    reorder_level,
    reorder_quantity
FROM products
WHERE reorder_level <= 0
   OR reorder_quantity <= 0;
   /*
Finding: Five products have reorder_level <= 0.

Negative reorder levels:
PRD0004: -10
PRD0148: -10
PRD0533: -10

Zero reorder levels:
PRD0055: 0
PRD0440: 0

All five products have positive reorder quantities.

Planned action:
Investigate the negative and zero values before cleaning.
Do not update records during profiling.
*/
   
   -- 1e Check missing or blank product information
   SELECT
    SUM(
        CASE
            WHEN product_name IS NULL
              OR TRIM(product_name) = ''
            THEN 1 ELSE 0
        END
    ) AS missing_product_names,

    SUM(
        CASE
            WHEN category IS NULL
              OR TRIM(category) = ''
            THEN 1 ELSE 0
        END
    ) AS missing_categories,

    SUM(
        CASE
            WHEN brand IS NULL
              OR TRIM(brand) = ''
            THEN 1 ELSE 0
        END
    ) AS missing_brands
FROM products;
/*
Finding: Missing and blank product information.

Missing product names: 0
Missing categories:    0
Missing brands:       0

Conclusion:
No NULL, empty, or whitespace-only values were found
in these three columns.
*/

-- checking duplicates
SELECT
    product_id,
    COUNT(*) AS occurrences
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;
-- Finding: No duplicate product_name values were found.
-- Conclusion: All 600 product names are unique.

-- Checking negative or zero product values
SELECT
    SUM(CASE WHEN unit_price <= 0 THEN 1 ELSE 0 END) AS invalid_prices,
    SUM(CASE WHEN unit_cost <= 0 THEN 1 ELSE 0 END) AS invalid_costs,
    SUM(CASE WHEN reorder_level < 0 THEN 1 ELSE 0 END) AS negative_reorder_levels,
    SUM(CASE WHEN reorder_quantity <= 0 THEN 1 ELSE 0 END) AS invalid_reorder_quantities,
    SUM(CASE WHEN shelf_life_days <= 0 THEN 1 ELSE 0 END) AS invalid_shelf_life
FROM products;
-- Finding: 2 products have non-positive selling prices.
-- Finding: 3 products have negative reorder levels.
-- Finding: No non-positive unit costs, reorder quantities, or shelf-life values were found.
-- Action: Investigate the identified records before making corrections.

-- Product brand consistency
SELECT
    brand,
    COUNT(*) AS product_count
FROM products
GROUP BY brand
ORDER BY brand;
-- Finding: 38 distinct brands were found across 600 products.
-- Conclusion: No obvious brand-name inconsistencies were identified.
-- Action: No brand standardization is currently required.

-- ------------------------------------------------------------
-- 2. SUPPLIERS
-- ---------------------------------------------------------------
-- 2a. Suppliers rating
SELECT
    supplier_id,
    supplier_name,
    supplier_rating
FROM suppliers
WHERE supplier_rating IS NULL
   OR TRIM(CAST(supplier_rating AS CHAR)) = ''
   OR CAST(supplier_rating AS DECIMAL(5,2)) < 1
   OR CAST(supplier_rating AS DECIMAL(5,2)) > 5;
   -- Finding: 5 suppliers have missing supplier_rating values.
-- Validation: No ratings outside the documented 1–5 range were found.
-- Action: Preserve missing ratings; do not replace them with assumed values.

-- 2b. Invalid supplier lead times
SELECT
    supplier_id,
    supplier_name,
    lead_time_days
FROM suppliers
WHERE lead_time_days <= 0;
-- Finding: No suppliers have zero or negative lead_time_days.
-- Validation: All supplier lead times are positive.

-- 2c. Check supplier rating and lead-time data types and values
SELECT
    supplier_id,
    supplier_name,
    supplier_rating
FROM suppliers
WHERE supplier_rating IS NOT NULL
  AND TRIM(CAST(supplier_rating AS CHAR)) <> ''
  AND (
      CAST(supplier_rating AS DECIMAL(5,2)) < 1
      OR CAST(supplier_rating AS DECIMAL(5,2)) > 5
  );
-- Finding: No supplier ratings fall outside the documented 1–5 range.
-- Validation: Decimal ratings, such as 2.9 and 4.5, are valid.

-- ----------------------------------------------------------------------
-- 3. Warehouse
-- ------------------------------------------------------------------------
-- 3a. Checking warehouse data quality
SELECT
    warehouse_id,
    warehouse_name,
    city,
    state,
    warehouse_capacity
FROM warehouses
WHERE warehouse_id IS NULL
   OR TRIM(CAST(warehouse_id AS CHAR)) = ''
   OR warehouse_name IS NULL
   OR TRIM(warehouse_name) = ''
   OR city IS NULL
   OR TRIM(city) = ''
   OR state IS NULL
   OR TRIM(state) = ''
   OR warehouse_capacity IS NULL
   OR warehouse_capacity <= 0;
-- Finding: No missing warehouse IDs, names, cities, or states were found.
-- Validation: All storage capacities are present and greater than zero.

-- 3b. Checking warehouse ID uniqueness
SELECT
    warehouse_id,
    COUNT(*) AS record_count
FROM warehouses
GROUP BY warehouse_id
HAVING COUNT(*) > 1;
-- Finding: No duplicate warehouse_id values were found.
-- Validation: Each warehouse has a unique identifier.

-- ---------------------------------------------------------------------
-- 4. Inventory 
-- ----------------------------------------------------------------------

-- 4a. Checking missing identifiers, invalid quantities, and invalid costs.
SELECT *
FROM inventory
WHERE inventory_id IS NULL
   OR warehouse_id IS NULL
   OR product_id IS NULL
   OR stock_quantity IS NULL
   OR reserved_quantity IS NULL
   OR available_stock IS NULL
   OR stock_quantity < 0
   OR reserved_quantity < 0
   OR available_stock < 0
   OR reserved_quantity > stock_quantity
   OR available_stock <> stock_quantity - reserved_quantity;
   -- Finding: No missing required IDs or stock quantities were found.
-- Validation: No negative stock values or reserved quantities exceeding total stock were found.
-- Validation: available_stock = stock_quantity - reserved_quantity for all checked records.

-- 4b. Checking inventory status and dates
SELECT
    stock_status,
    COUNT(*) AS record_count
FROM inventory
GROUP BY stock_status
ORDER BY record_count DESC;
-- Finding: Three stock-status categories exist: Low Stock, In Stock, and Out of Stock.
-- Validation: All 6,000 inventory records are accounted for.
-- Note: Status validity and consistency with stock quantities require further validation.

-- 4c. Checking inventory dates
SELECT
    MIN(inventory_date) AS earliest_inventory_date,
    MAX(inventory_date) AS latest_inventory_date,
    SUM(CASE WHEN inventory_date IS NULL THEN 1 ELSE 0 END) AS missing_dates
FROM inventory;
-- Finding: Inventory dates range from 2024-01-01 to 2025-12-31.
-- Validation: No missing inventory dates were found.

-- 4d. Validating inventory status against stock quantities
SELECT
    stock_status,
    COUNT(*) AS record_count,
    MIN(stock_quantity) AS min_stock_quantity,
    MAX(stock_quantity) AS max_stock_quantity,
    MIN(available_stock) AS min_available_stock,
    MAX(available_stock) AS max_available_stock
FROM inventory
GROUP BY stock_status
ORDER BY stock_status;
-- Finding: All Out of Stock records have zero available stock.
-- Finding: In Stock and Low Stock records have positive available stock.
-- Validation: The Low Stock threshold must be confirmed before validating the distinction between these two categories.

-- 4e. Comparing each onventory status with expected status
SELECT
    i.stock_status AS current_status,
    CASE
        WHEN i.available_stock <= 0 THEN 'Out of Stock'
        WHEN p.reorder_level IS NULL OR p.reorder_level <= 0
            THEN 'Needs Review'
        WHEN i.available_stock < p.reorder_level THEN 'Low Stock'
        ELSE 'In Stock'
    END AS expected_status,
    COUNT(*) AS record_count
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
GROUP BY
    i.stock_status,
    CASE
        WHEN i.available_stock <= 0 THEN 'Out of Stock'
        WHEN p.reorder_level IS NULL OR p.reorder_level <= 0
            THEN 'Needs Review'
        WHEN i.available_stock < p.reorder_level THEN 'Low Stock'
        ELSE 'In Stock'
    END
ORDER BY current_status, expected_status;
-- Finding: 673 inventory records have stock statuses inconsistent with valid product reorder levels.
-- Finding: 47 inventory records are associated with products having missing or non-positive reorder levels.
-- Validation: All 442 Out of Stock records have the expected status.
-- Action: Correct status mismatches after product reorder levels are cleaned; flag unresolved records for review.

-- 4f. Checking duplicate inventory combinations

SELECT
    warehouse_id,
    product_id,
    inventory_date,
    COUNT(*) AS record_count
FROM inventory
GROUP BY
    warehouse_id,
    product_id,
    inventory_date
HAVING COUNT(*) > 1;

-- 4g. Checking whether the duplicate records are identical
SELECT
    inventory_id,
    warehouse_id,
    product_id,
    stock_quantity,
    reserved_quantity,
    available_stock,
    inventory_date,
    stock_status
FROM inventory
WHERE
    (warehouse_id = 'WH015' AND product_id = 'PRD0373'
     AND inventory_date = '2025-08-14')
 OR (warehouse_id = 'WH008' AND product_id = 'PRD0489'
     AND inventory_date = '2025-03-04')
 OR (warehouse_id = 'WH002' AND product_id = 'PRD0577'
     AND inventory_date = '2025-04-01')
 OR (warehouse_id = 'WH011' AND product_id = 'PRD0203'
     AND inventory_date = '2024-02-23');
     -- Finding: Four warehouse-product-date combinations have multiple inventory records.
-- The records have different quantities and/or stock statuses.
-- Action: Preserve the records for now; investigate before deciding how to handle them.

-- 4h. Checking whether inventory IDs are unique
SELECT
    inventory_id,
    COUNT(*) AS record_count
FROM inventory
GROUP BY inventory_id
HAVING COUNT(*) > 1;

-- 4i. Checking inventory foreign keys
SELECT
    SUM(CASE WHEN p.product_id IS NULL THEN 1 ELSE 0 END) AS invalid_product_ids,
    SUM(CASE WHEN w.warehouse_id IS NULL THEN 1 ELSE 0 END) AS invalid_warehouse_ids
FROM inventory i
LEFT JOIN products p
    ON i.product_id = p.product_id
LEFT JOIN warehouses w
    ON i.warehouse_id = w.warehouse_id;
    
    -- ----------------------------------------------------------------------
    -- 5. Purchase orders
    -- ------------------------------------------------------------------------
    
    -- 5a. Checking duplicates
    SELECT
    purchase_order_id,
    COUNT(*) AS record_count
FROM purchase_orders
GROUP BY purchase_order_id
HAVING COUNT(*) > 1;

-- 5b. Checking purchase order data quality
SELECT
    SUM(CASE WHEN purchase_order_id IS NULL OR TRIM(purchase_order_id) = '' THEN 1 ELSE 0 END) AS missing_order_ids,
    SUM(CASE WHEN supplier_id IS NULL OR TRIM(supplier_id) = '' THEN 1 ELSE 0 END) AS missing_supplier_ids,
    SUM(CASE WHEN product_id IS NULL OR TRIM(product_id) = '' THEN 1 ELSE 0 END) AS missing_product_ids,
    SUM(CASE WHEN warehouse_id IS NULL OR TRIM(warehouse_id) = '' THEN 1 ELSE 0 END) AS missing_warehouse_ids
FROM purchase_orders;

-- 5c. Checking quantities and costs
SELECT
    SUM(CASE WHEN order_quantity <= 0 THEN 1 ELSE 0 END) AS invalid_quantities,
    SUM(CASE WHEN total_order_value <= 0 THEN 1 ELSE 0 END) AS invalid_order_values
FROM purchase_orders;

-- 5d. Checking purchase order dates
SELECT
    SUM(CASE
        WHEN order_date IS NULL OR TRIM(order_date) = ''
        THEN 1 ELSE 0
    END) AS missing_order_dates,

    SUM(CASE
        WHEN expected_delivery_date IS NULL
             OR TRIM(expected_delivery_date) = ''
        THEN 1 ELSE 0
    END) AS missing_expected_dates,

    SUM(CASE
        WHEN actual_delivery_date IS NULL
             OR TRIM(actual_delivery_date) = ''
        THEN 1 ELSE 0
    END) AS missing_actual_dates,

    SUM(CASE
        WHEN order_date IS NOT NULL
             AND TRIM(order_date) <> ''
             AND STR_TO_DATE(order_date, '%Y-%m-%d') IS NULL
        THEN 1 ELSE 0
    END) AS invalid_order_dates
FROM purchase_orders;

-- 5e. Checking delivery date chronology
SELECT
    SUM(
        CASE
            WHEN STR_TO_DATE(order_date, '%Y-%m-%d')
               > STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
            THEN 1 ELSE 0
        END
    ) AS expected_date_before_order,

    SUM(
        CASE
            WHEN actual_delivery_date IS NOT NULL
             AND TRIM(actual_delivery_date) <> ''
             AND STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                 < STR_TO_DATE(order_date, '%Y-%m-%d')
            THEN 1 ELSE 0
        END
    ) AS actual_date_before_order
FROM purchase_orders;
-- Finding: 30 records have expected delivery dates before order dates.
-- Finding: 30 records have actual delivery dates before order dates.
-- Action: Investigate the affected records during cleaning; do not change dates without validation.

-- 5f. Checking supplier, product, and warehouse references
SELECT
    SUM(CASE WHEN s.supplier_id IS NULL THEN 1 ELSE 0 END) AS invalid_supplier_ids,
    SUM(CASE WHEN p.product_id IS NULL THEN 1 ELSE 0 END) AS invalid_product_ids,
    SUM(CASE WHEN w.warehouse_id IS NULL THEN 1 ELSE 0 END) AS invalid_warehouse_ids
FROM purchase_orders po
LEFT JOIN suppliers s
    ON po.supplier_id = s.supplier_id
LEFT JOIN products p
    ON po.product_id = p.product_id
LEFT JOIN warehouses w
    ON po.warehouse_id = w.warehouse_id;
    
    -- 5g. Checking delivery status
    SELECT
    delivery_status,
    COUNT(*) AS record_count
FROM purchase_orders
GROUP BY delivery_status
ORDER BY record_count DESC;

SELECT
    delivery_status,
    SUM(
        CASE
            WHEN delivery_status = 'Early'
                 AND STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                     < STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
            THEN 1

            WHEN delivery_status = 'On Time'
                 AND STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                     = STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
            THEN 1

            WHEN delivery_status = 'Delayed'
                 AND STR_TO_DATE(actual_delivery_date, '%Y-%m-%d')
                     > STR_TO_DATE(expected_delivery_date, '%Y-%m-%d')
            THEN 1

            ELSE 0
        END
    ) AS matching_records,
    COUNT(*) AS total_records
FROM purchase_orders
GROUP BY delivery_status;
-- Finding: All Early and Delayed records match their expected delivery-date logic.
-- Finding: 372 On Time records do not match the expected delivery date.
-- Action: Investigate these records during cleaning before correcting delivery_status.

-- ---------------------------------------------------------------------------
-- 6. SALES ORDERS
-- ----------------------------------------------------------------------------

-- 6a. Checking duplicate sales order IDs
SELECT
    sales_order_id,
    COUNT(*) AS record_count
FROM sales_orders
GROUP BY sales_order_id
HAVING COUNT(*) > 1;

-- 6b. Checking missing values
SELECT
    SUM(CASE WHEN sales_order_id IS NULL OR TRIM(sales_order_id) = '' THEN 1 ELSE 0 END) AS missing_order_ids,
    SUM(CASE WHEN warehouse_id IS NULL OR TRIM(warehouse_id) = '' THEN 1 ELSE 0 END) AS missing_warehouse_ids,
    SUM(CASE WHEN product_id IS NULL OR TRIM(product_id) = '' THEN 1 ELSE 0 END) AS missing_product_ids,
    SUM(CASE WHEN order_date IS NULL OR TRIM(order_date) = '' THEN 1 ELSE 0 END) AS missing_order_dates,
    SUM(CASE WHEN quantity_sold IS NULL THEN 1 ELSE 0 END) AS missing_quantities,
    SUM(CASE WHEN sales_amount IS NULL THEN 1 ELSE 0 END) AS missing_sales_amounts
FROM sales_orders;

-- 6c. Checking invalid quantities and sales amounts
SELECT
    SUM(CASE WHEN quantity_sold <= 0 THEN 1 ELSE 0 END) AS invalid_quantities,
    SUM(CASE WHEN sales_amount <= 0 THEN 1 ELSE 0 END) AS invalid_sales_amounts,
    SUM(CASE WHEN delivery_days < 0 THEN 1 ELSE 0 END) AS negative_delivery_days
FROM sales_orders;

-- 6d. Checking date validity and missing dates
SELECT
    SUM(CASE
        WHEN STR_TO_DATE(order_date, '%Y-%m-%d') IS NULL
        THEN 1 ELSE 0
    END) AS invalid_order_dates,
    MIN(order_date) AS earliest_order_date,
    MAX(order_date) AS latest_order_date
FROM sales_orders;

-- 6e. checking whether every sales order references an existing product and warehouse
SELECT
    SUM(CASE WHEN p.product_id IS NULL THEN 1 ELSE 0 END)
        AS invalid_product_ids,
    SUM(CASE WHEN w.warehouse_id IS NULL THEN 1 ELSE 0 END)
        AS invalid_warehouse_ids
FROM sales_orders s
LEFT JOIN products p
    ON s.product_id = p.product_id
LEFT JOIN warehouses w
    ON s.warehouse_id = w.warehouse_id;
    
    -- 6f. check the distribution of order_status and identify any missing or blank statuse
    SELECT
    order_status,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- 6g. Checking delivery-status consistency
SELECT
    order_status,
    COUNT(*) AS total_orders,
    MIN(delivery_days) AS min_delivery_days,
    MAX(delivery_days) AS max_delivery_days,
    AVG(delivery_days) AS avg_delivery_days
FROM sales_orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- 6h.Check sales_orders customer and location fields
SELECT
    SUM(CASE
        WHEN customer_type IS NULL OR TRIM(customer_type) = ''
        THEN 1 ELSE 0
    END) AS missing_customer_type,
    SUM(CASE
        WHEN city IS NULL OR TRIM(city) = ''
        THEN 1 ELSE 0
    END) AS missing_city,
    SUM(CASE
        WHEN state IS NULL OR TRIM(state) = ''
        THEN 1 ELSE 0
    END) AS missing_state
FROM sales_orders;

-- ----------------------------------------------------------------------
-- 7. SHIPMENTS
-- ------------------------------------------------------------------------

-- 7a. Checking missing values and invalid shipping costs
SELECT
    SUM(CASE WHEN shipment_id IS NULL OR TRIM(shipment_id) = ''
        THEN 1 ELSE 0 END) AS missing_shipment_id,

    SUM(CASE WHEN sales_order_id IS NULL OR TRIM(sales_order_id) = ''
        THEN 1 ELSE 0 END) AS missing_sales_order_id,

    SUM(CASE WHEN shipment_date IS NULL OR TRIM(shipment_date) = ''
        THEN 1 ELSE 0 END) AS missing_shipment_date,

    SUM(CASE WHEN delivery_date IS NULL OR TRIM(delivery_date) = ''
        THEN 1 ELSE 0 END) AS missing_delivery_date,

    SUM(CASE WHEN shipping_cost IS NULL OR shipping_cost < 0
        THEN 1 ELSE 0 END) AS missing_or_negative_shipping_cost,

    SUM(CASE WHEN shipment_status IS NULL OR TRIM(shipment_status) = ''
        THEN 1 ELSE 0 END) AS missing_shipment_status
FROM shipments;

-- 7b. Checking duplicate shipment IDs
SELECT
    shipment_id,
    COUNT(*) AS record_count
FROM shipments
GROUP BY shipment_id
HAVING COUNT(*) > 1;

-- 7c. Checking shipment date chronology
SELECT
    SUM(CASE
        WHEN STR_TO_DATE(shipment_date, '%Y-%m-%d') IS NULL
        THEN 1 ELSE 0
    END) AS invalid_shipment_dates,

    SUM(CASE
        WHEN STR_TO_DATE(delivery_date, '%Y-%m-%d') IS NULL
        THEN 1 ELSE 0
    END) AS invalid_delivery_dates,

    SUM(CASE
        WHEN STR_TO_DATE(delivery_date, '%Y-%m-%d')
           < STR_TO_DATE(shipment_date, '%Y-%m-%d')
        THEN 1 ELSE 0
    END) AS delivery_before_shipment,

    MIN(shipment_date) AS earliest_shipment_date,
    MAX(shipment_date) AS latest_shipment_date
FROM shipments;

-- 7d. Checking sales-order references
SELECT
    COUNT(*) AS total_shipments,
    SUM(CASE
        WHEN s.sales_order_id IS NULL THEN 1
        ELSE 0
    END) AS invalid_sales_order_references
FROM shipments sh
LEFT JOIN sales_orders s
    ON sh.sales_order_id = s.sales_order_id;
    
    -- 7e. Checking shipment status distribution
SELECT
    shipment_status,
    COUNT(*) AS total_shipments
FROM shipments
GROUP BY shipment_status
ORDER BY total_shipments DESC;

-- 7f. Checking shipment status against delivery dates
SELECT
    shipment_status,
    COUNT(*) AS total_shipments,
    SUM(CASE
        WHEN shipment_status = 'Delivered'
             AND STR_TO_DATE(delivery_date, '%Y-%m-%d') IS NULL
        THEN 1 ELSE 0
    END) AS delivered_without_delivery_date,
    SUM(CASE
        WHEN shipment_status = 'In Transit'
             AND STR_TO_DATE(delivery_date, '%Y-%m-%d')
                 IS NOT NULL
        THEN 1 ELSE 0
    END) AS in_transit_with_delivery_date,
    SUM(CASE
        WHEN shipment_status = 'Delayed'
             AND STR_TO_DATE(delivery_date, '%Y-%m-%d')
                 IS NOT NULL
        THEN 1 ELSE 0
    END) AS delayed_with_delivery_date
FROM shipments
GROUP BY shipment_status
ORDER BY total_shipments DESC;

SELECT
    COUNT(*) AS total_shipments,
    SUM(CASE
        WHEN logistics_partner IS NULL
             OR TRIM(logistics_partner) = ''
        THEN 1 ELSE 0
    END) AS missing_logistics_partner,
    SUM(CASE
        WHEN shipment_status = 'Delayed'
             AND (delay_reason IS NULL OR TRIM(delay_reason) = '')
        THEN 1 ELSE 0
    END) AS delayed_without_reason,
    SUM(CASE
        WHEN shipment_status <> 'Delayed'
             AND delay_reason IS NOT NULL
             AND TRIM(delay_reason) <> ''
        THEN 1 ELSE 0
    END) AS non_delayed_with_reason
FROM shipments;

-- ------------------------------------------------------------------------------
-- CREATING BACKUP TABLES
-- ---------------------------------------------------------------------------------
CREATE TABLE products_clean AS SELECT * FROM products;
CREATE TABLE suppliers_clean AS SELECT * FROM suppliers;
CREATE TABLE warehouses_clean AS SELECT * FROM warehouses;
CREATE TABLE inventory_clean AS SELECT * FROM inventory;
CREATE TABLE purchase_orders_clean AS SELECT * FROM purchase_orders;
CREATE TABLE sales_orders_clean AS SELECT * FROM sales_orders;
CREATE TABLE shipments_clean AS SELECT * FROM shipments;

-- --------------------------------------------------------------------------------
-- VERIFYING CLEAN TABLES
-- ---------------------------------------------------------------------------------
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