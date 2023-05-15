# Пользователь вводит с клавиатуры строку, слово для замены. 
# Произведите в строке замену одного слова на другое. Полученную строку отобразите на экране.

string = input ('enter string:')
word = input ('enter the word you want to replace:')#введите слово которое хотите заменить
word_rep = input('enter the word you want to replace: ')#введите слово на которое хотите заменить 
string1 = string.split()

for i in (string1):
    if i == word:
        index = string1.index (i)
        string1[index] = word_rep
delimiter = ' '
string = delimiter.join(string1)
print (string)

