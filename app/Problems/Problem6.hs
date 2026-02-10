module Problems.Problem6 where

sumSquares :: Integer
sumSquares = sum $ map (^ (2 :: Integer)) [1..100]

squareSum :: Integer
squareSum = sum [1..100] ^ (2 :: Integer)

solve :: Integer
solve = squareSum - sumSquares

-- >>> solve
-- 25164150
