# Пользователь вводит с клавиатуры строку. Посчитайте количество букв, цифр в строке. 
# Выведите оба количества на экран.


string = input ('enter string:')
sum_number = 0
sum_letters = 0
sum_lettersA =0
for i in string:
    if '0' <= i <= "9":
        sum_number +=1
    if 'a' <= i <='z':
        sum_letters +=1
    if 'A' <= i <= 'Z':
        sum_lettersA +=1

print('Quantity number =',sum_number)
print ('Quantity letters =',sum_letters + sum_lettersA)