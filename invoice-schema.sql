CREATE TABLE "seller" (
  "id" id,
  "name" text,
  "address" text,
  "contact_info" text
);

CREATE TABLE "buyer" (
  "id" id,
  "name" text,
  "address" text,
  "contact_info" text,
  "shipping_address" text
);

CREATE TABLE "items" (
  "id" id,
  "seller_id" integer,
  "name" text,
  "description" text,
  "price" integer
);

CREATE TABLE "invoices" (
  "id" id,
  "label" text,
  "seller_id" integer,
  "buyer_id" integer,
  "courier_id" integer,
  "destination" text,
  "purchase_date" datetime,
  "last_update" datetime
);

CREATE TABLE "invocie_items" (
  "id" id,
  "invoice_id" id,
  "items_id" id,
  "quantity" integer
);

ALTER TABLE "items" ADD FOREIGN KEY ("seller_id") REFERENCES "seller" ("id");

ALTER TABLE "invoices" ADD FOREIGN KEY ("buyer_id") REFERENCES "buyer" ("id");

ALTER TABLE "invoices" ADD FOREIGN KEY ("seller_id") REFERENCES "seller" ("id");

ALTER TABLE "invocie_items" ADD FOREIGN KEY ("invoice_id") REFERENCES "invoices" ("id");

ALTER TABLE "invocie_items" ADD FOREIGN KEY ("items_id") REFERENCES "items" ("id");
