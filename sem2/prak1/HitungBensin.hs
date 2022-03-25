module HitungBensin where
-- NB KELIPATAN X                hitungBensis(A,B)
-- DEFINISI DAN SPESIFIKASI
hitungBensin :: Int -> Int -> Int 
{-  menerima masukan dua buah integer positif (integer > 0), misalnya m dan n, 
    serta sebuah integer positif lain, yaitu x, dan menghasilkan banyaknya bilangan 
    kelipatan x di antara m dan n (m dan n termasuk). 
    Prekondisi/syarat/asumsi yang berlaku adalah m <= n dan x <= n -}
hitungBiaya :: Int->Int
-- REALISASI
hitungBensin a b
    | (a == b) = hitungBiaya a
    | otherwise = hitungBiaya b + hitungBensin a (b-1)
hitungBiaya x
    | x == 1 = 0
    | mod x 2 == 0 = 1 + hitungBiaya (div x 2)
    | otherwise = 1 + hitungBiaya (x*3 + 1)
-- APLIKASI
-- hitungBensin 11 11