dupHead :: [a] -> [a]
dupHead xxs@(x : xs) = x : xxs
dupHead [] = [] 
