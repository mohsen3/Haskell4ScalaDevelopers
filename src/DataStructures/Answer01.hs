module DataStructures.Answer01 where

import Prelude hiding (sum)

data List a = Nil | Cons a (List a)

-- Forget about the following instance for now if it looks too complicated.
-- To convert any data type into string,
-- the standard way is to write a Show instance for it.
-- Show has a single function 'show' which is quite similar to
-- the 'toString' method in Java and Scala.
-- The following definition says that if a is an instance of Show,
-- 'List a' is defined to be an instance of Show as well.
instance (Show a) => Show (List a) where
  show Nil = "Nil"
  show (Cons h t) = show h ++ " -> " ++ show t

-- Convenient function to create Lists
mkList :: [a] -> List a
mkList []    = Nil
mkList (x:r) = Cons x (mkList r)

sum Nil = 0
sum (Cons h t) = h + sum t

x :: Int
x = case mkList [1, 2, 3, 4, 5] of
      Cons x (Cons 2 (Cons 4 _)) -> x
      Nil -> 42
      Cons x (Cons y (Cons 3 (Cons 4 _))) -> x + y
      Cons h t -> h + sum t
      _ -> 101


