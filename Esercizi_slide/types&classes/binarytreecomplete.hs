{-A binary tree is complete if the two sub-trees of
every node are of equal size. Define a function
that decides if a binary tree is complete.-}

-- definisco il dato per l'albero binario
data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Eq)
-- calcolo dimensione dell'albero
size :: Tree a -> Int
size Empty = 0
size (Node _ left right) = 1 + size left + size right
-- verifico se un albero binario è completo
isComplete :: Tree a -> Bool
isComplete Empty = True
isComplete (Node _ left right) = size left == size right && isComplete left && isComplete right

-- Esempio 
main :: IO ()
main = do
  let tree1 = Node 1 (Node 2 Empty Empty) (Node 3 Empty Empty)
  let tree2 = Node 1 (Node 2 (Node 4 Empty Empty) Empty) (Node 3 Empty Empty)
  print $ isComplete tree1 
  -- Output True
  print $ isComplete tree2 
  -- Output False
