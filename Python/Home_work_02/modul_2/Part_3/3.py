# Написать программу подсчета стоимости разговора 
# для разных мобильных операторов. Пользователь вводит 
# стоимость разговора и выбирает с какого на какой оператор он звонит. Вывести стоимость на экран

print ('Введіть ціну розмови:')
call_price = float (input ())

print ('Оберіть оператора')
print ('1. Kyivstar')
print ('2. lifecell')
print ('3. Vodafon')
operator = int (input('Введіть обраний номер оператора:'))
if operator == 1:
    call_cost = call_price*1.4
elif operator == 2:
    call_cost = call_price*2.3
elif operator == 3:
    call_cost = call_price*0.95
else:
    print('error')
if operator in [1,2,3]:
    print ('call cost = ',call_cost)
