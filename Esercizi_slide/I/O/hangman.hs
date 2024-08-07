{-Consider the following version of hangman:
One player secretly types in a word.
 The other player tries to deduce the
word, by entering a sequence of guesses.
 For each guess, the computer indicates
which letters in the secret word occur in
the guess.
 The game ends when the guess is
correct.
hangman :: IO ()
hangman =
do putStrLn "Think of a word: "
word  sgetLine
putStrLn "Try to guess it:"
play word
We adopt a top down approach to
implementing hangman in Haskell, starting
as follows:-}

import System.IO

-- Funzione per leggere un carattere senza echo
getCh :: IO Char
getCh = do 
    hSetEcho stdin False
    x <- getChar
    hSetEcho stdin True
    return x

-- Funzione per leggere una riga con echo di trattini
sgetLine :: IO String
sgetLine = do 
    x <- getCh
    if x == '\n' then
        do putChar x
           return []
    else
        do putChar '-'
           xs <- sgetLine
           return (x:xs)

-- Funzione principale per il gioco
hangman :: IO ()
hangman = do 
    putStrLn "Think of a word: "
    word <- sgetLine
    putStrLn "Try to guess it:"
    play word

-- Loop principale del gioco
play :: String -> IO ()
play word = do 
    putStr "? "
    guess <- getLine
    if guess == word then
        putStrLn "You got it!"
    else
        do putStrLn (match word guess)
           play word

-- Funzione che mostra quali lettere della parola sono state indovinate
match :: String -> String -> String
match xs ys = [if x `elem` ys then x else '-' | x <- xs]

main :: IO ()
main = hangman


