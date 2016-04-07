
sum' :: [Integer] -> Integer 
sum' = foldl (\acc x -> acc + x) 0
