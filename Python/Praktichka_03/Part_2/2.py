# Пользователь вводит с клавиатуры число. Требуется 
# посчитать факториал числа. Например, если введено 3, 
# факториал числа 1*2*3 = 6.
# Формула для расчета факториала: n! = 1*2*3…*n, где 
# n — число для расчета факториала


# number = int (input('enter number:'))
# n = 1
# for i in range (1:number):
#     n *= i
# print ('Factorial = ', n)


number = int (input('enter number:'))
n = 1
factorial = 1
if number <= 0:
    factorial -= 1
    print ('Good bye')
else:
    while n <= number:    
        factorial *= n
        n += 1
print ('Factorial:',factorial)
