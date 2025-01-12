INSERT INTO customers (id, customer_name, level) VALUES (1, 'Роберт Мартин', 1);
INSERT INTO customers (id, customer_name, level) VALUES (2, 'Юрген Хёллер', 1);
INSERT INTO customers (id, customer_name, level) VALUES (3, 'Джош Лонг', 1);
INSERT INTO customers (id, customer_name, level) VALUES (4, 'Джеймс Гослинг', 2);
INSERT INTO customers (id, customer_name, level) VALUES (5, 'Брюс Эккель', 1);
INSERT INTO customers (id, customer_name, level) VALUES (6, 'Герберт Шилдт', 2);
INSERT INTO customers (id, customer_name, level) VALUES (7, 'Мартин Клеппман', 2);
INSERT INTO customers (id, customer_name, level) VALUES (8, 'Гилад Брача', 2);
INSERT INTO customers (id, customer_name, level) VALUES (9, 'Даг Ли', 1);
INSERT INTO customers (id, customer_name, level) VALUES (10, 'Джошуа Блох', 2);

INSERT INTO products (id, name, category, price) VALUES (1, 'Java Concurrency на практике', 'Книги', 720.83);
INSERT INTO products (id, name, category, price) VALUES (2, 'Монополия', 'Игры', 1025.20);
INSERT INTO products (id, name, category, price) VALUES (3, 'Пальто', 'Одежда', 8000.00);
INSERT INTO products (id, name, category, price) VALUES (4, 'Принтер', 'Электроника', 3999.99);
INSERT INTO products (id, name, category, price) VALUES (5, 'Набор посуды', 'Товары для дома', 600.50);
INSERT INTO products (id, name, category, price) VALUES (6, 'Носки', 'Одежда', 50.00);
INSERT INTO products (id, name, category, price) VALUES (7, 'Часы', 'Электроника', 2455.06);
INSERT INTO products (id, name, category, price) VALUES (8, 'Коврик', 'Товары для дома', 400.72);
INSERT INTO products (id, name, category, price) VALUES (9, 'Высоконагруженные приложения', 'Книги', 1000.50);
INSERT INTO products (id, name, category, price) VALUES (10, 'Филосовия Java', 'Книги', 1250.33);
INSERT INTO products (id, name, category, price) VALUES (11, 'Зеркало', 'Товары для дома', 3100.00);
INSERT INTO products (id, name, category, price) VALUES (12, 'Карты', 'Игры', 75.20);
INSERT INTO products (id, name, category, price) VALUES (13, 'Шарф', 'Одежда', 890.00);
INSERT INTO products (id, name, category, price) VALUES (14, 'Пуловер', 'Одежда', 3400.45);
INSERT INTO products (id, name, category, price) VALUES (15, 'Подставка для цветов', 'Товары для дома', 190.30);
INSERT INTO products (id, name, category, price) VALUES (16, 'Парка', 'Одежда', 8900.00);
INSERT INTO products (id, name, category, price) VALUES (17, 'Флешка', 'Электроника', 700.00);
INSERT INTO products (id, name, category, price) VALUES (18, 'Бадминтон', 'Игры', 1500.78);
INSERT INTO products (id, name, category, price) VALUES (19, 'Гарри Поттер', 'Книги', 1300.50);
INSERT INTO products (id, name, category, price) VALUES (20, 'Хоббит', 'Книги', 1680.02);
INSERT INTO products (id, name, category, price) VALUES (21, 'Стул', 'Товары для дома', 3600.00);
INSERT INTO products (id, name, category, price) VALUES (22, 'Маджонг', 'Игры', 3100.00);
INSERT INTO products (id, name, category, price) VALUES (23, 'Домино', 'Игры', 75.20);
INSERT INTO products (id, name, category, price) VALUES (24, 'Лонгслив', 'Одежда', 1300.54);
INSERT INTO products (id, name, category, price) VALUES (25, 'Футболка', 'Одежда', 2100.15);
INSERT INTO products (id, name, category, price) VALUES (26, 'Бокал', 'Товары для дома', 80.30);
INSERT INTO products (id, name, category, price) VALUES (27, 'Монитор', 'Электроника', 11300.00);
INSERT INTO products (id, name, category, price) VALUES (28, 'Видеокамера', 'Электроника', 6547.22);
INSERT INTO products (id, name, category, price) VALUES (29, 'Имаджинариум', 'Игры', 1631.00);
INSERT INTO products (id, name, category, price) VALUES (30, 'Грокаем алгоритмы', 'Книги', 969.50);

INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (1, '2022-01-03', '2022-01-08', 'Новый', 2);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (2, '2022-01-11', '2022-01-17', 'Новый', 10);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (3, '2022-04-10', '2022-04-18', 'Доставлено', 5);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (4, '2022-03-04', '2022-03-27', 'Доставляется', 3);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (5, '2022-03-22', '2022-03-27', 'Доставляется', 4);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (6, '2022-03-22', '2022-03-27', 'Доставляется', 7);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (7, '2022-02-28', '2022-03-08', 'Новый', 1);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (8, '2022-02-28', '2022-03-05', 'Новый', 10);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (9, '2022-04-10', '2022-04-18', 'Доставлено', 2);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (10, '2022-03-15', '2022-03-27', 'Доставляется', 9);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (11, '2022-03-17', '2022-03-27', 'Доставляется', 8);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (12, '2022-03-22', '2022-03-27', 'Доставляется', 10);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (13, '2022-02-28', '2022-03-08', 'Новый', 4);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (14, '2022-02-03', '2022-03-05', 'Новый', 10);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (15, '2022-04-18', '2022-04-17', 'Доставлено', 5);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (16, '2022-01-22', '2022-02-27', 'Доставляется', 3);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (17, '2022-03-23', '2022-03-28', 'Доставляется', 2);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (18, '2022-01-22', '2022-03-27', 'Доставляется', 6);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (19, '2022-02-13', '2022-03-08', 'Новый', 8);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (20, '2022-01-15', '2022-03-09', 'Новый', 9);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (21, '2022-07-05', '2022-08-04', 'Доставлено', 5);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (22, '2022-03-15', '2022-09-05', 'Доставлено', 3);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (23, '2022-03-11', '2022-10-05', 'Доставляется', 4);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (24, '2022-03-22', '2022-03-27', 'Доставляется', 2);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (25, '2022-02-28', '2022-03-08', 'Новый', 2);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (26, '2022-04-28', '2022-11-01', 'Новый', 10);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (27, '2022-04-10', '2022-05-25', 'Доставлено', 5);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (28, '2022-03-22', '2022-12-27', 'Доставляется', 3);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (29, '2022-02-22', '2022-06-10', 'Новый', 3);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (30, '2022-03-22', '2022-03-27', 'Доставляется', 6);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (31, '2022-02-28', '2022-10-21', 'Новый', 2);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (32, '2022-01-28', '2022-09-05', 'Новый', 1);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (33, '2022-04-10', '2022-07-18', 'Доставлено', 5);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (34, '2022-09-22', '2022-10-01', 'Новый', 3);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (35, '2022-02-03', '2022-03-02', 'Доставляется', 7);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (36, '2022-03-10', '2022-03-27', 'Доставляется', 3);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (37, '2022-08-20', '2022-12-08', 'Новый', 2);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (38, '2022-09-28', '2022-11-05', 'Новый', 10);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (39, '2022-04-10', '2022-12-03', 'Доставлено', 5);
INSERT INTO orders (id, order_date, delivery_date, status, customer_id) VALUES (40, '2022-08-14', '2022-09-27', 'Доставляется', 4);

INSERT INTO orders_products_rel (order_id, product_id) VALUES (1, 3);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (1, 5);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (1, 10);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (2, 1);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (2, 8);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (2, 7);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (3, 3);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (3, 9);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (3, 20);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (3, 7);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (4, 15);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (4, 18);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (4, 2);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (4, 7);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (4, 12);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (5, 25);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (5, 1);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (5, 20);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (5, 8);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (6, 29);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (7, 22);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (7, 2);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (7, 7);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (7, 16);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (8, 30);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (8, 19);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (9, 5);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (9, 6);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (9, 27);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (9, 17);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (10, 21);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (10, 11);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (10, 8);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (11, 30);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (12, 13);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (12, 2);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (12, 18);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (12, 22);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (12, 26);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (13, 5);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (14, 20);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (15, 19);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (15, 9);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (15, 24);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (16, 17);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (17, 20);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (17, 6);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (18, 4);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (18, 8);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (18, 29);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (18, 1);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (19, 3);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (20, 25);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (20, 30);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (20, 11);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (20, 4);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (21, 30);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (21, 1);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (22, 3);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (22, 7);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (22, 18);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (23, 18);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (23, 2);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (24, 17);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (25, 20);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (26, 23);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (26, 27);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (26, 3);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (27, 4);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (28, 29);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (28, 2);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (28, 16);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (28, 18);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (29, 5);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (29, 6);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (30, 5);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (31, 5);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (31, 7);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (31, 21);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (31, 23);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (31, 25);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (32, 28);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (33, 14);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (34, 15);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (34, 16);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (35, 8);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (36, 2);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (36, 1);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (37, 20);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (37, 29);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (38, 21);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (38, 11);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (39, 12);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (40, 13);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (40, 5);
INSERT INTO orders_products_rel (order_id, product_id) VALUES (40, 26);
