-- Create table for new_invoice
CREATE TABLE new_invoice (
    id SERIAL PRIMARY KEY,
    seller_id INTEGER NOT NULL,
    courier_type_id INTEGER,
    shipping_address INTEGER,
    -- Add other columns from the original "invoice" table here
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (seller_id) REFERENCES sellers (id) ON DELETE CASCADE,
    FOREIGN KEY (courier_type_id) REFERENCES courier_types (id) ON DELETE SET NULL,
    FOREIGN KEY (shipping_address) REFERENCES new_shipping_address (id) ON DELETE CASCADE
);

-- Create table for new_payment_types
CREATE TABLE new_payment_types (
    id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL,
    -- Add other columns from the original "payment_types" table here
    payment_method VARCHAR(50),
    amount DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (invoice_id) REFERENCES new_invoice (id) ON DELETE CASCADE
);

-- Create table for new_invoice_item
CREATE TABLE new_invoice_item (
    id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL,
    items_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    -- Add other columns from the original "invoice_item" table here
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (invoice_id) REFERENCES new_invoice (id) ON DELETE CASCADE,
    FOREIGN KEY (items_id) REFERENCES new_items (id) ON DELETE CASCADE
);

-- Create table for new_promo
CREATE TABLE new_promo (
    id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL,
    promo_code VARCHAR(50),
    discount DECIMAL(10, 2),
    -- Add other columns from the original "promo" table here
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (invoice_id) REFERENCES new_invoice (id) ON DELETE CASCADE
);

-- Create table for new_insurance
CREATE TABLE new_insurance (
    id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL,
    insurance_provider VARCHAR(50),
    policy_number VARCHAR(50),
    -- Add other columns from the original "insurance" table here
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (invoice_id) REFERENCES new_invoice (id) ON DELETE CASCADE
);

-- Create table for new_item_snapshot
CREATE TABLE new_item_snapshot (
    id SERIAL PRIMARY KEY,
    items_id INTEGER NOT NULL,
    snapshot_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- Add other columns from the original "item_snapshot" table here
    FOREIGN KEY (items_id) REFERENCES new_items (id) ON DELETE CASCADE
);

-- Create table for new_shipping_address
CREATE TABLE new_shipping_address (
    id SERIAL PRIMARY KEY,
    buyer_id INTEGER NOT NULL,
    address TEXT,
    -- Add other columns from the original "shipping_address" table here
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (buyer_id) REFERENCES buyers (id) ON DELETE CASCADE
);

-- Create table for new_items
CREATE TABLE new_items (
    id SERIAL PRIMARY KEY,
    seller_id INTEGER NOT NULL,
    item_name VARCHAR(100),
    price DECIMAL(10, 2),
    -- Add other columns from the original "items" table here
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (seller_id) REFERENCES sellers (id) ON DELETE CASCADE
);
