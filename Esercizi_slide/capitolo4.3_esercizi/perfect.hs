{-a positive integer is perfect if it equals the sum
of all of its factory, excluding the number itself define 
a function called perfects-}

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (init (factors x)) == x]
  where
    factors m = [i | i <- [1..m], m `mod` i == 0]

--esempion 
main = print $ perfects 500
--output [6,28,496]

