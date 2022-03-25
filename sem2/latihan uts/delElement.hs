delElement :: Int -> [Int] -> [Int]
delElement x l =
    if null l then []       -- basis
    else                    -- rekurens
        if (x == head l) then tail l
        else [head l] ++ delElement x (tail l)