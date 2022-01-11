newtype Box a = MkBox a deriving Show

instance Functor Box where
  fmap f (MkBox x) = MkBox (f x)

instance Applicative Box where
  pure = MkBox
  (MkBox f) <*> w = fmap f w

newtype MyTriple a = MyTriple (a,a,a) deriving Show

instance Functor MyTriple where
    fmap f (MyTriple a) = MyTriple (case a of
                          (x, y, z) -> (f x, f y, f z))

instance Applicative MyTriple where
    pure x = MyTriple (x, x, x)
    MyTriple (f1, f2, f3) <*> MyTriple (x1, x2, x3) = MyTriple (f1 x1, f2 x2, f3 x3)
