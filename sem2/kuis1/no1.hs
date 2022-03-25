-- MENENTUKAN SUKU KE-N    - sukuKeN(n)
-- DEFINISI DAN SPESIFIKASI
sukuKeN :: Int -> Int
{- sukuKeN(n) menerima masukan sebuah integer (n) yang bernilai lebih besar atau sama dengan 1 dan menghasilkan suku ke-n dari barisan 1, -4, 7, -10, 13, …. -}
-- REALISASI
sukuKeN n = 
    if ((mod n 2) == 0) then -1*(1 + 3*(n-1))
    else 1 + 3*(n-1)
-- APLIKASI
-- sukuKeN 8
-- (hasil)  (-22)
