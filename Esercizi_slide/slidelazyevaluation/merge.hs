{-Scrivere una funzione merge che, date due liste 
ordinate (anche infinite) fornisce la lista ordinata 
(eventualmente infinita) che contiene gli elementi di 
entrambe le liste-}

merge :: (Ord a) => [a] -> [a] -> [a]
merge xs@(x:xt) ys@(y:yt)
  | x < y     = x : merge xt ys
  | x > y     = y : merge xs yt
  | otherwise = x : merge xt yt
merge [] ys = ys
merge xs [] = xs

-- Esempio 
main :: IO ()
main = do
  let list1 = [2,4..]
  let list2 = [5,10..]
  print $ take 20 (merge list1 list2)
  --output [2,4,5,6,8,10,12,14,15,16,18,20,22,24,25,26,28,30,32,34]