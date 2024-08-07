{-grvity: dato la massa m1, una distanza d e una massa m2,
restituisce la forza gravitazionale-}

gravity :: Double -> Double -> Double -> Double
gravity m1 d m2 = (6.7e-11 * m1 * m2) / (d^2)

{-earthgravity: dati massa e distanza, restituisce
la forza gravitazionale della terra sulla massa-}

earthgravity :: Double -> Double -> Double
earthgravity mass d = gravity mass d 5.96e24

{-earthgravitysurface: restituisce il peso della massa 
sulla superficie della terra-}

earthgravitysurface :: Double -> Double
earthgravitysurface mass = earthgravity mass 6.37e6

--Utilizzo
main = do 
    print(gravity 80 6.37e6 5.96e24)
    print(earthgravity 80 6.37e6)
    print(earthgravitysurface 80)