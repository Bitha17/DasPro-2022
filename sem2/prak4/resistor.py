# Tabitha Permalla (16521076)
# Praktikum 18/03/2022

# Deskripsi Program
# Program yang menerima 3 (tiga) bilangan riil yang merepresentasikan nilai resistor R1, R2, dan R3, 
# berupa bilangan rill > 0, dan menghitung nilai resistansi total, 
# tergantung dihubungkan secara serial atau paralel

# KAMUS
# r1, r2, r3, RT: float
# jenis : string
# jenis_benar : array of string

# ALGORITMA 
# Berikan nilai pada r1, r2, r3, dan jenis
r1 = 0.0
r2 = 0.0
r3 = 0.0
jenis = 'x'
jenis_benar = ['s','S','p','P']
# Menerima masukan pengguna
while (r1 <= 0) or (r2 <= 0) or (r3 <= 0) or not(jenis in jenis_benar):
    r1 = float(input())
    r2 = float(input())
    r3 = float(input())
    jenis = input()
    if (r1 <= 0) or (r2 <= 0) or (r3 <= 0) or not(jenis in jenis_benar):
        print("Masukan salah")
if (jenis == 'S') or (jenis == 's'):
    RT = r1 + r2 + r3
else:   # (jenis != 'p') or (jenis != 'P')
    RT = 1/(1/r1 + 1/r2 + 1/r3)
print("%.2f" %RT)