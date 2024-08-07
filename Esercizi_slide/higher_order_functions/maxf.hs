-- estratto COMPITO 29 GIUGNO 2016
{-si scriva una funzione di ordine superiore
maxf :: Ord a => (t -> a) -> [t] -> t
che prende come parametri una funzione f e una lista xs e fornisce l'elemento x della
lista xs che massimizza la funzione f (ossia il valore x per cui f(x) è massimo).-}

maxf :: Ord a => (t -> a) -> [t] -> t
maxf f xs = foldr1 (\x y -> if f x >= f y then x else y) xs

-- Esempio 
main = print (maxf length ["hello", "world", "Haskell", "programming"])  -- Output: "programming"
