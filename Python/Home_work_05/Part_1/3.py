# Напишите функцию, которая отображает пустой или
# заполненный квадрат из некоторого символа. Функция
# принимает в качестве параметров: длину стороны квадрата, символ и переменную логического типа:
# ■ если она равна True, квадрат заполненный;
# ■ если False, квадрат пустой.

def square (long, symbol, bool): #square-квадрат
    if bool == False:
        for i in range(long):
            if i == 0 or i == long -1 :
                print (symbol*long)
            else:
                print (symbol + (' '*8)+ symbol)
    else:
        for o in range(long):
            for m in range(long):
                print (symbol, end = '')
            print()

square (10,'*',0)