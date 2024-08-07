{-funzione zip: date due
liste, fornisce una lista di coppie. La coppia in
posizione i-esima della lista è costituita da
– l’elemento i-esimo della prima lista
– l’elemento i-esimo della seconda lista
• Se le due liste hanno lunghezza diversa, zip’
restituisce una lista con la lunghezza minima
delle due-}

zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys


-- Esempio di utilizzo
main = do
  print (zip' [1, 2, 3] ['a', 'b'])  