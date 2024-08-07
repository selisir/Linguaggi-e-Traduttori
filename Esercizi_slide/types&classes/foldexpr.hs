{-Definire una funzione di ordine superiore foldExpr per le espressioni con la quale si
possano definire le funzioni size e eval
Definire poi la funzione size tramite la foldExpr-}


data Expr = Val Int | Add Expr Expr | Mul Expr Expr deriving (Show)
-- funzione foldExpr
foldExpr :: (b -> b -> b) -> (b -> b -> b) -> (Int -> b) -> Expr -> b
foldExpr _ _ val (Val n) = val n
foldExpr add mul val (Add x y) = foldExpr add mul val x `add` foldExpr add mul val y
foldExpr add mul val (Mul x y) = foldExpr add mul val x `mul` foldExpr add mul val y
-- funzione eval utilizzando foldExpr
eval :: Expr -> Int
eval = foldExpr (+) (*) id
-- funzione size utilizzando foldExpr
size :: Expr -> Int
size = foldExpr (\x y -> 1 + x + y) (\x y -> 1 + x + y) (const 1)

-- Esempio
main :: IO ()
main = do
  let expr = Add (Val 1) (Mul (Val 2) (Val 3))
  print $ eval expr -- Output 7
  print $ size expr -- Output 5
