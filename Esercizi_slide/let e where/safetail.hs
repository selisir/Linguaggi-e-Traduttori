{-Consider a function safetail that behaves in
the same way as tail, except that safetail
maps the empty list to the empty list, whereas tail
gives an error in this case. Define safetail
using:
(a) a conditional expression;
(b) guarded equations;
(c) pattern matching.
Hint: the library function null::[a]  Bool
can be used to test if a list is empty.
Give three possible definitions for the logical
or operator (||) using pattern matching.
Redefine (&&) using conditionals rather than
patterns-}

--Part1: defining "safetail"
-- a using a conditional expression
safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs 

--b using guarded equations
safetail :: [a] -> [a]
safetail xs
    | null xs = []
    | otherwise = tail xs 

--c using pattern matching
safetail :: [a] -> [a]
safetail [] = []
safetail (_:xs) = xs

--Part 2: defining the logical 'or' operator ('||')
--using pattern matching
--definition 1
True  || _ = True
False || b = b

--definition 2 
False || False = False 
_     || _     = True 

--definition 3 
b || c
  | b         = True 
  | otherwise = c 

--Part 3: redefining the logical 'and' operator ('&&')
--using conditionals 
(&&) :: Bool -> Bool -> Bool
a && b = if a then b else False

--esempi
main = do 
    print(safetail [1,2,3])