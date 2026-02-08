module Problems.Problem3 where

import Util

factor :: Integer -> [Integer]
factor 1 = []
factor n = f : fs 
    where
        f = head (filter (divisible n) [2 .. n])
        fs = factor (div n f)

solve :: Integer
solve = last $ factor 600851475143

-- >>> solve
-- 6857

