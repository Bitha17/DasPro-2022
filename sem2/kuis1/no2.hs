-- TAKE HOME PAY    - thp(p,d)
-- DEFINISI DAN SPESIFIKASI
thp :: Bool -> Int -> Int
{- thp(p,d) menghitung THP yang akan diterima oleh seorang pegawai berdasarkan masukan sebuah boolean (p) yang menyatakan kategori pegawai (bernilai True untuk pegawai tetap dan False untuk pegawai kontrak) serta sebuah integer >= 0 (d) yang menyatakan jumlah hari kerja pegawai tersebut -}
-- REALISASI
thp p d = 
    if (p == True) then
        if (d >= 20) then 5000000 + (d-20)*100000
        else d*200000
    else
        if (d >= 20) then 20*150000 + (d-20)*175000
        else d*150000
