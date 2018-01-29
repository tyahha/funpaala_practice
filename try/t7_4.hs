fromMaybe' :: a -> Maybe a -> a
fromMaybe' x = maybe x id
