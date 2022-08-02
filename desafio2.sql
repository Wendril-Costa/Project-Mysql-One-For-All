 SELECT
        COUNT(DISTINCT(canc.nome)) AS cancoes,
        COUNT(DISTINCT(art.nome)) AS artistas,
        COUNT(DISTINCT(alb.nome)) AS albuns   
    FROM
        SpotifyClone.cancao AS canc,
        SpotifyClone.album AS alb,
        SpotifyClone.artista AS art  
    WHERE
        canc.album_id = alb.album_id 
        AND alb.artista_id = art.artista_id;