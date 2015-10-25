{-# LANGUAGE GeneralizedNewtypeDeriving #-}

{-
class Monoid a where
    mempty :: a
    mappend :: a -> a -> a
-}

-- instance Monoid [a] where
--     mempty = []
--     mappend = (++)

newtype AInt = A { unA :: Int }
               deriving (Show, Eq, Num)

instance Monoid AInt where
    mempty = 0
    mappend = (+)

newtype MInt = M { unM :: Int }
               deriving (Show, Eq, Num)

instance Monoid MInt where
    mempty = 1
    mappend = (*)
