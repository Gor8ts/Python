# В списке целых, заполненном случайными числами,
# определить минимальный и максимальный элементы,
# посчитать количество отрицательных элементов, посчитать количество положительных элементов, посчитать
# количество нулей. Результаты вывести на экран.

number = int (input('enter quatity number for audit:'))
list0 = []
for i in range (number):
    list0.append ( int(input ('enter your\'s data ['+ str (i)+'] list:')))

min_el = min(list0)
max_el = max(list0)
count_min = 0
count_max = 0
count_zero = 0

for j in list0:
    if j < 0:
        count_min += 1
    if j > 0:
        count_max += 1
    if j == 0:
        count_zero += 1
print ('number of minimum values = ',min_el,'\n''number of maximum values = ',max_el)
print ('number of negative elements = ',count_min,'\n''number of pozitive elements = ',count_max)
print ('number of zero = ',count_zero)
