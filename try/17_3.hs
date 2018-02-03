t17_3, tt17_3 :: [Integer]
t17_3@(_ : tt17_3) = 0 : 1 : zipWith (\x y -> x * 2 + y) t17_3 tt17_3
