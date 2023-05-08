# Пользователь с клавиатуры вводит элементы списка
# целых и некоторое число. Необходимо посчитать сколько раз данное число присутствует в списке. Результат
# вывести на экран.



number = int (input('enter quatity number for audit:'))
list0 = []
for i in range (number):
    list0.append ( int(input ('enter your\'s data ['+ str (i)+'] list:')))

x = int (input ('enter number for find:'))
sum_x = list0.count(x)
print (sum_x)