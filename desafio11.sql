SELECT
	canc.nome AS nome_musica,
	REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (canc.nome, 'Streets', 'Code Review'), 'Her Own', 'Trybe'), 'Inner Fire', 'Project'), 'Silly', 'Nice'), 'Circus', 'Pull Request') AS novo_nome 
FROM
	SpotifyClone.cancao AS canc 
WHERE
	canc.nome LIKE '%Streets%' 
	OR canc.nome LIKE '%Her Own%' 
	OR canc.nome LIKE '%Inner Fire%' 
	OR canc.nome LIKE '%Silly%' 
	OR canc.nome LIKE '%Circus%' 
ORDER BY
	nome_musica;