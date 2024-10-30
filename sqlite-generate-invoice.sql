-- Step 1: Define the seller, buyer, and shipping address
WITH InvoiceDetails AS (
    SELECT 
        s.name AS seller_name,
        b.name AS buyer_name,
        sa.address AS shipping_address,
        ii.quantity,
        i.name AS item_name,
        i.price,
        (ii.quantity * i.price) AS total_item_price
    FROM 
        sellers s
    JOIN 
        invoice inv ON s.id = inv.seller_id
    JOIN 
        buyers b ON b.id = inv.shipping_address -- assuming shipping_address references buyer
    JOIN 
        shipping_address sa ON sa.id = inv.shipping_address
    JOIN 
        invoice_item ii ON ii.invoice_id = inv.id
    JOIN 
        items i ON i.id = ii.items_id
    WHERE 
        inv.id = 1  -- Replace with the actual invoice ID you want to generate
)

-- Step 2: Calculate total price
SELECT 
    seller_name,
    buyer_name,
    shipping_address,
    item_name,
    price,
    quantity,
    total_item_price,
    SUM(total_item_price) AS total_invoice_price
FROM 
    InvoiceDetails
GROUP BY 
    item_name, price, quantity
ORDER BY 
    item_name;
