CREATE TABLE "CREDIT_PACKAGE" (
  "id" serial PRIMARY KEY,
  "name" varchar(50) NOT NULL,
  "cover_url" varchar(2048),
  "credit_amount" integer NOT NULL,
  "price" numeric(10,2) NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE "CREDIT_PURCHASE" (
  "id" uuid PRIMARY KEY NOT NULL DEFAULT (gen_random_uuid()),
  "user_id" uuid NOT NULL REFERENCES "USER"(id),
  "credit_package_id" integer NOT NULL REFERENCES "CREDIT_PACKAGE"(id),
  "purchased_credits" integer NOT NULL,
  "price_paid" numeric(10,2) NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  "purchase_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);
