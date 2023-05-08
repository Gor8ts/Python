# Пользователь вводит с клавиатуры строку и символ для поиска. 
# Посчитайте сколько раз в строке встречается искомый символ. Полученное число выведите на экран.

strStr = input ('enter string:')
symbol = input ('enter symbol for find:')
sum_symbol = 0
for i in strStr:
    if i == symbol:
        sum_symbol +=1
print ('Quantity symbol = ',sum_symbol)

