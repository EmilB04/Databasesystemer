SELECT *, RANK() OVER (ORDER BY PRIS DESC) as rangering
FROM garn
LIMIT 10;
-- Oppnår det samme -- 
SELECT * FROM
(SELECT *, RANK() OVER (ORDER BY PRIS DESC) as rangering
FROM garn) g
WHERE rangering <=10;