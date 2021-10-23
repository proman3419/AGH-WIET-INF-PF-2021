-- 1
sgn :: Int -> Int
sgn x | x > 0 = 1
      | x < 0 = -1
      | otherwise = 0

min3Int :: (Int, Int, Int) -> Int
min3Int (x, y, z) | x < y && x < z = x
                  | y < x && y < z = y
                  | otherwise = z
