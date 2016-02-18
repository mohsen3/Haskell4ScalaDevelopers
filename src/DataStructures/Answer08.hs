module DataStructures.Answer08 where

import DataStructures.Answer01 (List(..), mkList)

foldRight :: List a -> b -> (a -> b -> b) -> b
foldRight Nil        z _ = z
foldRight (Cons h t) z f = f h (foldRight t z f)

-- val whatHappens: List[Int] = foldRight (List(1, 2, 3), Nil: List[Int]) (Cons(_, _))
whatHappens = foldRight (mkList [1, 2, 3]) Nil Cons

