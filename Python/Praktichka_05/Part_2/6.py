# Напишите функцию, высчитывающую факториал
# каждого элемента списка целых. Функция возвращает
# новый список, содержащий полученные факториалы.

from random import randint

def max_number():
    number = int (input('enter number for create range:'))
    lst = []
    for i in range (number):
        lst.append(randint(0,number))
    print (lst)

    factorial_lst = []
    for n in lst:
        if n == 0:
            factorial_lst.append(1)
        else:
            fac = 1
            for o in range (1,n+1):
                fac *= o
            factorial_lst.append(fac)
    return factorial_lst


    
print (max_number())