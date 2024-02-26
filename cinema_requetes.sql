-- QUESTION A --
SELECT 	film.titre_film AS 'titre', 
			DATE_FORMAT(film.date_sortie_france_film, '%Y') AS 'année de sortie',
			film.duree_min_film AS 'durée en minutes',
			CONCAT(personne.prenom_personne, ' ', personne.nom_personne) AS 'réalisateur'
FROM film
	INNER JOIN realisateur ON film.id_realisateur = realisateur.id_realisateur
	INNER JOIN personne ON realisateur.id_personne = personne.id_personne
GROUP BY film.id_film;

-- QUESTION B --
SELECT film.titre_film, film.duree_min_film
FROM film
WHERE film.duree_min_film >= 135
ORDER BY film.duree_min_film DESC; 

-- QUESTION C -- 
SELECT 	film.titre_film,
			CONCAT(personne.prenom_personne, ' ', personne.nom_personne) AS 'réalisateur',
			DATE_FORMAT(film.date_sortie_france_film, '%Y') AS 'année de sortie'
FROM film
	INNER JOIN realisateur ON film.id_realisateur = realisateur.id_realisateur
	INNER JOIN personne ON realisateur.id_personne = personne.id_personne
WHERE personne.prenom_personne = LOWER('francis ford') AND personne.nom_personne = LOWER('coppola');

-- QUESTION D -- 
SELECT 	genre_film.nom_genre AS 'genre',
			COUNT(definir.id_film) AS 'nombre de films'
FROM genre_film
	INNER JOIN  definir ON genre_film.id_genre = definir.id_genre
GROUP BY genre_film.id_genre;

-- QUESTION E -- 
SELECT 	CONCAT(personne.prenom_personne, ' ', personne.nom_personne) AS 'réalisateur',
			COUNT(film.id_realisateur) AS 'nombre de film'
FROM film
	INNER JOIN realisateur ON film.id_realisateur = realisateur.id_realisateur
	INNER JOIN personne ON realisateur.id_personne = personne.id_personne
GROUP BY film.id_realisateur
ORDER BY film.id_realisateur DESC;

-- QUESTION F --
SELECT	film.titre_film,
			CONCAT(personne.prenom_personne, ' ', personne.nom_personne) AS 'Acteur/Actrice',
			personne.sexe_personne AS 'sexe'
FROM film
	INNER JOIN jouer ON film.id_film = jouer.id_film
	INNER JOIN acteur ON jouer.id_acteur = acteur.id_acteur
	INNER JOIN personne ON acteur.id_personne = personne.id_personne
WHERE film.titre_film = 'Thelma et Louise';	
	
-- QUESTION G --
-- QUESTION H --
-- QUESTION I --
-- QUESTION J --
-- QUESTION K --
-- QUESTION L --
