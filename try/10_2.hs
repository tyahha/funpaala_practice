productOdds :: Integer -> Integer
productOdds n = product $ filter odd [0 .. 2 * n + 1] 
