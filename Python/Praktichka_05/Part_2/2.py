# Напишите функцию для нахождения максимума в списке целых. Список передается в качестве параметра.

from random import randint

def max_number():
    number = int (input('enter quatity number for audit:'))
    lst = []
    for i in range (number):
        lst.append(randint(1,number))
    print (lst)

    max_n = max(lst)    
    return max_n
print (max_number())