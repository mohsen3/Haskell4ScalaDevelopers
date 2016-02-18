module DataStructures.Answer03 where

import DataStructures.Answer01 (List(..))

setHead :: List a -> a -> List a
setHead Nil        _ = error "No head for empty list!"
setHead (Cons _ t) h = Cons h t
