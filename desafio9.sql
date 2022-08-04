SELECT
	COUNT(*) AS quantidade_musicas_no_historico 
FROM
	SpotifyClone.reproducao AS rep,
	SpotifyClone.usuario AS usu 
WHERE
	usu.usuario_id = rep.usuario_id 
	AND usu.nome = "Bill";