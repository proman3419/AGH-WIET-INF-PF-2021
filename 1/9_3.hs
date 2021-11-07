-- 1
unitVec2D :: (Double, Double) -> (Double, Double)
unitVec2D (x, y) = (x / vecLen, y / vecLen)
    where vecLen = sqrt (x ^ 2 + y ^ 2)

-- 2
unitVec3D :: (Double, Double, Double) -> (Double, Double, Double)
unitVec3D (x, y, z) = (x / vecLen, y / vecLen, z / vecLen)
    where vecLen = sqrt (x ^ 2 + y ^ 2 + z ^ 2)

-- 3
triangleField :: (Double, Double, Double) -> Double
triangleField (a, b, c) = sqrt (p * (p - a) * (p - b) * (p - c))
    where p = (a + b + c) / 2
