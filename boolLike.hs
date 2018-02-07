class BoolLike a where
  toBool :: a -> Bool

instance BoolLike Integer where
  toBool 0 = False
  toBool _ = True

instance BoolLike Char where
  toBool '\0' = False
  toBool '0' = False
  toBool _ = True

instance BoolLike Bool where
  toBool = id

instance BoolLike () where
  toBool () = False

instance BoolLike Int where
  toBool 0 = False
  toBool _ = True

instance BoolLike Float where
  toBool 0.0 = False
  toBool _ = True

instance BoolLike Double where
  toBool 0.0 = False
  toBool _ = True

ifm :: BoolLike b => b -> a -> a -> a
ifm b x y = if toBool b then x else y

trues :: BoolLike b => [b] -> [b]
trues = filter toBool

instance BoolLike (Maybe a) where
  toBool Nothing = False
  toBool (Just _) = True

instance BoolLike a => BoolLike [a] where
  toBool [] = False
  toBool [x] = toBool x
  toBool (_ : _) = True
