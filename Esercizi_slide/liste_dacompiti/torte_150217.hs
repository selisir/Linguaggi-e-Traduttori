{-Esercizio 15 febbraio 2017
Diana vuole portare una torta, la nonna le ha dato la ricetta
che è una lista di coppie
nome stringa
peso int quantità di grammi
Diana ha una lista con lo stesso formato
Scrivere funzione haskell che prende le due liste e visualizza
quante torte Diana riuscirà a fare-}

import Data.List (lookup)
import Data.Maybe (fromMaybe)

--calcolo torte
num_torte :: [(String, Int)] -> [(String, Int)] -> Int
num_torte recipe ingredients = minimum $ map possibleCakes recipe
  where
    possibleCakes (name, qty) = let availableQty = fromMaybe 0 (lookup name ingredients)
                                in availableQty `div` qty

--esempio
main :: IO ()
main = do
  let ricetta = [("Zucchero", 300), ("Burro", 100), ("Farina", 350)]
  let ingredienti = [("Burro", 500), ("Farina", 1000), ("Latte", 1000), ("Zucchero", 700)]
  print $ num_torte ricetta ingredienti 
  -- output 2