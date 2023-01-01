#!/usr/bin/env runhaskell

-- program that gives the Fibonacci Sequence

fib :: Integer -> Integer -> Integer -> IO ()
fib 1 x y = print (x+y)
fib n x y = do
  let z = x + y
  print z
  fib (n-1) y z

main :: IO ()
main = do
  putStrLn "Calculate the Fibonacci Sequence"
  putStrLn "Enter Fib Number to Go Until:"
  i <- getLine
  let n = read i :: Integer
  putStrLn "\nThe Sequence:"
  putStrLn "1"
  putStrLn "1"
  fib n 1 1
