/* 1 */
SELECT Nome, Ano FROM Filmes

/* 2 */
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes
ORDER BY ano

/* 3 */
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes 
WHERE nome = 'De Volta para o Futuro'

/* 4 */
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes 
WHERE Ano = 1997

/* 5 */
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes 
WHERE Ano > 2000

/* 6 */
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes 
WHERE Duracao > 100
ORDER BY Duracao

/* 7 */
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

/* 8 */
SELECT  
	*
FROM Atores
WHERE Genero = 'M'

/* 9 */
SELECT  
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

/* 10 */
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	Filmes
INNER JOIN FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos on FilmesGenero.IdGenero = Generos.Id
 
/* 11 */
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	Filmes
INNER JOIN FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos on FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

/* 12 */
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
From Filmes
INNER JOIN ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores on ElencoFilme.IdAtor = Atores.Id 