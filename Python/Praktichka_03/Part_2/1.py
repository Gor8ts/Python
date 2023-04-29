# Пользователь вводит с клавиатуры два числа. Нужно 
# посчитать сумму чисел в указанном диапазоне, а также 
# среднеарифметическое.

a = int (input ('enter number:'))
b = int (input ('enter second number:'))
if a > b:
    a,b = b,a

sum = 0 
count_sum = 0
while a <= b:
    sum += a
    count_sum += 1
    a += 1
print ('sum numbers = ',sum)
print ('arithmetic mean',sum/count_sum)