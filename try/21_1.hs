data KorT = Kinoko | Takenoko

doYouLike :: KorT -> String -> String
doYouLike Kinoko s = s ++ " (A)"
doYouLike Takenoko s = s ++ " (T)"

data WeekDay = Sun | Mon | Tue | Wed | Thu | Fri | Sut

isDayOf :: WeekDay -> String
isDayOf Sun = "play"
isDayOf _ = "work"
