{--quadlist:
data una lista, produce una lista della stessa lunghezza 
che contiene i quadrati dei valori della lista originaria-}

quadlist :: [Int] -> [Int]
quadlist xs = map (^2) xs

--esempi
main = do 
    print(quadlist [1,3,2]) --output [1,9,4]
