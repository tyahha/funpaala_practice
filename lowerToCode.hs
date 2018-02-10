import Data.Char (isLower, ord)

lowerToCode :: Char -> Maybe Int
lowerToCode c
  | isLower c = Just $ ord c
  | otherwise = Nothing

evenDiv2 :: Int -> Maybe Int
evenDiv2 n
  | even n = Just $ n `div` 2
  | otherwise = Nothing

pipeM :: (a -> Maybe b) -> (b -> Maybe c) -> (a -> Maybe c)
(f `pipeM` g) v = case f v of
  Just x -> g x
  Nothing -> Nothing

lowerToCodeDiv2 :: Char -> Maybe Int
lowerToCodeDiv2 = lowerToCode `pipeM` evenDiv2

lowerToCodeDiv4 :: Char -> Maybe Int
lowerToCodeDiv4 = lowerToCode `pipeM` evenDiv2 `pipeM` evenDiv2

mul3 :: Int -> Int
mul3 = (*3)

arrM :: (a -> b) -> (a -> Maybe b)
arrM f = Just . f

lowerToCodeDiv2Mul3 :: Char -> Maybe Int
lowerToCodeDiv2Mul3 c = lowerToCode c `bindM` evenDiv2 `bindM` (retM . mul3) 

bindM :: Maybe a -> (a -> Maybe b) -> Maybe b
Just x `bindM` f = f x
Nothing `bindM` _ = Nothing

retM :: a -> Maybe a
retM = Just
