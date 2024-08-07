{-esclama:
data una lista di stringhe, fornire la lista ottenuta
aggiungendo un punto esclamativo in fondo ad ogni stringa-}

esclama :: [String] -> [String]
esclama [] = []
esclama (x:xs) = (x ++ "!") : esclama xs

--esempio
main = do 
    print(esclama ["Gulp", "bang", "smack"])
    --output ["Gulp!","bang!","smack!"]