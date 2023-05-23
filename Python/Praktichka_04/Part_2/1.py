# Есть некоторый текст. Реализуйте следующую функциональность:
# ■ Изменить текст таким образом, чтобы каждое предложение начиналось с большой буквы;
# ■ Посчитайте сколько раз цифры встречаются в тексте;
# ■ Посчитайте сколько раз знаки препинания встречаются в тексте;
# ■ Посчитайте количество восклицательных знаков в
# тексте.

lst = input ('enter text:')
sign = 0
lst2 = 0
lst3 = 0

sentences = lst.split ('. ')
format_lst = ""

for i in lst:
    if '0' <= i <= '9':
        lst2 += 1
    if i == ',' or i == '.' or i == ':' or i == ';':
        lst3 +=1
    if i == '!':
        sign +=1

for sentence in sentences:
    format_lst += sentence.capitalize() + ". "
format_lst = format_lst[:-2]

print (format_lst)

print ('numbers =',lst2)
print ('signs =',lst3)
print ('sign ! =',sign)
    