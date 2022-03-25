getSmallest :: [Int] -> Int
getSmallest l =
    if (length l == 1) then head l    -- basis
    else                              -- rekurens
        if head l < getSmallest (tail l) then head l
        else getSmallest(tail l)