# import time
# import math

# a = int(input('a = '))
# b = int(input('b = '))

# summa = 0
# for i in range(a,b+1):
#     summa += i

# summa2 = (a+b)/2 * (b-a+1)

# start_time = time.time()
# for n in range(a,b+1):
#     for i in range(2,n//2+1):
#         if n % i == 0:
#             # print('не просте')
#             break
#     else:
#         print(n, end=' ')
# end_time = time.time()
# print('\ntime =',end_time - start_time) 

# start_time = time.time()
# for n in range(a,b+1):
#     for i in range(2, int(math.sqrt(n))+1):
#         if n % i == 0:
#             # print('не просте')
#             break
#     else:
#         print(n, end=' ')
# end_time = time.time()
# print('\ntime =',end_time - start_time) 

# start_time = time.time()
# for n in range(a,b+1):
#     i = 2
#     while i * i< n:
#         if n % i == 0:
#             # print('не просте')
#             break
#         i += 1
#     else:
#         print(n, end=' ')
# end_time = time.time()
# print('\ntime =',end_time - start_time) 

n = int(input('n = '))
w = input('w = ')
b = input('b = ')

for i in range(n): #рядок
    for j in range(n): #висота рядка
        for k in range(n): #стовбчик
            for m in range(n):#ширина клітинки
                if (i+k % 2 == 0):
                    print(w,sep='',end='')
                else:
                    print(b,sep='',end='')
        print()



