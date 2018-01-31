threeDivsNext :: Integer -> Integer
threeDivsNext n =
  let d = n `mod` 3
  in
    case d of
      0 -> n `div` 3
      _ -> n * 2 + d

threeDivs :: Integer -> [Integer]
threeDivs n = n : (threeDivs $ threeDivsNext n)

threeDivs' :: Integer -> [Integer]
threeDivs' = iterate threeDivsNext
