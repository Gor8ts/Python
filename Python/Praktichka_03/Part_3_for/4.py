# Написать игру «Угадай число». Программа загадывает число в диапазоне от 1 до 500. 
# Пользователь пытается его угадать. После каждой попытки программа выдает подсказки, 
# больше или меньше его число загаданного. В конце программа выдает статистику: за сколько 
# попыток угадано число, сколько времени это заняло. Предусмотреть выход по 0 в случае, 
# если пользователю надоело угадывать число.


import random
import time

number = random.randint (1,500)
start_time = time.time ()
guesses = 0

print ('Вгадай число яке я загадав від 1 до 500')
print ('if you\'re tired then enter 0 and end the game')
while True:
    guess = int (input ('enter number:'))
    if guess == 0:
        print ('game break')
        break
    elif 1 > guess < 500:
        continue
    guesses += 1      
    if guess == number:
        end_time = time.time ()
        full_time = round (end_time - start_time)
        print ('Congratulations! They guessed the number for -',guesses, 'attempts and for -',full_time, 'seconds')
    if guess < number:
        
        print ('little, come on more')   
    if guess > number:
        
        print ('a lot, let\'s do less') 
         
            
        


