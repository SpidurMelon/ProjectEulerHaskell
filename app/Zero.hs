module Zero where

squares :: [Integer]
squares = squareHelper 1
    where 
        squareHelper :: Integer -> [Integer]
        squareHelper i = (i*i) : squareHelper (i+1)

oddSquares :: [Integer]
oddSquares = filter odd squares

solve :: Integer
solve = sum (filter odd (take 703000 squares))

-- >>> solve
-- 57904821166549500
