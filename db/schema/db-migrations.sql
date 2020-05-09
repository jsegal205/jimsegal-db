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
  directions       text NOT NULL,
  notes            text
);

-- drop recipe.reference_link null requirement
ALTER TABLE recipes alter reference_link DROP NOT NULL;

-- only allow unique values for recipes.slug
CREATE UNIQUE INDEX IF NOT EXISTS idx_recipes_slug ON recipes(slug);
