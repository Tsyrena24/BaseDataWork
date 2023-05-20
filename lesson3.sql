skypro=# INSERT INTO book(
skypro(# title, author_id, amount)
skypro-# VALUES ('War ang Peace', 4, 5);
INSERT 0 1
skypro=# SELECT * FROM book;
 book_id |       title        | author_id | amount
---------+--------------------+-----------+--------
       1 | Taras Bulba        |         1 |     15
       2 | Dead Souls         |         1 |     12
       3 | Ruslan and Ludmila |         2 |     11
       4 | Uncle Vanya        |         3 |      8
       5 | Three Sisters      |         3 |     14
       6 | War ang Peace      |         4 |      5
(6 ёЄЁюъ)


skypro=# SELECT * FROM author;
 author_id | name_author
-----------+-------------
         1 | N.V.Gogol
         2 | A.S.Pushkin
         3 | A.P.Chehov
         4 | L.N.Tolstoy
         5 | A.I.Kuprin
(5 ёЄЁюъ)


skypro=# SELECT name_author, title
skypro-# FROM author
skypro-# INNER JOIN book
skypro-# ON author.author_id=book.author_id;
 name_author |       title
-------------+--------------------
 N.V.Gogol   | Taras Bulba
 N.V.Gogol   | Dead Souls
 A.S.Pushkin | Ruslan and Ludmila
 A.P.Chehov  | Uncle Vanya
 A.P.Chehov  | Three Sisters
 L.N.Tolstoy | War ang Peace
(6 ёЄЁюъ)


skypro=# SELECT name_author, title
skypro-# FROM author
skypro-# LEFT JOIN book
skypro-# ON author.author_id=book.author_id;
 name_author |       title
-------------+--------------------
 N.V.Gogol   | Taras Bulba
 N.V.Gogol   | Dead Souls
 A.S.Pushkin | Ruslan and Ludmila
 A.P.Chehov  | Uncle Vanya
 A.P.Chehov  | Three Sisters
 L.N.Tolstoy | War ang Peace
 A.I.Kuprin  |
(7 ёЄЁюъ)


skypro=# SELECT name_author, title
skypro-# FROM author
skypro-# FUULL JOIN book
skypro-# ;
ERROR:  syntax error at or near ";"
СТРОКА 4: ;
          ^
skypro=# SELECT name_author, title
skypro-# FROM author
skypro-# FULL JOIN book
skypro-# ON author.author_id=book.author_id;
 name_author |       title
-------------+--------------------
 N.V.Gogol   | Taras Bulba
 N.V.Gogol   | Dead Souls
 A.S.Pushkin | Ruslan and Ludmila
 A.P.Chehov  | Uncle Vanya
 A.P.Chehov  | Three Sisters
 L.N.Tolstoy | War ang Peace
 A.I.Kuprin  |
(7 ёЄЁюъ)


skypro=# SELECT name_author, title
skypro-# FROM author
skypro-# CROSS JOIN book
skypro-# ;
 name_author |       title
-------------+--------------------
 N.V.Gogol   | Taras Bulba
 N.V.Gogol   | Dead Souls
 N.V.Gogol   | Ruslan and Ludmila
 N.V.Gogol   | Uncle Vanya
 N.V.Gogol   | Three Sisters
 N.V.Gogol   | War ang Peace
 A.S.Pushkin | Taras Bulba
 A.S.Pushkin | Dead Souls
 A.S.Pushkin | Ruslan and Ludmila
 A.S.Pushkin | Uncle Vanya
 A.S.Pushkin | Three Sisters
 A.S.Pushkin | War ang Peace
 A.P.Chehov  | Taras Bulba
 A.P.Chehov  | Dead Souls
 A.P.Chehov  | Ruslan and Ludmila
 A.P.Chehov  | Uncle Vanya
 A.P.Chehov  | Three Sisters
 A.P.Chehov  | War ang Peace
 L.N.Tolstoy | Taras Bulba
 L.N.Tolstoy | Dead Souls
 L.N.Tolstoy | Ruslan and Ludmila
 L.N.Tolstoy | Uncle Vanya
 L.N.Tolstoy | Three Sisters
 L.N.Tolstoy | War ang Peace
 A.I.Kuprin  | Taras Bulba
 A.I.Kuprin  | Dead Souls
 A.I.Kuprin  | Ruslan and Ludmila
 A.I.Kuprin  | Uncle Vanya
 A.I.Kuprin  | Three Sisters
 A.I.Kuprin  | War ang Peace
(30 ёЄЁюъ)

