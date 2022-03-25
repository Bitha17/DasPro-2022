isAllGanjil :: [Int] -> Bool
-- REALISASI
isAllGanjil l =
    if null l then True     -- basis
    else                                  -- rekurens
        if mod (head l) 2 == 1 then isAllGanjil (tail l)
        else False