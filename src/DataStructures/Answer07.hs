module DataStructures.Answer09 where

import Debug.Trace (trace)

import DataStructures.Answer01 (mkList)
import DataStructures.Answer08 (foldRight)


-- There is a clear distinction between Scala and Haskell here:
-- Haskell is a lazy (i.e., non-strict) language, by default.
-- Scala is a strict language, by default.
-- While the answer to this question in Scala is no,
-- the answer in Haskell is yes.
-- The reason is that Haskell does not evaluate the parameters
-- of a function call, unless they are required.

-- The only problem here is that the multiplication operator does not
-- work lazily, i.e., to compute a * b, Haskell always computes a and b
-- regardless of the value of a.
-- In the following example, we create a lazy instace of the * operator
-- in which we skip the evaluation when the first parameter is zero.
-- This solves the problem and the foldRight function does not continue
-- evaluating the rest of the list once it encounters a zero.
-- We use the 'trace' function to print a String anytime a multiplication
-- is performed.
-- In the following example, mult is called 5 times
-- while lazyMult is called only once.
main = do
  let mult a b = trace "mult" (a * b)
      lazyMult a b = trace "lazyMult" (if a == 0 then 0 else (a * b))

      product = foldRight (mkList [0, 1, 2, 3, 4]) 1 mult
      lazyProduct = foldRight (mkList [0, 1, 2, 3, 4]) 1 lazyMult

  putStrLn ("Product = " ++ show product)
  putStrLn ("Lazy product = " ++ show lazyProduct)

