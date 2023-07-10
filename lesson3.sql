    (удаление таблицу)
    skypro=# DROP TABLE book;
    DROP TABLE

    (создание главной таблицы)
    skypro=# CREATE TABLE author (
    skypro(# author_id BIGSERIAL NOT NULL PRIMARY KEY,
    skypro(# name_author VARCHAR(60)
    skypro(# );
    CREATE TABLE

    (создание таблицы связанной с главной)
    skypro=# CREATE TABLE book (
    skypro(# book_id BIGSERIAL NOT NULL PRIMARY KEY,
    skypro(# title  VARCHAR(60) NOT NULL,
    skypro(# author_id INT NOT NULL,
    skypro(# amount INT NOT NULL,
    (создание внешнего ключа (FOREIGN KEY),по колонке author_id которая ссылается на таблицу author на колонке author_id)
    skypro(# FOREIGN KEY (author_id) REFERENCES author(author_id)
    skypro(# );
    CREATE TABLE

