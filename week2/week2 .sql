CREATE DATABASE MOVIE_DB;

CREATE TABLE "movie" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "year" timestamp,
  "length" int,
  "company_id" int,
  "genre_id" int,
  "outline" varchar
);

CREATE TABLE "genre" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "company" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "adress" varchar
);

CREATE TABLE "staff" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "birthdate" timestamp
);

CREATE TABLE "movie_staff" (
  "person_id" int,
  "movie_id" int,
  "role" int
);

CREATE TABLE "role" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "quote" (
  "id" SERIAL PRIMARY KEY,
  "speech" varchar,
  "movie_id" int,
  "actor_id" int
);

ALTER TABLE "movie" ADD FOREIGN KEY ("genre_id") REFERENCES "genre" ("id");

ALTER TABLE "movie" ADD FOREIGN KEY ("company_id") REFERENCES "company" ("id");

ALTER TABLE "movie_staff" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("id");

ALTER TABLE "movie_staff" ADD FOREIGN KEY ("person_id") REFERENCES "staff" ("id");

ALTER TABLE "movie_staff" ADD FOREIGN KEY ("role") REFERENCES "role" ("id");

ALTER TABLE "quote" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("id");

ALTER TABLE "quote" ADD FOREIGN KEY ("actor_id") REFERENCES "staff" ("id");
