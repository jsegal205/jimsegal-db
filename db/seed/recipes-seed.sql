
--
-- Recipes seed file
--

-- seed `recipes` table if not already populated
DO $$
DECLARE
  rowcount integer := count(id) FROM recipes;
BEGIN
  IF rowcount > 0 THEN
    RAISE NOTICE 'Recipes table already populated. Skipping seeding...';
  ELSE
    INSERT INTO recipes ("title", "slug", "reference_link", "ingredients", "directions") VALUES
    ('Oatmeal Chocolate Chip Cookies','oatmeal-chocolate-chip-cookies','https://www.averiecooks.com/the-best-oatmeal-chocolate-chip-cookies/',
    '- 1 large egg
- 1/2 cup unsalted butter (1 stick)
- 1/2 cup light brown sugar, packed
- 1/4 cup granulated sugar
- 1 tablespoon vanilla extract
- 1 1/2 cups old-fashioned whole rolled oats (not instant or quick cook)
- 3/4 cup all-purpose flour
- 1/2 to 1 teaspoon cinnamon, added to taste
- 1/2 teaspoon baking soda
- pinch salt, optional and to taste
- 1 heaping cup semi-sweet chocolate chips', '#### Prepare

1. Combine the following in a stand mixer:
   - 1 egg
   - butter - 1/2 cup
   - brown sugar - 1/2 cup, packed
   - granulated sugar - 1/2 cup
   - vanilla - 1 tablespoon
1. Using paddle attachment, beat on medium-high speed until creamed and well combined, about 4 minutes.
1. Scrape down the sides of the bowl then add:
   - oats - 1 1/2 cups
   - flour - 3/4 cup
   - cinnamon - 1 teaspoon
   - baking soda - 1/2 teaspoon
   - salt
1. Beat on low speed until just combined, about 1 minute.
1. Scrape down the sides of the bowl then add:
   - chocolate chips - 1 heaping cup
1. Beat on low speed until just combined, about 30 seconds.
1. Roll into 1/4 inch balls and flatten slightly.
1. Place onto plate.
1. Cover with plastic wrap.
1. Refrigerate at least 2 hours and up to 5 days.

#### Cooking

1. Preheat oven to 350F.
1. Line baking sheet with Silpat.
1. Space dough balls about 2 inches apart.
1. Cook for ~11 minutes.
1. Let cool on baking sheet for 10 minutes before serving.');

    RAISE NOTICE 'Recipes Table seeded';
  END IF;
END $$;
