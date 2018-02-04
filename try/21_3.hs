data Building = Building String Integer deriving Show

buildingHeight :: Building -> String
buildingHeight (Building n h) = n ++ ": " ++ show h ++ "m"
