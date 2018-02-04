import Data.List (unfoldr)
import Data.Bool (bool)

mapRaw, mapF, mapU :: (a -> b) -> [a] -> [b]
mapRaw _ [] = []
mapRaw f (x : xs) = f x : mapRaw f xs
mapF f = foldr ((:) . f) []
mapU f = unfoldr $ \l -> case l of
  x : xs -> Just (f x, xs)
  [] -> Nothing

filterRaw :: (a -> Bool) -> [a] -> [a]
filterRaw _ [] = []
filterRaw f (x : xs) = bool (filterRaw f xs) (x : filterRaw f xs) (f x) 


filterF :: (a -> Bool) -> [a] -> [a]
filterF f = foldr (\x -> bool id (x :) (f x)) []

partitionRaw :: (a -> Bool) -> [a] -> ([a], [a])
partitionRaw _ [] = ([], [])
partitionRaw f (x : xs) =
  let (l, r) = partitionRaw f xs
  in bool (l, x : r) (x : l, r) (f x)

takeRaw :: Integer -> [a] -> [a]
takeRaw _ [] = []
takeRaw n xss@(x : xs)
  | n == 0 = []
  | otherwise = x : takeRaw (n - 1) xs
