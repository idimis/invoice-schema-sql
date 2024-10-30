-- Insert dummy data into the buyers table
INSERT INTO buyers (id, name, adderss, contact_info, created_at, update_at, deleted_at) VALUES
(1, 'John Doe', '123 Main St, Cityville', 'john@example.com', datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 'Jane Smith', '456 Elm St, Townsville', 'jane@example.com', datetime('2024-01-02'), datetime('2024-01-02'), NULL);

-- Insert dummy data into the sellers table
INSERT INTO sellers (id, name, adderss, contact_info, created_at, update_at, deleted_at) VALUES
(1, 'Seller One', '789 Oak St, Cityville', 'seller1@example.com', datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 'Seller Two', '101 Pine St, Townsville', 'seller2@example.com', datetime('2024-01-02'), datetime('2024-01-02'), NULL);

-- Insert dummy data into the shipping_address table
INSERT INTO shipping_address (id, buyer_id, name, adderss, created_at, update_at, deleted_at) VALUES
(1, 1, 'John Doe', '123 Main St, Cityville', datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 2, 'Jane Smith', '456 Elm St, Townsville', datetime('2024-01-02'), datetime('2024-01-02'), NULL);

-- Insert dummy data into the courier_types table
INSERT INTO courier_types (id, name, created_at, update_at, deleted_at) VALUES
(1, 'Standard Delivery', datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 'Express Delivery', datetime('2024-01-02'), datetime('2024-01-02'), NULL);

-- Insert dummy data into the payment_types table
INSERT INTO payment_types (id, invoice_id, name, amount, created_at, update_at, deleted_at) VALUES
(1, 1, 'Credit Card', 1000, datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 1, 'PayPal', 1500, datetime('2024-01-02'), datetime('2024-01-02'), NULL);

-- Insert dummy data into the items table
INSERT INTO items (id, seller_id, nae, description, price, weight, created_at, update_at, deleted_at) VALUES
(1, 1, 'Item A', 'Description of Item A', 200, 500, datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 1, 'Item B', 'Description of Item B', 300, 700, datetime('2024-01-02'), datetime('2024-01-02'), NULL),
(3, 2, 'Item C', 'Description of Item C', 400, 1000, datetime('2024-01-03'), datetime('2024-01-03'), NULL);

-- Insert dummy data into the invoice_item table
INSERT INTO invoice_item (id, invoice_id, items_id, quantitiy, created_at, update_at, deleted_at) VALUES
(1, 1, 1, 2, datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 1, 2, 1, datetime('2024-01-01'), datetime('2024-01-01'), NULL);

-- Insert dummy data into the promo table
INSERT INTO promo (id, invoice_id, name, discount, cashback, created_at, update_at, deleted_at) VALUES
(1, 1, 'Promo A', 10.0, 5.0, datetime('2024-01-01'), datetime('2024-01-01'), NULL);

-- Insert dummy data into the insurance table
INSERT INTO insurance (id, invoice_id, name, created_at, update_at, deleted_at) VALUES
(1, 1, 'Insurance A', datetime('2024-01-01'), datetime('2024-01-01'), NULL);

-- Insert dummy data into the invoice table
INSERT INTO invoice (id, invoice_number, buyers_id, seller_id, courier_type_id, shipping_address, services_fee, app_services_fee, shipping_fee, created_at, update_at, deleted_at) VALUES
(1, 'INV-001', 1, 1, 1, 1, 50, 20, 30, datetime('2024-01-01'), datetime('2024-01-01'), NULL);

-- Insert dummy data into the item_snapshot table
INSERT INTO item_snapshot (id, items_id, price, created_at, update_at, deleted_at) VALUES
(1, 1, 200, datetime('2024-01-01'), datetime('2024-01-01'), NULL),
(2, 2, 300, datetime('2024-01-02'), datetime('2024-01-02'), NULL);
