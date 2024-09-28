# Consultando a tabela
SELECT * FROM exercicio1.tb_navios;

# Quais embarcações possuem pontuação de risco igual a 310?
SELECT *
FROM exercicio1.tb_navios
WHERE pontuacao_risco = 310
ORDER BY nome_navio; # Ordem crescente a coluna nome_navio

# Quais embarcações têm classificação de risco A e índice de conformidade maior ou igual a 95%?
SELECT *
FROM exercicio1.tb_navios
WHERE (classificacao_risco = 'A' AND indice_conformidade <= 95.00)
ORDER BY indice_conformidade DESC; #Ordem decrescente a indice_conformidade

# Quais embarcações têm classificação de risco C ou D e índice de conformidade menor ou igual a 95%?
SELECT *
FROM exercicio1.tb_navios
WHERE classificacao_risco IN('C', 'D') AND indice_conformidade <= 95.00
ORDER BY nome_navio;

# Quais embarcações têm classificação de risco A ou pontuação de risco igual a 0?
SELECT *
FROM exercicio1.tb_navios
WHERE classificacao_risco = 'A' or pontuacao_risco = 0 # Nao faz muito sentido poderia ser AND pois isso eh o mesmo que tb.classificacao_risco = 'A'
ORDER BY pontuacao_risco;

# Quais embarcações foram inspecionadas em Dezembro de 2016?
SELECT *
FROM exercicio1.tb_navios
WHERE temporada LIKE '% Dezembro 2016'
ORDER BY pontuacao_risco;