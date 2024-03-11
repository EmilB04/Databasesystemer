SELECT dato, antall, sum(antall) OVER 
	(ORDER BY dato ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS akkumulert
FROM ordre;

SELECT dato, antall, avg(antall) OVER 
	(ORDER BY dato ROWS BETWEEN 3 PRECEDING AND 3 FOLLOWING) AS ukesnitt
FROM ordre;

