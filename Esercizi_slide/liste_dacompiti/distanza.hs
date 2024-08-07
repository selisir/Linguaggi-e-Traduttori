{-• Una lista di coppie rappresenta una sequenza di punti nel piano.
• Un viaggiatore deve passare per tutti I punti della sequenza.
• Supponendo che si muova nel piano usando la distanza euclidea (teorema di Pitagora), si
calcoli la distanza che deve percorrere-}

import Data.List (foldl')
import Data.Tuple (fst, snd)

-- calcolo distanza tra due punti 
euclideanDistance :: (Floating a) => (a, a) -> (a, a) -> a
euclideanDistance (x1, y1) (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

-- calcolo distanza del viaggiatore 
distanza :: [(Double, Double)] -> Double
distanza points = foldl' accumulateDistance 0 (zip points (tail points))
  where
    accumulateDistance acc (p1, p2) = acc + euclideanDistance p1 p2

-- esempio
main :: IO ()
main = do
  let points = [(0,1), (1,1), (4,5), (5,5)]
  print $ distanza points 
  -- output 7.0
