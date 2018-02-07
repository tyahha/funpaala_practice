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
