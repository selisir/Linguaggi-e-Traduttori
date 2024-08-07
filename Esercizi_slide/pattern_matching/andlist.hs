{-funzione andlist: data una lista di bool, 
calcola l'and logico degli elementi della lista-}

-- definzione andlist
andlist :: [Bool] -> Bool
--caso base: lista vuota
andlist [] = True
andlist(x:xs) = x && andlist xs

--esempio 
main = do
    print(andlist [True,False,True])