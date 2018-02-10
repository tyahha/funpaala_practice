import Data.Char (chr, ord)
addUnitArg :: a -> (() -> a)
addUnitArg v = \() -> v

delUnitArg :: (() -> a) -> a
delUnitArg f = f ()

addUnitTup :: a -> (a, ())
addUnitTup v = (v, ())

delUnitTup :: (a, ()) -> a
delUnitTup = fst

eight :: (Integer -> a) -> a
eight f = f 8

valToFun :: a -> ((a -> b) -> b)
valToFun x = ($ x)

funToVal :: ((a -> a) -> a) -> a
funToVal = ($ id)

myChr :: (a -> Int) -> (a -> Char)
myChr f = \x -> chr $ f x
