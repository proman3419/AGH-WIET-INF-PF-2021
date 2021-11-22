sqr x = x^2

funcFactory n = case n of
 1 -> id
 2 -> sqr
 3 -> (^3)
 4 -> \x -> x^4
 5 -> intFunc
 _ -> const n
 where
   intFunc x = x^5

expApproxUpTo :: Int -> Double -> Double
expApproxUpTo n = \x -> sum [(x ** fromIntegral k) / fromIntegral (fact k) | k <- [0..n]]
    where fact y | y <= 1 = 1
                 | otherwise = y * fact (y - 1)
