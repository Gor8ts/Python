# Вывести на экран фигуры, заполненные звездочками. 
# Диалог с пользователем реализовать при помощи меню.

a = '*'
b = ' '
# i = 0
# print ('Вітаю, у мене е фігури які я можу вивести на єкран. \n Вони позначаються буквами а,б,в,г,д.')
# choise = input ('Введіть ваш вибір:')
# if choise == 'a':
#     while i < 21:#высота
#         for o in range (i): #длинна
#             if o == 1:
#                 print (a*20)
#             if o == 2:
#                 print (a + b + (a * 16) + b + a)
#             if o == 3:
#                 print (a + b*2 + (a * 14) + b*2 + a)
#             if o == 4:
#                 print (a + b*3 + (a * 12) + b*3 + a)
#             if o == 5:
#                 print (a + b*4 + (a * 10) + b*4 + a)
#             if o == 6:
#                 print (a + b*5 + (a * 8) + b*5 + a)
#             if o == 7:
#                 print (a + b*6 + (a * 6) + b*6 + a)
#             if o == 8:
#                 print (a + b*7 + (a * 4) + b*7 + a)
#             if o == 9:
#                 print (a + b*8 + (a * 2) + b*8 + a)
#             if o == 20:
#                 print (a*20)
#             else:
#                 print (a + b*18+ a)
#         i += 1    

n = 21
for i in range(n): #рядок
    for j in range(n): #висота рядка
        for k in range(n): #стовбчик
            for m in range(n):#ширина клітинки
                if (i+k % 2 == 0):
                    print(a,)
                else:
                    print(a,)
        print(1)
