# Напишите программу, которая запрашивает два 
# целых числа x и y, после чего вычисляет и выводит 
# значение x в степени y.

x = int (input ('x ='))
y = int (input ('y ='))

result = 1
for i in range (y):
    result *= x
print (result)
