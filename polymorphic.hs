myFromMaybe :: a -> Maybe a -> a
myFromMaybe _ (Just x) = x
myFromMaybe x Nothing = x

myMaybe :: b -> (a -> b) -> Maybe a -> b
myMaybe _ f (Just x) = f x
myMaybe d _ Nothing = d
