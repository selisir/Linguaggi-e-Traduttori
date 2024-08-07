{-quadmat:
data una lista di liste di numeri, produce una lista
di liste con i quadrati degli elementi-}

quadMat :: (Num a) => [[a]] -> [[a]]
quadMat [] = []
quadMat (xs:xss) = map (^2) xs : quadMat xss

--esempio
main = do 
    print(quadMat [[1,3,2],[3,4,2]])
    --output [[1,9,4],[9,16,4]]