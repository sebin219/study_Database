-- Orders
INSERT INTO orders (order_id, total_price) VALUES ('order_001', 10000);
INSERT INTO orders (order_id, total_price) VALUES ('order_002', 17000);
INSERT INTO orders (order_id, total_price) VALUES ('order_003', 23500);

-- Menu Items
INSERT INTO menu_items (menu_item_id, name, price) VALUES ('menu_001', '카레라이스', 7000);
INSERT INTO menu_items (menu_item_id, name, price) VALUES ('menu_002', '카레우동', 8000);
INSERT INTO menu_items (menu_item_id, name, price) VALUES ('menu_003', '카레라면', 5000);

-- Toppings
INSERT INTO toppings (topping_id, name, price) VALUES ('topping_001', '날계란', 500);
INSERT INTO toppings (topping_id, name, price) VALUES ('topping_002', '고로케', 2500);
INSERT INTO toppings (topping_id, name, price) VALUES ('topping_003', '게살튀김', 3000);
INSERT INTO toppings (topping_id, name, price) VALUES ('topping_004', '닭가라아게', 4000);
INSERT INTO toppings (topping_id, name, price) VALUES ('topping_005', '표고버섯', 2000);

-- Order Menu Items
INSERT INTO order_menu_items (order_menu_item_id, order_id, menu_item_id, spicy_level) VALUES (1, 'order_001', 'menu_001', 3);
INSERT INTO order_menu_items (order_menu_item_id, order_id, menu_item_id, spicy_level) VALUES (2, 'order_002', 'menu_002', 1);
INSERT INTO order_menu_items (order_menu_item_id, order_id, menu_item_id, spicy_level) VALUES (3, 'order_003', 'menu_001', 5);
INSERT INTO order_menu_items (order_menu_item_id, order_id, menu_item_id, spicy_level) VALUES (4, 'order_003', 'menu_003', 4);
INSERT INTO order_menu_items (order_menu_item_id, order_id, menu_item_id, spicy_level) VALUES (5, 'order_003', 'menu_001', 5);

-- Menu Item Toppings
INSERT INTO menu_item_toppings (order_menu_topping_id, order_menu_item_id, topping_id) VALUES (1, 1, 'topping_001');
INSERT INTO menu_item_toppings (order_menu_topping_id, order_menu_item_id, topping_id) VALUES (2, 1, 'topping_002');
INSERT INTO menu_item_toppings (order_menu_topping_id, order_menu_item_id, topping_id) VALUES (3, 2, 'topping_003');
INSERT INTO menu_item_toppings (order_menu_topping_id, order_menu_item_id, topping_id) VALUES (4, 2, 'topping_004');
INSERT INTO menu_item_toppings (order_menu_topping_id, order_menu_item_id, topping_id) VALUES (5, 2, 'topping_005');
INSERT INTO menu_item_toppings (order_menu_topping_id, order_menu_item_id, topping_id) VALUES (6, 3, 'topping_001');
INSERT INTO menu_item_toppings (order_menu_topping_id, order_menu_item_id, topping_id) VALUES (7, 3, 'topping_004');