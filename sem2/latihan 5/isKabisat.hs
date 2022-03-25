isKabisat :: Int -> Bool
isKabisat n =
    if (n > 0 && mod n 4 == 0) then True
    else False