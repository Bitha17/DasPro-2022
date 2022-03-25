ip = float(input())
pot = float(input())

if ip >= 3.5:
    print(4)
else:
    if pot < 1:
        print(1)
    elif pot < 5:
        if ip >= 2.0:
            print(3)
        else:
            print(2)
    else:
        print(0)