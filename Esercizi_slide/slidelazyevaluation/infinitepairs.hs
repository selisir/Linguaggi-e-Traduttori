{-You want to produce an infinite list of all distinct
pairs (x, y) of natural numbers. • It doesn’t matter in which order the pairs are
enumerated, as long as they all are there. Say
whether or not the definition
allPairs= [(x,y)| x<-[0..], y<-[0..]]-}

allPairs :: [(Int, Int)]
allPairs = [(x, y) | n <- [0..], x <- [0..n], let y = n - x]

-- Esempio 
main :: IO ()
main = print $ take 20 allPairs
