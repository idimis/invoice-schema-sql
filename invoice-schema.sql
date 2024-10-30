CREATE TABLE "buyers" (
  "id" id,
  "name" text,
  "adderss" text,
  "contact_info" text,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "sellers" (
  "id" id,
  "name" text,
  "adderss" text,
  "contact_info" text,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "shipping_address" (
  "id" id,
  "buyer_id" id,
  "name" text,
  "adderss" text,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "courier_types" (
  "id" id,
  "name" text,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "payment_types" (
  "id" id,
  "invoice_id" id,
  "name" text,
  "amount" int,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "items" (
  "id" id,
  "seller_id" id,
  "nae" text,
  "description" text,
  "price" integer,
  "weight" integer,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "invoice_item" (
  "id" id,
  "invoice_id" id,
  "items_id" id,
  "quantitiy" integer,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "promo" (
  "id" id,
  "invoice_id" id,
  "name" text,
  "discount" float,
  "cashback" float,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "insurance" (
  "id" id,
  "invoice_id" id,
  "name" text,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "invoice" (
  "id" id,
  "invoice_number" id,
  "buyers_id" id,
  "seller_id" id,
  "courier_type_id" id,
  "shipping_address" id,
  "services_fee" integer,
  "app_services_fee" integer,
  "shipping_fee" integer,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "item_snapshot" (
  "id" id,
  "items_id" id,
  "price" integer,
  "created_at" datetime,
  "update_at" datetime,
  "deleted_at" datetime
);

ALTER TABLE "invoice" ADD FOREIGN KEY ("buyers_id") REFERENCES "buyers" ("id");

ALTER TABLE "invoice" ADD FOREIGN KEY ("seller_id") REFERENCES "sellers" ("id");

ALTER TABLE "invoice" ADD FOREIGN KEY ("courier_type_id") REFERENCES "courier_types" ("id");

ALTER TABLE "invoice" ADD FOREIGN KEY ("shipping_address") REFERENCES "shipping_address" ("id");

ALTER TABLE "payment_types" ADD FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("id");

ALTER TABLE "invoice_item" ADD FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("id");

ALTER TABLE "promo" ADD FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("id");

ALTER TABLE "insurance" ADD FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("id");

ALTER TABLE "invoice_item" ADD FOREIGN KEY ("items_id") REFERENCES "items" ("id");

ALTER TABLE "item_snapshot" ADD FOREIGN KEY ("items_id") REFERENCES "items" ("id");

ALTER TABLE "shipping_address" ADD FOREIGN KEY ("buyer_id") REFERENCES "buyers" ("id");

ALTER TABLE "items" ADD FOREIGN KEY ("seller_id") REFERENCES "sellers" ("id");
