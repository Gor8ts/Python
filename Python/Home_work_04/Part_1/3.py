# Есть некоторый текст. Посчитайте в этом тексте количество предложений 
# и выведите на экран полученный результат.

text = input ('enter text:')
count = 0
for i in text:
    if i == '.' or i == '!' or i == '?' or i == '!!!' or i == '!?' or i == '?!' or i == '...':
        count += 1
print ('In your\'s text', count, 'proposals')