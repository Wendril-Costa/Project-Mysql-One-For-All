SELECT
	ROUND(MIN(plan.valor), 2) AS faturamento_minimo,
	ROUND(MAX(plan.valor), 2) AS faturamento_maximo,
	ROUND(AVG(plan.valor), 2) AS faturamento_medio,
	ROUND(SUM(plan.valor), 2) AS faturamento_total 
FROM
	SpotifyClone.usuario AS usu,
	SpotifyClone.plano AS plan 
WHERE
	usu.plano_id = plan.plano_id;