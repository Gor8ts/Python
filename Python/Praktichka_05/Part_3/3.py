# Написать рекурсивную функцию, которая выводит N
# звезд в ряд, число N задает пользователь. Проиллюстрируйте работу функции примером.

def picture_recursiv(n):
    if n == 0:
        return
    else:
        if n < 0:
            print ('*', end = '')
            picture_recursiv (n+1)
        else:
            print ('*', end = '')
            picture_recursiv(n-1)
    
a = int (input('enter number for picture:'))

print (picture_recursiv(a))