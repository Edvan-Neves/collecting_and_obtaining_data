use consolidajogos;
-- qual pais possui menor media de vitorias no geral? 
select sum(J.TOT_VITORIAS) /count(J.TOT_PARTIDAS) as media, P.NOM_PAIS
from TB_JOGADOR J
inner join TB_PAIS P
ON J.COD_PAIS = P.COD_PAIS
group by P.NOM_PAIS

-- Qual a soma de derrotas do chile no jogo Dama? 
select sum(J.TOT_DERROTAS) as derrotas, P.NOM_PAIS, G.COD_JOGO
from TB_JOGADOR J
inner join TB_JOGO G
ON J.COD_JOGO = G.COD_JOGO
inner join TB_PAIS P
ON J.COD_PAIS = P.COD_PAIS
where G.COD_JOGO = 1
GROUP BY P.NOM_PAIS

-- qual segundo jogo preferido entre as mulheres? 
select COUNT(J.COD_JOGO), J.DESC_GENERO, J.COD_JOGO, G.NOME_JOGO
from TB_JOGADOR J
INNER JOIN TB_JOGO G 
ON J.COD_JOGO = G.COD_JOGO 
WHERE J.DESC_GENERO = 'Feminino'
GROUP BY G.COD_JOGO

-- Qual jogo que possui maior numero de partidas? 
select COUNT(J.TOT_PARTIDAS), J.DESC_GENERO, J.COD_JOGO, G.NOME_JOGO
from TB_JOGADOR J
INNER JOIN TB_JOGO G 
ON J.COD_JOGO = G.COD_JOGO 
GROUP BY G.COD_JOGO

