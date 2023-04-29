# Пользователь вводит с клавиатуры два числа. Нужно 
# посчитать отдельно сумму четных, нечетных и чисел, 
# кратных 9 в указанном диапазоне, а также среднеарифметическое каждой группы

a = int(input ('enter start cycle:'))
b = int(input ('enter end cycle:'))
if b < a:
    a,b = b,a

sum_even = 0
sum_odd = 0
sum_multiple_of_9 = 0
count_even = 0
count_odd = 0
count_multipls_of_9 = 0
while a < b:
    if a % 2 == 0:
        sum_even += a
        count_even += 1
    if a % 2 != 0:
        sum_odd += a
        count_odd += 1
    if a % 9 == 0:
        sum_multiple_of_9 += a
        count_multipls_of_9 += 1
    a += 1
if sum_even > 0:
    average_even = sum_even / count_even
else:
    average_even = 0
if sum_odd > 0:
    average_odd =sum_odd / count_odd
else:
    average_odd = 0
if sum_multiple_of_9 > 0:
    average_multiple_of_9 = sum_multiple_of_9 / count_multipls_of_9
else:
    average_multiple_of_9 = 0

print("Сума парних чисел:", sum_even)
print("Сума непарних чисел:", sum_odd)
print("Сума чисел, кратних 9:", sum_multiple_of_9)
print("Середнє арифметичне парних чисел:", average_even)
print("Середнє арифметичне непарних чисел:", average_odd)
print("Середнє арифметичне чисел, кратних 9:", average_multiple_of_9)