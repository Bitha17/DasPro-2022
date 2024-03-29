-- APAKAH BILANGAN GANJIL       isGanjil(n)
-- DEFINISI DAN SPESIFIKASI
isGanjil :: Int -> Bool
{-  isGanjil(n) merupakan predikat untuk memeriksa apakah 
    sebuah bilangan integer (>= 0) merupakan bilangan ganjil -}
-- REALISASI
isGanjil n
    | n <= 0                    = False
    | n == 1                    = True
    | isGanjil (n-2) == True    = True
    | otherwise                 = False
-- APLIKASI
-- isGanjil 5