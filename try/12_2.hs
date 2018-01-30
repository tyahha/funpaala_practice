oneToFive :: Integer -> Integer
oneToFive n = 
  let
	  x = n `mod` 5
	in
	  case x of
      0 -> 5
      _ -> x
