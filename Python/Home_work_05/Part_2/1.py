# Напишите функцию, вычисляющую произведение
# элементов списка целых. Список передаётся в качестве параметра. Полученный результат возвращается из
# функции.

from random import randrange

def multiplication_lst (n):
    lst = []
    for i in range (n):
        lst.append(randrange(1,n))

    count_multiplication = 1
    for i in lst:
        count_multiplication *= i
    return count_multiplication

print (multiplication_lst(23))
