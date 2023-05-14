# Пользователь вводит с клавиатуры арифметическое
# выражение. Например, 23+12.
# Необходимо вывести на экран результат выражения.
# В нашем примере это 35. Арифметическое выражение
# может состоять только из трёх частей: число, операция,
# число. Возможные операции: +, -,*,/
while True:
    print('press 0 to stop the program')
    example = input ('enter example: ')#example - пример
    if example != '0':
        for i in example:
            if i == '+':
                symbol = '+'
                res = example.split('+')
            if i == '-':
                symbol = '-'
                res = example.split('-')
            if i == '/':
                symbol = '/'
                res = example.split('/')
            if i == '*':
                symbol = '*'
                res = example.split('*')
#Для  швидкої перевірки зроблено в циклі
        if symbol == '+':
            resvariabl = int(res[0]) + int(res[1])
        elif symbol == '-':
            resvariabl = int(res[0]) - int(res[1])
        elif symbol == '/':
            resvariabl = int(res[0]) / int(res[1])
        elif symbol == '*':
            resvariabl = int(res[0]) * int(res[1])
        print (resvariabl)
    else:
        break
    