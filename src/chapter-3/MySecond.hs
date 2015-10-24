
mySecond :: [a] -> Maybe a
mySecond (_:s:_)= Just s
mySecond _      = Nothing
