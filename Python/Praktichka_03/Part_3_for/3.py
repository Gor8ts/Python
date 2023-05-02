# Пользователь вводит с клавиатуры две границы диапазона и число. Если число не попадает в диапазон, 
# программа просит пользователя повторно ввести число, и так до тех пор, пока он не введет 
# число правильно. Программа отображает все числа диапазона, выделяя число 
# восклицательными знаками. Например: 1 2 3 !4! 5 6 7.

start = int (input('enter start cycle:'))
end_cycle = int (input ('enter end cycle:'))
number = int(input ('enter number:'))

while True:
    if number < start or number > end_cycle:
        number = int (input ('enter number:'))
    else:
        for i in range (start,end_cycle+1): 
            
            if i == number:
                print ('!',i,'!',end = '')
            else:
                print (i, end = ' ')
        if i == end_cycle:
            break        
        else:
            continue   
            