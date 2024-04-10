--Retornando Nome e Ano do filme em ordem crescente dos anos
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

-- Retornando nome, ano e duracao do filme De Volta para o Futuro
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- Retornando Filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- Retornando Filmes lançados após o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000 ORDER BY Ano ASC

--Retornando Filmes com a duracao entre 100 e 150 em orderm crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao >= 100 AND Duracao <= 150 ORDER BY Duracao ASC

-- Retornando quantidade de filmes lançados por ano
SELECT Ano, COUNT(*) AS Quantidade_de_Filmes
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade_de_Filmes DESC

-- Retornando atores do genero Masculino
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- Retornando atores do genero feminino, colocando o primeiro nome em ordem alfabetica
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

-- Retornando nome e genero de cada filme
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id

-- Retornando filmes do genero misterio
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- Retornando nome do filme, atores, primeiro e ultimo nome e seu papel
SELECT Filmes.Nome AS Nome_do_Filme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;