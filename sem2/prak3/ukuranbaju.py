t = int(input())
b = int(input())

if t <= 150:
    print(1)
elif t <= 170:
    if b <= 80:
        print(2)
    else:
        print(3)
else:
    if b > 60 and b <= 80:
        print(3)
    else:
        print(4)
    