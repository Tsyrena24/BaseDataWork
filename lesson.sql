Вы подключены к базе данных "skypro" как пользователь "postgres".
skypro=# INSERT INTO book (
skypro(# author, title, amount)
skypro-# VALUES ('N.V.Gogol', 'Daed Souls', 12);
INSERT 0 1
skypro=# VALUES ('N.V.Gogol', 'Daed Souls', 12);
  column1  |  column2   | column3
-----------+------------+---------
 N.V.Gogol | Daed Souls |      12
(1 ёЄЁюър)


skypro=# INSERT INTO book (
skypro(# author, title, amount)
skypro-# VALUES ('N.V.Gogol', 'Taras Bulba', 15);
INSERT 0 1
skypro=# INSERT INTO book (
skypro(# author, title, amount)
skypro-# VALUES ('A.S.Pishkin', 'Ruslan and Ludmila', 11);
INSERT 0 1
skypro=# INSERT INTO book (
skypro(# author, title, amount)
skypro-# VALUES ('A.P.Chekhov', 'Uncle Vanya', 8);
INSERT 0 1
skypro=# INSERT INTO book (
skypro(# author, title, amount)
skypro-# VALUES ('A.P.Chekhov', 'Three Sisters', 14);
INSERT 0 1
skypro=# SELECT * FROM book;
 id |   author    |       title        | amount
----+-------------+--------------------+--------
  2 | N.V.Gogol   | Daed Souls         |     12
  3 | N.V.Gogol   | Taras Bulba        |     15
  4 | A.S.Pishkin | Ruslan and Ludmila |     11
  5 | A.P.Chekhov | Uncle Vanya        |      8
  6 | A.P.Chekhov | Three Sisters      |     14
(5 ёЄЁюъ)


skypro=# SELECT * FROM book
skypro-# WHERE amount > 10;
 id |   author    |       title        | amount
----+-------------+--------------------+--------
  2 | N.V.Gogol   | Daed Souls         |     12
  3 | N.V.Gogol   | Taras Bulba        |     15
  4 | A.S.Pishkin | Ruslan and Ludmila |     11
  6 | A.P.Chekhov | Three Sisters      |     14
(4 ёЄЁюъш)


skypro=# INSERT INTO book (
skypro(# author, title, amount)
skypro-# VALUES ('L.N. Tolstoy', 'War ang Peace', 5);
INSERT 0 1
skypro=# SELECT author AS Автор,
skypro-# COUNT (title) AS Книги,
skypro-# SUM (amount) AS Кол_экземпляров
skypro-# FROM book
skypro-# GROUP BY Автор;
    Автор     | Книги | Кол_экземпляров
--------------+-------+-----------------
 A.P.Chekhov  |     2 |              22
 A.S.Pishkin  |     1 |              11
 L.N. Tolstoy |     1 |               5
 N.V.Gogol    |     2 |              27
(4 ёЄЁюъш)


skypro=# SELECT author, title
skypro-# FROM book
skypro-# WHERE amount > 10
skypro-# ORDER BY author DESC, title ASC;
   author    |       title
-------------+--------------------
 N.V.Gogol   | Daed Souls
 N.V.Gogol   | Taras Bulba
 A.S.Pishkin | Ruslan and Ludmila
 A.P.Chekhov | Three Sisters
(4 ёЄЁюъш)


skypro=# SELECT author AS Автор,
skypro-# AVG(amount) AS Среднее_кол_экзем
skypro-# FROM book
skypro-# GROUP BY Автор
skypro-# HAVIMG AVG(amount) > 10;
ERROR:  syntax error at or near "HAVIMG"
СТРОКА 5: HAVIMG AVG(amount) > 10;
          ^
skypro=# SELECT author AS Автор,
skypro-# AVG(amount) AS Среднее_кол_экзем
skypro-# FROM book
skypro-# GROUP BY Автор
skypro-# HAVING AVG(amount) > 10;
    Автор    |  Среднее_кол_экзем
-------------+---------------------
 A.P.Chekhov | 11.0000000000000000
 A.S.Pishkin | 11.0000000000000000
 N.V.Gogol   | 13.5000000000000000
(3 ёЄЁюъш)


skypro=# SELECT title, amount
skypro-# FROM book
skypro-# WHERE amount
skypro-# BETWEEN 8 AND 12
skypro-# ;
       title        | amount
--------------------+--------
 Daed Souls         |     12
 Ruslan and Ludmila |     11
 Uncle Vanya        |      8
(3 ёЄЁюъш)


skypro=# SELECT title, amount
skypro-# FROM book
skypro-# WHERE author
skypro-# IN('L.N.Tolstoy');
 title | amount
-------+--------
(0 ёЄЁюъ)


skypro=# SELECT title, amount
skypro-# FROM book
skypro-# WHERE author
skypro-# IN('L.N. Tolstoy');
     title     | amount
---------------+--------
 War ang Peace |      5
(1 ёЄЁюър)


skypro=# SELECT * FROM book
skypro-# WHERE author
skypro-# LIKE 'N.V._____';
 id |  author   |    title    | amount
----+-----------+-------------+--------
  2 | N.V.Gogol | Daed Souls  |     12
  3 | N.V.Gogol | Taras Bulba |     15
(2 ёЄЁюъш)


skypro=# SELECT * FROM book
skypro-# WHERE title
skypro-# LIKE 'D%';
 id |  author   |   title    | amount
----+-----------+------------+--------
  2 | N.V.Gogol | Daed Souls |     12
(1 ёЄЁюър)


skypro=#