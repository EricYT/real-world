
-- where
lend amount balance = if amount < reserve * 0.5
                        then Just newBanlance
                        else Nothing
  where
    reserve = 100
    newBanlance = balance - amount

-- in
lend2 amount balance = let reserve = 100
                           newBanlance = balance - amount
                       in if amount < reserve * 0.5
                            then Just newBanlance
                            else Nothing

