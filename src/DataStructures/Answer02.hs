module DataStructures.Answer02 where

import DataStructures.Answer01 (List(..))

-- What are the choices to handle tail call on an empty list?
-- The first one is to throw an exception.
tail :: List a -> List a
tail Nil        = error "No tail for emty list!"
tail (Cons _ t) = t

-- The second choice is to return a 'Maybe (List a)'.
-- Maybe a is quite similar to Scala's 'Option[A]' and is defined as
-- data Maybe a = Nothing | Just a
safeTail :: List a -> Maybe (List a)
safeTail Nil        = Nothing
safeTail (Cons _ t) = Just t


