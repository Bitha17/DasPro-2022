t = float(input())
k = input()

if k == 'R' or k == 'r':
    T = t * 0.8
elif k == 'F' or k == 'f':
    T = t * 1.8 + 32
else:
    T = t + 273.15

print("%.2f" %T)