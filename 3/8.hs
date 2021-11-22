import Data.Char

doubleElems []     = []
doubleElems (x:xs) = 2 * x : doubleElems xs

map' :: (a -> b) -> [a] -> [b]
map' f = map f

doubleElems' = map' (2 *)
sqrElems     = map' sqrt
lowerCase    = map' toLower

doubleElems'' a = [2 * x | x <- a] 
sqrElems' a     = [sqrt x | x <- a]
lowerCase' a    = [toLower x | x <- a]
