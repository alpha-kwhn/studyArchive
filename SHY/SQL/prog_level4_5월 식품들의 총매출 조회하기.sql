-- 코드를 입력하세요
SELECT OD.PRODUCT_ID, PD.PRODUCT_NAME, SUM(OD.AMOUNT*PD.PRICE) TOTAL_SALES
FROM FOOD_PRODUCT PD RIGHT JOIN FOOD_ORDER OD ON PD.PRODUCT_ID=OD.PRODUCT_ID
WHERE OD.PRODUCE_DATE LIKE "2022-05%"
GROUP BY OD.PRODUCT_ID HAVING PD.PRODUCT_NAME is not null
ORDER BY TOTAL_SALES DESC, PRODUCT_ID;