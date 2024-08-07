{-Scrivere una funzione pitagorica che,
dato un valore n, fornisce una lista di liste
• La lista di liste rappresenta una matrice
che contiene la tavola pitagorica fino a n-}

pitagorica :: Int -> [[Int]]
pitagorica n = [[i * j | j <- [1..n]] | i <- [1..n]]

--esempio
main = do 
    print $ pitagorica 5
    {-output [[1,2,3,4,5],[2,4,6,8,10],[3,6,9,
12,15],[4,8,12,16,20],[5,10,15,
20,25]]-}
    