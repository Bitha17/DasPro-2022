-- MENENTUKAN NILAI TENGAH                 nilaiTengah(a,b,c)
-- DEFINISI DAN SPESIFIKASI
nilaiTengah :: Int -> Int -> Int -> Int
{- menerima masukan 3 buah integer yang berlainan nilainya 
   yang urutannya bisa acak dan mengembalikan sebuah integer 
   yang merupakan salah satu dari ke-3 nilai tersebut yang 
   jika diurutkan berada di tengah -}
min3 :: Int -> Int -> Int -> Int
{- min3(a,b,c) menentukan minimum dari 3 bilangan integer yang
   berlainan nilainya, a != b dan a != c dan b != c -}
max3 :: Int -> Int -> Int -> Int
{- max3(a,b,c) menentukan maksimum dari 3 bilangan integer yang
   berlainan nilainya, a != b dan a != c dan b != c -}
-- REALISASI
nilaiTengah a b c = a + b + c - (min3 a b c) - (max3 a b c)
min3 a b c =
    if (a<b) && (a<c) then a
    else if (b<a) && (b<c) then b
    else c
max3 a b c =
    if (a>b) && (a>c) then a
    else if (b>a) && (b>c) then b
    else c
-- APLIKASI
-- nilaiTengah 17 5 26