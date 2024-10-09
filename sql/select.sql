-- Leitura de todos os livros.
SELECT
      *
FROM
      "books";

--Leitura de todos os livros da categoria "Fantasia".
SELECT
      *
FROM
      "books"
      JOIN "books_categories" ON books."id" = books_categories."bookId"
      JOIN "categories" on books_categories."categoryId" = categories."id"
WHERE
      categories."name" ILIKE 'Fantasia';

--Leitura de todos os livros com suas respectivas categorias, renomeando colunas para evitar conflito entre chaves.
SELECT
      books."id" AS "bookId",
      books."name" AS "bookName",
      categories."name" AS "categoryName",
      books."createdAt",
      books."updatedAt"
FROM
      "categories"
      JOIN "books_categories" ON categories."id" = books_categories."categoryId"
      JOIN "books" ON books_categories."bookId" = books."id";

--Leitura do livro "Harry Potter" com as informações do autor, renomeando colunas para evitar conflito entre chaves.
SELECT
      books."id" AS "bookId",
      books."name" AS "bookName",
      books."authorId",
      authors."name" AS "authorName",
      authors."bio",
      books."createdAt",
      books."updatedAt"
FROM
      "books"
      JOIN "authors" ON books."authorId" = authors."id"
WHERE
      books."name" ILIKE '%Harry Potter%';