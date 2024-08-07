{-funzione concatenatutte: data una lista di liste
produce la concatenazione delle liste interne-}

--definizione concetenatutte
concatenatutte :: [[a]] -> [a]
concatenatutte [] = []
concatenatutte (xs:xss) = xs ++ concatenatutte xss 

--esempio
main = do 
    print (concatenatutte [[1,4,3],[7,5,6],[3,42]])