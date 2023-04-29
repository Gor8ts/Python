# Пользователь вводит с клавиатуры числа. Если число 
# больше нуля нужно вывести надпись «Number is positive», 
# если меньше нуля «Number is negative», если равно нулю 
# «Number is equal to zero». Когда пользователь вводит 
# число 7 программа прекращает свою работу и выводит 
# на экран надпись «Good bye!»
number = -99999999
a = int (input ('Enter number:'))

while a != 7:
    if a > 0:
        number = a
        print ('Number is positiv')
        a = int (input ('Enter number:'))
    if a < 0:
        number = a
        print ('Number is negative')
        a = int (input ('Enter number:'))
    if a == 0:
        number = a
        print ('Number is equal to zero')
        a = int (input ('Enter number:'))
print("Good bye!")



        