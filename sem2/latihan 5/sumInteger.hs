-- SUM INTEGER       - sumInteger(m,n,f)
-- DEFINISI DAN SPESIFIKASI
sumInteger :: Int -> Int -> (Int -> Bool) -> Int
-- sumInteger(m,n,f) menerima 2 (dua) buah integer positif (>0), misalnya m dan n, 
-- dan sebuah fungsi f dan menghasilkan penjumlahan dari semua integer antara m dan n 
-- (termasuk m dan n) yang memenuhi f. 
-- Jika dalam selang m dan n tidak ada yang memenuhi f, maka hasilnya adalah 0
-- REALISASI
sumInteger m n f =
    if m > n then 0
    else if f(n) then
        if m == n then m
        else sumInteger m (n-1) f + n
    else 
        if m == n then 0
        else sumInteger m (n-1) f
-- APLIKASI
-- sumInteger 1 100 (\x->(mod 100 x == 0))      -- hasil: 217
-- sumInteger 1 100 (\x->(mod x 5 == 0))        -- hasil: 1050
-- sumInteger 25 24 (\x->(x < 10))              -- hasil: 0