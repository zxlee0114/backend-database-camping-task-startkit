CREATE TABLE "BLOG_POST" (
  "id" uuid PRIMARY KEY NOT NULL DEFAULT (gen_random_uuid()),
  "user_id" uuid NOT NULL REFERENCES "USER"(id),
  "title" varchar(255) NOT NULL,
  "content" text NOT NULL,
  "featured_image_url" varchar(2048),
  "category" varchar(20) NOT NULL,
  "spend_minutes" smallint NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  "updated_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE "COMMENT" (
  "id" uuid PRIMARY KEY NOT NULL DEFAULT (gen_random_uuid()),
  "blog_post_id" uuid NOT NULL REFERENCES "BLOG_POST"(id),
  "user_id" uuid NOT NULL REFERENCES "USER"(id),
  "content" text NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  "updated_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);