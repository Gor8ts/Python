# Напишите функцию, которая отображает горизонтальную или вертикальную линию из некоторого символа.
# Функция принимает в качестве параметра: длину линии, направление, символ.

def line (lenght,napravlenie,symbol):
    if napravlenie == 'горизонтальний':
        for i in range(lenght):
            print(symbol, end = '')
        print()
    elif napravlenie == 'вертикальний':
        for o in range(lenght):
            print(symbol)
    else:
        print('Невірний напрямок. Оберіть або вертикальний або горизонтальний')
        
   

line(10,'горизонтальний','*')
line(10, "горизонтальний", "#")
line(5, "вертикальний", "*")