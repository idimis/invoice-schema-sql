CREATE TABLE "buyers" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" TEXT,
  "address" TEXT,
  "contact_info" TEXT,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME
);

CREATE TABLE "sellers" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" TEXT,
  "address" TEXT,
  "contact_info" TEXT,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME
);

CREATE TABLE "shipping_address" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "buyer_id" INTEGER,
  "name" TEXT,
  "address" TEXT,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME,
  FOREIGN KEY ("buyer_id") REFERENCES "buyers" ("id")
);

CREATE TABLE "courier_types" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" TEXT,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME
);

CREATE TABLE "payment_types" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "invoice_id" INTEGER,
  "name" TEXT,
  "amount" INTEGER,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME,
  FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("id")
);

CREATE TABLE "items" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "seller_id" INTEGER,
  "name" TEXT,
  "description" TEXT,
  "price" INTEGER,
  "weight" INTEGER,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME,
  FOREIGN KEY ("seller_id") REFERENCES "sellers" ("id")
);

CREATE TABLE "invoice_item" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "invoice_id" INTEGER,
  "items_id" INTEGER,
  "quantity" INTEGER,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME,
  FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("id"),
  FOREIGN KEY ("items_id") REFERENCES "items" ("id")
);

CREATE TABLE "promo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "invoice_id" INTEGER,
  "name" TEXT,
  "discount" REAL,
  "cashback" REAL,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME,
  FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("id")
);

CREATE TABLE "insurance" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "invoice_id" INTEGER,
  "name" TEXT,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME,
  FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("id")
);

CREATE TABLE "invoice" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "invoice_number" TEXT,
  "buyers_id" INTEGER,
  "seller_id" INTEGER,
  "courier_type_id" INTEGER,
  "shipping_address" INTEGER,
  "services_fee" INTEGER,
  "app_services_fee" INTEGER,
  "shipping_fee" INTEGER,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME,
  FOREIGN KEY ("buyers_id") REFERENCES "buyers" ("id"),
  FOREIGN KEY ("seller_id") REFERENCES "sellers" ("id"),
  FOREIGN KEY ("courier_type_id") REFERENCES "courier_types" ("id"),
  FOREIGN KEY ("shipping_address") REFERENCES "shipping_address" ("id")
);

CREATE TABLE "item_snapshot" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "items_id" INTEGER,
  "price" INTEGER,
  "created_at" DATETIME,
  "updated_at" DATETIME,
  "deleted_at" DATETIME,
  FOREIGN KEY ("items_id") REFERENCES "items" ("id")
);
