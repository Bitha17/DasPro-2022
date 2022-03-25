module SumOfDigits where
-- SUM OF DIGITS       sumOfDigits(n)
-- DEFINISI DAN SPESIFIKASI
sumOfDigits :: Int -> Int
-- sumOfDigits n menghasilkan penjumlahan setiap bilangan tunggal yang membentuk n
-- prekondisi n >= 0
-- REALISASI
sumOfDigits n
    | n == 0    = 0
    | otherwise = (mod n 10) + sumOfDigits(div n 10)
-- APLIKASI
-- sumOfDigits 13
