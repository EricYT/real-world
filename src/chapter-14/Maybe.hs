
data Maybe a = Nothing
             | Just a

instance Monad Maybe where
    (>>=) :: Maybe a -> (a -> Maybe b) -> Maybe b
    Nothing >>= _ = Nothing
    Just x >>= f = f x
    return = id
    fail = error

