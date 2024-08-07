{-acronimo:
data una lista di stringhe, fornire la lista che contiene
le iniziali di ciasuna delle stringhe-}

acronimo :: [String] -> String
acronimo xs = map head xs 

--esempio
main = do 
    print(acronimo ["Commissione","Paritetica","Docenti","Studenti"])
    --output ['C','P','D','S'] --> "CPDS"