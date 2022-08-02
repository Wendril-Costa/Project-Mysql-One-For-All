SELECT
	usu.nome AS usuario,
	COUNT(rep.usuario_id) AS qtde_musicas_ouvidas,
	ROUND(SUM(canc.duracao) / 60 , 2) AS total_minutos 
FROM
	SpotifyClone.reproducao AS rep,
	SpotifyClone.usuario AS usu,
	SpotifyClone.cancao AS canc 
WHERE
	usu.usuario_id = rep.usuario_id 
	AND rep.cancao_id = canc.cancao_id 
GROUP BY
	rep.usuario_id 
ORDER BY
	usu.nome;