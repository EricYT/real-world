
import Data.List

data Op = Plus | Minux | Mul | Div | Pow
        deriving (Eq, Show)

data SymbolicManip a =
    Number a
    | Symbol String
    | BinaryArith Op (SymbolicManip a) (SymbolicManip a)
    | UnaryArith String (SymbolicManip a)
    deriving (Eq)

instance Num a => Num (SymbolicManip a) where
    a + b = BinaryArith Plus a b
    a - b = BinaryArith Minux a b
    a * b = BinaryArith Mul a b 
    negate a = BinaryArith Mul (Number (-1)) a 
    abs a = UnaryArith "abs" a
    signum _ = error "signum is unimplemented"
    fromInteger i = Number $ fromInteger i

instance (Fractional a) => Fractional (SymbolicManip a) where
    a / b = BinaryArith Div a b
    recip a = BinaryArith Div (Number 1) a
    fromRational r = Number (fromRational r)
