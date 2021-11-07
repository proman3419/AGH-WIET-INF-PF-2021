-- 1
or' :: (Bool, Bool) -> Bool
or' (True, _) = True
or' (_, True) = True
or' (False, False) = False

and' :: (Bool, Bool) -> Bool
and' (True, True) = True
and' (_, _) = False

nand' :: (Bool, Bool) -> Bool
nand' (True, True) = False
nand' (_, _) = True

xor' :: (Bool, Bool) -> Bool
xor' (True, True) = False
xor' (False, False) = False
xor' (_, _) = True
