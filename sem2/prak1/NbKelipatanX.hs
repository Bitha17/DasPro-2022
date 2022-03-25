module NbKelipatanX where
-- NB KELIPATAN X                nbKelipatanX(m,n,x)
-- DEFINISI DAN SPESIFIKASI
nbKelipatanX :: Int -> Int -> Int -> Int
{-  menerima masukan dua buah integer positif (integer > 0), misalnya m dan n, 
    serta sebuah integer positif lain, yaitu x, dan menghasilkan banyaknya bilangan 
    kelipatan x di antara m dan n (m dan n termasuk). 
    Prekondisi/syarat/asumsi yang berlaku adalah m <= n dan x <= n -}
-- REALISASI
nbKelipatanX m n x = 
    if (m == n) then
        if (mod m x == 0) then 1
        else 0
    else
        if (mod m x == 0) then nbKelipatanX (m+1) n x + 1
        else nbKelipatanX (m+1) n x
-- APLIKASI
-- nbKelipatanX 2 4 2