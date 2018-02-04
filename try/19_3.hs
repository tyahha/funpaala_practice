concatMapF :: (a -> [b]) -> [a] -> [b]
concatMapF f = foldr (\x -> (f x ++)) [] 

concatMapRaw :: (a -> [b]) -> [a] -> [b]
concatMapRaw _ [] = []
concatMapRaw f (x : xs) = f x ++ concatMapRaw f xs
