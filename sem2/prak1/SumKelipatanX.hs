module SumKelipatanX where
sumKelipatanX :: Int -> Int -> Int -> Int
sumKelipatanX m n x = 
    if (m == n) then
        if (mod m x == 0) then m
        else 0
    else
        if (mod m x == 0) then sumKelipatanX (m+1) n x + m
        else sumKelipatanX (m+1) n x
