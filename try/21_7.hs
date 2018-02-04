data NumRep = Char :*: Int deriving Show

numRepToString :: [NumRep] -> String
-- numRepToString = concat . map (\(c :*: n) -> replicate n c)
-- numRepToString = foldr (\(c :*: n) s -> replicate n c ++ s) ""
numRepToString = foldl (\s (c :*: n) -> s ++ replicate n c) ""
