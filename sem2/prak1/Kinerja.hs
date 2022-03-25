module Kinerja where
-- KINERJA - klasifikasi(j,m,d)
-- DEFINISI DAN SPESIFIKASI
kinerja :: Int -> Int -> Int -> (Int, Int, Int, Int)
{-  kinerja(j,m,d) menghitung durasi antara jam selesainya pekerjaan karyawan dengan standar 
    jam selesai berupa nilai dalam jam, menit, dan detik, serta memberikan status kinerja karyawan, 
    apakah lebih awal, tepat waktu, atau terlambat-}
selisih :: Int -> Int -> Int -> Int
-- REALISASI
kinerja j m d 
    | 3600*j + 60*m + d - 63000 > 0 = ( div (selisih j m d) 3600,
                                        div (mod (selisih j m d) 3600) 60,
                                        mod (selisih j m d) 60,
                                        -1)
    | 3600*j + 60*m + d - 63000 < 0 = ( div (selisih j m d) 3600,
                                        div (mod (selisih j m d) 3600) 60,
                                        mod (selisih j m d) 60,
                                        1)
    |otherwise                      = ( div (selisih j m d) 3600,
                                        div (mod (selisih j m d) 3600) 60,
                                        mod (selisih j m d) 60,
                                        0)
selisih j m d = abs(3600*j + 60*m + d - 63000)
-- APLIKASI
-- klasifikasiKomputer 8 9 4