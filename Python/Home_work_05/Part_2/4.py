# Напишите функцию, удаляющую из списка целых
# некоторое заданное число. Из функции нужно вернуть
# количество удаленных элементов.

from random import randint

def del_number_in_list(a):

    lst = []
    for i in range (a):
        lst.append(randint(0,a))
    
    
    count_number = lst.count(a)
    lst.remove(a)
    # print (lst) #для проверки, удостовериться что удалилось
    return count_number

print (del_number_in_list(254))