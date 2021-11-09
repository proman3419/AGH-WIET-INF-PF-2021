fst2Eq :: Eq a => [a] -> Bool
fst2Eq (x : y : _) | x == y = True
fst2Eq _ = False

fst2Div :: (Integral a, Eq a) => [a] -> Bool
fst2Div (x : y : _) | (x `rem` y == 0) = True
fst2Div _ = False

fst3Div :: (Integral a, Eq a) => [a] -> Bool
fst3Div (x : y : z : _) | (x `rem` z == 0) = True
fst3Div _ = False
