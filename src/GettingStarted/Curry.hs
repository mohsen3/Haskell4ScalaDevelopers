module GettingStarted.Curry where

-- Currying is built in to the Haskell language.
-- In most languages, a function defined as
-- f :: a -> b -> c
-- is interpreted as if f takes two parameters of type a and b
-- and returns a value of type c.
-- But in Haskell, f can be interpreted as a function that
-- takes a value of type a and returns a function of type (b -> c).

-- This even holds for the operators.
-- For example, (+) can be considered as a function that takes
-- two numbers and returns their summation.
-- (2+) or (+2) is a function that takes an integer and adds 2 to it.

-- This is somehow in contrast with the Scala's approach that
-- you need to specify the curryable methods on the definition side:
-- def f(a: Integer)(b: String) = a + b
-- and even sometimes on the call side:
-- def g = f(1)(_)

-- However, one can define a curry function as follows.
-- (a, b) denotes a 2-tuple with the first element of type a and the second element of type b.

-- The following functions are stolen from:
-- http://hackage.haskell.org/package/base-4.8.2.0/docs/Data-Tuple.html

-- | 'curry' converts an uncurried function to a curried function.
curry :: ((a, b) -> c) -> a -> b -> c
curry f x y =  f (x, y)


-- | 'uncurry' converts a curried function to a function on pairs.
uncurry :: (a -> b -> c) -> ((a, b) -> c)
uncurry f p =  f (fst p) (snd p)


-- The compose operator is '.' in Haskell which is defined in
-- the Data.Function module of the base library.
-- See https://hackage.haskell.org/package/base-4.8.2.0/docs/src/GHC.Base.html#.
-- Similarly we can define the function compose as:
compose :: (b -> c) -> (a -> b) -> a -> c
compose f g = \x -> f (g x)



