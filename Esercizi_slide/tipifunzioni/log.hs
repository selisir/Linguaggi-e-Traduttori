{-funzione logbase b x che restituisce 
il logaritmo in base b di x-}

logbase :: Floating a => a -> a -> a
logbase b x = log x / log b

{-funzione log2 che restituisce il logaritmo
in base 2 di un numero-}

log2 :: Floating a => a -> a 
log2 = logbase 2 

--esempi 
main = do 
    print(logbase 10 100) --output 2.0
    print(log2 8)         --output 3.0