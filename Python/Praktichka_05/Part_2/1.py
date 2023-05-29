# Напишите функцию, вычисляющую сумму элементов списка целых. Список передается вкачестве параметра.
from random import randint

def sum_numbers():
    number = int (input('enter quatity number for audit:'))
    lst0 = []
    for i in range (number):
        lst0.append(randint(1,number))
    print (lst0)

    sum_n = 0
    for n in lst0:
        sum_n += n
    return sum_n
print (sum_numbers())
