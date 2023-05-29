# Написать игру «Быки и коровы». Программа «загадывает» четырёхзначное число и играющий должен
# угадать его. После ввода пользователем числа программа
# сообщает, сколько цифр числа угадано (быки) и сколько
# цифр угадано и стоит на нужном месте (коровы). После
# отгадывания числа на экран необходимо вывести количество сделанных пользователем попыток. В программе
# необходимо использовать рекурсию.

import random

def play_bulls_and_cows(hidden,guessed,attempts = 1):

    bull = 0
    cow = 0

    for i in range(len(hidden)):
        if hidden[i] == guessed[i]:
            cow += 1
        elif hidden[i] in guessed:
            bull += 1
    if cow == 4:
        print ("Congratulations! You guessed the number", guessed, "for", attempts, "attempts.")
    else:
        print ('Bull = ',bull,'cow = ',cow)
        input_num = input('Try again: ')
        play_bulls_and_cows(hidden,guessed,attempts + 1)

hidden_number = ''.join(random.sample ('0123456789',4))
print("Game 'Bull and Cow' starting!")
first_number = input("Введіть чотиризначне число: ")

play_bulls_and_cows (hidden_number, first_number)