number = float (input ('Please enter a number from 1 to 100:'))
if number < 1 or number > 100:
    print ('error number entered incorrectly')

elif number % 3 == 0 and number % 5 == 0:
    print ('Fizz Buzz')
elif number % 3 == 0:
    print ('Fizz')
elif number % 5 == 0:
    print ('Buzz')
# elif number % 3 != 0 or number % 5 != 0:
#     print (number)
else:
    print (number)
    #Питання про else. Воно завжи повинно закінчувати код, чи код може закінчуватися elif-ом.