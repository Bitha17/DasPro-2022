-- PANGKAT      -- pangkat(a,b)
-- DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int -> Int
{-  pangkat(a,b) menerima masukan berupa dua buah integer, a dan b, 
    dan mengembalikan hasil berupa a^b (a pangkat b). 
    Masukan diasumsikan selalu valid, yaitu a > 0 dan b ≥ 0-}
-- REALISASI
pangkat a b =
    if b == 0 then 1        -- basis
    else a*(pangkat a (b-1))    -- rekurens
-- APLIKASI
-- pangkat 2 0      -- hasil: 1
-- pangkat 3 5      -- hasil: 243
-- pangkat 2 3      -- hasil: 8