# Напишите функцию, определяющую количество четных, нечетных, положительных, 
# отрицательных элементов списка целых. Список передается в качестве параметра.

from random import randrange

def even_odd_poz_neg_number():
    number = int (input('enter quatity number for audit:'))
    lst = []
    for i in range (number):
        lst.append(randrange(-number,number))
    print (lst)

    count_even = 0
    count_odd = 0
    count_pozitive = 0
    count_negative = 0

    for n in lst:
        if n % 2 == 0:
            count_even += 1
        if n % 2 != 0:
            count_odd += 1
        if n < 0:
            count_negative += 1
        if n > 0:
            count_pozitive += 1
    return count_even, count_odd, count_pozitive, count_negative

print (even_odd_poz_neg_number())