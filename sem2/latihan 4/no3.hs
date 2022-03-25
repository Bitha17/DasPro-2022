-- SUM ISI LIST     - sumIsiList(l)
-- SPESIFIKASI DAN DEFINISI
sumIsiList :: [Int] -> Int
-- menghitung hasil penjumlahan dari seluruh elemen sebuah list of integer l yang tidak kosong
-- REALISASI
sumIsiList l =
    if (null l == True) then 0
    else head l + sumIsiList (tail l)
-- APLIKASI
-- sumIsiList [1,2,3]