# Вывести на экран фигуры, заполненные звездочками. 
# Диалог с пользователем реализовать при помощи меню.

a = '*'
b = ' '

print ('Вітаю, у мене е фігури які я можу вивести на єкран.\nВони позначаються буквами а,б,в,г,д.')
choise = input ('Введіть ваш вибір:')
if choise == 'a':

    for i in range (10):#длинна
        for o in range (10): #высота
            if o < i:
                print(b,end='')
            else:
                print (a,end = '' )
        print ()   
          
if choise == 'б':

    for i in range (10):
        for o in range (10):
            if i < o:
                print (b,end = '')
            else:
                print (a, end = '')
        print ()

if choise == 'в':

    for i in range (10):
        for o in range (10):         
            if o > (9 - i):
                print(b, end = '')
            else:
                if o >= i:
                    print(a, end = '')
                else:
                    print(b, end = '')
        print ()
        
if choise == 'г':

    for i in range (10):
        for o in range (10):         
            if o < (9 - i):
                print(b, end = '')
            else:
                if o <= i:
                    print(a, end = '')
                else:
                    print(b, end = '')
        print ()

if choise == 'д':

    for i in range (10):
        for o in range (10):
            if o < (9 - i):
                print(b, end = '')
            else:
                if o <= i:
                    print(a, end = '')
                else:
                    print(b, end = '')
            if o > (9 - i):
                print(b, end = '')
            else:
                if o >= i:
                    print(a, end = '')
                else:
                    print(b, end = '')         
            # if o < (9 - i):
            #     print(b, end = '')
            # else:
            #     if o <= i:
            #         print(a, end = '')
            #     else:
            #         print(b, end = '')
        print()


# a = ' '
# b = '*'

# for i in range(10):
#     for o in range(10):
#         if i < (9 - o):
#                 print(a, end = '')
#         else:
#                 if i <= o:
#                     print(b, end = '')
#                 else:
#                     print(a, end = '')
#         if i > (9 - o):
#                 print(a, end = '')
#         else:
#                 if i >= o:
#                     print(b, end = '')
#                 else:
#                     print(a, end = '') 
        
#     print()