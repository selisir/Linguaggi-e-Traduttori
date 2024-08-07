{-a triple (x,y,z) of positive integers is called 
pythagorean, define a function called pyths-}

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

--esempio
main = do 
    print $ pyths 5
    --output [(3,4,5),(4,3,5)]