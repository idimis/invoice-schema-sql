-- Sample data for buyers
INSERT INTO "buyers" (name, address, contact_info, created_at, updated_at, deleted_at) VALUES
('Alice Johnson', '123 Elm St, Springfield', '555-1234', datetime('2024-01-01'), datetime('2024-01-01'), NULL),
('Bob Smith', '456 Oak St, Springfield', '555-5678', datetime('2024-01-02'), datetime('2024-01-02'), NULL),
('Charlie Brown', '789 Maple Ave, Springfield', '555-9101', datetime('2024-01-03'), datetime('2024-01-03'), NULL);

-- Sample data for sellers
INSERT INTO "sellers" (name, address, contact_info, created_at, updated_at, deleted_at) VALUES
('Tech Gadgets Inc.', '321 Birch St, Springfield', '555-2345', datetime('2024-01-01'), datetime('2024-01-01'), NULL),
('Home Essentials', '654 Pine St, Springfield', '555-6789', datetime('2024-01-02'), datetime('2024-01-02'), NULL);

-- Sample data for shipping addresses
INSERT INTO "shipping_address" (buyer_id, name, address, created_at, updated_at, deleted_at) VALUES
(1, 'Alice Johnson', '123 Elm St, Springfield', datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 'Bob Smith', '456 Oak St, Springfield', datetime('2024-01-02'), datetime('2024-01-02'), NULL);

-- Sample data for courier types
INSERT INTO "courier_types" (name, created_at, updated_at, deleted_at) VALUES
('Standard Shipping', datetime('2024-01-01'), datetime('2024-01-01'), NULL),
('Express Shipping', datetime('2024-01-02'), datetime('2024-01-02'), NULL);

-- Sample data for items
INSERT INTO "items" (seller_id, name, description, price, weight, created_at, updated_at, deleted_at) VALUES
(1, 'Smartphone', 'Latest model smartphone with advanced features.', 699, 200, datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(1, 'Laptop', 'High-performance laptop for gaming and work.', 1299, 2500, datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 'Kitchen Blender', 'Powerful blender for smoothies and soups.', 99, 1500, datetime('2024-01-02'), datetime('2024-01-02'), NULL);

-- Sample data for invoice
INSERT INTO "invoice" (invoice_number, buyers_id, seller_id, courier_type_id, shipping_address, services_fee, app_services_fee, shipping_fee, created_at, updated_at, deleted_at) VALUES
('INV-001', 1, 1, 1, 1, 15, 5, 10, datetime('2024-01-05'), datetime('2024-01-05'), NULL),
('INV-002', 2, 2, 2, 2, 20, 10, 15, datetime('2024-01-06'), datetime('2024-01-06'), NULL);

-- Sample data for invoice items
INSERT INTO "invoice_item" (invoice_id, items_id, quantity, created_at, updated_at, deleted_at) VALUES
(1, 1, 1, datetime('2024-01-05'), datetime('2024-01-05'), NULL),
(1, 3, 2, datetime('2024-01-05'), datetime('2024-01-05'), NULL),
(2, 2, 1, datetime('2024-01-06'), datetime('2024-01-06'), NULL);

-- Sample data for promo
INSERT INTO "promo" (invoice_id, name, discount, cashback, created_at, updated_at, deleted_at) VALUES
(1, 'New Year Discount', 50, 5, datetime('2024-01-05'), datetime('2024-01-05'), NULL),
(2, 'Spring Sale', 30, 3, datetime('2024-01-06'), datetime('2024-01-06'), NULL);

-- Sample data for insurance
INSERT INTO "insurance" (invoice_id, name, created_at, updated_at, deleted_at) VALUES
(1, 'Shipping Insurance', datetime('2024-01-05'), datetime('2024-01-05'), NULL),
(2, 'Express Insurance', datetime('2024-01-06'), datetime('2024-01-06'), NULL);

-- Sample data for item snapshots
INSERT INTO "item_snapshot" (items_id, price, created_at, updated_at, deleted_at) VALUES
(1, 699, datetime('2024-01-05'), datetime('2024-01-05'), NULL),
(2, 1299, datetime('2024-01-06'), datetime('2024-01-06'), NULL);
