module GettingStarted.IsSorted where

isSorted :: [a] -> (a -> a -> Bool) -> Bool
isSorted []  _ = True
isSorted [_] _ = True
isSorted (x:y:rest) ordered = ordered x y && isSorted (y:rest) ordered
