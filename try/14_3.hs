myMaximum :: [Integer] -> Integer
myMaximum [] = 0
myMaximum (x : xs) = max x $ myMaximum xs 
