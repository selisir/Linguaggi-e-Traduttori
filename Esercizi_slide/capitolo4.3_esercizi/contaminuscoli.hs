{-Scrivere una funzione contaMinuscoli che,
data una stringa, fornisce il numero di
caratteri minuscoli nella stringa usando list
comprehensions-}

contaMinuscoli :: String -> Int
contaMinuscoli str = length [c | c <- str, c >= 'a' && c <= 'z']

--esempio
main = do 
    print(contaMinuscoli "Ciao")
    --output 3