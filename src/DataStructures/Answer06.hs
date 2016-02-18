module DataStructures.Answer06 where

import Prelude hiding (init)
import DataStructures.Answer01 (List(..))

init :: List a -> List a
init Nil          =  error "No init for empty list!"
init (Cons h Nil) =  Nil
init (Cons h t)   = Cons h (init t)

