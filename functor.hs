import Data.Tree (Tree(..))
import Data.Char (ord)

mmap :: (a -> b) -> Maybe a -> Maybe b
mmap f (Just x) = Just $ f x
mmap _ Nothing = Nothing

tmap :: (a -> b) -> Tree a -> Tree b
tmap f (Node x sf) = Node (f x) $ map (tmap f) sf

toCode :: Functor f => f Char -> f Int
toCode = fmap ord
