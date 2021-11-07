-- 1
absInt :: Int -> Int
absInt x = if x < 0
          then -x
          else x

-- 2
min2Int :: (Int, Int) -> Int
min2Int (x, y) = if x < y
                then x
                else y

-- 4
min3Int :: (Int, Int, Int) -> Int
min3Int (x, y, z) = min2Int (min2Int (x, y), z)
