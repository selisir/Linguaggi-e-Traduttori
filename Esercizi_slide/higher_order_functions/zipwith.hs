{-write a function zipwith-}

ordinato :: Ord a => [a] -> Bool
ordinato xs = and (zipWith (<=) xs (tail xs))

-- esempio
main :: IO ()
main = do
    print (ordinato [1, 2, 3, 4])   -- Output: True
    print (ordinato [1, 3, 2, 4])   -- Output: False
