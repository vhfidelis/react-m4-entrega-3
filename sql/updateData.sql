UPDATE "books"
SET
      ("name") = ROW ('Harry Potter e o Prisioneiro de Azkaban')
WHERE
      name ILIKE 'Harry Potter' RETURNING *;

UPDATE "books"
SET
      ("authorId") = ROW (1)
WHERE
      name ILIKE '%One Piece%' RETURNING *;