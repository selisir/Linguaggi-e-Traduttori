{-funzione addvectors: ha come parametri due vettori 
nel piano e ne calcola la somma-}

--definizione addvectors
addvectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addvectors (x1,y1) (x2,y2) = (x1 + x2, y1 + y2)

--esempio
main = do 
    print (addvectors (1, 2) (3, 4)) 
  