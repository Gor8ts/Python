# Напишите функцию для нахождения минимума в
# списке целых. Список передаётся в качестве параметра.
# Полученный результат возвращается из функции.

from random import randint

def min_number(n):

    lst = []
    for i in range (0,n+1):
        lst.append(randint(-n,n))
    print (lst)

    min_n = min(lst)    
    return min_n
print (min_number(5))