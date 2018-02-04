data Triple a = Triple a a a deriving Show

mapTriple :: (a -> b) -> Triple a -> Triple b
mapTriple f (Triple x y z) = Triple (f x) (f y) (f z)
