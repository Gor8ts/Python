# Напишите функцию, которая принимает два числа
# в качестве параметра и отображает все нечетные числа
# между ними
def number_odd(a,b):
    count_odd = []
    while a < b:
        if a % 2 != 0:
            
            count_odd.append (a)
        a += 1
    return count_odd
res = number_odd(1,10)
for i in res:
    print (i, end = ',')