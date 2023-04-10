from re import I


number = int (input ('enter a four-digit number:'))
a = number//1000
b = number//100%10
c = number//10%10
d = number%10
i = (d*1000)+(c*100)+(b*10)+a
print (i)
