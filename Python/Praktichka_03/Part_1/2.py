# Пользователь вводит с клавиатуры два числа. Нужно 
# показать все нечетные числа в указанном диапазоне.


a = int (input ('enter number:'))
b = int (input ('enter second number:'))
a += 1
while a < b:
    if a % 2 !=0:
        print (a)
    a += 1