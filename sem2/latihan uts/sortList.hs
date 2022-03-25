sortList :: [Int] -> [Int]
sortList l =
    if (length l == 1) then l    -- basis
    else                                -- rekurens
        if head l < (head (sortList (tail l))) then [head l] ++ sortList (tail l)
        else [head(sortList (tail l))] ++ sortList ([head l] ++ tail(sortList (tail l)))