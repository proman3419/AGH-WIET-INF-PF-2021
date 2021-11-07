countRightTriangles n = (triangles, length triangles)
    where triangles = [(a, b, c) | a <- [1..n], b <- [a..n], c <- [b..n], a ^ 2 + b ^ 2 == c ^ 2]

-- <= 1 -> True
--isPrime n = [i | i <- [2..n-1], n `mod` i == 0] == []

isPrime :: Int -> Bool
isPrime n | n <= 1 = False
          | otherwise = length [i | i <- [2..nSqrt], n `mod` i == 0] == 0
    where nSqrt = floor (sqrt (fromIntegral n))
