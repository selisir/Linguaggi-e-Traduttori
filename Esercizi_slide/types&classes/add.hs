{-Using recursion and the function add, define a
function that multiplies two natural numbers.-}

-- definisco add
add :: Int -> Int -> Int
add x y = x + y

-- Definisco multiply usando la ricorsione
multiply :: Int -> Int -> Int
multiply 0 _ = 0
multiply _ 0 = 0
multiply x y = add y (multiply (x - 1) y)

-- Esempio
main :: IO ()
main = do
  print $ multiply 3 4 
  -- Output 12
  print $ multiply 0 5 
  -- Output 0
  print $ multiply 5 0 
  -- Output 0
