-- DB migrations

ALTER TABLE IF EXISTS games ADD COLUMN "bgg_id" integer NOT NULL DEFAULT -1;


-- create recipes table
CREATE TABLE IF NOT EXISTS recipes
(
  id               serial PRIMARY KEY,
  title            varchar(100) NOT NULL,
  slug             varchar(100) NOT NULL,
  reference_link   varchar(255) NOT NULL,
  ingredients      text NOT NULL,
  directions       text NOT NULL
);
