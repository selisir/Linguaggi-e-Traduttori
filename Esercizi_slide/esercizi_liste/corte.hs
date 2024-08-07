{-corte:
data una lista di stringhe, fornire la lista delle sole
stringhe che hanno meno di 4 caratteri-}

corte :: [String] -> [String]
corte [] = []
corte (x:xs)
  | length x < 4 = x : corte xs
  | otherwise    = corte xs
  
--esempio
main = do 
    print(corte ["she","loves","you","yeah!"])
    --output ["she","you"]