x = int (input ('Please enter any number:'))
y = int (input ('Please enter second any number:'))
z = int (input ('Please enter third any number:'))
print ('Choose what to do with numbers, add or multiply')
print ('1-add')
print ('2-multiply')
choise = int (input ('Please enter number your choise:'))
if choise == 1:
    print (x+y+z,'the sum of your numbers')
else:
    print (x*y*z,'product of your numbers')
#done