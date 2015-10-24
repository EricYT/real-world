
import qualified Data.Map as Map

a1 = [(1, "one"), (2, "two"), (3, "three")]

mapFromL =
    Map.fromList a1

mapFold =
    foldl (\map (k, v) -> Map.insert k v map ) Map.empty a1

mapManual =
    Map.insert 2 "two" .
    Map.insert 3 "three" .
    Map.insert 1 "one" .
    Map.insert 4 "four" $ Map.empty
