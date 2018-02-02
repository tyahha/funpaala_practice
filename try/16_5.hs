import Data.List (unfoldr)

myPop :: Integer -> Maybe (Integer, Integer)
myPop 0 = Nothing
myPop n = Just (n `mod` 10, n `div` 10)

divdiv :: Integer -> [Integer]
divdiv = unfoldr myPop

divdiv' :: Integer -> [Integer]
divdiv' n = case myPop n of
  Nothing -> []
  Just (n, m) -> n : divdiv' m 

fff :: [Integer] -> Integer
fff l = foldr (\n m -> n + m * 10) 0 l
