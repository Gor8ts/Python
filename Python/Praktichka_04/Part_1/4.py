# Пользователь вводит с клавиатуры строку и слово для поиска. 
# Посчитайте сколько раз в строке встречается искомое слово. 
# Полученное число выведите на экран.

String = input ('enter string:')
word = input ('enter word for find:')
sumwordwords = 0
for i in String:
    if i == word:
        sumwordwords += 1
print (''' your's word meets''', sumwordwords, 'times')