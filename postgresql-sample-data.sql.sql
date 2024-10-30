-- Insert sample data into sellers table
INSERT INTO sellers (id, name) VALUES
(1, 'Seller A'),
(2, 'Seller B');

-- Insert sample data into buyers table
INSERT INTO buyers (id, name) VALUES
(1, 'Rina'),
(2, 'Budi');

-- Insert sample data into new_shipping_address table
INSERT INTO new_shipping_address (id, buyer_id, address) VALUES
(1, 1, 'Jl. Merah No. 123, Solo, Indonesia'),
(2, 2, 'Jl. Biru No. 456, Yogyakarta, Indonesia');

-- Insert sample data into new_items table
INSERT INTO new_items (id, seller_id, item_name, price) VALUES
(1, 1, 'Buku Catatan', 25.00),
(2, 1, 'Pulpen', 5.00),
(3, 1, 'Penghapus', 3.00),
(4, 2, 'Laptop', 1200.00),
(5, 2, 'Kamera Digital', 600.00),
(6, 2, 'Headphone', 150.00);

-- Insert sample data into new_invoice table
INSERT INTO new_invoice (id, seller_id, courier_type_id, shipping_address) VALUES
(1, 1, 1, 1),  -- Invoice 1 for Seller A
(2, 2, 1, 2);  -- Invoice 2 for Seller B

-- Insert sample data into new_invoice_item table
INSERT INTO new_invoice_item (id, invoice_id, items_id, quantity) VALUES
(1, 1, 1, 3),  -- 3 Buku Catatan for Invoice 1
(2, 1, 2, 5),  -- 5 Pulpen for Invoice 1
(3, 1, 3, 2),  -- 2 Penghapus for Invoice 1
(4, 2, 4, 1),  -- 1 Laptop for Invoice 2
(5, 2, 5, 2),  -- 2 Kamera Digital for Invoice 2
(6, 2, 6, 1);  -- 1 Headphone for Invoice 2

-- Insert sample data into new_payment_types table
INSERT INTO new_payment_types (id, invoice_id, payment_method, amount) VALUES
(1, 1, 'Credit Card', 85.00),  -- Total for Invoice 1
(2, 2, 'Bank Transfer', 1800.00);  -- Total for Invoice 2

-- Insert sample data into new_promo table
INSERT INTO new_promo (id, invoice_id, promo_code, discount) VALUES
(1, 1, 'SUMMER10', 10.00),  -- Promo for Invoice 1
(2, 2, 'NEWYEAR20', 20.00);  -- Promo for Invoice 2

-- Insert sample data into new_insurance table
INSERT INTO new_insurance (id, invoice_id, insurance_provider, policy_number) VALUES
(1, 1, 'Asuransi Sejahtera', 'POL123456'),  -- Insurance for Invoice 1
(2, 2, 'Asuransi Mandiri', 'POL789012');  -- Insurance for Invoice 2

-- Insert sample data into new_item_snapshot table
INSERT INTO new_item_snapshot (id, items_id, snapshot_date) VALUES
(1, 1, '2024-01-01 10:00:00'),
(2, 2, '2024-01-02 11:00:00'),
(3, 4, '2024-01-03 12:00:00'),
(4, 5, '2024-01-04 13:00:00');
