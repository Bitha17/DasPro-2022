countFactorOfX :: Int -> [Int] -> Int
countFactorOfX n l =
    if ((null l) == True) then 0
    else if ((mod n (head l)) == 0) then countFactorOfX n (tail l) + 1
        else countFactorOfX n (tail l)