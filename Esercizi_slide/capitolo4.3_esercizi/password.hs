{-create a password strength checker using 
higher-order funtions
a string password has:
at least 15 characters
uppercase letters
lowercase letters
numbers-}
import Data.Char (isUpper, isLower, isDigit)

-- controlli sulla password
strong :: String -> Bool
strong password = all ($ password) [atLeast15, hasUpper, hasLower, hasDigit]
  where
    --almeno 15 caratteri
    atLeast15 = (>= 15) . length
    --almeno una lettera maiuscola
    hasUpper = any isUpper
    --controllo sulle lettere minuscole
    hasLower = any isLower
    --controllo sui numeri
    hasDigit = any isDigit

--esempio
main :: IO ()
main = do
  print $ strong "sup3rL33Tpassw0rd" --output True
  print $ strong "short1A" --output False
  
