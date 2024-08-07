{-Implement the game of nim in Haskell, where the rules of the game are as follows:
 The board comprises five rows of
stars:
1: * * * * *
2: * * * *
3: * * *
4: * *
5: *
 Two players take it turn about to remove one or more stars from the end of a
single row.
 The winner is the player who removes the last star or stars from the board.-}

import System.IO

-- Rappresentazione del tabellone come lista di interi
type Board = [Int]

initialBoard :: Board
initialBoard = [5, 4, 3, 2, 1]

-- Funzione per mostrare il tabellone
showBoard :: Board -> IO ()
showBoard = mapM_ printRow . zip [1..]
  where printRow (n, stars) = putStrLn $ show n ++ ": " ++ replicate stars '*'

-- Funzione per eseguire una mossa
move :: Board -> Int -> Int -> Board
move board row stars = take (row - 1) board ++ [board !! (row - 1) - stars] ++ drop row board

-- Funzione per leggere un numero
getNumber :: String -> IO Int
getNumber prompt = do
    putStr prompt
    x <- getLine
    return (read x)

-- Loop principale del gioco
play :: Board -> IO ()
play board = do
    showBoard board
    if sum board == 0 then
        putStrLn "Game over!"
    else do
        row <- getNumber "Enter row: "
        stars <- getNumber "Enter number of stars: "
        play (move board row stars)

main :: IO ()
main = play initialBoard
