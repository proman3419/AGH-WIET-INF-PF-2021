data BinIntTree = EmptyIntBT |
                  IntNodeBT Int BinIntTree BinIntTree

sumBinIntTree :: BinIntTree -> Int
sumBinIntTree EmptyIntBT = 0
sumBinIntTree (IntNodeBT n lt rt) = n + sumBinIntTree lt + sumBinIntTree rt

data BinTree a = EmptyBT |
                 NodeBT a (BinTree a) (BinTree a)

sumBinTree :: (Num a) => BinTree a -> a
sumBinTree EmptyBT = 0
sumBinTree (NodeBT n lt rt) = n + sumBinTree lt + sumBinTree rt

data Expr a = Lit a | -- literal/value a, e.g. Lit 2 = 2
              Add (Expr a) (Expr a) |
              Multiply (Expr a) (Expr a) |
              Subtract (Expr a) (Expr a)

eval :: Num a => Expr a -> a
eval (Lit n) = n
eval (Add e1 e2) = eval e1 + eval e2
eval (Multiply e1 e2) = eval e1 * eval e2
eval (Subtract e1 e2) = eval e1 - eval e2

show' :: Show a => Expr a -> String
show' (Lit n) = show n
show' (Add e1 e2) = "(" ++ show' e1 ++ "+" ++ show' e2 ++ ")"
show' (Multiply e1 e2) = "(" ++ show' e1 ++ "*" ++ show' e2 ++ ")"
show' (Subtract e1 e2) = "(" ++ show' e1 ++ "-" ++ show' e2 ++ ")"

depthOfBT :: BinTree a -> Int -- głębokość drzewa binarnego
depthOfBT EmptyBT = 0
depthOfBT (NodeBT n lt rt) = 1 + max (depthOfBT lt) (depthOfBT rt)

flattenBTPreorder :: BinTree a -> [a]
flattenBTPreorder EmptyBT = []
flattenBTPreorder (NodeBT n lt rt) = [n] ++ flattenBTPreorder lt ++ flattenBTPreorder rt

flattenBTInorder :: BinTree a -> [a]
flattenBTInorder EmptyBT = []
flattenBTInorder (NodeBT n lt rt) = flattenBTInorder lt ++ [n] ++ flattenBTInorder rt

flattenBTPostorder :: BinTree a -> [a]
flattenBTPostorder EmptyBT = []
flattenBTPostorder (NodeBT n lt rt) = flattenBTPostorder lt ++ flattenBTPostorder rt ++ [n]

mapBT :: (a -> b) -> BinTree a -> BinTree b -- funkcja map dla drzewa binarnego
mapBT f EmptyBT = EmptyBT
mapBT f (NodeBT n lt rt) = NodeBT (f n) (mapBT f lt) (mapBT f rt) 

dummyFunc :: Num a => a -> a
dummyFunc x = x + 5

insert :: Ord a => a -> BinTree a -> BinTree a -- insert element into BinTree
insert new EmptyBT = NodeBT new EmptyBT EmptyBT
insert new (NodeBT n lt rt) | new < n = NodeBT n (insert new lt) rt
                            | new > n = NodeBT n lt (insert new rt)
                            | otherwise = NodeBT n lt rt

list2BST :: Ord a => [a] -> BinTree a -- list to Binary Search Tree (BST)
list2BST [] = EmptyBT
list2BST (x:xs) = insert x (list2BST xs)
