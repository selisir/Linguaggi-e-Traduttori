{-Given a list of numbers, create a list of all
negated absolute values using map-}

negatedAbsValues :: (Num a, Ord a) => [a] -> [a]
negatedAbsValues = map (negate . abs)

-- Esempio 
main = do 
    print (negatedAbsValues [1, -2, 3, -4])  -- Output: [-1, -2, -3, -4]
