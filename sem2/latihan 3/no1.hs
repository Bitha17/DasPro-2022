-- DERET SEGITIGA        deretSegitiga(n)
-- DEFINISI DAN SPESIFIKASI
deretSegitiga :: Int -> Int
{-  deretSegitiga(n) merupakan fungsi untuk mencari nilai bilangan ke-n
    pada deret segitiga -}
-- REALISASI
deretSegitiga n =
    if (n == 1) then 1
    else deretSegitiga (n-1) + n
-- APLIKASI
-- deretSegitiga 3