number = int (input ('enter a four-digit number:'))
a = number//1000
b = number//100%10
c = number//10%10
d = number%10
print (d,c,b,a, sep='')
'done'