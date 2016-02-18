module PolymorphicFunctions where

monomorphicSearch :: [String] -> String -> Int
monomorphicSearch list key = loop 0 list key
  where
    loop _ []     _   = -1
    loop n (s:ss) key = if s == key then n else loop (n + 1) ss key

-- Type variables are typically denoted by lower case letters in Haskell.
polymorphicSearch :: [a] -> (a -> Bool) -> Int
polymorphicSearch list p = loop 0 list p
  where
    loop _ []     _ = -1
    loop n (s:ss) p = if p s then n else loop (n + 1) ss p


-- Here is the function signature of the following function definition,
-- but you do not have to specify the function signature since Haskell
-- can infer the type for most of the functions.
-- partial1 :: a -> ((a, b) -> c) -> (b -> c)
partial1 a f = \b -> f (a, b)

