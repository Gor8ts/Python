# Пользователь вводит с клавиатуры некоторый текст, 
# после чего пользователь вводит список зарезервированных 
# слов. Необходимо найти в тексте все зарезервированные 
# слова и изменить их регистр на верхний. Вывести на 
# экран измененный текст.

text = input ('enter text:')
words = input ('enter reserved words:')
text1 = text.split()
words1 = words.split()


for i in (text1):
    for j in (words1):
        if j == i:
            index = text1.index (i)           
            text1[index] = text1[index].capitalize ()
delimiter = ' '
text = delimiter.join(text1)
print (text)

