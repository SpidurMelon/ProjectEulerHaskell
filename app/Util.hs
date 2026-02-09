module Util where

divisible :: Integer -> Integer -> Bool
divisible n1 n2 = mod n1 n2 == 0

maxList :: Ord a => [a] -> Maybe a
maxList [] = Nothing
maxList [x] = Just x
maxList (x1:x2:xs)
    | x1 >= x2 = maxList (x1:xs)
    | otherwise = maxList (x2:xs)