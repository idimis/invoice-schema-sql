-- Insert data into seller table
INSERT INTO "seller" (id, name, address, contact_info) VALUES
(1, 'John\'s Electronics', '123 Market St, City A', 'john@example.com'),
(2, 'Alice Fashion', '456 Fashion Blvd, City B', 'alice@example.com');

-- Insert data into buyer table
INSERT INTO "buyer" (id, name, address, contact_info, shipping_address) VALUES
(1, 'Bob Smith', '789 Pine St, City C', 'bob@example.com', '321 Elm St, City C'),
(2, 'Sara Lee', '101 River Rd, City D', 'sara@example.com', '50 Lake Dr, City D');

-- Insert data into items table
INSERT INTO "items" (id, seller_id, name, description, price) VALUES
(1, 1, 'Laptop', 'High-end gaming laptop', 15000000),
(2, 1, 'Smartphone', 'Latest model smartphone', 8000000),
(3, 2, 'Dress', 'Elegant evening dress', 2000000),
(4, 2, 'Jacket', 'Warm winter jacket', 1500000);

-- Insert data into invoices table
INSERT INTO "invoices" (id, label, seller_id, buyer_id, courier_id, destination, purchase_date, last_update) VALUES
(1, 'INV001', 1, 1, 1, '321 Elm St, City C', '2024-10-01 10:00:00', '2024-10-02 12:00:00'),
(2, 'INV002', 2, 2, 2, '50 Lake Dr, City D', '2024-10-15 14:30:00', '2024-10-15 15:00:00');

-- Insert data into invoice_items table
INSERT INTO "invoice_items" (id, invoice_id, items_id, quantity) VALUES
(1, 1, 1, 1),  -- 1 Laptop in invoice 1
(2, 1, 2, 2),  -- 2 Smartphones in invoice 1
(3, 2, 3, 1),  -- 1 Dress in invoice 2
(4, 2, 4, 1);  -- 1 Jacket in invoice 2

-- Optional: Add couriers table (since courier_id is referenced in invoices)
CREATE TABLE "couriers" (
  "id" id,
  "name" text,
  "contact_info" text
);

-- Insert data into couriers table
INSERT INTO "couriers" (id, name, contact_info) VALUES
(1, 'DHL', 'support@dhl.com'),
(2, 'FedEx', 'info@fedex.com');
