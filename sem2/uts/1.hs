-- DERET TUJUH		-fDeretTujuh(m)
-- DEFINISI DAN SPESIFIKASI
fDeretTujuh :: Int -> Int
{- fDeretTujuh(m) menerima masukan sebuah integer m lebih besar dari nol (m > 0) dan menghasilkan bilangan integer yang menyatakan elemen ke-m pada pola bilangan deret segitujuh -}
-- REALISASI
fDeretTujuh m =
    if m == 1 then 1
    else fDeretTujuh (m-1) + 5*(m-1) + 1
-- APLIKASI
-- fDeretTujuh 5		-- hasil: 55

-- DERET TUJUH LIST	-fDeretTujuhList(d,e)
-- DEFINISI DAN SPESIFIKASI
fDeretTujuhList :: Int -> Int -> [Int]
{- fDeretTujuhList (d,e) menerima input berupa dua buah bilangan integer d dan e (diasumsikan d > 0 dan e > 0) dan menghasilkan sebuah llist bilangan integer yang berisi elemen ke-d hingga ke-e dari deret segitujuh. Jika e < d, dihasilkan list kosong. -}
-- REALISASI
fDeretTujuhList d e =
    if d > e then []
    else [fDeretTujuh d] ++ (fDeretTujuhList (d+1) e)
