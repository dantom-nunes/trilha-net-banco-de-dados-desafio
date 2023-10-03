-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT Nome, Ano, Duracao From Filmes
Where Nome = 'De Volta para o Futuro'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes
Where Ano = 1997

-- 5 
SELECT Nome, Ano, Duracao FROM Filmes
Where Ano >= 2000

-- 6
SELECT Nome, Ano, Duracao FROM Filmes
Where Duracao > 100 AND Duracao < 150
Order By Duracao ASC

-- 7
SELECT Ano, COUNT (Ano) Quantidade From Filmes
Group by Ano
Order by Quantidade DESC

-- 8
SELECT * FROM Atores
Where Genero = 'M'

-- 9 
SELECT * FROM Atores
Where Genero = 'F'
Order BY PrimeiroNome ASC

-- 10
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE FilmesGenero.IdGenero = 10

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor