# Напишите функцию, которая возвращает максимальное из четырёх чисел. Числа передаются в качестве
# параметров.

def max_number (a,b,c,d):
    if a > b and c and d:
        print(a)
    elif b > a and c and d:
        print (b)
    elif c > a and b and d:
        print(c)
    elif d > a and b and c:
        print (d)
    

max_number(25,30,2,15,)