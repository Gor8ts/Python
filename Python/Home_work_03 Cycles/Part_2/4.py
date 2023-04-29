# Пользователь вводит с клавиатуры числа. Программа должна подсчитывать сумму, максимум и минимум, 
# введенных чисел. Когда пользователь вводит число 7 программа прекращает свою работу и выводит 
# на экран надпись «Good bye!»


sum = 0
max = None
min = None

while True:
    num = int (input ('enter number:'))
    if num == 7:
        print ('Good bye')
        break
    sum += num

    if max is None or num > max:
        max = num
    if min is None or num < min:
        min = num
print ('sum nambers: ',sum)
print ('maximum number: ',max)
print ('minimum number: ',min)
