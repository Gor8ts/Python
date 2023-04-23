# Написать программу, которая по выбору пользователя 
# возводит введенное им число в степень от нулевой 
# до седьмой включительно.

number = float (input ('enter number to exponentiate:')) #введите число для возведения в степень
degree = int (input ('enter degree from 0 to 7:'))#введите степень от 0 до 7

if degree < 0 or degree > 7:
    print('error')
else:
    print (number, '**', degree,'=',number**degree)

