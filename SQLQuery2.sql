
--q1

SELECT 
Nome,
Ano

FROM Filmes

--q2

SELECT 
Nome,
Ano

FROM Filmes
ORDER BY Ano

--q3

SELECT 
Nome,
Ano,
Duracao

FROM Filmes
WHERE Nome ='De Volta para o Futuro'

--q4

SELECT * FROM Filmes
WHERE Ano ='1997'

--q5

SELECT * FROM Filmes
WHERE Ano LIKE '2%'
ORDER BY Ano

--q6

SELECT * FROM Filmes
WHERE Duracao BETWEEN 101 AND 150
ORDER BY Duracao

--q7

SELECT  
Ano,
COUNT(*) Quantidade 

FROM Filmes
GROUP BY Ano
ORDER BY Ano

--q8

SELECT 
PrimeiroNome,
UltimoNome,
Genero

FROM Atores
WHERE Genero = 'M'

--q9

SELECT 
PrimeiroNome,
UltimoNome,
Genero

FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--q10

SELECT 
Filmes.Nome,
Generos.Genero

FROM Filmes
INNER JOIN  Generos ON Filmes.id = Generos.id
INNER JOIN  FilmesGenero ON Filmes.id = FilmesGenero.id
WHERE FilmesGenero.id > 0

--q11

SELECT 
Filmes.Nome,
Generos.Genero
FROM Filmes
INNER JOIN  Generos ON Filmes.id = Generos.id 
WHERE Generos.id = 10 

--q12

SELECT 
Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel

FROM Filmes
INNER JOIN  Atores ON Filmes.id = Atores.id 
INNER JOIN  ElencoFilme ON Filmes.id = ElencoFilme.id 

WHERE Atores.id >0