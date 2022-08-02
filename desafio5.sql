SELECT
	canc.nome AS cancao,
	COUNT(rep.cancao_id) AS reproducoes 
FROM
	SpotifyClone.cancao AS canc,
	SpotifyClone.reproducao AS rep 
WHERE
	canc.cancao_id = rep.cancao_id 
GROUP BY
	canc.nome 
ORDER BY
	reproducoes DESC,
	canc.nome LIMIT 2;