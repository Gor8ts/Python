# Зарплата менеджера составляет 200$ + процент от продаж, продажи до 500$ — 3%, от 500 до 1000 — 5%, 
# свыше 1000 — 8%. Пользователь вводит с клавиатуры уровень 
# продаж для трех менеджеров. Определить их зарплату, 
# определить лучшего менеджера, начислить ему премию 
# 200$, вывести итоги на экран


sales1 = float (input ('enter the number of sales for menedger 1:'))
sales2 = float (input ('enter the number of sales for menedger 2:'))
sales3 = float (input ('enter the number of sales for menedger 3:'))


if sales1 <= 499.99:
    salary1 = 200 + sales1 * 0.03
else:
    if sales1 >= 1000:
        salary1 = 200 + sales1 * 0.08
    else:
        salary1 = 200 + sales1 * 0.05
if sales2 <= 499.99:
    salary2 = 200 + sales2 * 0.03
else:
    if sales2 >= 1000:
        salary2 = 200 + sales2 * 0.08
    else:
        salary2 = 200 + sales2 * 0.05
if sales3 <= 499.99:
    salary3 = 200 + sales3 * 0.03
else:
    if sales3 >= 1000:
        salary3 = 200 + sales3 * 0.08
    else:
        salary3 = 200 + sales3 * 0.05

print("Salary for manager 1:", salary1,'$')
print("Salary for manager 2:", salary2,'$')
print("Salary for manager 3:", salary3,'$')

if salary1 > salary2 and salary1 > salary3:
    print("Manager 1 is the best.")
    bonus = salary1 + 200
elif salary2 > salary1 and salary2 > salary3:
    print("Manager 2 is the best.")
    bonus = salary2 + 200
else:
    print("Manager 3 is the best.")
    bonus = salary3 + 200

print("Bonus for the best manager:", bonus,'$')



