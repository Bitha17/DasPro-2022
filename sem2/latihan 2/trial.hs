-- JUMLAH DETIK                 jumlahDetik(j,m,d)
-- DEFINISI DAN SPESIFIKASI
jumlahDetik :: Int -> Int -> Int -> Int
    {-  jumlahDetik(j,m,d) menghitung jumlah detik dari jam tersebut (input)
        terhitung mulai jam 00:00:00 -}
-- REALISASI
jumlahDetik j m d = (3600 * j) + (60 * m) + d
-- APLIKASI
-- jumlahDetik 12 20 44