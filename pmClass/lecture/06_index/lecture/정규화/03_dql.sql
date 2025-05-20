-- 원본보기
SELECT
    o.order_id AS 주문번호,
    mi.menu_item_id AS 주메뉴번호,
    mi.name AS 메뉴이름,
    mi.price AS 메뉴가격,
    omi.spicy_level AS 매운맛정도,
    t.topping_id AS 토핑메뉴코드,
    t.name AS 토핑메뉴,
    t.price AS 가격,
    o.total_price AS 결제금액
FROM orders o
         JOIN order_menu_items omi ON o.order_id = omi.order_id
         JOIN menu_items mi ON omi.menu_item_id = mi.menu_item_id
         LEFT JOIN menu_item_toppings mit ON omi.order_menu_item_id = mit.order_menu_item_id
         LEFT JOIN toppings t ON mit.topping_id = t.topping_id
ORDER BY o.order_id, omi.order_menu_item_id;

-- 주방용 주문서로 뽑아보기
SELECT
    omi.order_menu_item_id        AS 주문메뉴ID,
    mi.name                       AS 메뉴이름,
    omi.spicy_level               AS 매운맛정도,
    -- group_concat : 여러 행의 값을 하나의 문자열로 연결해주는 함수
    -- coalesce : null이 아닌 첫번째 값을 반환
    COALESCE(GROUP_CONCAT(t.name ORDER BY t.name SEPARATOR ', '), '없음') AS 토핑목록
FROM order_menu_items omi
         JOIN menu_items mi
              ON omi.menu_item_id = mi.menu_item_id
         LEFT JOIN menu_item_toppings mit
                   ON mit.order_menu_item_id = omi.order_menu_item_id
         LEFT JOIN toppings t
                   ON mit.topping_id = t.topping_id
GROUP BY omi.order_menu_item_id, mi.name, omi.spicy_level
ORDER BY omi.order_menu_item_id;