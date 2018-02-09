newtype Maximum a = Maximum { getMaximum :: a } deriving Show

instance (Ord a, Bounded a) => Monoid (Maximum a) where
  mempty = Maximum minBound
  Maximum x `mappend` Maximum y = Maximum $ x `max` y

newtype Minimum a = Minimum { getMinimum :: a } deriving Show

instance (Ord a, Bounded a) => Monoid (Minimum a) where
  mempty = Minimum maxBound
  Minimum x `mappend` Minimum y = Minimum $ x `min` y
