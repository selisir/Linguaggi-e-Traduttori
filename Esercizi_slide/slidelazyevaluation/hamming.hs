{-A well-known problem, due to the mathematician W.R.
Hamming, is to write a program that produces an infinite list
of numbers with the following properties:
1. the list is in strictly increasing order;
2. the list begins with the number 1;
3. if the list contains the number x, then it also contains the
numbers 2x, 3x and 5x;
4. the list contains no other numbers.
Thus, the required list begins with the numbers
1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 16, . . .
Write a definition of hamming that produces this list.-}

import Data.List (nub, sort)

--definizione funzione merge
merge :: (Ord a) => [a] -> [a] -> [a]
merge xs@(x:xt) ys@(y:yt)
  | x < y     = x : merge xt ys
  | x > y     = y : merge xs yt
  | otherwise = x : merge xt yt
merge [] ys = ys
merge xs [] = xs

-- Definizione della lista di Hamming
hamming :: [Integer]
hamming = 1 : merge (map (2*) hamming)
                 (merge (map (3*) hamming)
                        (map (5*) hamming))

-- Esempio 
main :: IO ()
main = do
  -- Esempio per la funzione merge
  let list1 = [2,4..]
  let list2 = [5,10..]
  print $ take 20 (merge list1 list2)
  
  -- Esempio per la lista di Hamming
  print $ take 20 hamming