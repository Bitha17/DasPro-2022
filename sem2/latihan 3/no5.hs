-- SUM RANGE                sumRange(a,b)
-- DEFINISI DAN SPESIFIKASI
sumRange :: Int -> Int -> Int
{-  sumRange(a,b) menghasilkan penjumlahan semua bilangan dari a s.d. b -}
-- REALISASI
sumRange a b
    | a > b     = 0
    | a == b    = a
    | otherwise = sumRange a (b-1) + b
-- APLIKASI
-- sumRange 2 4