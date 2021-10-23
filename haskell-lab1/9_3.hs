-- 1
unitVec2D :: (Double, Double) -> (Double, Double)
unitVec2D (x, y) = (x / vecLen, y / vecLen)
    where vecLen = sqrt (x ^ 2 + y ^ 2)
