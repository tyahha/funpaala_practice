apply :: a -> (a -> b) -> b
apply x f = f x
