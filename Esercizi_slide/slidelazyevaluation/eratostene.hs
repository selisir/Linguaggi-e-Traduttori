{-Il crivello di Eratostene serve a calcolare la sequenza dei
numeri primi, partendo dalla sequenza di tutti i numeri
>=2.-}

crivello :: [Int] -> [Int]
crivello (p:xs) = p : crivello [x | x <- xs, x `mod` p /= 0]

-- Esempio 
main :: IO ()
main = print $ take 20 (crivello [2..])
