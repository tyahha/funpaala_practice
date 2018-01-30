myLength' :: [a] -> Integer
myLength' = sum . map (const 1)
