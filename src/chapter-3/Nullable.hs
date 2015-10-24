-- file maybe

data Maybe a = Just a
             | Nothing

someBool = Just True

someString = Just "something"

data List a = Cons a (list a)
            | Nil
              deriving(Show)
