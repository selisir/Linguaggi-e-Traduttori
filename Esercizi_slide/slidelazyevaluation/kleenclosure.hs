{-The Kleene closure of a set S is the set of all 
strings with S as the alphabet. It's usually written 
as S∗. For example, the Kleene closure of S={0,1} is given on
the left. 
Write a function kleene :: [a] -> [[a]] that generates the Kleene closure of
the set [a]-}

kleene :: [a] -> [[a]]
kleene alphabet = [] : concatMap (\x -> map (x:) (kleene alphabet)) alphabet

-- Esempio 
main :: IO ()
main = do
  print $ take 15 (kleene "01")
