-- 1
roots :: (Double, Double, Double) -> (Double, Double)
roots (a, b, c) = ((-b - d) / e, (-b + d) / e)
    where { d = sqrt (b ^ 2 - 4 * a * c); e = 2 * a }

-- 2
-- single line comment
{-
    multi line comment
-}
