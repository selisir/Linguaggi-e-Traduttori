{-incrlist :: [Int] -> [Int]
data una lista di interi, fornisce una lista che
contiene tutti i valori incrementati di 1 -}

incrList :: [Int] -> [Int]
incrList [] = []
incrList (x:xs) = (x + 1) : incrList xs

--esempio
main = do 
    print(incrList [1,4,0,3,10])
    --output [2,5,1,4,11]