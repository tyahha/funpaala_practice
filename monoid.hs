import Funpaala
import Data.Monoid (Endo(..))

newtype Maximum a = Maximum { getMaximum :: a } deriving Show

instance (Ord a, Bounded a) => Monoid (Maximum a) where
  mempty = Maximum minBound
  Maximum x `mappend` Maximum y = Maximum $ x `max` y

newtype Minimum a = Minimum { getMinimum :: a } deriving Show

instance (Ord a, Bounded a) => Monoid (Minimum a) where
  mempty = Minimum maxBound
  Minimum x `mappend` Minimum y = Minimum $ x `min` y

ffldr :: (a -> b -> b) -> [a] -> b -> b
ffldr = flip . fldr

fldMap :: Monoid m => (a -> m) -> [a] -> m
fldMap f (x : xs) = f x `mappend` fldMap f xs
fldMap _ [] = mempty

ffldr' :: (a -> b -> b) -> [a] -> b -> b
ffldr' f = appEndo . fldMap (Endo . f)

fldMap' :: Monoid m => (a -> m) -> [a] -> m
fldMap' f = fldr (mappend . f) mempty
