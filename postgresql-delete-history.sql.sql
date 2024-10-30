-- Delete from new_promo first to avoid foreign key constraint issues
DELETE FROM new_promo WHERE invoice_id = 1;

-- Delete from new_insurance next
DELETE FROM new_insurance WHERE invoice_id = 1;

-- Delete from new_invoice_item
DELETE FROM new_invoice_item WHERE invoice_id = 1;

-- Delete from new_payment_types
DELETE FROM new_payment_types WHERE invoice_id = 1;

-- Delete from new_invoice
DELETE FROM new_invoice WHERE id = 1;

-- Optionally delete from new_shipping_address if you want to remove buyer's address too
DELETE FROM new_shipping_address WHERE id = 1;

-- Optionally delete from new_items if needed (but be careful with seller and item relationships)
DELETE FROM new_items WHERE seller_id = 1; -- Adjust as necessary

-- Optionally delete from buyers if no longer needed
DELETE FROM buyers WHERE id = 1; -- Adjust as necessary

-- Optionally delete from sellers if no longer needed
DELETE FROM sellers WHERE id = 1; -- Adjust as necessary

-- Note: Adjust the invoice ID and other identifiers as necessary
