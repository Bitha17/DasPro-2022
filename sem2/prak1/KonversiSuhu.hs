module KonversiSuhu where
-- KONVERSI SUHU - konversiSuhu(t,k)
-- DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> Char -> Float
{-  konversiSuhu(t,k) mengkonversi suhu dari satu satuan Celcius ke 
    satuan suhu yang lain, yaitu Fahrenheit, Reamur, atau Kelvin -}
-- REALISASI
konversiSuhu t k
    | k == 'R' || k == 'r'  = t*4/5
    | k == 'F' || k == 'f'  = t*9/5 + 32
    | k == 'K' || k == 'k'  = t + 273.15
    | otherwise = 0
-- APLIKASI
-- konversiSuhu  25 R