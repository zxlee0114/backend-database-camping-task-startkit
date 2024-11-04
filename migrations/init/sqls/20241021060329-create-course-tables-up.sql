CREATE TABLE "COURSE" (
  "id" serial PRIMARY KEY,
  "user_id" uuid NOT NULL REFERENCES "USER"(id),
  "skill_id" uuid NOT NULL REFERENCES "SKILL"(id),
  "name" varchar(100) NOT NULL,
  "description" text,
  "start_at" timestamp NOT NULL,
  "end_at" timestamp NOT NULL,
  "max_participants" integer NOT NULL,
  "meeting_url" varchar(2048) NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE "COURSE_BOOKING" (
  "id" uuid PRIMARY KEY NOT NULL DEFAULT (gen_random_uuid()),
  "user_id" uuid NOT NULL REFERENCES "USER"(id),
  "course_id" integer NOT NULL REFERENCES "COURSE"(id),
  "booking_at" timestamp NOT NULL,
  "status" varchar(20) NOT NULL,
  "join_at" timestamp,
  "leave_at" timestamp,
  "cancelled_at" timestamp,
  "cancellation_reason" varchar(255),
  "created_at" timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);