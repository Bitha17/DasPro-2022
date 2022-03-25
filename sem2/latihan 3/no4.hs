-- SUM OF DIGITS       sumOfDigits(n)
-- DEFINISI DAN SPESIFIKASI
sumOfDigits :: Int -> Int
{-  sumOfDigits(n) menghitung hasil penjumlahan dari setiap bilangan tunggal 
    yang terdapat di dalam sebuah bilangan integer positif-}
-- REALISASI
sumOfDigits n
    | n == 0    = 0
    | otherwise = (mod n 10) + sumOfDigits(div n 10)
-- APLIKASI
-- sumOfDigits 13

-- SUM OF DIGITS       sumOfDigitsPosNeg(n)
-- DEFINISI DAN SPESIFIKASI
sumOfDigitsPosNeg :: Int -> Int
{-  sumOfDigitsPosNeg(n) menghitung hasil penjumlahan dari setiap bilangan tunggal 
    yang terdapat di dalam sebuah bilangan integer dengan mengabaikan tanda minus (-) -}
-- REALISASI
sumOfDigitsPosNeg n = 
    if (n >= 0) then
        if (n == 0) then 0
        else (mod n 10) + sumOfDigitsPosNeg(div n 10)
    else sumOfDigitsPosNeg(-n)
-- APLIKASI
-- sumOfDigits (-13)