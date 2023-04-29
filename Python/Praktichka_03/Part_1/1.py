# Пользователь вводит с клавиатуры два числа. Нужно 
# показать все числа в указанном диапазоне.

a = int (input ('enter number:'))
b = int (input ('enter second number:'))
a += 1
while a < b:
    
    print (a, end = ' ')
    a += 1