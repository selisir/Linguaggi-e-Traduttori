{-scrivere la funzione caesar cipher:
Prelude> cipher "hello" 13
"uryyb"
suggerimento:
pred e succ possono essere usati per avere 
il carattere precedente e successivo-}

--definizione cipher
cipher :: String -> Int -> String
cipher [] _ = []
--definizione shift
cipher (x:xs) n = shift x n : cipher xs n
  where
    shift c 0 = c
    shift c n
      | n > 0     = shift (succChar c) (n - 1)
      | n < 0     = shift (predChar c) (n + 1)
    
    --definizione di succ e pred
    succChar c
      | c == 'z'  = 'a'
      | c == 'Z'  = 'A'
      | otherwise = succ c
    
    predChar c
      | c == 'a'  = 'z'
      | c == 'A'  = 'Z'
      | otherwise = pred c

main = do 
    print(cipher "hello" 13)