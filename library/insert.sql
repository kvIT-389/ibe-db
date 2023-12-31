/******************************************************************************/
/***         Generated by IBExpert 2021.3.29.1 23.06.2023 11:40:14          ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;

INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME) VALUES (1, 'Классическая проза');
INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME) VALUES (2, 'Фантастика');
INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME) VALUES (3, 'Философия');
INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME) VALUES (4, 'Детская проза');
INSERT INTO CATEGORIES (CATEGORY_ID, CATEGORY_NAME) VALUES (5, 'Поэзия');


COMMIT WORK;

INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (1, 'Идиот', 'Ф.М. Достоевский', 624, 2021, 1);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (2, 'Улисс', 'Джеймс Джойс', 928, 2022, 1);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (3, 'Унесенные ветром', 'Маргарет Митчелл', 1088, 2020, 1);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (4, 'Тихий Дон', 'М.А. Шолохов', 1328, 2021, 1);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (5, 'Мы', 'Е.И. Замятин', 320, 2018, 1);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (6, 'Тошнота', 'Жан Поль Сартр', 317, 2022, 3);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (7, 'Поэтика и риторика', 'Аристотель', 409, 2019, 3);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (8, 'Странник и его тень', 'Фридрих Ницше', 347, 2017, 3);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (9, 'Книга о пути и добродетели', 'Дао дэ Цзин', 231, 2015, 3);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (10, 'Искусство любить', 'Эрих Фромм', 425, 2017, 3);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (11, 'Рита Хейуорт или побег из Шоушенка', 'Стивен Кинг', 206, 2019, 2);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (12, 'Игра престолов (Том 1)', 'Джордж Р.Р. Мартин', 768, 2019, 2);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (13, 'Властелин колец (Том 2)', 'Джон Р.Р. Толкин', 837, 2018, 2);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (14, 'Властелин колец (Том 1)', 'Джон Р.Р. Толкин', 862, 2018, 2);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (15, 'Гарри Поттер (Том 1)', 'Джоан Роулинг', 754, 2016, 2);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (16, 'Полный газ', 'Джо Хилл', 887, 2020, 2);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (17, 'Маленький Принц', 'Антуан де Сент-Экзюпери', 154, 2014, 4);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (18, 'Малыш и Карлсон', 'Астрид Линдгрен', 347, 2008, 4);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (19, 'Книга джунглей', 'Редьярд Киплинг', 268, 2015, 4);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (20, 'Хроники Нарнии', 'Клайв Льюис', 912, 2017, 4);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (21, 'Приключения Гекльберри Финна', 'Марк Твен', 434, 2016, 4);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (22, 'Избранные сочинения', 'С.А. Есенин', 430, 1983, 5);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (23, 'Стихотворения', 'А.А. Ахматова', 368, 2002, 5);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (24, 'Я не люблю...', 'В.С. Высоцкий', 416, 2018, 5);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (25, 'Большое собрание стихотворений и поэм', 'В.В. Маяковский', 1312, 2018, 5);
INSERT INTO BOOKS (BOOK_ID, BOOK_NAME, BOOK_AUTHOR, PAGES_COUNT, PUBLISH_YEAR, CATEGORY_ID) VALUES (26, 'Собрание сочинений', 'А.С. Пушкин', 683, 1974, 5);


COMMIT WORK;

INSERT INTO READERS (READER_ID, LAST_NAME, FIRST_NAME, MIDDLE_NAME, HOME_ADDRESS, PASSPORT) VALUES (1, 'Григорьев', 'Сергей', 'Алексеевич', 'Игошина 10, кв. 7', '2517 381032');
INSERT INTO READERS (READER_ID, LAST_NAME, FIRST_NAME, MIDDLE_NAME, HOME_ADDRESS, PASSPORT) VALUES (2, 'Силантьев', 'Григорий', 'Викторович', 'Лермонтова 81/6, кв. 23', '2522 238103');
INSERT INTO READERS (READER_ID, LAST_NAME, FIRST_NAME, MIDDLE_NAME, HOME_ADDRESS, PASSPORT) VALUES (4, 'Никишин', 'Валерий', 'Сергеевич', 'Гоголя 37, кв. 15', '2521 912893');
INSERT INTO READERS (READER_ID, LAST_NAME, FIRST_NAME, MIDDLE_NAME, HOME_ADDRESS, PASSPORT) VALUES (6, 'Зверев', 'Михаил', 'Николаевич', 'Партизанская 147, кв. 19', '2519 129844');
INSERT INTO READERS (READER_ID, LAST_NAME, FIRST_NAME, MIDDLE_NAME, HOME_ADDRESS, PASSPORT) VALUES (7, 'Громов', 'Федор', 'Сергеевич', 'Триллисера 123, кв. 59', '2520 829210');


COMMIT WORK;

INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (2, 1, '2023-03-06', '2023-03-17');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (21, 4, '2023-04-05', '2023-04-11');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (5, 1, '2023-03-21', '2023-04-01');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (16, 1, '2023-04-07', '2023-04-15');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (25, 1, '2023-04-25', NULL);
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (3, 2, '2023-03-15', '2023-03-28');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (7, 2, '2023-04-09', '2023-04-18');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (14, 2, '2023-04-23', '2023-05-07');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (13, 2, '2023-05-10', NULL);
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (19, 4, '2023-04-23', '2023-04-29');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (11, 4, '2023-05-11', '2023-05-13');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (7, 6, '2023-03-18', '2023-03-27');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (9, 6, '2023-03-30', '2023-04-07');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (10, 6, '2023-04-19', '2023-04-27');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (18, 6, '2023-03-07', NULL);
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (19, 6, '2023-05-13', NULL);
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (4, 7, '2023-03-21', '2023-04-06');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (5, 7, '2023-04-10', '2023-04-16');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (1, 7, '2023-04-19', '2023-04-29');
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (22, 7, '2023-05-06', NULL);
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (26, 7, '2023-05-06', NULL);
INSERT INTO BORROWS (BOOK_ID, READER_ID, BORROW_DATE, RETURN_DATE) VALUES (12, 7, '2023-05-19', NULL);


COMMIT WORK;

SET GENERATOR BOOKS_GENERATOR TO 26;
SET GENERATOR CATEGORIES_GENERATOR TO 5;
SET GENERATOR READERS_GENERATOR TO 7;
