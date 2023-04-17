a = int (input ('enter number:'))
b = int (input ('enter second number:'))
if a>b:
    a,b = b,a
while a <= b:
    if a % 2 !=0:
        print (a)
    a += 1