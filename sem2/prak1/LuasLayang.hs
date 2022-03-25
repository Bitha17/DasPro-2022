module LuasLayang where
-- LUAS LAYANG      -luasLayang(d1,d2)
-- DEFINISI DAN SPESIFIKASI
layang :: Int -> Int -> Float 
-- luasLayang(d1,d2) menerima masukan 2 nilai integer, yaitu kedua diagonal 
-- sebuah layang-layang misalnya d1 dan d2
layang d1 d2 = (fromIntegral (d1*d2) :: Float)*0.5