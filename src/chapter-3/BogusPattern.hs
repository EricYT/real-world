

data Fruit = Apple | Orange

apple :: String
apple = "apple"

orange :: String
orange = "orange"

whichFrucit :: String -> Fruit
--whichFrucit f = case f of
--                  apple -> Apple 
--                  orange -> Orange
--
--whichFrucit apple = Apple
--whichFrucit orange = Orange

whichFrucit "apple" = Apple
whichFrucit "orange" = Orange
