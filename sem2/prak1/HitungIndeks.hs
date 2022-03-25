module HitungIndeks where
hitungIndeks :: Float -> Float -> Float -> Int
hitungIndeks nilaiUTS nilaiUAS nilaiTubes =
    if (nilaiUTS == 0 || nilaiUAS == 0 || nilaiTubes == 0) then 0
    else if (nilaiUTS < 40 || nilaiUAS < 40) then 1
    else if (nilaiUTS >= 75 && nilaiUAS >= 75 && nilaiTubes >= 75) then 4
    else if (nilaiUTS >= 40 && nilaiUAS >= 40 && nilaiTubes < 40) then 2
    else if (nilaiUTS < 75 && nilaiUAS < 75 && nilaiTubes < 75) then 2
    else 3
