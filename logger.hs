import Data.Char (ord)

data Logger a = Logger [String] a deriving Show

double :: Int -> Logger Int
double n = Logger ["double " ++ show n] (n * 2)

retL :: a -> Logger a
retL = Logger []

pipeL :: (a -> Logger b) -> (b -> Logger c) -> (a -> Logger c)
(g `pipeL` h) x = let
  Logger l y = g x
  Logger l' z = h y in
  Logger (l ++ l') z

bindL :: Logger a -> (a -> Logger b) -> Logger b
Logger l y `bindL` h = let
  Logger l' z = h y in
  Logger (l ++ l') z
