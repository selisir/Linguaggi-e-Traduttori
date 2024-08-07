{-Un file di testo poligono.txt contiene le coordinate dei punti che rappresentano i
vertici di un poligono; per ogni punto si hanno due coordinate intere: x e y. Nel
file, l'ultimo punto coincide con il primo.
Scrivere un programma che legge da tastiera le coordinate di un ulteriore punto
e comunica all'utente se è interno o esterno al poligono.
Per verificare se un punto P è interno al poligono:
– si traccia una semiretta a partire dal punto P
– si calcola quanti lati del poligono intersecano tale semiretta
– se il numero delle intersezioni è pari,
• allora il punto è esterno al poligono,
• altrimenti (se è dispari) è interno-}

import System.IO
import Data.List

type Point = (Int, Int)
type Polygon = [Point]

-- Funzione per leggere i punti di un poligono da un file
readPolygon :: FilePath -> IO Polygon
readPolygon file = do
    contents <- readFile file
    let points = map (toPoint . words) (lines contents)
    return points

-- Funzione per convertire una lista di stringhe in un punto
toPoint :: [String] -> Point
toPoint [x, y] = (read x, read y)

-- Funzione per verificare se un punto è interno a un poligono
isInside :: Polygon -> Point -> Bool
isInside poly point = odd (countIntersections poly point)

-- Funzione per contare le intersezioni di una semiretta con i lati del poligono
countIntersections :: Polygon -> Point -> Int
countIntersections poly (px, py) = length $ filter (intersects (px, py)) (zip poly (tail poly ++ [head poly]))
  where
    intersects (px, py) ((x1, y1), (x2, y2))
        | y1 > py && y2 > py = False
        | y1 < py && y2 < py = False
        | otherwise = let x = x1 + (py - y1) * (x2 - x1) / (y2 - y1) in x > px

main :: IO ()
main = do
    polygon <- readPolygon "poligono.txt"
    putStrLn "Inserisci le coordinate del punto (x y):"
    line <- getLine
    let point = toPoint (words line)
    if isInside polygon point then
        putStrLn "Il punto è interno al poligono."
    else
        putStrLn "Il punto è esterno al poligono."
