# Написать рекурсивную функцию, которая вычисляет
# сумму всех чисел в диапазоне от a до b. Пользователь вводит a и b. 
# Проиллюстрируйте работу функции примером.


def sum_recursiv(a,b):
    
    if a == b:
        return 0
    else:
        return a + sum_recursiv(a + 1, b)
        
    
start = int(input("Введіть початок діапазону (a): "))
end = int(input("Введіть кінець діапазону (b): "))

res = sum_recursiv(start, end)
print(f"Сума чисел в діапазоні від {start} до {end} дорівнює {res}")


