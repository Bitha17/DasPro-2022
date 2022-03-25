module KlasifikasiKomputer where
-- KLASIFIKASI KOMPUTER - klasifikasi(a,b,c)
-- DEFINISI DAN SPESIFIKASI
klasifikasi :: Int -> Int -> Int -> Int
{-  klasifikasi(a,b,c) melakukan klasifikasi berdasarkan kemampuan CPU,
    kemampuan GPU, dan kemampuan harddisk -}
-- REALISASI
klasifikasi a b c =
    if (a < 2 || b < 2 || c < 2) then 1
    else if (a < 5 || b < 5) then 2
    else if (a <= 7 && b <= 7 && c <= 7) then 3
    else if ( a > 7 && b > 7 && c > 7) then 5
    else if (a > 7 || b > 7 || c > 7) then 4
    else 1
-- APLIKASI
-- klasifikasiKomputer 8 9 4