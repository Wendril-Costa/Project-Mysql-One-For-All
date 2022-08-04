SELECT 
    DISTINCT(art.nome) AS artista,
	alb.nome AS album,
	COUNT(*) AS seguidores 
FROM
	SpotifyClone.artista AS art,
	SpotifyClone.album AS alb,
	SpotifyClone.seguindo AS seg 
WHERE
	art.artista_id = alb.artista_id 
	AND art.artista_id = seg.artista_id 
GROUP BY
	seg.artista_id,
	alb.nome 
ORDER BY
	seguidores DESC,
	artista,
	album;