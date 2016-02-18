module GettingStarted.Main (main) where

import GettingStarted.GettingStarted

main :: IO ()
main = do
  putStrLn (formatResult "factorial" 5  factorial)
  putStrLn (formatResult "fib"       40 fib)
  putStrLn (formatResult "fib2"      40 fib2)
  putStrLn (formatResult "abs"     (-7) abs)
  putStrLn (formatResult "inc3"      5 (\n -> n + 3))
  putStrLn (formatResult "inc4"      5 (+4))
  putStrLn (formatResult "mult3"     5 (*3))
