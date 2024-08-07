{- funzione lunghezza: data una lista, ne calcola la lunghezza
es lunghezza [1,2,3] 
3 -}

-- Definizione funzione lunghezza
lunghezza :: [a] -> Int
lunghezza [] = 0 -- lista vuota
lunghezza (_:xs) = 1 + lunghezza xs --lista non vuota 

-- Utilizzo 
main = do 
    print (lunghezza [1,2,3])