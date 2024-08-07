{-Un programma Haskell deve controllare le collisioni fra quadrati nel piano. Ogni quadrato è rappresentato da:
• identificatore: Int
• colore: stringa (senza spazi)
• X, Y, lato: Int

Il programma deve leggere un file di testo e visualizzare il numero di
collisioni che ci sono fra i quadrati, ossia il numero di coppie di
quadrati che hanno intersezione non nulla-}
import System.IO
import Data.List

type Square = (Int, String, Int, Int, Int)

-- Funzione per leggere i quadrati da un file
readSquares :: FilePath -> IO [Square]
readSquares file = do
    contents <- readFile file
    let squares = map (toSquare . words) (lines contents)
    return squares

-- Funzione per convertire una lista di stringhe in un quadrato
toSquare :: [String] -> Square
toSquare [i, c, x, y, l] = (read i, c, read x, read y, read l)

-- Funzione per controllare se due quadrati collidono
collides :: Square -> Square -> Bool
collides (_, _, x1, y1, l1) (_, _, x2, y2, l2) =
    not (x1 + l1 <= x2 || x2 + l2 <= x1 || y1 + l1 <= y2 || y2 + l2 <= y1)

-- Funzione per contare le collisioni
countCollisions :: [Square] -> Int
countCollisions squares = length [1 | (a, b) <- pairs, collides a b]
  where pairs = [(x, y) | x <- squares, y <- squares, x < y]

main :: IO ()
main = do
    squares <- readSquares "quadrati.txt"
    print $ countCollisions squares
