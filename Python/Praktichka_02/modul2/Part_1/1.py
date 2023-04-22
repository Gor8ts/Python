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
if f+i+d == c+b+a:
    print (f+i+d,"=",c+b+a,'Lucky')
elif f+i+d < c+b+a:
    print (f+i+d,"<",c+b+a,'No lucky')
else:
    print (f+i+d,">",c+b+a,'No lucky')
