{-count the number of vowels in a 
string using folds -}

-- Verifico se è una vocale
isVowel :: Char -> Bool
isVowel c = elem c "aeiouAEIOU"

-- con fold conto le vocali
countVowels :: String -> Int
countVowels str = foldl (\acc char -> acc + if isVowel char then 1 else 0) 0 str

-- esempio
main :: IO ()
main = do
    let testString = "Hello, Haskell!"
    let vowelCount = countVowels testString
    putStrLn $ "Number of vowels in \"" ++ testString ++ "\": " ++ show vowelCount
    --output 4 