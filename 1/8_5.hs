isItTheAnswer :: String -> Bool
isItTheAnswer s = case s of
                    "Love" -> True
                    _ -> False
                    
not' :: Bool -> Bool
not' a = case a of
            True -> False
            False -> True   

or' :: (Bool, Bool) -> Bool
or' (a, b) = case (a, b) of
                (True, _) -> True
                (_, True) -> True
                (_, _) -> False

and' :: (Bool, Bool) -> Bool
and' (a, b) = case (a, b) of
                (True, True) -> True
                (_, _) -> False

nand' :: (Bool, Bool) -> Bool
nand' (a, b) = case (a, b) of
                (True, True) -> False
                (_, _) -> True

xor' :: (Bool, Bool) -> Bool
xor' (a, b) = case (a, b) of
                (True, True) = False
                (False, False) = False
                (_, _) = True
