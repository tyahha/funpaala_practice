sumN :: Integer -> Integer
sumN 0 = 0
sumN n = sumN (n - 1) + n
