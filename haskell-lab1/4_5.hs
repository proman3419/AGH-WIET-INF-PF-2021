-- 1
vec3DLen :: (Double, Double, Double) -> Double
vec3DLen (x, y, z) = sqrt (x ^ 2 + y ^ 2 + z ^ 2)

-- 2
swap :: (Int, Char) -> (Char, Int)
swap (i, c) = (c, i)

-- 3
threeEqual :: (Int, Int, Int) -> Bool
threeEqual (x, y, z) = x == y && y == z
