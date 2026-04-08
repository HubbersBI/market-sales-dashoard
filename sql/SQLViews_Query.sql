CREATE VIEW v_fact_transactions_data AS
    SELECT 
        t97.customer_id,
        t97.product_id,
        t97.quantity,
        t97.stock_date,
        t97.store_id,
        t97.transaction_date
    FROM
        MavenMarket_Transactions_1997 t97 
    UNION ALL SELECT 
        t98.customer_id,
        t98.product_id,
        t98.quantity,
        t98.stock_date,
        t98.store_id,
        t98.transaction_date
    FROM
        MavenMarket_Transactions_1998 t98;

CREATE VIEW v_fact_returns AS
    SELECT 
        product_id, quantity, return_date, store_id
    FROM
        MavenMarket_Returns_1997_1998;

CREATE VIEW v_dim_calendar AS
    SELECT 
        dates
    FROM
        MavenMarket_Calendar;

CREATE VIEW v_dim_products AS
    SELECT 
        low_fat,
        product_brand,
        product_cost,
        product_id,
        product_name,
        product_retail_price,
        product_sku,
        product_weight,
        recyclable
    FROM
        MavenMarket_Products;

CREATE VIEW v_dim_stores AS
    SELECT 
        first_opened_date,
        grocery_sqft,
        last_remodel_date,
        region_id,
        store_city,
        store_country,
        store_id,
        store_name,
        store_phone,
        store_state,
        store_street_address,
        store_type,
        total_sqft
    FROM
        MavenMarket_Stores;

CREATE VIEW v_dim_regions AS
    SELECT 
        region_id, sales_district, sales_region
    FROM
        MavenMarket_Regions;




