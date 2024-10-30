-- Insert sellers
INSERT INTO sellers (id, name) VALUES (1, 'Seller A'), (2, 'Seller B');

-- Insert courier types
INSERT INTO courier_types (id, type) VALUES (1, 'Express'), (2, 'Standard');

-- Insert buyers
INSERT INTO buyers (id, name) VALUES (1, 'Buyer A'), (2, 'Buyer B');

-- Insert shipping addresses
INSERT INTO shipping_address (id, buyer_id, address) VALUES 
(1, 1, '123 Main St, City A'),
(2, 2, '456 Maple St, City B');

-- Insert items
INSERT INTO items (id, seller_id, name, price) VALUES 
(1, 1, 'Item A', 10.00),
(2, 1, 'Item B', 15.00),
(3, 2, 'Item C', 20.00);

-- Insert invoices
INSERT INTO invoice (id, seller_id, courier_type_id, shipping_address) VALUES 
(1, 1, 1, 1),
(2, 2, 2, 2);

-- Insert payment types
INSERT INTO payment_types (id, invoice_id, payment_method) VALUES 
(1, 1, 'Credit Card'),
(2, 2, 'PayPal');

-- Insert invoice items
INSERT INTO invoice_item (id, invoice_id, items_id, quantity) VALUES 
(1, 1, 1, 2),  -- 2 of Item A for Invoice 1
(2, 1, 2, 1),  -- 1 of Item B for Invoice 1
(3, 2, 3, 3);  -- 3 of Item C for Invoice 2

-- Insert promo
INSERT INTO promo (id, invoice_id, discount_amount) VALUES 
(1, 1, 5.00),  -- $5 discount for Invoice 1
(2, 2, 2.50);  -- $2.50 discount for Invoice 2

-- Insert insurance
INSERT INTO insurance (id, invoice_id, amount) VALUES 
(1, 1, 1.00),  -- $1 insurance for Invoice 1
(2, 2, 2.00);  -- $2 insurance for Invoice 2

-- Insert item snapshots
INSERT INTO item_snapshot (id, items_id, snapshot_date, price) VALUES 
(1, 1, '2024-10-01', 10.00),
(2, 2, '2024-10-02', 15.00),
(3, 3, '2024-10-03', 20.00);
