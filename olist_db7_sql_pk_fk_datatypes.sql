-- Altering tables to assign primary keys

-- customers_tbl

ALTER TABLE public.customers_tbl
ADD PRIMARY KEY (customer_id);

-- orders_items_tbl
ALTER TABLE public.orders_items_tbl
ADD PRIMARY KEY (id_pk);

-- orders_payments_tbl
ALTER TABLE public.orders_payments_tbl
ADD PRIMARY KEY (id_pk);

-- orders_tbl
ALTER TABLE public.orders_tbl
ADD PRIMARY KEY (order_id);

-- products_tbl
ALTER TABLE public.products_tbl
ADD PRIMARY KEY (product_id);

-- sellers_tbl
ALTER TABLE public.sellers_tbl
ADD PRIMARY KEY (seller_id);

-- orders_reviews_tbl
ALTER TABLE public.orders_reviews_tbl
ADD CONSTRAINT pk_orders_reviews PRIMARY KEY (review_id,order_id);

-- geolocation_tbl
ALTER TABLE public.new_geolocation_tbl
ADD PRIMARY KEY (geolocation_zip_code_prefix);



-- Adding unique constraints FK

-- customers_tbl -> orders_tbl (one-to-many)
ALTER TABLE public.orders_tbl
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id)
REFERENCES public.customers_tbl (customer_id);

-- orders_items_tbl -> orders_tbl (one-to-many)
ALTER TABLE public.orders_items_tbl
ADD CONSTRAINT fk_order_id
FOREIGN KEY (order_id)
REFERENCES public.orders_tbl (order_id);

-- orders_items_tbl -> products_tbl (one-to-many)
ALTER TABLE public.orders_items_tbl
ADD CONSTRAINT fk_product_id
FOREIGN KEY (product_id)
REFERENCES public.products_tbl (product_id);

-- orders_items_tbl -> sellers_tbl (one-to-many)
ALTER TABLE public.orders_items_tbl
ADD CONSTRAINT fk_seller_id
FOREIGN KEY (seller_id)
REFERENCES public.sellers_tbl (seller_id);

-- orders_payments_tbl -> orders_tbl (one-to-many)
ALTER TABLE public.orders_payments_tbl
ADD CONSTRAINT fk_orders_payments_orders
FOREIGN KEY (order_id) REFERENCES public.orders_tbl(order_id);

-- orders_reviews_tbl -> orders_tbl (one-to-many)
ALTER TABLE public.orders_reviews_tbl
ADD CONSTRAINT fk_orders_reviews_orders
FOREIGN KEY (order_id) REFERENCES public.orders_tbl(order_id);


--
--Change data type for columns that need datetime as their datatype for orders_tbl, orders_items_tbl and order_reviews_tbl:

-- Altering columns in orders_tbl
ALTER TABLE public.orders_tbl
    ALTER COLUMN order_purchase_timestamp TYPE TIMESTAMP WITHOUT TIME ZONE USING order_purchase_timestamp::timestamp without time zone,
    ALTER COLUMN order_approved_at TYPE TIMESTAMP WITHOUT TIME ZONE USING order_approved_at::timestamp without time zone,
    ALTER COLUMN order_delivered_carrier_date TYPE TIMESTAMP WITHOUT TIME ZONE USING order_delivered_carrier_date::timestamp without time zone,
    ALTER COLUMN order_delivered_customer_date TYPE TIMESTAMP WITHOUT TIME ZONE USING order_delivered_customer_date::timestamp without time zone,
    ALTER COLUMN order_estimated_delivery_date TYPE TIMESTAMP WITHOUT TIME ZONE USING order_estimated_delivery_date::timestamp without time zone;

-- Altering column in orders_items_tbl
ALTER TABLE public.orders_items_tbl
    ALTER COLUMN shipping_limit_date TYPE TIMESTAMP WITHOUT TIME ZONE USING shipping_limit_date::timestamp without time zone;

-- Altering columns in orders_reviews_tbl
ALTER TABLE public.orders_reviews_tbl
    ALTER COLUMN review_creation_date TYPE TIMESTAMP WITHOUT TIME ZONE USING review_creation_date::timestamp without time zone,
    ALTER COLUMN review_answer_timestamp TYPE TIMESTAMP WITHOUT TIME ZONE USING review_answer_timestamp::timestamp without time zone;


---To Get tables information:

-- For customers_tbl
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'customers_tbl'
AND table_schema = 'public';

-- For new_geolocation_tbl
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'new_geolocation_tbl'
AND table_schema = 'public';

-- For orders_items_tbl
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'orders_items_tbl'
AND table_schema = 'public';

-- For orders_payments_tbl
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'orders_payments_tbl'
AND table_schema = 'public';

-- For orders_reviews_tbl
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'orders_reviews_tbl'
AND table_schema = 'public';

-- For orders_tbl
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'orders_tbl'
AND table_schema = 'public';

-- For products_tbl
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'products_tbl'
AND table_schema = 'public';

-- For sellers_tbl
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'sellers_tbl'
AND table_schema = 'public';


