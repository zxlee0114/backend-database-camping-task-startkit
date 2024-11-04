CREATE TABLE "SKILL" (
  "id" uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  "name" varchar(50) UNIQUE NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);

INSERT INTO "SKILL" (name) VALUES ('重訓'), ('瑜伽'), ('有氧運動'), ('復健訓練');

CREATE TABLE "COACH" (
  "id" uuid PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
  "user_id" uuid NOT NULL REFERENCES "USER"(id),
  "experience_years" integer,
  "description" text,
  "profile_image_url" varchar(2048),
  "created_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  "updated_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  UNIQUE("user_id")
);

CREATE TABLE "COACH_LINK_SKILL" (
  "coach_id" uuid NOT NULL REFERENCES "COACH"(id),
  "skill_id" uuid NOT NULL REFERENCES "SKILL"(id),
  "created_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  PRIMARY KEY ("coach_id", "skill_id")
);