module Problems.Problem2 where

fib :: [Integer]
fib = fibHelper 1 2
    where
        fibHelper :: Integer -> Integer -> [Integer]
        fibHelper n1 n2 = n1 : fibHelper n2 (n1 + n2)

solve :: Integer
solve = sum $ filter even $ takeWhile (<=4000000) fib

-- >>> solve
-- 4613732
