{-the scalar product of two lists of integers xs and ys
of length n is given by the sum of the products of the 
corresponding integers-}

scalarProduct :: [Int] -> [Int] -> Int
scalarProduct xs ys = sum [x * y | (x, y) <- zip xs ys]

main = do 
    let xs1 = [1, 2, 3]
    let ys1 = [4, 5, 6]
    print $ scalarProduct xs1 ys1  
    -- Output: 32 (1*4 + 2*5 + 3*6)