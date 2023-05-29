#Напишите функцию, которая ищет некоторое число
# в списке целых.

def max_number():
    number = int (input('enter number for find:'))
    lst = []
    for i in range (0,1000):
        lst.append(i)
    print (lst)

    number_find = lst.index(number)    
    return number_find
print (max_number())