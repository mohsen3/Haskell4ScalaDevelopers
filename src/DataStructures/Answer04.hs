module DataStructures.Answer04 where

import Prelude hiding (drop)
import DataStructures.Answer01 (List(..))

drop :: Int -> List a -> List a
-- We could use patten matching, i.e., 'drop 0 list' here,
-- but we could not handle negative numbers then.
-- Instrad, we use guards, i.e., '| n <= 0', that allows arbitrary conditions.
drop n list     | n <= 0 =  list
drop _ Nil               =  Nil
drop n (Cons _ t)        =  drop (n - 1) t

