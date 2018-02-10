type Calc a b = a -> Integer -> (b, Integer)

madd :: Calc Integer Integer
madd x m = (x, x + m)

mrecall :: Calc a Integer
mrecall _ m = (m, m)

arrC :: (a -> b) -> Calc a b
arrC f x m = (f x, m)

pipeC :: Calc a b -> Calc b c -> Calc a c
(f ` pipeC` g) x m = let (x', m') = f x m in g x' m'
