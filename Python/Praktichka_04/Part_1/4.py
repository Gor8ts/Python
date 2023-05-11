# Пользователь вводит с клавиатуры строку и слово для поиска. 
# Посчитайте сколько раз в строке встречается искомое слово. 
# Полученное число выведите на экран.

String = input ('enter string:')
word = input ('enter word for find:')
sumwords = 0
sumwords = String.count(word)
print (''' your's word meets''', sumwords, 'times')