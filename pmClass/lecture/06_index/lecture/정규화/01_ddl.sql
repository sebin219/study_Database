
drop table if exists restaurant_db;
create database restaurant_db;

-- 테이블 삭제 (역순으로 DROP)
DROP TABLE IF EXISTS menu_item_toppings;
DROP TABLE IF EXISTS order_menu_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS toppings;
DROP TABLE IF EXISTS menu_items;

-- 주메뉴 정보 테이블
CREATE TABLE menu_items (
                            menu_item_id VARCHAR(20) PRIMARY KEY,
                            name VARCHAR(50) NOT NULL,
                            price INT NOT NULL
);

-- 토핑 정보 테이블
CREATE TABLE toppings (
                          topping_id VARCHAR(20) PRIMARY KEY,
                          name VARCHAR(50) NOT NULL,
                          price INT NOT NULL
);

-- 주문 테이블
CREATE TABLE orders (
                        order_id VARCHAR(20) PRIMARY KEY,
                        total_price INT NOT NULL
);

-- 주문-주메뉴 테이블 (식별자 추가)
CREATE TABLE order_menu_items (
                                  order_menu_item_id INT AUTO_INCREMENT PRIMARY KEY,
                                  order_id VARCHAR(20) NOT NULL,
                                  menu_item_id VARCHAR(20) NOT NULL,
                                  spicy_level INT CHECK (spicy_level BETWEEN 1 AND 5),

                                  FOREIGN KEY (order_id) REFERENCES orders(order_id),
                                  FOREIGN KEY (menu_item_id) REFERENCES menu_items(menu_item_id)
);

-- 주메뉴-토핑 매핑 테이블
CREATE TABLE menu_item_toppings (
                                    order_menu_topping_id INT AUTO_INCREMENT PRIMARY KEY,
                                    order_menu_item_id INT NOT NULL,
                                    topping_id VARCHAR(20),

                                    FOREIGN KEY (order_menu_item_id) REFERENCES order_menu_items(order_menu_item_id),
                                    FOREIGN KEY (topping_id) REFERENCES toppings(topping_id)
);