# Напишите функцию, которая возвращает минимальное
# из пяти чисел. Числа передаются в качестве параметров.

def min_number (a,b,c,d,e):
    if a < b and a < c and a < d and a < e:
        print(a)
    elif b < a and b < c and b < d and b < e:
        print (b)
    elif c < a and c < b and c < d and c < e:
        print(c)
    elif d < a and d < b and d < c and d < e:
        print (d)
    elif e < a and e < b and e < c and e < d:
        print (e)
    

min_number(25,30,2,15,-9)