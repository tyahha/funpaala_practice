data Matryoshka = Nest Matryoshka | Term deriving Show

countMat :: Matryoshka -> Integer
countMat Term = 1
countMat (Nest m) = 1 + countMat m

makeMat :: Integer -> Matryoshka
makeMat n | n < 2 = Term
makeMat n = Nest $ makeMat (n - 1)
