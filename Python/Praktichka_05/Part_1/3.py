# Напишите функцию, которая отображает горизонтальную или вертикальную линию из некоторого символа.
# Функция принимает в качестве параметра: длину линии, направление, символ.

def line (lenght,napravlenie,symbol):
    if (napravlenie):
        print(lenght*symbol)
    else:
        end_l = '\n'
        for i in (0,lenght):
            print (symbol, end=end_l)

line (100,0,'*')