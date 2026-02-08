module Problems.Problem1 where

isMultiple :: Integer -> Bool
isMultiple n = mod n 3 == 0 || mod n 5 == 0

solve :: Integer
solve = sum (filter isMultiple [1 .. 999])

-- >>> solve
-- 233168