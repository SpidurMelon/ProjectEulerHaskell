module Problems.Problem4 where
import Prelude hiding (product)
import Util (maxList)

isPalindrome :: String -> Bool
isPalindrome s = reverse s1 == s2
    where
        s1 = take (div (length s) 2) s
        s2 = drop (div (length s + 1) 2) s

isPalindromeN :: Integer -> Bool
isPalindromeN n = isPalindrome (show n)

pairs :: [(Integer, Integer)]
pairs = [(i, j) | i <- [100..999], j <- [100..999]]

product :: (Integer, Integer) -> Integer
product (i,j) = i * j

solve :: Integer
solve = case maxList palindromes of 
            Nothing -> -1
            Just x -> x
    where
        palindromes = filter isPalindromeN $ map product pairs

-- >>> solve
-- 906609

