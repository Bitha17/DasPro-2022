module Max3 where
max3 :: Int -> Int -> Int -> Int
{- max3(a,b,c) menentukan maksimum dari 3 bilangan integer yang
   berlainan nilainya, a != b dan a != c dan b != c -}
max3 a b c =
    if (a>b) && (a>c) then a
    else if (b>a) && (b>c) then b
    else c