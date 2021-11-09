qSort :: Ord a => [a] -> [a]
qSort [] = []
qSort (x:xs) = qSort (leftPart xs) ++ [x] ++ qSort (rightPart xs)
    where
        leftPart xs = filter (<= x) [y | y <- xs]
        rightPart xs = filter (> x) [y | y <- xs]
