# Пользователь с клавиатуры вводит элементы списка
# целых. Необходимо посчитать сумму всех элементов
# и их среднеарифметическое. Результаты вывести на
# экран.

number = int (input('enter quatity number for audit:'))
list0 = []
for i in range (number):
    list0.append ( int(input ('enter your\'s data ['+ str (i)+'] list:')))

quantity_тnumbers = len(list0)
sum_elements = sum(list0)
average = sum_elements / quantity_тnumbers
print ('сумма =',sum_elements,'\n','среднее арифметическое =',average)
