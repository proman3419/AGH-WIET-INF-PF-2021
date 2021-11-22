isSortedAsc :: Ord a => [a] -> Bool
isSortedAsc xs = all (== True) (zipWith (<=) xs (tail xs)) -- isSortedAsc [1,2,2,3] -> True, isSortedAsc [1,2,1] -> False

everySecond :: [t] -> [t]
everySecond xs = map (\(x, y) -> x) $ filter (\(x, y) -> odd y) $ zip xs [1..length xs] -- everySecond [1..8] -> [1,3,5,7]
