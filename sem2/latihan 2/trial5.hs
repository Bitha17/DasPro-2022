-- JUMLAH UANG                 jumlahUang(q,d,n,p)
-- DEFINISI DAN SPESIFIKASI
jumlahUang :: Int -> Int -> Int -> Int -> (Int, Int)
{-  jumlahUang(q,d,n,p) menerima input sejumlah koin quarter, dime, nickel, dan
    penny dan menghasilkan berapa dollar dan berapa sen yang senilai dengan total
    koin-koin tersebut -}
-- REALISASI
jumlahUang q d n p = ( div (25*q + 10*d + 5*n + p) 100,
                       mod (25*q + 10*d + 5*n + p) 100)
-- APLIKASI
-- jumlahUang 8 20 30 77