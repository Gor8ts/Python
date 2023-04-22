import re


x = int (input ('Enter number for check:'))
a = x % 10
x //= 10
b = x % 10
x //= 10
c = x % 10
x //= 10
d = x % 10
x //= 10
i = x % 10
x //= 10
f = x % 10
x //= 10

if (f == 0 or x):
    print ('Number does not have 6 characters ')
else: 
    # f,a == a,f
    # i,b == b,i
    res = f + i*10 + c*100 + d*1000 + b*10000 + a*100000
    print (res)
123
