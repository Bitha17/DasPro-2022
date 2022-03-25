delNthElmt :: Int -> [Char] -> [Char]
delNthElmt n l =
    if (n == 1) then tail l
    else [head l] ++ delNthElmt (n-1) (tail l)