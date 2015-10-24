
myLookup :: Eq a => a -> [(a, b)] -> Maybe b
myLookup _ [] = Nothing
myLookup keyl ((key, value):rest)
  | keyl == key = Just value
  | otherwise   = myLookup keyl rest
