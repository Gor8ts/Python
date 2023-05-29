# Напишите функцию, определяющую количество простых чисел в списке целых. Список передаётся в качестве
# параметра. Полученный результат возвращается из функции.
from random import randint

def non_prime_counter(a):

    lst_of_integers = []
    for i in range (a):
        lst_of_integers.append(randint(2,a))
    
    count_non_prime = 0
    for n in lst_of_integers:
        for i in range(2,n//2+1):
            if n % i == 0:
                break
        else:
            count_non_prime += 1
    return lst_of_integers, count_non_prime

print (non_prime_counter(20))