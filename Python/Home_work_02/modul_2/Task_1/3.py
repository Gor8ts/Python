a = float(input('Enter the number of meters:'))
c = a*1.094 #ярди
d = a*39.37 #дюйми
i = a*0.000621371 #милі
print ('enter 1 to convert to yards')
print ('enter 2 to convert to inches')
print ('enter 3 to convert to miles')
choise = int (input ('enter number your choise:'))
if choise == 1:
    print (c,'yards')
elif choise == 2:
    print (d,'inches')
elif choise == 3:
    print (i,'miles')
else:
    print ('Goodbay.Ran out of options')


