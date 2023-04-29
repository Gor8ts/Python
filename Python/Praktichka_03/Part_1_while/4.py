# Пользователь вводит с клавиатуры два числа. Нужно показать все числа в указанном диапазоне 
# в порядке убывания.


a = int (input ('enter number:'))
b = int (input ('enter second number:'))
# b -= 1
while a <= b:
    
    print (b,end = ' ')
    b -= 1