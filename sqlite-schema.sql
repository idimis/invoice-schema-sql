CREATE TABLE new_invoice (
    id INTEGER PRIMARY KEY,
    seller_id INTEGER,
    courier_type_id INTEGER,
    shipping_address INTEGER,
    -- Add other columns from the original "invoice" table here
    FOREIGN KEY (seller_id) REFERENCES sellers (id),
    FOREIGN KEY (courier_type_id) REFERENCES courier_types (id),
    FOREIGN KEY (shipping_address) REFERENCES shipping_address (id)
);

CREATE TABLE new_payment_types (
    id INTEGER PRIMARY KEY,
    invoice_id INTEGER,
    -- Add other columns from the original "payment_types" table here
    FOREIGN KEY (invoice_id) REFERENCES new_invoice (id)
);

CREATE TABLE new_invoice_item (
    id INTEGER PRIMARY KEY,
    invoice_id INTEGER,
    items_id INTEGER,
    -- Add other columns from the original "invoice_item" table here
    FOREIGN KEY (invoice_id) REFERENCES new_invoice (id),
    FOREIGN KEY (items_id) REFERENCES items (id)
);

CREATE TABLE new_promo (
    id INTEGER PRIMARY KEY,
    invoice_id INTEGER,
    -- Add other columns from the original "promo" table here
    FOREIGN KEY (invoice_id) REFERENCES new_invoice (id)
);

CREATE TABLE new_insurance (
    id INTEGER PRIMARY KEY,
    invoice_id INTEGER,
    -- Add other columns from the original "insurance" table here
    FOREIGN KEY (invoice_id) REFERENCES new_invoice (id)
);

CREATE TABLE new_item_snapshot (
    id INTEGER PRIMARY KEY,
    items_id INTEGER,
    -- Add other columns from the original "item_snapshot" table here
    FOREIGN KEY (items_id) REFERENCES items (id)
);

CREATE TABLE new_shipping_address (
    id INTEGER PRIMARY KEY,
    buyer_id INTEGER,
    -- Add other columns from the original "shipping_address" table here
    FOREIGN KEY (buyer_id) REFERENCES buyers (id)
);

CREATE TABLE new_items (
    id INTEGER PRIMARY KEY,
    seller_id INTEGER,
    -- Add other columns from the original "items" table here
    FOREIGN KEY (seller_id) REFERENCES sellers (id)
);
