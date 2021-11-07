-- 1
unitVec2D :: (Double, Double) -> (Double, Double)
unitVec2D (x, y) = 
    let vecLen = sqrt (x ^ 2 + y ^ 2)
    in (x / vecLen, y / vecLen)
