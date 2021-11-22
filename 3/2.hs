sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

sumSqr' :: Num a => [a] -> a
sumSqr' []     = 0
sumSqr' (x:xs) = x ^ 2 + sumSqr' xs

sumWith :: Num a => (a -> a) -> [a] -> a
sumWith f [] = 0
sumWith f (x:xs) = f x + sumWith f xs 

sum'' a = sumWith (\x -> x) a
sumSqr a = sumWith (\x -> sqrt x) a
sumCube a = sumWith (\x -> x ^ 3) a
sumAbs a = sumWith (\x -> abs x) a

sumi = sumWith (\i -> i ^ 5) [1..15]

listLength a = sumWith (\x -> 1) a
