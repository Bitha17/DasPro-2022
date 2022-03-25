module ListIndex where
-- LIST INDEX           --listIndex(l,f)
-- DEFINISI DAN SPESIFIKASI
listIndex :: [Int] -> (Int -> Char) -> [Char]
{-  listIndex(l,f) menerima masukan sebuah list of integer, misalnya l,
    dan sebuah fungsi yang menerima masukan sebuah integer dan menghasilkan sebuah char, misal f.
    Fungsi listIndex akan menghasilkan sebuah list of character yang melambangkan 
    nilai-nilai indeks dari suatu list nilai integer.
    Misal fungsi f akan mengembalikan nilai B untuk range nilai [70,80], 
    maka nilai 75 akan secara otomatis diubah menjadi 'B' oleh fungsi f -}
-- REALISASI
listIndex l f =
    if null l then []
    else [f(head l)] ++ (listIndex (tail l) f)