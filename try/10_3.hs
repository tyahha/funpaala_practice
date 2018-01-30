productOdd3 :: Integer -> Integer
productOdd3 = product . map (* 3) $ filter odd [1 .. n] 
