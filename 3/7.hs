import Data.Char

onlyEven [] = []
onlyEven (x:xs)
 | x `mod` 2 == 0 = x : onlyEven xs
 | otherwise      = onlyEven xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = filter p

onlyEven'  = filter' even
onlyOdd   = filter' odd
onlyUpper = filter' isUpper

-- length [i | i <- [1..10^6], even i]
