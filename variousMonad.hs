safeDivM :: Integer -> Integer -> Maybe Integer
_ `safeDivM` 0 = Nothing
x `safeDivM` y = Just $ x `div` y

calcM :: Integer -> Integer -> Integer -> Maybe Integer
calcM a b c =
  a `safeDivM` b >>= \x ->
  x `safeDivM` c

data Try a = Error String | Success a deriving Show

retT :: a -> Try a
retT = Success

bindT :: Try a -> (a -> Try b) -> Try b
Error em `bindT` _ = Error em
Success x `bindT` f = f x

instance Functor Try where
  fmap f m = m `bindT` (retT . f)

instance Applicative Try where
  pure = retT
  mf <*> mx = mf `bindT` \f -> mx `bindT` \x -> retT $ f x

instance Monad Try where
  return = retT
  (>>=) = bindT


safeDivT :: Integer -> Integer -> Try Integer
x `safeDivT` 0 = Error $ show x ++ " is divided by zero\n"
x `safeDivT` y = Success $ x `div` y

calcT :: Integer -> Integer -> Integer -> Try Integer
calcT a b c =
  a `safeDivT` b >>= \x ->
  x `safeDivT` c
