{-positivi:
data una lista di valori numerici, produrre una lista
con i soli valori positivi-}

positivi :: (Ord a, Num a) => [a] -> [a]
positivi [] = []
positivi (x:xs)
  | x > 0     = x : positivi xs
  | otherwise = positivi xs
  
--esempio
main = do 
    print(positivi [0,1,-3,3-7,2*10])
    --output [1,20]