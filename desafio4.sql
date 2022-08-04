SELECT
	usu.nome AS usuario,
	IF(YEAR(MAX(rep.data_reproducao)) = 2021, "Usuário ativo", "Usuário inativo") AS condicao_usuario 
FROM
	SpotifyClone.reproducao AS rep,
	SpotifyClone.usuario AS usu 
WHERE
	usu.usuario_id = rep.usuario_id 
GROUP BY
	usu.usuario_id 
ORDER BY
	usuario;