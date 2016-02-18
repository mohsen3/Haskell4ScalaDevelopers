module DataStructures.Answer09 where

import DataStructures.Answer01 (List(..))
import DataStructures.Answer08 (foldRight)

length :: List a -> Int
length list = foldRight list 0 (\_ n -> n + 1)

