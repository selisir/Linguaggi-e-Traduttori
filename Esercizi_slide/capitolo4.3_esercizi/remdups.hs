{-redumps
remove adjacent duplicates from a list-}

--remdups foldr
remdupsFoldr :: Eq a => [a] -> [a]
remdupsFoldr = foldr (\x acc -> if null acc || x /= head acc then x : acc else acc) []

--remdups foldl 
remdupsFoldl :: Eq a => [a] -> [a]
remdupsFoldl = foldl (\acc x -> if null acc || x /= last acc then acc ++ [x] else acc) []

--esempio
main = IO ()
main = do 
    print $ remdupsFoldl [1,2,2,3,3,3,1,1]
    --output [1,2,3,1]
    print $ remdupsFoldr [1,2,2,3,3,3,1,1]
    --output [1,2,3,1]