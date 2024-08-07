{-Si scriva una funzione seleziona :: (Ord a, Num a) =>
[(String,[a]) -> String che, data una lista di coppie (nome, listaInteri) fornisce i
nomi delle persone in cui listaInteri ha somma > 10-}

-- Definizione della funzione seleziona
seleziona :: (Ord a, Num a) => [(String, [a])] -> [String]
seleziona xs = [nome | (nome, lista) <- xs, sum lista > 10]

-- Dati di esempio
dati = [("Luigi", [2, 5, 1, 3]), 
        ("Sara", [2, 3, 8, 0]), 
        ("Carla", [2, 2, 1]), 
        ("Velia", [3, 2, 1])]

main :: IO ()
main = print (seleziona dati)  -- Output: ["Luigi", "Sara"]
