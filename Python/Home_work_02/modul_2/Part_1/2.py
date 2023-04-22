x = float (input ('Please enter any number:'))
y = float (input ('Please enter second any number:'))
z = float (input ('Please enter third any number:'))
print ('Choose what to do with numbers')
print ('1-withdraw on the screen up to three')
print ('2-withdraw on the screen at least three')
print ('3-withdraw on the screen the arithmetic mean of three numbers')
choise = float (input ('Please enter number your choise:'))
if choise == 1:
    if x<=y>=z:
        print (y,'largest number')
    elif y<=x>=z:
        print (x,'largest number')
    elif x<=z>=y:
        print (z,'largest number')
    else:
        print ('мабуть ващі числа дорівнюють одне одному')
elif choise == 2:
    if x>=y<=z:
        print (y,'smallest number')
    elif y>=x<=z:
        print (x,'smallest number')
    elif x>=z<=y:
        print (z,'smallest number')
    else:
        print ('мабуть ващі числа дорівнюють одне одному')
elif choise == 3:
    print ((x+y+z) / 3,'the arithmetic mean of three numbers')
else:
    print ('Можете вигадувати що хочете але тут закодовано лише 3 варіанта відповіді')
#done