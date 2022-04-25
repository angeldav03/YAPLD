module Main where
import System.TimeIt
import System.Directory.Internal.Prelude (Int)
import Data.Binary.Put (PutM(Put))

factorial :: (Eq p, Num p) => p -> p
factorial n = if n == 0 then 1 else n * factorial (n - 1)

rever :: Floating a => a -> a -> a
rever x y = x*y/x**y

-- fib :: Int a => Int a -> Int p
fib 0 = 0
fib 1 = 1
fib s = fib (s-1) + fib (s-2)


main = do putStrLn "Calculate (inefficiently) the: "
          x <- readLn
          putStrLn "th element of the Fibonacci series"
          let bb = fib x
          timeIt $ print bb
        --   putStrLn "Efficiency of the factorial: "
        --   timeIt $ print(factorial x)
          {-if bb == factorial x
              then putStrLn "You're right!"
              else do
                  putStrLn "You're wrong!"
                  print(factorial x) -}