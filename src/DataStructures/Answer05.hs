module DataStructures.Answer05 where

import Prelude hiding (dropWhile)
import DataStructures.Answer01 (List(..))

dropWhile :: List a -> (a -> Bool) -> List a
dropWhile (Cons h t) f | f h =  dropWhile t f
dropWhile list _ = list


