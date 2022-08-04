SELECT
	canc.nome AS nome,
	COUNT(*) AS reproducoes 
FROM
	SpotifyClone.usuario AS usu,
	SpotifyClone.plano AS plan,
	SpotifyClone.reproducao AS rep,
	SpotifyClone.cancao AS canc 
WHERE
	usu.plano_id = plan.plano_id 
	AND usu.usuario_id = rep.usuario_id 
	AND rep.cancao_id = canc.cancao_id 
	AND (plan.nome = "gratuito" OR plan.nome = "pessoal")
GROUP BY
	nome 
ORDER BY
	nome;