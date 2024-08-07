{-lunghezze:
data una lista di liste, produce una lista delle lunghezze-}

lunghezze :: [[a]] -> [Int]
lunghezze xss = map length xss 

--esempio
main = do
    print(lunghezze [[1,4,3],[7,5,6],[],[3,42]])
    --output [3,3,0,2]