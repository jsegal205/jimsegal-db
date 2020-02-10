UPDATE games
SET bgg_id = NULLIF(split_part(games.url, '/', 5), '')::INT
FROM (
  SELECT id,
         row_number() OVER (ORDER BY id) AS rn
  FROM games
) t
WHERE t.id = games.id;
