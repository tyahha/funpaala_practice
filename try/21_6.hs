import Data.Char (toUpper)
toJustUpper :: Char -> Maybe Char
toJustUpper = Just . toUpper
