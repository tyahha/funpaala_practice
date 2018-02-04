data Shape = Circle (Double, Double) Double
  | Square Double
  | Rectangle Double Double
  deriving Show

square :: Shape -> Shape
square (Rectangle x y) | x == y = Square x
square x = x
