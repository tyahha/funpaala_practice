triangle1_5 :: [(Integer, Integer, Integer)]
triangle1_5 =
  [(x, y, z)|
    x <- [1..5],
    y <- [1..5],
    z <- [1..5],
    (x > y + z || y > z + x || z > x + y) && x <= y && y <= z
  ] 
