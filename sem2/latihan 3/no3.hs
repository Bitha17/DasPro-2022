-- LUAS BUJUR SANGKAR       luasBS(n)
-- DEFINISI DAN SPESIFIKASI
luasBS :: Int -> Int
{-  luasBS(n) merupakan fungsi untuk menghitung luas 
    bujur sangkar dengan panjang sisi tertentu-}
-- REALISASI
luasBS n
    | n == 1    = 1
    | otherwise = luasBS(n-1) + 2*n - 1
-- APLIKASI
-- luasBS 4