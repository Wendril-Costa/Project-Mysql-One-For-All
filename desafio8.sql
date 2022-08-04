SELECT
	art.nome AS artista,
	alb.nome AS album 
FROM
	SpotifyClone.artista AS art,
	SpotifyClone.album AS alb 
WHERE
	art.artista_id = alb.artista_id 
	AND art.artista_id = 1;