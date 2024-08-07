{-vocali:
data una stringa (lista di Char), tenere solo le 
vocali minuscole-}

vocali :: String -> String
vocali [] = []
vocali (x:xs)
  | x `elem` "aeiou" = x : vocali xs
  | otherwise        = vocali xs
  
--esempio
main = do 
    print(vocali ["evviva!"])
    --output eia