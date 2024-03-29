SELECT
    c.CART_ID
FROM
    CART_PRODUCTS as c
WHERE
    (SELECT count(CART_ID) FROM CART_PRODUCTS WHERE NAME = 'Milk' AND CART_ID = c.CART_ID) = 1 AND
    (SELECT count(CART_ID) FROM CART_PRODUCTS WHERE NAME = 'Yogurt' AND CART_ID = c.CART_ID) = 1
GROUP BY
    c.CART_ID
ORDER BY
    c.CART_ID