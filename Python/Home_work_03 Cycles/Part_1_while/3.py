# Пользователь вводит с клавиатуры два числа (начало и конец диапазона).
# Требуется проанализировать все числа в этом диапазоне. Вывод на экран должен проходить по 
# правилам, указанным ниже. Если число кратно 3 (делится на 3 без остатка) нужно 
# вывести слово Fizz. Если число кратно 5 нужно вывести слово Buzz. 
# Если число кратно 3 и 5 нужно вывести Fizz Buzz. 
# Если число не кратно не 3 и 5 нужно вывести само число.


# 1й вариант

# a = int(input ('enter start cycle:'))
# b = int(input ('enter end cycle:'))
# if b < a:
#     a,b = b,a

# a0 = a
# while a < b:
#     if a % 3 == 0:
#         print (a,'Fizz',end ='')
#     a += 1
# print ('\n')
# a = a0
# while a < b:
#     if a % 5 == 0:
#         print (a,'Buzz', end = '')
#     a += 1
# print ('\n')
# a = a0
# while a < b:
#     if a % 3 == 0 and a % 5 == 0:
#         print (a,'Fizz Buzz',end = '')
#     a += 1
# print ('\n')
# a = a0
# while a < b:
#     if a % 3 != 0 and a % 5 != 0:
#         print (a, end='-')
#     a += 1


# 2й вариант

a = int(input ('enter start cycle:'))
b = int(input ('enter end cycle:'))
if b < a:
    a,b = b,a

while a < b:
    if a % 3 == 0:
        print ('Fizz')
    if a % 5 == 0:
        print ('Buzz')
    if a % 3 == 0 and a % 5 == 0:
        print ('Fizz Buzz')
    if a % 3 != 0 and a % 5 != 0:
        print (a, end=' ') 
    a += 1