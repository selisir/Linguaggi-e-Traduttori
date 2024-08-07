{-G.H. Hardy. Trying to find a subject of conversation, Hardy
remarked that he had arrived in a taxi with the number 1
729, a rather boring number it seemed to him. Not at all, 
Ramanujan instantly replied, it is the first number that 
can be expressed as two cubes in essentially different 
ways:
1^3 + 12^3 = 9^3 + 10^3 = 1729. 
Write a function that, given a number n, finds the list of
all the numbers ≤n having the same property-}

ramanujan :: Int -> [Int]
ramanujan n = [a^3 + b^3 | a <- [1..upper], b <- [a+1..upper], let s = a^3 + b^3, s <= n, isRamanujan s]
  where
    upper = floor (fromIntegral n ** (1/3))
    isRamanujan x = length [(a, b) | a <- [1..upper], b <- [a+1..upper], a^3 + b^3 == x] > 1

--esempio 
main = print $ ramanujan 2000
--output 1729

