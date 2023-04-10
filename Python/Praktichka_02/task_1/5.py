from secrets import choice


x = int (input ('Enter number (x):'))
y = int (input ('Enter number (y):'))
print ('Оберіть що ви хочете зробити з чими числами')
print ('1:Додати')
print ('2:Відняти')
print ('3:Вивести середньоарифметичне чисел')
print ('4:Помножити')
choice = int (input ('Введіть обраний варіант:'))
if choice == 1:
    print ('Сумма ваших чисел:',x+y)
elif choice == 2:
    print ('Різниця ваших чисел:',x-y)
elif choice == 3:
    print ('Середнє арифметичне:',x+y/2)
else:
    print ('Добуток дорівнює:', x*y)