module GettingStarted.GettingStarted
  ( fib
  , fib2
  , factorial
  , formatResult
  ) where

-- Exercise 1: Write a function to compute the nth fibonacci number

-- The first implementation uses pattern matchin on arguments,
-- but does not work for nagative numbers!
-- The following line is the type signature and is optional
-- since Haskell can infer the type from the function definition.
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- This implementation uses tail recursion and is much faster
-- than the first one above.
fib2 n = go n (0,1)
  where
    go n (a, b) | n <= 0    = a
                | otherwise = go (n - 1) (b, a + b)

-- There are tons of different ways to implement factorial in Haskell.
-- See http://www.willamette.edu/~fruehr/haskell/evolution.html
factorial :: Integer -> Integer
factorial n = if n < 2 then 1 else n * factorial (n - 1)


-- Passing a function to another function is quite an easy job in Haskell.
formatResult :: String -> Integer -> (Integer -> Integer) -> String
formatResult name n f = "The " ++ name ++ " of " ++ show n ++ " is " ++ show (f n)



