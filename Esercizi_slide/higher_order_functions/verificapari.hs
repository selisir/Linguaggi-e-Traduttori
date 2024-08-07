{-verificapari :: [Int] -> [Bool]
data una lista di interi, fornisce una lista che contiene
True in corrispondenza di ogni valore pari e False in 
corrispondenza dei dispari-}

verificaPari :: [Int] -> [Bool]
verificaPari [] = []
verificaPari (x:xs) = (x `mod` 2 == 0) : verificaPari xs

--esempio
main = do 
    print(verificaPari [1,4,0,3,10])
    --output [False,True,True,False,True]