# Пользователь вводит с клавиатуры два числа (начало и конец диапазона).
# Требуется проанализировать все числа в этом диапазоне. 
# Нужно вывести на экран:
# 1. Все числа диапазона;
# 2. Все числа диапазона в убывающем порядке;
# 3. Все числа, кратные 7;
# 4. Количество чисел, кратных 5.

s = int(input ('enter start cycle:'))
e = int(input ('enter end cycle:'))
if e < s:
    s,e = e,s

s0 = s

while s < e:
    print (s, end = ' ')
    s += 1
print ('\n')

e0 = e
s = s0
e -= 1
while s <= e:
    print (e, end = ' ')
    e -= 1
print ('\n')

e = e0
while s < e:
    if s % 7 == 0:
        print (s, end = ' ')
    s += 1
print ('\n')

s = s0
e = e0
count = 0
while s < e:
    if s % 5 == 0:
        count += 1
    s += 1
print (count)
    
# done