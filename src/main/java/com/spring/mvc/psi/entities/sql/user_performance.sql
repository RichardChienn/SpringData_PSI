--每件商品的庫存量
SELECT i.name,i.qty FROM APP.INVENTORY2 i ;

--每件商品的進貨成本
SELECT i.name,i.PU_COST FROM APP.INVENTORY2 i ;

--每個業務員(user)的業績
--建立一個 View , 名稱: userperformance
SELECT u."NAME", SUM(s.PRICE * s.QUANTITY) as profit 
FROM Sales s,T_User u
WHERE s.USER_ID = u.ID
GROUP BY u."NAME" 