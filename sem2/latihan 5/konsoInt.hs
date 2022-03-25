-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
-- konso(e,li) menghasilkan sebuah list dari e (sebuah
-- integer) dan li (list of integer),
-- dengan e sebagai elemen pertama: e o li -> li'
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
-- konsDot(li,e) menghasilkan sebuah list dari li (list
-- of integer) dan e (sebuah integer),
-- dengan e sebagai elemen terakhir: li • e -> li'
-- REALISASI
konsDot li e = li ++ [e]