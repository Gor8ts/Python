# Напишите функцию, переворачивающую содержимое
# списка целых.

from random import randint

def flipped_number():
    number = int (input('enter quatity number for audit:'))
    lst = []
    for i in range (number):
        lst.append(randint(1,number))
    print (lst)

    flipped_lis = lst[::-1]    
    return flipped_lis
print (flipped_number())