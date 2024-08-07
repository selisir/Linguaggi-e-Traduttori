{-Funzione concatena: date due liste dello stesso tipo, 
fornisce la concetenazione delle due liste
es concatena [1,4,3] [7,5,6]
[1,4,3,7,5,6] -}

-- Definizione concatena 
-- prendo due liste dello stesso tipo 'a' e dà 
--una lista dello stesso tipo
concatena :: [a] -> [a] -> [a]
-- se la 1^ lista è vuota, concateno solo la seconda
concatena [] ys = ys
-- se la 1^ non è vuota, divido in testa 'x' e in coda 'xs'
-- aggiungo in testa 'x' il risultato della concatenazione della coda
--'xs' con la seconda lista 'ys'
concatena (x:xs) ys = x : concatena xs ys

-- Esempio di utilizzo
main = do 
    print(concatena [1,4,3] [7,5,6])