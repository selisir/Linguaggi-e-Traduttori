{-Scrivere un programma Haskell che legge
una stringa da tastiera e la stampa
invertita-}

import System.IO

inverti :: IO ()
inverti = do
    putStrLn "Inserisci una stringa: "
    str <- getLine
    putStrLn $ "Invertita: " ++ reverse str

main :: IO ()
main = inverti

{-a console
> inverti
Inserisci una stringa: 
hello
Invertita: olleh-}